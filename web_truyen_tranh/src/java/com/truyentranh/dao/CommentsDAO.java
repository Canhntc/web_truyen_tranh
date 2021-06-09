/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.truyentranh.dao;

import com.truyentranh.common.DBConnection;
import com.truyentranh.model.Comments;


import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.time.LocalDateTime;  


/**
 *
 * @author canh
 */
public class CommentsDAO {
    //CREATE
    public static void createOne(Comments comment) throws SQLException{
        try {
            String sql = "insert into COMMENTS (COMICID, USERID, COMMENT, CREATED) "
                + "VALUES(?,?,?,?)";
            PreparedStatement ps = DBConnection.getConnect().prepareStatement(sql);
            ps.setInt(1,comment.getComicId());
            ps.setInt(2,comment.getUserId());
            ps.setString(3,comment.getComment());
            ps.setString(4,comment.getCreated().toString());
            ps.execute();
            System.out.print(sql);
        }catch (SQLException e) {
            System.out.println(e.getMessage());
        }
    }
    //UPDATE
    public static void update(Comments comment) throws SQLException{
        try {
            String sql = "update COMMENTS set comicId = ?, userId = ?, comment = ?, created = ?, where Id = ?";
            PreparedStatement ps = DBConnection.getConnect().prepareStatement(sql);
            ps.setInt(1,comment.getComicId());
            ps.setInt(2,comment.getUserId());
            ps.setString(3,comment.getComment());
            ps.setString(4,comment.getCreated().toString());
            ps.execute();
            System.out.print(sql);
        }catch (SQLException e) {
            System.out.println(e.getMessage());
        }
    }
    
    //READ
    public static Comments find(int comicId, int userId) throws SQLException{
        Comments comment = new Comments();
        
        String sql = "select * from COMMENTS where COMICID = ? and USERID = ?";
        PreparedStatement ps = DBConnection.getConnect().prepareStatement(sql);
        ps.setInt(1,comicId);
        ps.setInt(2,userId);
        System.out.print(sql);
        ResultSet rs = ps.executeQuery();
        while(rs.next()) {
            comment.setId(rs.getInt("Id"));
            comment.setComicId(rs.getInt("comicId"));
            comment.setUserId(rs.getInt("userId"));
            comment.setComment(rs.getString("comment"));
            //comment.setCreated(rs.getString("created"));
        }
        return comment;
    }
    
    public static List<Comments> getAll() {
        try {
            List<Comments> comments = new ArrayList<>();
            String sql = "select * from comments";
            PreparedStatement ps = DBConnection.getConnect().prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while(rs.next()) {
                Comments comment = new Comments();
                comment.setId(rs.getInt("Id"));
                comment.setComicId(rs.getInt("comicId"));
                comment.setUserId(rs.getInt("userId"));
                comment.setComment(rs.getString("comment"));
                //comment.setCreated(rs.getDate("created"));
                comments.add(comment);
            }
            return comments;
        } catch (SQLException e) {
            System.out.println(e.getMessage());
            return null;
        }
    }
    //
    
    //DELETE
    public static void delete(/*int id*/int comicid, int userid) {
        try {
            String sql = "delete from COMMENTS where COMICID = ? and USERID = ?";//Code lạ phải nghiên cứu
            PreparedStatement ps = DBConnection.getConnect().prepareStatement(sql);
            ps.setInt(1,comicid);
            ps.setInt(2,userid);
            ps.execute();
        } catch (SQLException e) {
            System.out.println(e.getMessage());
            //return false;
        }
    }
    
    public static void deleteInComic(int comicid) {
        try {
            String sql = "delete from COMMENTS where COMICID = ?";//Code lạ phải nghiên cứu
            PreparedStatement ps = DBConnection.getConnect().prepareStatement(sql);
            ps.setInt(1,comicid);
            ps.execute();
            //return ps.executeUpdate() > 0;
        } catch (SQLException e) {
            System.out.println(e.getMessage());
            //return false;
        }
    }
    
    
    public static void main(String[] args) throws SQLException {}

}
