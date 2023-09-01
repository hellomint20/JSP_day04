package day04;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class MemberDAO {
	Connection con;
	PreparedStatement ps;
	ResultSet rs;
	
	public MemberDAO() {
		con = DBConnect.getConnect();
	}
	public ArrayList<MemberDTO> getList(){
		ArrayList<MemberDTO> list = new ArrayList<>();
		
		String sql = "select * from members";
		try {
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			while(rs.next()) {
				MemberDTO dto = new MemberDTO();
				dto.setId(rs.getString("id"));
				dto.setPwd(rs.getString("pwd"));
				dto.setName(rs.getString("name"));
				dto.setAddr(rs.getString("addr"));
				dto.setTel(rs.getString("tel"));
				list.add(dto);
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		return list;
	}
	public int delete(String id) {
		int result =0;
		System.out.println("id : "+id);
		String sql = "delete from members where id='"+id+"'";
		try {
			ps = con.prepareStatement(sql);
			result = ps.executeUpdate();
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		return result;
	}
	public int check(String id, String pwd) {
		int result = 0;
		String sql = "select * from members where id='"+id+"'";
		try {
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			while(rs.next()) {
				if(rs.getString("pwd").equals(pwd)) { //로그인 성공
					result = 2;
				}else { //비밀번호 틀림
					result =1;
				}
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		return result;
	}
	public MemberDTO getInfo(String id) {
		MemberDTO dto = new MemberDTO();
		String sql = "select * from members where id='"+id+"'";
		try {
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			while(rs.next()) {
				
				dto.setId(rs.getString("id"));
				dto.setPwd(rs.getString("pwd"));
				dto.setName(rs.getString("name"));
				dto.setAddr(rs.getString("addr"));
				dto.setTel(rs.getString("tel"));
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		return dto;
	}
	public int register(MemberDTO dto) {
		String sql = "insert into members values(?, ?, ?, ?, ?)";
	
		int result = 0;
		try {
			ps = con.prepareStatement(sql);
			ps.setString(1, dto.getId() );
			ps.setString(2, dto.getPwd() );
			ps.setString(3, dto.getName() );
			ps.setString(4, dto.getAddr() );
			ps.setString(5, dto.getTel() );
			
			result = ps.executeUpdate();
		
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}
	public int modify(MemberDTO dto) {
		int result = 0;
		
		String sql = "update members set name=?,addr=?,tel=? where id=?";
		try {
			ps = con.prepareStatement(sql);
			ps.setString(1, dto.getName());
			ps.setString(2, dto.getAddr());
			ps.setString(3, dto.getTel());
			ps.setString(4, dto.getId());
			result = ps.executeUpdate();
		} catch (Exception e) {
			// TODO: handle exception
		}
		return result;
	}
}
