package data.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import java.util.Vector;

import data.dto.VoclistDto;
import mysql.db.DbConnect;

public class VoclistDao {

	DbConnect db=new DbConnect();
	
	//insert
		public void insertVoc(VoclistDto dto)
		{
			Connection conn=db.getConnection();
			PreparedStatement pstmt=null;
			String sql="insert into voclist (myid, email, phonenum, subject, content, photo, writeday, Expectwriteday ) values (?,?,?,?,?,?, now(), now())";
			
			try {
				pstmt=conn.prepareStatement(sql);
				pstmt.setString(1, dto.getMyid());
				pstmt.setString(2, dto.getEmail());
				pstmt.setString(3, dto.getPhonenum());
				pstmt.setString(4, dto.getSubject());
				pstmt.setString(5, dto.getContent());
				pstmt.setString(6, dto.getPhoto());

				pstmt.execute();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}finally {
				db.dbClose(pstmt, conn);
			}
		
		}
		
		
		
		//totalCount
		public int getTotalCount()
		{
			int n=0;
			
			Connection conn=db.getConnection();
			PreparedStatement pstmt=null;
			ResultSet rs=null;
			
			String sql="select count(*) from voclist";
			
			try {
				pstmt=conn.prepareStatement(sql);
				rs=pstmt.executeQuery();
				
				if(rs.next())
					n=rs.getInt(1);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}finally {
				db.dbClose(rs, pstmt, conn);
			}
			
			
			return n;
		}
		
		//전체출력...페이지에서 필요한 만큼만 리턴
		public List<VoclistDto> getList(int start,int perpage)
		{
			List<VoclistDto> list=new Vector<VoclistDto>();
			
			Connection conn=db.getConnection();
			PreparedStatement pstmt=null;
			ResultSet rs=null;
			
			String sql="select * from voclist order by num desc limit ?,?";
			
			try {
				pstmt=conn.prepareStatement(sql);
				
				pstmt.setInt(1, start);
				pstmt.setInt(2, perpage);
				rs=pstmt.executeQuery();
				
				while(rs.next())
				{
					VoclistDto dto=new VoclistDto();
					dto.setNum(rs.getString("num"));
					dto.setMyid(rs.getString("myid"));
					dto.setEmail(rs.getString("email"));
					dto.setPhonenum(rs.getString("phonenum"));
					dto.setSubject(rs.getString("subject"));
					dto.setContent(rs.getString("content"));
					dto.setPhoto(rs.getString("photo"));
					dto.setWriteday(rs.getTimestamp("writeday"));
					dto.setExpectwriteday(rs.getDate("expectwriteday"));
					
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
		
		//num에해당하는 dto반환
				public VoclistDto getData(String num)
				{
					VoclistDto dto=new VoclistDto();
					Connection conn=db.getConnection();
					PreparedStatement pstmt=null;
					ResultSet rs=null;
					
					String sql="select * from voclist where num=?";
					
					try {
						pstmt=conn.prepareStatement(sql);
						pstmt.setString(1, num);
						rs=pstmt.executeQuery();
						
						if(rs.next())
						{
							dto.setNum(rs.getString("num"));
							dto.setSubject(rs.getString("subject"));
							dto.setContent(rs.getString("content"));
							dto.setPhoto(rs.getString("photo"));
							dto.setWriteday(rs.getTimestamp("writeday"));
						}
					} catch (SQLException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}finally {
						db.dbClose(rs, pstmt, conn);
					}
					
					
					return dto;
				}
		
		
}
