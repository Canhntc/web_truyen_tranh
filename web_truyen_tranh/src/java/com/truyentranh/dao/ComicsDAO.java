/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.truyentranh.dao;

import com.truyentranh.common.DBConnection;
import com.truyentranh.model.Comics;


import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Scanner;



/**
 *
 * @author canh
 */
public class ComicsDAO {
    //CREATE
    public void createOne(Comics comic) throws SQLException{
        try {
            String sql = "insert into COMICS VALUES(?,?,?,?,?,?)";
            PreparedStatement ps = DBConnection.getConnect().prepareStatement(sql);
            ps.setString(1,comic.getStatus());
            ps.setString(2,comic.getTitle());
            ps.setString(3,comic.getDescription());
            ps.setString(4,comic.getThumbnail());
            ps.setString(5,comic.getAuthor());
            ps.setInt(6,comic.getViews());
            ps.execute();
            System.out.print(sql);
        }catch (SQLException e) {
            System.out.println(e.getMessage());
        }
    }
    
    //UPDATE
    public void update(Comics comic) throws SQLException{
        try {
            String sql = "update COMICS set AUTHOR = ?, DESCRIPTION = ?, STATUS = ?, THUMBNAIL = ?, TITLE=?, VIEWS=? where ID = ?";
            PreparedStatement ps = DBConnection.getConnect().prepareStatement(sql);
            ps.setString(1,comic.getStatus());
            ps.setString(2,comic.getTitle());
            ps.setString(3,comic.getDescription());
            ps.setString(4,comic.getThumbnail());
            ps.setString(5,comic.getAuthor());                           
            ps.setInt(6,comic.getViews());

            ps.execute();
            System.out.print(sql);
        }catch (SQLException e) {
            System.out.println(e.getMessage());
        }
    }

    //READ
    public List<Comics> getAll(int comicId) throws SQLException{
        List<Comics> comics = new ArrayList<>();
        
        String sql = "select * from COMICS";
        PreparedStatement ps = DBConnection.getConnect().prepareStatement(sql);
        ps.setInt(1,comicId);
        System.out.println(sql);
        ResultSet rs = ps.executeQuery();
        while(rs.next()) {
            Comics theComics = new Comics();
            theComics.setId(rs.getInt("ID"));
            theComics.setAuthor(rs.getString("AUTHOR"));
            theComics.setDescription(rs.getString("DESCRIPTION"));
            theComics.setStatus(rs.getString("STATUS"));
            theComics.setTitle(rs.getString("TITLE"));
            theComics.setThumbnail(rs.getString("THUMBNAIL"));
            theComics.setViews(rs.getInt("VIEWS"));
            comics.add(theComics);
            }
        return comics;
    }
   

        //READ
    public Comics find(int comicId) throws SQLException{
        Comics comic = new Comics();
        String sql = "select * from Comics where comicId = ?";
        PreparedStatement ps = DBConnection.getConnect().prepareStatement(sql);
        ps.setInt(1,comicId);
        System.out.print(sql);
        ResultSet rs = ps.executeQuery();
        while(rs.next()) {
                comic.setId(rs.getInt("id"));
                comic.setAuthor(rs.getString("AUTHOR"));
                comic.setDescription(rs.getString("DESCRIPTION"));
                comic.setStatus(rs.getString("STATUS"));
                comic.setTitle(rs.getString("TITLE"));
                comic.setThumbnail(rs.getString("THUMBNAIL"));
                comic.setViews(rs.getInt("VIEWS"));

            }
        return comic;
    }
    
    //DELETE

    public void deleteComic(int comicId) {
        try {
            String sql = "delete from COMICS where ID = ?";
            PreparedStatement ps = DBConnection.getConnect().prepareStatement(sql);
            ps.setInt(1, comicId);
            
            ps.execute();
            //return ps.executeUpdate() > 0;
        } catch (SQLException e) {
            System.out.println(e.getMessage());
            //return false;
        }
    }
    public void deleteAllComics(int comicId) {
        try {
            String sql = "delete from COMICS where ID = ?";
            PreparedStatement ps = DBConnection.getConnect().prepareStatement(sql);
            ps.setInt(1, comicId);
            
            ps.execute();
            //return ps.executeUpdate() > 0;
        } catch (SQLException e) {
            System.out.println(e.getMessage());
            //return false;
        }
    }
    
    
    public static void main(String[] args) throws SQLException {

    }
}