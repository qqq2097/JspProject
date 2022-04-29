package StarBucksDao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import StarBucksDto.memberDto;
import mysql.db.DbConnect;

public class memberDao {
	DbConnect db = new DbConnect();
	//�뜲�씠�꽣 異붽��븯湲�
	public void insertMember(memberDto dto) {
		Connection conn = db.getConnection();
		PreparedStatement pstmt = null;
		
		String sql = "insert into member(num,id,pass,name,birthday,hp,email,nickname,gaip)"
				+"values (null,?,?,?,?,?,?,?,now())";
		try {
			pstmt=conn.prepareStatement(sql);
			
			pstmt.setString(1, dto.getId());
			pstmt.setString(2, dto.getPass());
			pstmt.setString(3, dto.getName());
			pstmt.setString(4, dto.getBirthday());
			pstmt.setString(5, dto.getHp());
			pstmt.setString(6, dto.getEmail());
			pstmt.setString(7, dto.getNickname());
			
			pstmt.execute();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			db.dbClose(pstmt, conn);
		}
	}
	
	//�빖�뱶�룿 踰덊샇 �솗�씤
	public boolean checkHp(String hp) {
		boolean b =false;
		Connection conn = db.getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String sql = "select * from member where hp =?";
		
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, hp);
			rs=pstmt.executeQuery();
			
			if(rs.next()) {
				b = true;
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			 db.dbClose(rs, pstmt, conn);
		}
		return b;
	}
	
	//�씠硫붿씪 �솗�씤
	public boolean checkEmail(String email) {
		boolean b =false;
		Connection conn = db.getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String sql = "select * from member where email =?";
		
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, email);
			rs=pstmt.executeQuery();
			
			if(rs.next()) {
				b = true;
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			 db.dbClose(rs, pstmt, conn);
		}
		return b;
	}
	//ID 以묐났 �솗�씤
		public boolean checkID(String id) {
			boolean b =false;
			Connection conn = db.getConnection();
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			
			String sql = "select * from member where id =?";
			
			try {
				pstmt=conn.prepareStatement(sql);
				pstmt.setString(1, id);
				rs=pstmt.executeQuery();
				
				if(rs.next()) {
					b = true;
				}

			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}finally {
				 db.dbClose(rs, pstmt, conn);
			}
			return b;
		}
		
		public String getName(String id)
		{
			String name="";
			
			Connection conn=db.getConnection();
			PreparedStatement pstmt=null;
			ResultSet rs=null;
			
			String sql="select * from member where id=?";
			
			try {
				pstmt=conn.prepareStatement(sql);
				pstmt.setString(1, id);
				rs=pstmt.executeQuery();
				
				if(rs.next())
					name=rs.getString("name");
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			finally {
				db.dbClose(rs, pstmt, conn);
			}
			
			return name;
		}
}
