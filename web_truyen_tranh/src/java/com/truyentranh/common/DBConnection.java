/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.truyentranh.common;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author hp
 */
public class DBConnection {
    
    private static final String URL = "jdbc:sqlserver://localhost:1433;databaseName=WEB_TRUYEN_TRANH";
    private static final String USER = "sa";
    private static final String PASSWORD = "123";
    
    public static Connection getConnect() {
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            return DriverManager.getConnection(URL, USER, PASSWORD);
        } catch (ClassNotFoundException | SQLException e) {
            System.out.println(e.getMessage());
            return null;
        }
    }
    
    public static void main(String[] args) {
        Connection conn = DBConnection.getConnect();
        try {
            if(conn != null && !conn.isClosed()) {
                System.out.println("Kết nối tới database web_truyen_tranh thành công");
            } else {
                System.out.println("No");
            }
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
    }
    
}