import com.fee.dao.StudentFeeDAO;
import com.fee.model.StudentFee;
import org.junit.jupiter.api.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

import static org.junit.jupiter.api.Assertions.*;

@TestInstance(TestInstance.Lifecycle.PER_CLASS)
class FeeDaoTest {
    private StudentFeeDAO feeDao;
    private Connection connection;
    private StudentFee testFee;

    @BeforeAll
    void setup() throws SQLException {
        // Create the database schema
        connection = DriverManager.getConnection("jdbc:h2:mem:testdb;DB_CLOSE_DELAY=-1");
        try (Statement stmt = connection.createStatement()) {
            stmt.execute("CREATE TABLE IF NOT EXISTS students_fees (" +
                "student_id INT AUTO_INCREMENT PRIMARY KEY, " +
                "email VARCHAR(255) UNIQUE NOT NULL, " +
                "fees DOUBLE NOT NULL)");
        }

        feeDao = new StudentFeeDAO(connection);
        testFee = new StudentFee(0, "test@example.com", 5000.0);
    }

    @BeforeEach
    void clearDatabase() throws SQLException {
        // Clear database before each test
        connection.createStatement().execute("DELETE FROM students_fees");
    }

    @AfterAll
    void teardown() throws SQLException {
        connection.close();
    }

    @Test
    void testAddStudentFee() throws SQLException {
        // Test adding a student fee
        assertTrue(feeDao.addStudentFee(testFee), "Student fee should be added successfully");
        
        // Verify the fee was added
        StudentFee retrievedFee = feeDao.getFeeByEmail(testFee.getEmail());
        assertNotNull(retrievedFee, "Retrieved fee should not be null");
        assertEquals(testFee.getEmail(), retrievedFee.getEmail());
        assertEquals(testFee.getFees(), retrievedFee.getFees());
    }

    @Test
    void testGetFeeByEmail() throws SQLException {
        // Add test fee
        feeDao.addStudentFee(testFee);
        
        // Test retrieving the fee
        StudentFee retrievedFee = feeDao.getFeeByEmail(testFee.getEmail());
        assertNotNull(retrievedFee, "Retrieved fee should not be null");
        assertEquals(testFee.getEmail(), retrievedFee.getEmail());
        assertEquals(testFee.getFees(), retrievedFee.getFees());
    }

    @Test
    void testUpdateStudentFee() throws SQLException {
        // First add the test fee
        feeDao.addStudentFee(testFee);
        
        // Modify fee amount
        double updatedFeeAmount = 6000.0;
        testFee.setFees(updatedFeeAmount);
        
        // Update in database
        assertTrue(feeDao.updateStudentFee(testFee), "Fee update should be successful");
        
        // Verify update
        StudentFee updatedFee = feeDao.getFeeByEmail(testFee.getEmail());
        assertNotNull(updatedFee, "Updated fee should not be null");
        assertEquals(updatedFeeAmount, updatedFee.getFees());
    }

    @Test
    void testGetNonExistentFee() throws SQLException {
        // Test retrieving fee for non-existent email
        StudentFee nonExistentFee = feeDao.getFeeByEmail("nonexistent@example.com");
        assertNull(nonExistentFee, "Fee for non-existent email should be null");
    }
}
