package com.fee.model;

public class StudentFee {
    private int studentId;
    private String email;
    private double fees;

    // Default Constructor
    public StudentFee() {}

    // Constructor
    public StudentFee(String email, double fees) {
        this.email = email;
        this.fees = fees;
    }

    // Constructor with all fields
    public StudentFee(int studentId, String email, double fees) {
        this.studentId = studentId;
        this.email = email;
        this.fees = fees;
    }

    // Getters and Setters
    public int getStudentId() {
        return studentId;
    }

    public void setStudentId(int studentId) {
        this.studentId = studentId;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public double getFees() {
        return fees;
    }

    public void setFees(double fees) {
        this.fees = fees;
    }
}
