package data.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import java.util.Vector;

import data.dto.AnswerDto;
import mysql.db.DbConnect;

public class AnswerDao {
	DbConnect db=new DbConnect();
	
	//insert
		public void insertAnswer(AnswerDto dto)
		{
			Connection conn=db.getConnection();
			PreparedStatement pstmt=null;
			PreparedStatement pstmt2=null;
			
			String sql="insert into answer (num,id,answer,answerday) values (?,?,?,now())";
			String sql2="update voclist set commentYn = 'Y' where num = ?";
			
			try {
				pstmt=conn.prepareStatement(sql);
				
				pstmt.setString(1, dto.getNum());
				pstmt.setString(2, dto.getId());
				pstmt.setString(3, dto.getAnswer());
				pstmt.execute();
				
				pstmt2=conn.prepareStatement(sql2);
				
				pstmt2.setString(1, dto.getNum());
				pstmt2.execute();
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}finally {
				db.dbClose(pstmt, conn);
				db.dbClose(pstmt2, conn);
			}
			
		}
		
		public List<AnswerDto> getAllAnswer(String num)
		{
			List<AnswerDto> list=new Vector<AnswerDto>();
			Connection conn=db.getConnection();
			PreparedStatement pstmt=null;
			ResultSet rs=null;
			
			String sql="select * from answer where num=? order by idx";
			
			try {
				pstmt=conn.prepareStatement(sql);
				pstmt.setString(1, num);
				rs=pstmt.executeQuery();
				
				while(rs.next())
				{
					AnswerDto dto=new AnswerDto();
					dto.setIdx(rs.getString("idx"));
					dto.setNum(rs.getString("num"));
					dto.setId(rs.getString("id"));
					dto.setAnswer(rs.getString("answer"));
					dto.setAnswerday(rs.getDate("answerday"));
					
					list.add(dto);
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}finally {
				db.dbClose(rs, pstmt, conn);
			}
			
			
			return list;
		}
		
		/*
		 * public void updateAnswer(AnswerDto dto) { Connection conn=db.getConnection();
		 * PreparedStatement pstmt=null;
		 * 
		 * String
		 * sql="insert into answer (num,id,answer,answerday) values (?,?,?,now())";
		 * 
		 * try { pstmt=conn.prepareStatement(sql);
		 * 
		 * pstmt.setString(1, dto.getNum()); pstmt.setString(2, dto.getId());
		 * pstmt.setString(3, dto.getAnswer()); pstmt.execute(); } catch (SQLException
		 * e) { // TODO Auto-generated catch block e.printStackTrace(); }finally {
		 * db.dbClose(pstmt, conn); }
		 * 
		 * }
		 */
		
		
}
