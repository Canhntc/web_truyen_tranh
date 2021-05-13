/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.truyentranh.dao;

import com.truyentranh.common.DBConnection;
import com.truyentranh.model.Users;


import java.io.UnsupportedEncodingException;
import java.nio.charset.Charset;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;


/**
 *
 * @author hp
 */
public class UsersDAO {
    //CREATE
    public void createOne(Users user) throws SQLException{
        try {
            String fullname = "N'" + user.getFullname() + "'";
            String email = "'" + user.getEmail() + "'";
            String phone = "'" + user.getPhone() + "'";
            String username = "'" + user.getUsername() + "'";
            String password = "'" + user.getPassword() + "'";
        
            String sql = "insert into USERS (FULLNAME, EMAIL, PHONE, USERNAME, PASSWORD) "
                + "VALUES(" + fullname + "," + email + "," + phone + "," + username + "," + password + ")";

//            String sql = "insert into USERS (FULLNAME, EMAIL, PHONE, USERNAME, PASSWORD) "
//                + "VALUES(N?,?,?,?,?)";
            PreparedStatement ps = DBConnection.getConnect().prepareStatement(sql);
//            ps.setString(1,user.getFullname());
//            ps.setString(2,user.getEmail());
//            ps.setString(3,user.getPhone());
//            ps.setString(4,user.getUsername());
//            ps.setString(5,user.getPassword());
            ps.execute();
            System.out.print(sql);
        }catch (SQLException e) {
            System.out.println(e.getMessage());
        }
    }
    
    //READ
    public Users find(String username, String password) throws SQLException{
        Users user = new Users();
        
        String sql = "select * from USERS where USERNAME = ? and PASSWORD = ?";
        PreparedStatement ps = DBConnection.getConnect().prepareStatement(sql);
        ps.setString(1,username);
        ps.setString(2,password);
        System.out.print(sql);
        ResultSet rs = ps.executeQuery();
        while(rs.next()) {
                user.setId(rs.getInt("id"));
                user.setFullname(rs.getString("fullname"));
                user.setEmail(rs.getString("email"));
                user.setPhone(rs.getString("phone"));
                user.setUsername(rs.getString("username"));
                user.setPassword(rs.getString("password"));
            }
        return user;
    }
    
    public List<Users> getAll() {
        try {
            List<Users> users = new ArrayList<>();
            String sql = "select * from users";
            PreparedStatement ps = DBConnection.getConnect().prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while(rs.next()) {
                Users user = new Users();
                user.setId(rs.getInt("id"));
                user.setFullname(rs.getString("fullname"));
                user.setEmail(rs.getString("email"));
                user.setPhone(rs.getString("phone"));
                user.setUsername(rs.getString("username"));
                user.setPassword(rs.getString("password"));
                users.add(user);
            }
            return users;
        } catch (SQLException e) {
            System.out.println(e.getMessage());
            return null;
        }
    }
    //
    
    //DELETE
    public boolean remove(int id) {
        try {
            String sql = "delete from USERS where ID = ?";//Code lạ phải nghiên cứu
            PreparedStatement ps = DBConnection.getConnect().prepareStatement(sql);
            ps.setInt(1, id);
            return ps.executeUpdate() > 0;
        } catch (SQLException e) {
            System.out.println(e.getMessage());
            return false;
        }
    }
    
    public static void main(String[] args) throws SQLException, UnsupportedEncodingException {
        
        Users user = new Users("Lường Thị Thu Nguyệt","18520414@gm.uit.edu.vn","123456789","thunguyet","123");
        
        UsersDAO test = new UsersDAO();
        test.createOne(user);
        
        //System.out.print(test.find("tuongphat", "tuongphat123").getFullname());
    }
}
