/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.truyentranh.dao;
import com.truyentranh.common.DBConnection;
import com.truyentranh.model.TagDescriptions;


import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
/**
 *
 * @author ADMIN
 */
public class TagDescriptionDAO {

    //Create
    public static void createOne(TagDescriptions tagDescription) throws SQLException{
        try {
            String sql = "insert into TAG_DESCRIPTIONS (TAG,TAG_NAME, DESCRIPTIONTAG) "
                + "VALUES(?,?,?)";
            PreparedStatement ps = DBConnection.getConnect().prepareStatement(sql);
            
            ps.setString(1,tagDescription.getTag());
            ps.setString(2,tagDescription.getTagName());
            ps.setString(3,tagDescription.getDescriptionTag());
            ps.execute();
            System.out.print(sql);
        }catch (SQLException e) {
            System.out.println(e.getMessage());
        }
    }    
    public static void update(TagDescriptions tagDescription) throws SQLException{
        try {
            String sql = "update COMICS set AUTHOR = ?, DESCRIPTION = ?, STATUS = ?, THUMBNAIL = ?, TITLE=?, VIEWS=? where ID = ?";
            PreparedStatement ps = DBConnection.getConnect().prepareStatement(sql);
            ps.setString(1,tagDescription.getTag());
            ps.setString(2,tagDescription.getTagName());
            ps.setString(3,tagDescription.getDescriptionTag());                           
            ps.execute();
            System.out.print(sql);
        }catch (SQLException e) {
            System.out.println(e.getMessage());
        }
    }
    public static TagDescriptions find(String tag) throws SQLException{
        TagDescriptions tagDescription = new TagDescriptions();
        String sql = "select * from TAG_DESCRIPTION where TAG = ?";
        PreparedStatement ps = DBConnection.getConnect().prepareStatement(sql);
        
        ps.setString(1,tag);
        System.out.print(sql);
        
        ResultSet rs = ps.executeQuery();
        while(rs.next()) {
                tagDescription.setTag(rs.getString("TAG"));
                tagDescription.setTagName(rs.getString("TAG_NAME"));
                tagDescription.setDescriptionTag(rs.getString("DESCRIPTIONTAG"));


            }
        return tagDescription;
    }  
    public static String findTagName(String tag) throws SQLException{
        TagDescriptions tagDescription = new TagDescriptions();
        String sql = "select TAG_NAME from TAG_DESCRIPTION where TAG = ?";
        PreparedStatement ps = DBConnection.getConnect().prepareStatement(sql);
        
        ps.setString(1,tag);
        
        String tagName = "";
        ResultSet rs = ps.executeQuery();
        while(rs.next()) {
            
                tagName = rs.getNString("TAG_NAME");
            }
        return tagName;
    }    
    
    public static void main(String[] args) {
        // TODO code application logic here
        
    }
    
}
