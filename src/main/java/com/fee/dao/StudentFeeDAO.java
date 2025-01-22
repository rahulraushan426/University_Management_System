package com.fee.dao;

import com.fee.model.StudentFee;
import java.sql.*;

public class StudentFeeDAO {
    private Connection connection;

    public StudentFeeDAO(Connection connection) {
        this.connection = connection;
    }

    // Method to get student fee by email
    public StudentFee getFeeByEmail(String email) throws SQLException {
        String query = "SELECT * FROM students_fees WHERE email = ?";
        try (PreparedStatement stmt = connection.prepareStatement(query)) {
            stmt.setString(1, email);
            try (ResultSet rs = stmt.executeQuery()) {
                if (rs.next()) {
                    return new StudentFee(rs.getInt("student_id"), rs.getString("email"), rs.getDouble("fees"));
                }
            }
        }
        return null;
    }

    // Method to add student fee
    public boolean addStudentFee(StudentFee studentFee) throws SQLException {
        String query = "INSERT INTO students_fees (email, fees) VALUES (?, ?)";
        try (PreparedStatement stmt = connection.prepareStatement(query)) {
            stmt.setString(1, studentFee.getEmail());
            stmt.setDouble(2, studentFee.getFees());
            return stmt.executeUpdate() > 0;
        }
    }

    // Method to update student fee
    public boolean updateStudentFee(StudentFee studentFee) throws SQLException {
        String query = "UPDATE students_fees SET fees = ? WHERE email = ?";
        try (PreparedStatement stmt = connection.prepareStatement(query)) {
            stmt.setDouble(1, studentFee.getFees());
            stmt.setString(2, studentFee.getEmail());
            return stmt.executeUpdate() > 0;
        }
    }
}
