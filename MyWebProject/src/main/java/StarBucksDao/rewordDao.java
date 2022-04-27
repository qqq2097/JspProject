package StarBucksDao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import java.util.Vector;

import StarBucksDto.RewordDto;
import mysql.db.DbConnect;

public class RewordDao {

	DbConnect db=new DbConnect();
	
	public List<RewordDto> getAllReword()
	{
		List<RewordDto> list=new Vector<RewordDto>();
		
		Connection conn=db.getConnection();
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		
		String sql="select * from reword order by num desc";
		
		try {
			pstmt=conn.prepareStatement(sql);	
			rs=pstmt.executeQuery();
			
			while(rs.next())
			{
				RewordDto dto=new RewordDto();
				
				dto.setNum(rs.getString("num"));
				dto.setCardnum(rs.getString("cardnum"));
				dto.setStarcnt(rs.getInt("starcnt"));
				dto.setStoreaddr(rs.getString("storeaddr"));
				dto.setBuyday(rs.getTimestamp("buyday"));
				
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
	
}
