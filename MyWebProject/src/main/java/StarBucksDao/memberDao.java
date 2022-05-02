package StarBucksDao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import StarBucksDto.memberDto;
import mysql.db.DbConnect;

public class memberDao {
	DbConnect db = new DbConnect();
	//멤버 추가
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
	
	//핸드폰번호 중복 체크
	
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
	
	//이메일 중복체크
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
	//ID 중복체크
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
		//id에 따라서 이름 가져오기
		public String getName(String id)
		{
			String name="";
			
			Connection conn=db.getConnection();
			PreparedStatement pstmt=null;
			ResultSet rs=null;
			
			String sql="select name from member where id=?";
			
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
		//핸드폰 번호로 ID 찾기!
		public String findIDhp(String hp)
		{
			String id="";
			
			Connection conn=db.getConnection();
			PreparedStatement pstmt=null;
			ResultSet rs=null;
			
			String sql="select id from member where hp=?";
			
			try {
				pstmt=conn.prepareStatement(sql);
				pstmt.setString(1, hp);
				rs=pstmt.executeQuery();
				
				if(rs.next())
					id=rs.getString("id");
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			finally {
				db.dbClose(rs, pstmt, conn);
			}
			
			return id;
		}
		//Email로 ID 찾기 
		public String findIDemail(String email)
		{
			String id="";
			
			Connection conn=db.getConnection();
			PreparedStatement pstmt=null;
			ResultSet rs=null;
			
			String sql="select id from member where email=?";
			
			try {
				pstmt=conn.prepareStatement(sql);
				pstmt.setString(1, email);
				rs=pstmt.executeQuery();
				
				if(rs.next())
					id=rs.getString("id");
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			finally {
				db.dbClose(rs, pstmt, conn);
			}
			
			return id;
		}
		//id로 비밀번호 바꾸기
		public void changePass(String id,String npass)
		{
						
			Connection conn=db.getConnection();
			PreparedStatement pstmt=null;

			
			String sql="update member set pass = ? where id=?";
			
			try {
				pstmt=conn.prepareStatement(sql);
				pstmt.setString(1, npass);
				pstmt.setString(2, id);
				pstmt.execute();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			finally {
				db.dbClose(pstmt, conn);
			}
			
		}
		//로그인(1.아이디,비번이 둘다 맞다 2.비번이 틀렸다. 3.아이디가 없다.
		public int getLogin(String id, String mypass) {
			int idx=0;
			
			Connection conn = db.getConnection();
			PreparedStatement pstmt =null;
			ResultSet rs = null;
			
			String sql ="select * from member where id=?";
			
			try {
				pstmt =conn.prepareStatement(sql);
				pstmt.setString(1, id);
				rs=pstmt.executeQuery();
				if(rs.next()) {
					//비번 비교
					if(rs.getString("pass").equals(mypass)) {
						idx=1;
					}
					else {
						idx=2;
					}
				}
				else {
					idx=3;
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}finally {
				db.dbClose(rs, pstmt, conn);
			}
			
			return idx;
		}
		//아이디와 핸드폰 번호가 맞는지 확인
		public boolean checkHpfromID(String id,String hp) {
			boolean b =false;
			Connection conn = db.getConnection();
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			
			String sql = "select hp from member where id =?";
			
			try {
				pstmt=conn.prepareStatement(sql);
				pstmt.setString(1, id);
				rs=pstmt.executeQuery();
				
				if(rs.next()) {
					//비번 비교
					if(rs.getString("hp").equals(hp)) {
						b = true;
					}
					
				}

			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}finally {
				 db.dbClose(rs, pstmt, conn);
			}
			return b;
		}
		//아이디와 이메일이 맞는지 확인
		public boolean checkEmfromID(String id,String email) {
			boolean b =false;
			Connection conn = db.getConnection();
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			
			String sql = "select email from member where id =?";
			
			try {
				pstmt=conn.prepareStatement(sql);
				pstmt.setString(1, id);
				rs=pstmt.executeQuery();
				
				if(rs.next()) {
					//비번 비교
					if(rs.getString("email").equals(email)) {
						b = true;
					}
					
				}

			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}finally {
				 db.dbClose(rs, pstmt, conn);
			}
			return b;
		}
		//아이디랑 맞는 모든 데이터 가져오기
		public memberDto getDataID(String id) {
			Connection conn = db.getConnection();
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			memberDto dto = new memberDto();
			String sql = "select * from member where id = ?";
			
			try {
				pstmt=conn.prepareStatement(sql);
				pstmt.setString(1, id);
				rs = pstmt.executeQuery();
				if(rs.next()) {
					dto.setId(rs.getString("id"));
					dto.setPass(rs.getString("pass"));
					dto.setName(rs.getString("name"));
					dto.setHp(rs.getString("hp"));
					dto.setEmail(rs.getString("email"));
					dto.setNickname(rs.getString("nickname"));
					dto.setBirthday(rs.getString("birthday"));
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			finally {
				db.dbClose(rs, pstmt, conn);
			}
			return dto;
		}
		//아이디에 맞는 정보 업데이트
		
}
