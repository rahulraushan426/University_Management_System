import com.user.dao.*;

import com.user.model.User;
import com.user.util.DBconnection;
import org.junit.jupiter.api.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.List;

import static org.junit.jupiter.api.Assertions.*;

@TestInstance(TestInstance.Lifecycle.PER_CLASS)
class UserDaoTest {
    private UserDAO userDao;
    private Connection connection;
    private User testUser;

    @BeforeAll
    void setup() throws SQLException {
        // Create the database schema
        connection = DriverManager.getConnection("jdbc:h2:mem:testdb;DB_CLOSE_DELAY=-1");
        try (Statement stmt = connection.createStatement()) {
            stmt.execute("CREATE TABLE IF NOT EXISTS users (" +
                "id INT AUTO_INCREMENT PRIMARY KEY, " +
                "name VARCHAR(255) NOT NULL, " +
                "email VARCHAR(255) UNIQUE NOT NULL, " +
                "password VARCHAR(255) NOT NULL, " +
                "rollno INT NOT NULL)");
        }

        userDao = new UserDAO(connection);
        testUser = new User();
        testUser.setName("Test User");
        testUser.setEmail("test@example.com");
        testUser.setPassword("testpass123");
        testUser.setRollNo(1001);
    }

    @BeforeEach
    void clearDatabase() throws SQLException {
        // Clear database before each test
        connection.createStatement().execute("DELETE FROM users");
    }

    @AfterAll
    void teardown() throws SQLException {
        connection.close();
    }

    @Test
    void testAddUser() throws SQLException {
        // Test adding a user
        assertTrue(userDao.addUser(testUser), "User should be added successfully");
        
        // Verify the user was added
        User retrievedUser = userDao.getUserByEmail(testUser.getEmail(), testUser.getPassword());
        assertNotNull(retrievedUser, "Retrieved user should not be null");
        assertEquals(testUser.getEmail(), retrievedUser.getEmail());
        assertEquals(testUser.getRollNo(), retrievedUser.getRollNo());
    }

    @Test
    void testGetAllUsers() throws SQLException {
        // Add test user
        userDao.addUser(testUser);
        
        List<User> users = userDao.getAllUsers();
        assertNotNull(users);
        assertFalse(users.isEmpty());
        
        User firstUser = users.get(0);
        assertEquals(testUser.getName(), firstUser.getName());
        assertEquals(testUser.getEmail(), firstUser.getEmail());
        assertEquals(testUser.getRollNo(), firstUser.getRollNo());
    }

    @Test
    void testUpdateUser() throws SQLException {
        // First add the test user
        userDao.addUser(testUser);
        
        // Get the user by email and password
        User retrievedUser = userDao.getUserByEmail(testUser.getEmail(), testUser.getPassword());
        assertNotNull(retrievedUser);
        
        // Modify user data
        String updatedName = "Updated Name";
        retrievedUser.setName(updatedName);
        
        // Update in database
        assertTrue(userDao.updateUser(retrievedUser));
        
        // Verify update
        User updatedUser = userDao.getUserByEmail(testUser.getEmail(), testUser.getPassword());
        assertNotNull(updatedUser);
        assertEquals(updatedName, updatedUser.getName());
    }

    @Test
    void testDeleteUser() throws SQLException {
        // First add the test user
        assertTrue(userDao.addUser(testUser));
        
        // Get the user to get their ID
        User addedUser = userDao.getUserByEmail(testUser.getEmail(), testUser.getPassword());
        assertNotNull(addedUser);
        
        // Delete the user
        assertTrue(userDao.deleteUser(addedUser.getId()));
        
        // Verify user is deleted
        User deletedUser = userDao.getUserByEmail(testUser.getEmail(), testUser.getPassword());
        assertNull(deletedUser);
    }
}
