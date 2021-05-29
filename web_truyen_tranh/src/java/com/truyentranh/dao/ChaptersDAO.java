/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.truyentranh.dao;

import com.truyentranh.common.DBConnection;
import com.truyentranh.model.Chapters;


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
public class ChaptersDAO {
    //CREATE
    public void createOne(Chapters chapter) throws SQLException{
        try {
            String sql = "insert into CHAPTERS VALUES(?,?,?,?)";
            PreparedStatement ps = DBConnection.getConnect().prepareStatement(sql);
            ps.setInt(1,chapter.getComicId());
            ps.setInt(2,chapter.getChapter());
            ps.setInt(3,chapter.getImgId());
            ps.setString(4,chapter.getChapterContentURL());
 
            ps.execute();
            System.out.print(sql);
        }catch (SQLException e) {
            System.out.println(e.getMessage());
        }
    }
    //UPDATE
    public void update(Chapters chapter) throws SQLException{
        try {
            String sql = "update CHAPTERS set COMICID = ?, CHAPTER = ?, IMGID = ?, CHAPTER_CONTENT_URL = ? where ID = ?";
            PreparedStatement ps = DBConnection.getConnect().prepareStatement(sql);
            ps.setInt(1,chapter.getComicId());
            ps.setInt(2,chapter.getChapter());
            ps.setInt(3,chapter.getImgId());
            ps.setString(4,chapter.getChapterContentURL());
 
            ps.execute();
            System.out.print(sql);
        }catch (SQLException e) {
            System.out.println(e.getMessage());
        }
    }
    //READ
    public List<Chapters> getChapterContents(int comicId, int chapter) throws SQLException{
        List<Chapters> chapters = new ArrayList<>();
        
        String sql = "select * from CHAPTERS where COMICID = ? and CHAPTER = ?";
        PreparedStatement ps = DBConnection.getConnect().prepareStatement(sql);
        ps.setInt(1,comicId);
        ps.setInt(2,chapter);
        System.out.println(sql);
        ResultSet rs = ps.executeQuery();
        while(rs.next()) {
            Chapters theChapter = new Chapters();
            theChapter.setComicId(rs.getInt("COMICID"));
            theChapter.setChapter(rs.getInt("CHAPTER"));
            theChapter.setImgId(rs.getInt("IMGID"));
            theChapter.setChapterContentURL(rs.getString("CHAPTER_CONTENT_URL"));
            chapters.add(theChapter);
            }
        return chapters;
    }
    public List<Chapters> getChapter(int comicId) throws SQLException{
        List<Chapters> chapters = new ArrayList<>();
        
        String sql = "select distinct * from CHAPTERS where COMICID = ?";
        PreparedStatement ps = DBConnection.getConnect().prepareStatement(sql);
        ps.setInt(1,comicId);
        System.out.println(sql);
        ResultSet rs = ps.executeQuery();
        while(rs.next()) {
            Chapters theChapter = new Chapters();
            theChapter.setComicId(rs.getInt("COMICID"));
            theChapter.setChapter(rs.getInt("CHAPTER"));
            chapters.add(theChapter);
            }
        return chapters;
    }
    
    
    //DELETE
    public void deleteImg(int comicId, int chapter, int imgId) {
        try {
            String sql = "delete from CHAPTERS where COMICID = ? AND CHAPTER = ? AND IMGID = ?";
            PreparedStatement ps = DBConnection.getConnect().prepareStatement(sql);
            ps.setInt(1, comicId);
            ps.setInt(2, chapter);
            ps.setInt(3, imgId);
            ps.execute();
            //return ps.executeUpdate() > 0;
        } catch (SQLException e) {
            System.out.println(e.getMessage());
            //return false;
        }
    }
    public void deleteChapter(int comicId, int chapter) {
        try {
            String sql = "delete from CHAPTERS where COMICID = ? AND CHAPTER = ?";
            PreparedStatement ps = DBConnection.getConnect().prepareStatement(sql);
            ps.setInt(1, comicId);
            ps.setInt(2, chapter);
            
            ps.execute();
            //return ps.executeUpdate() > 0;
        } catch (SQLException e) {
            System.out.println(e.getMessage());
            //return false;
        }
    }
    public void deleteAllChapters(int comicId) {
        try {
            String sql = "delete from CHAPTERS where COMICID = ?";
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
        
        Scanner sc = new Scanner(System.in);
        
        ChaptersDAO insert = new ChaptersDAO();
        
        for(int i = 1; i <= 100; i++)
            for(int j = 1; j <= 20; j++)
                for(int k = 1; k <= 5; k++)
                {
                    String URL = "\\assets\\img\\truyen" + i + "\\chap" + j + "\\anh" + k + ".jpg";
                    Chapters chapter = new Chapters(i,j,k,URL);
                    insert.createOne(chapter);
                }
        
//        ChaptersDAO get = new ChaptersDAO();
//        
//        List<Chapters> chapters = get.getChapter(2);
//        
//        for(int i = 0; i < chapters.size(); i++)
//            System.out.println(chapters.get(i).getChapter());
    }
}
