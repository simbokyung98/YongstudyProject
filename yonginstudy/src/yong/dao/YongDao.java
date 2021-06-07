package yong.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import yong.vo.Lecture;
import yong.vo.User;

public class YongDao {
	
	private static YongDao dao = new YongDao();
	private YongDao() {
		
	}
	public static YongDao getInstance() {
		return dao;
	}
	public Connection connect() {
		Connection conn= null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection("jdbc:mysql://localhost/yongstudy?characterEncoding=UTF-8&serverTimezone=UTC","root","1234");
		}catch (Exception e) {
			System.out.println("MDAO:connect :" + e);
		}
		return conn;
	}
	public void close(Connection conn , PreparedStatement pstmt) {
		if (pstmt != null) {
			try {
				pstmt.close();
			} catch (Exception e) {
				System.out.println("Pstmt close error"+ e);
			}
		}
		if (conn != null) {
			try {
				conn.close();
			}catch (Exception e) {
				System.out.println("conn close error"+ e);
			}
		}
	}
	
	public void close(Connection conn , PreparedStatement pstmt, ResultSet rs) {
		
		if (rs != null) {
			try {
				rs.close();
			}catch (Exception e) {
				System.out.println("rs close error"+ e);
			}
		}
		close(conn, pstmt);
	}
	public boolean login(String id, String pwd) {
		boolean result = false;
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = connect();
			pstmt = conn.prepareStatement("select * from user where id=? and pwd=?;");
			pstmt.setString(1, id);
			pstmt.setString(2, pwd);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				result = true;
			}else {
				result = false;
			}
		}catch (Exception e) {
			System.out.println("Login error : " + e);
		}finally {
			close(conn, pstmt,rs);
		}
		return result;
	}
	public void join(User user) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			conn = connect();
			pstmt = conn.prepareStatement("insert into user values(?,?,?,?,?);");
			pstmt.setInt(1, user.getUserclass());
			pstmt.setString(2, user.getId());
			pstmt.setString(3, user.getPwd());
			pstmt.setString(4, user.getName());
			pstmt.setString(5, user.getMajor());
			pstmt.executeUpdate();
		}catch (Exception e) {
			System.out.println("Join error : " + e);
		}finally {
			close(conn, pstmt);
		}
		
	}
	public ArrayList<Lecture> lecturesearch() {
		ArrayList<Lecture> lectures = new ArrayList<Lecture>();
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		Lecture lecture = null;
		try {
			conn = connect();
			pstmt  = conn.prepareStatement("select * from lecture;");
			rs = pstmt.executeQuery();
			while (rs.next()) {
				lecture = new Lecture();
				lecture.setTitle(rs.getString(1));
				lecture.setCollege(rs.getString(2));
				lecture.setLocation(rs.getString(3));
				lecture.setImg(rs.getString(4));
				lecture.setMaxpeople(rs.getInt(5));
				lecture.setCount(rs.getInt(6));
				lecture.setCategory(rs.getString(7));
				lecture.setDetail(rs.getString(8));
				lectures.add(lecture);
			}
		}catch (Exception e) {
			System.out.println("Join error : " + e);
		}finally {
			close(conn, pstmt, rs);
		}
		return lectures;
	}
	public ArrayList<Lecture> eachlecturesearch(String job) {
		ArrayList<Lecture> lectures = new ArrayList<Lecture>();
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		Lecture lecture = null;
		try {
			conn = connect();
			pstmt  = conn.prepareStatement("select * from lecture where category=?;");
			pstmt.setString(1, job);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				lecture = new Lecture();
				lecture.setTitle(rs.getString(1));
				lecture.setCollege(rs.getString(2));
				lecture.setLocation(rs.getString(3));
				lecture.setImg(rs.getString(4));
				lecture.setMaxpeople(rs.getInt(5));
				lecture.setCount(rs.getInt(6));
				lecture.setCategory(rs.getString(7));
				lecture.setDetail(rs.getString(8));
				lectures.add(lecture);
			}
		}catch (Exception e) {
			System.out.println("Join error : " + e);
		}finally {
			close(conn, pstmt, rs);
		}
		return lectures;
	}
	public Lecture lecturedetail(String detail) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		Lecture lecture = null;
		try {
			conn = connect();
			pstmt  = conn.prepareStatement("select * from lecture where detail=?;");
			pstmt.setString(1, detail);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				lecture = new Lecture();
				lecture.setTitle(rs.getString(1));
				lecture.setCollege(rs.getString(2));
				lecture.setLocation(rs.getString(3));
				lecture.setImg(rs.getString(4));
				lecture.setMaxpeople(rs.getInt(5));
				lecture.setCount(rs.getInt(6));
				lecture.setCategory(rs.getString(7));
			}
		}catch (Exception e) {
			System.out.println("Join error : " + e);
		}finally {
			close(conn, pstmt, rs);
		}
		return lecture;
	}

}
