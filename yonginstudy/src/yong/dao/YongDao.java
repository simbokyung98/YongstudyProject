package yong.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import yong.vo.Lecture;
import yong.vo.LectureBook;
import yong.vo.Notion;
import yong.vo.Study;
import yong.vo.StudyApply;
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
	
	public String getdate() {	
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;		
		
		try {
			conn = connect();
			pstmt = conn.prepareStatement("select CURDATE();");
			rs = pstmt.executeQuery();
			
			if( rs.next()) {
				return rs.getString(1);	// 성공이면 ->쿼리결과 리턴
			}
		}
		catch (Exception e) {
			// TODO: handle exception
			
		}
		return "";
	}
	
	public int getnext() {	//게시물 마지막 번호
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			conn = connect();
			pstmt = conn.prepareStatement("select max(notionkey) from notion;");
			rs = pstmt.executeQuery();
			
			if( rs.next()) {
				
				return rs.getInt(1) + 1;	// 마지막 번호 + 1
			}else {
				
				return 1;
			}
		
		}
		catch (Exception e) {
			// TODO: handle exception
				//db 오류
		}
		return -1;
	}

	public String login(String id, String pwd) {
		String major = null;
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = connect();
			pstmt = conn.prepareStatement("select major from user where id=? and pwd=?;");
			pstmt.setString(1, id);
			pstmt.setString(2, pwd);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				major = rs.getString(1);
			}
		}catch (Exception e) {
			System.out.println("Login error : " + e);
		}finally {
			close(conn, pstmt,rs);
		}
		return major;
	}
	public void join(User user) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			conn = connect();
			pstmt = conn.prepareStatement("insert into user values(?,?,?,?,?,?);");
			pstmt.setInt(1, user.getUserclass());
			pstmt.setString(2, user.getId());
			pstmt.setString(3, user.getPwd());
			pstmt.setString(4, user.getName());
			pstmt.setString(5, user.getMajor());
			pstmt.setString(6, user.getPhone());
			pstmt.executeUpdate();
		}catch (Exception e) {
			System.out.println("Join error : " + e);
		}finally {
			close(conn, pstmt);
		}
		
	}
	public void update(User user) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			conn = connect();
			pstmt = conn.prepareStatement("update user set userclass=?, id=?,pwd=?,name=?,major=?,phone=? where userclass=?;");
			pstmt.setInt(1, user.getUserclass());
			pstmt.setString(2, user.getId());
			pstmt.setString(3, user.getPwd());
			pstmt.setString(4, user.getName());
			pstmt.setString(5, user.getMajor());
			pstmt.setString(6, user.getPhone());
			pstmt.setInt(7, user.getUserclass());
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
				lecture.setDetail(rs.getString(8));
			}
		}catch (Exception e) {
			System.out.println("Join error : " + e);
		}finally {
			close(conn, pstmt, rs);
		}
		return lecture;
	}
	public void studywrite(Study study) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			conn = connect();
			pstmt = conn.prepareStatement("insert into study(title,user,major,maxpeople,location,img,contents) values(?,?,?,?,?,?,?);");
			
			pstmt.setString(1, study.getTitle());
			pstmt.setString(2, study.getUser());
			pstmt.setString(3, study.getMajor());
			pstmt.setInt(4, study.getMaxpeople());
			pstmt.setString(5, study.getLocation());
			pstmt.setString(6, study.getImg());
			pstmt.setString(7, study.getContents());
			pstmt.executeUpdate();
		}catch (Exception e) {
			System.out.println("Join error : " + e);
		}finally {
			close(conn, pstmt);
		}
		
	}
	public ArrayList<Study> studylist() {
		ArrayList<Study> studies = new ArrayList<Study>();
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		Study study = null;
		try {
			conn = connect();
			pstmt  = conn.prepareStatement("select * from study;");
			rs = pstmt.executeQuery();
			while (rs.next()) {
				study = new Study();
				study.setStudykey(rs.getInt(1));
				study.setTitle(rs.getString(2));
				study.setUser(rs.getString(3));
				study.setMajor(rs.getString(4));
				study.setMaxpeople(rs.getInt(5));
				study.setLocation(rs.getString(6));
				study.setImg(rs.getString(7));
				study.setContents(rs.getString(8));
				studies.add(study);
			}
		}catch (Exception e) {
			System.out.println("Join error : " + e);
		}finally {
			close(conn, pstmt, rs);
		}
		return studies;
	}
	public Study studyview(String key) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		Study study = null;
		try {
			conn = connect();
			pstmt  = conn.prepareStatement("select * from study where studyKey=?;");
			pstmt.setString(1, key);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				study = new Study();
				study.setStudykey(rs.getInt(1));
				study.setTitle(rs.getString(2));
				study.setUser(rs.getString(3));
				study.setMajor(rs.getString(4));
				study.setMaxpeople(rs.getInt(5));
				study.setLocation(rs.getString(6));
				study.setImg(rs.getString(7));
				study.setContents(rs.getString(8));
			}
		}catch (Exception e) {
			System.out.println("Join error : " + e);
		}finally {
			close(conn, pstmt, rs);
		}
		return study;
	}
	public void studyapply(StudyApply studyapplyuser) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			conn = connect();
			pstmt = conn.prepareStatement("insert into studyapply(studykey, userid, application) values(?,?,?);");
			pstmt.setInt(1, studyapplyuser.getStudykey());
			pstmt.setString(2, studyapplyuser.getUserid());
			pstmt.setString(3, studyapplyuser.getApplocation());
			pstmt.executeUpdate();
		}catch (Exception e) {
			System.out.println("Join error : " + e);
		}finally {
			close(conn, pstmt);
		}
		
	}
	public String countapply(int studykey) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String applypeople = null;
		try {
			conn = connect();
			pstmt  = conn.prepareStatement("select count(*) from studyapply where studyKey = ?;");
			pstmt.setInt(1, studykey);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				applypeople = rs.getString(1);
			}
			if(applypeople == null) {
				applypeople = "0";
			}
		}catch (Exception e) {
			System.out.println("Join error : " + e);
		}finally {
			close(conn, pstmt, rs);
		}
		return applypeople;
	}
	
	public boolean comcompleted(int studykey, String userid) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		boolean completed = false;
		try {
			conn = connect();
			pstmt  = conn.prepareStatement("select * from studyapply where studyKey = ? and userid = ?;");
			pstmt.setInt(1, studykey);
			pstmt.setString(2, userid);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				completed = true;
			}
			
		}catch (Exception e) {
			System.out.println("Join error : " + e);
		}finally {
			close(conn, pstmt, rs);
		}
		return completed;
	}
	public void notionwrite(Notion notion) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			conn = connect();
			pstmt = conn.prepareStatement("insert into notion values(?,?,?,?,?);");
			pstmt.setInt(1, getnext());
			pstmt.setString(2, notion.getTitle());
			pstmt.setString(3, notion.getContents());
			pstmt.setString(4, notion.getFile());
			pstmt.setString(5, getdate());
			pstmt.executeUpdate();
		}catch (Exception e) {
			System.out.println("Join error : " + e);
		}finally {
			close(conn, pstmt);
		}
		
	}
	public ArrayList<Notion> notionlist() {
		ArrayList<Notion> notions = new ArrayList<Notion>();
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		Notion notion = null;
		try {
			conn = connect();
			pstmt  = conn.prepareStatement("select notionkey,title,notiondate from notion;");
			rs = pstmt.executeQuery();
			while (rs.next()) {
				notion = new Notion();
				notion.setNotionkey(rs.getInt(1));
				notion.setTitle(rs.getString(2));
				notion.setNotiondate(rs.getString(3));
				notions.add(notion);				
			}
		}catch (Exception e) {
			System.out.println("Join error : " + e);
		}finally {
			close(conn, pstmt, rs);
		}
		return notions;
	}
	public ArrayList<Notion> notionsearch(String title) {
		ArrayList<Notion> notions = new ArrayList<Notion>();
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		Notion notion = null;
		try {
			conn = connect();
			pstmt  = conn.prepareStatement("select notionkey,title,notiondate from notion where title =?;");
			pstmt.setString(1, title);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				notion = new Notion();
				notion.setNotionkey(rs.getInt(1));
				notion.setTitle(rs.getString(2));
				notion.setNotiondate(rs.getString(3));
				notions.add(notion);				
			}
		}catch (Exception e) {
			System.out.println("Join error : " + e);
		}finally {
			close(conn, pstmt, rs);
		}
		return notions;
	}
	public Notion notionview(String key) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		Notion notion = null;
		try {
			conn = connect();
			pstmt  = conn.prepareStatement("select * from notion where notionkey=?;");
			pstmt.setString(1, key);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				notion = new Notion();
				notion.setNotionkey(rs.getInt(1));
				notion.setTitle(rs.getString(2));
				notion.setContents(rs.getString(3));
				notion.setFile(rs.getString(4));
				notion.setNotiondate(rs.getString(5));
			}
		}catch (Exception e) {
			System.out.println("Join error : " + e);
		}finally {
			close(conn, pstmt, rs);
		}
		return notion;
	}
	public void lecturebook(LectureBook lectureBook) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			conn = connect();
			pstmt = conn.prepareStatement("insert into lecturebook(userid, lecturename, bookdate, booktime, confirm) values(?,?,?,?,?);");
			pstmt.setString(1, lectureBook.getUserid());
			pstmt.setString(2, lectureBook.getLecturename());
			pstmt.setString(3, lectureBook.getBookdate());
			pstmt.setString(4, lectureBook.getBooktime());
			pstmt.setString(5, lectureBook.getConfirm());
			pstmt.executeUpdate();
		}catch (Exception e) {
			System.out.println("Join error : " + e);
		}finally {
			close(conn, pstmt);
		}
		
	}
	public ArrayList<Lecture> userlectureA(String userid) {
		ArrayList<Lecture> lectures = new ArrayList<Lecture>();
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		Lecture lecture = null;
		try {
			conn = connect();
			pstmt  = conn.prepareStatement("select distinct(a.img), a.college, a.location, a.title from lecture a, lecturebook b where b.userid = ? and a.title = b.lecturename;");
			pstmt.setString(1, userid);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				lecture = new Lecture();
				lecture.setImg(rs.getString(1));
				lecture.setCollege(rs.getString(2));
				lecture.setLocation(rs.getString(3));
				lecture.setTitle(rs.getString(4));
				lectures.add(lecture);
			}
		}catch (Exception e) {
			System.out.println("Join error : " + e);
		}finally {
			close(conn, pstmt, rs);
		}
		return lectures;
	}
	public ArrayList<LectureBook> userlectureB(String userid) {
		ArrayList<LectureBook> lectureBooks = new ArrayList<LectureBook>();
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		LectureBook lectureBook = null;
		try {
			conn = connect();
			pstmt  = conn.prepareStatement("select distinct(b.lecturename), b.bookdate, b.confirm from lecture a, lecturebook b where b.userid = ? and a.title = b.lecturename;");
			pstmt.setString(1, userid);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				lectureBook = new LectureBook();
				lectureBook.setLecturename(rs.getString(1));
				lectureBook.setBookdate(rs.getString(2));
				lectureBook.setConfirm(rs.getString(3));
				lectureBooks.add(lectureBook);
			}
		}catch (Exception e) {
			System.out.println("Join error : " + e);
		}finally {
			close(conn, pstmt, rs);
		}
		return lectureBooks;
	}
	public ArrayList<LectureBook> userlecturetime(String title, String bookdate) {
		ArrayList<LectureBook> lecturetimes = new ArrayList<LectureBook>();
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		LectureBook lectureBook = null;
		try {
			conn = connect();
			pstmt  = conn.prepareStatement("select lecturename,booktime from lecturebook where lecturename = ? and bookdate=?;");
			pstmt.setString(1, title);
			pstmt.setString(2, bookdate);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				lectureBook = new LectureBook();
				lectureBook.setLecturename(rs.getString(1));
				lectureBook.setBooktime(rs.getString(2));
				lecturetimes.add(lectureBook);
			}
		}catch (Exception e) {
			System.out.println("Join error : " + e);
		}finally {
			close(conn, pstmt, rs);
		}
		return lecturetimes;
	}
	public User searchuser(String userid) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		User user = null;
		try {
			conn = connect();
			pstmt  = conn.prepareStatement("select * from user where id=?;");
			pstmt.setString(1, userid);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				user = new User();
				user.setUserclass(rs.getInt(1));
				user.setId(rs.getString(2));
				user.setPwd(rs.getString(3));
				user.setName(rs.getString(4));
				user.setMajor(rs.getString(5));
				user.setPhone(rs.getString(6));
			}
		}catch (Exception e) {
			System.out.println("searchuser error : " + e);
		}finally {
			close(conn, pstmt, rs);
		}
		return user;
	}
	public ArrayList<Study> userStudySearch(String userid) {
		ArrayList<Study> studies = new ArrayList<Study>();
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		Study study = null;
		try {
			conn = connect();
			pstmt  = conn.prepareStatement("select studykey, title, location, maxpeople from study where user=?;");
			pstmt.setString(1, userid);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				study = new Study();
				study.setStudykey(rs.getInt(1));
				study.setTitle(rs.getString(2));
				study.setLocation(rs.getString(3));
				study.setMaxpeople(rs.getInt(4));
				studies.add(study);
			}
		}catch (Exception e) {
			System.out.println("userStudySearch error : " + e);
		}finally {
			close(conn, pstmt, rs);
		}
		return studies;
	}
	public ArrayList<User> studyapplyuserU(int studykey) {
		ArrayList<User> users = new ArrayList<User>();
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		User user = null;
		try {
			conn = connect();
			pstmt  = conn.prepareStatement("select a.name, a.major, a.phone from  user a, studyapply b where b.studykey = ? and a.id = b.userid;");
			pstmt.setInt(1, studykey);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				user = new User();
				user.setName(rs.getString(1));
				user.setMajor(rs.getString(2));
				user.setPhone(rs.getString(3));
				users.add(user);
			}
		}catch (Exception e) {
			System.out.println("studyapplyuserU error : " + e);
		}finally {
			close(conn, pstmt, rs);
		}
		return users;
	}
	public ArrayList<StudyApply> studyapplyuserA(int studykey) {
		ArrayList<StudyApply> applies = new ArrayList<StudyApply>();
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		StudyApply apply = null;
		try {
			conn = connect();
			pstmt  = conn.prepareStatement("select b.application from  user a, studyapply b where b.studykey = ? and a.id = b.userid;");
			pstmt.setInt(1, studykey);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				apply = new StudyApply();
				apply.setApplocation(rs.getString(1));
				applies.add(apply);
			}
		}catch (Exception e) {
			System.out.println("studyapplyuserA error : " + e);
		}finally {
			close(conn, pstmt, rs);
		}
		return applies;
	}
	public ArrayList<Study> applyuserSearch(String userid) {
		ArrayList<Study> applysuerstudy = new ArrayList<Study>();
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		Study study = null;
		try {
			conn = connect();
			pstmt  = conn.prepareStatement("select a.studykey, a.title, a.major, a.maxpeople from study a, studyapply b where b.userid = ? and a.studykey = b.studykey;");
			pstmt.setString(1, userid);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				study = new Study();
				study.setStudykey(rs.getInt(1));
				study.setTitle(rs.getString(2));
				study.setMajor(rs.getString(3));
				study.setMaxpeople(rs.getInt(4));
				applysuerstudy.add(study);
			}
		}catch (Exception e) {
			System.out.println("applyuserSearch error : " + e);
		}finally {
			close(conn, pstmt, rs);
		}
		return applysuerstudy;
	}
	public void usercanclestudy(String userid, String studykey) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			conn = connect();
			pstmt = conn.prepareStatement("delete from studyapply where userid = ? and studykey = ?;");
			pstmt.setString(1, userid);
			pstmt.setString(2, studykey);
			pstmt.executeUpdate();
		}catch (Exception e) {
			System.out.println("usercanclestudy error : " + e);
		}finally {
			close(conn, pstmt);
		}
		
	}
	public ArrayList<User> searchAlluser() {
		ArrayList<User> users = new ArrayList<User>();
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		User user = null;
		try {
			conn = connect();
			pstmt  = conn.prepareStatement("select * from user;");
			rs = pstmt.executeQuery();
			while (rs.next()) {
				user = new User();
				user.setUserclass(rs.getInt(1));
				user.setId(rs.getString(2));
				user.setPwd(rs.getString(3));
				user.setName(rs.getString(4));
				user.setMajor(rs.getString(5));
				user.setPhone(rs.getString(6));
				users.add(user);
			}
		}catch (Exception e) {
			System.out.println("studyapplyuserU error : " + e);
		}finally {
			close(conn, pstmt, rs);
		}
		return users;
	}
	public ArrayList<LectureBook> datecount() {
		ArrayList<LectureBook> lectBooks = new ArrayList<LectureBook>();
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		LectureBook lectureBook = null;
		try {
			conn = connect();
			pstmt  = conn.prepareStatement("select bookdate, count(*) from lecturebook group by bookdate;");
			rs = pstmt.executeQuery();
			while (rs.next()) {
				lectureBook = new LectureBook();
				lectureBook.setBookdate(rs.getString(1));
				lectureBook.setCount(rs.getString(2));
				lectBooks.add(lectureBook);
			}
		}catch (Exception e) {
			System.out.println("Datecount error : " + e);
		}finally {
			close(conn, pstmt, rs);
		}
		return lectBooks;
	}
	public ArrayList<LectureBook> lecturelist(String date) {
		ArrayList<LectureBook> lecturelist = new ArrayList<LectureBook>();
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		LectureBook lectureBook = null;
		try {
			conn = connect();
			pstmt  = conn.prepareStatement("select * from lecturebook where bookdate = ?;");
			pstmt.setString(1, date);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				lectureBook = new LectureBook();
				lectureBook.setBookkey(rs.getInt(1));
				lectureBook.setUserid(rs.getString(2));
				lectureBook.setLecturename(rs.getString(3));
				lectureBook.setBookdate(rs.getString(4));
				lectureBook.setBooktime(rs.getString(5));
				lectureBook.setConfirm(rs.getString(6));
				lecturelist.add(lectureBook);
			}
		}catch (Exception e) {
			System.out.println("Datecount error : " + e);
		}finally {
			close(conn, pstmt, rs);
		}
		return lecturelist;
	}
	public void leturestateupdate(String state, int key) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			conn = connect();
			pstmt = conn.prepareStatement("update lecturebook set confirm=? where bookkey=?;");
			pstmt.setString(1, state);
			pstmt.setInt(2, key);
			pstmt.executeUpdate();
		}catch (Exception e) {
			System.out.println("usercanclestudy error : " + e);
		}finally {
			close(conn, pstmt);
		}
	}
	public String findID(int userclass, String name) {
		String userid = null;
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = connect();
			pstmt = conn.prepareStatement("select id from user where userclass=? and name=?;");
			pstmt.setInt(1, userclass);
			pstmt.setString(2, name);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				userid = rs.getString(1);
			}
		}catch (Exception e) {
			System.out.println("Login error : " + e);
		}finally {
			close(conn, pstmt,rs);
		}
		return userid;		
	}
	public String findpwd(String id, String name) {
		String searchpwd = null;
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = connect();
			pstmt = conn.prepareStatement("select pwd from user where id=? and name=?;");
			pstmt.setString(1, id);
			pstmt.setString(2, name);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				searchpwd = rs.getString(1);
			}
		}catch (Exception e) {
			System.out.println("Login error : " + e);
		}finally {
			close(conn, pstmt,rs);
		}
		return searchpwd;
	}
	public void updatepwd(String pwd, String userid) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			conn = connect();
			pstmt = conn.prepareStatement("update user set pwd=? where id=?;");
			pstmt.setString(1, pwd);
			pstmt.setString(2, userid);
			pstmt.executeUpdate();
		}catch (Exception e) {
			System.out.println("usercanclestudy error : " + e);
		}finally {
			close(conn, pstmt);
		}
		
	}
	

}
