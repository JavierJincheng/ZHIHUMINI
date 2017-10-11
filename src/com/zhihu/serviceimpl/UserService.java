package com.zhihu.serviceimpl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

import javax.management.MXBean;

import com.zhihu.dto.LikeDto;
import com.zhihu.dto.TopicDto;
import com.zhihu.model.Comment;
import com.zhihu.model.Topic;
import com.zhihu.model.User;
import com.zhihu.serviceinterface.IUserService;
import com.zhihu.util.Dbutil;
import com.zhihu.util.MD5Util;

public class UserService implements IUserService {

	@Override
	public int login(String userName, String userPass) {
		Dbutil db = new Dbutil();
		Connection con = db.getCon();
		PreparedStatement pre = null;
		ResultSet res = null;
		User user = new User();
		String pass = new String();
		String sql = "select user_pass from t_user where user_name=?";
		try {
			pre = con.prepareStatement(sql);
			pre.setString(1, userName);
			res = pre.executeQuery();
			if (res.next()) {
				user.setUserPass(res.getString("user_pass"));
				pass = user.getUserPass().trim();
				if (userPass.trim().equals(pass)) {
					return 1;
				} else {
					return 0;
				}
			} else {
				return -1;
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				res.close();
				pre.close();
				con.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return 0;
	}

	@Override
	public int Register(User user) {

		MD5Util MD5=new MD5Util();
		String uuid=UUID.randomUUID().toString().replace("-", "");
		String password=MD5.md5Encode(user.getUserPass());
		Dbutil dbutil=new Dbutil();
		String sql="insert into T_USER (T_USER.USER_NAME,T_USER.USER_NICK_NAME,T_USER.USER_PASS,USER_ID,T_USER.USER_HEAD,T_USER.USER_DESC)"
				+ " VALUES('"+user.getUserName()+"','"+user.getUserNiceName()+"','"+password+"','"+uuid+"','http://otq7c7vb0.bkt.clouddn.com/d0.jpg','萌新驾到，请多指教。')";
		Connection con=dbutil.getCon();
		PreparedStatement pre=null;
		int result=0;

		try {
			pre = con.prepareStatement(sql);
			result = pre.executeUpdate();
			if (result != 0) {
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				pre.close();
				con.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

		}

		return result;
	}

	public User selectMg(String userName, String userPass) {
		Dbutil db = new Dbutil();
		User u = null;
		Connection con = db.getCon();
		PreparedStatement pre = null;
		ResultSet res = null;
		String sql = "select * from t_user where user_name=? and user_pass=?";
		try {
			pre = con.prepareStatement(sql);
			pre.setString(1, userName);
			pre.setString(2, userPass);
			res = pre.executeQuery();
			if (res.next()) {
				u = new User(res.getString(1), res.getString(2), res.getString(3), res.getInt(4), res.getString(5),
						res.getString(6), res.getString(7), res.getInt(8));
				return u;

			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				res.close();
				pre.close();
				con.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}

		return null;

	}

	@Override

	public int isRegister(String Email) {
		int result = 0;
		Dbutil dbutil = new Dbutil();
		ResultSet rs = null;
		String sql = "select count(*) from T_USER where T_USER.USER_NAME='" + Email + "'";
		Connection con = dbutil.getCon();
		PreparedStatement pre = null;
		try {
			pre = con.prepareStatement(sql);
			rs = pre.executeQuery();
		} catch (SQLException e1) {
			e1.printStackTrace();
		}
		
		
		try {
			if (rs.next()) {
				result = rs.getInt(1);
				return result;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				rs.close();
				pre.close();
				con.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return 0;
	}

	public int update(String userNickName, int userAge, String userDesc, String userId) {
		Dbutil db = new Dbutil();
		Connection con = db.getCon();
		PreparedStatement pre = null;
		int i = 0;
		String sql = "update t_user set user_nick_name=?,user_age=?,user_desc=? where user_id=?";
		try {
			pre = con.prepareStatement(sql);
			pre.setString(1, userNickName);
			pre.setInt(2, userAge);
			pre.setString(3, userDesc);
			
			pre.setString(4, userId);
			i = pre.executeUpdate();
			if (i != 0) {
				return i;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block

			e.printStackTrace();
		} finally {
			try {
				pre.close();
				con.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

		}

		return 0;
	}

	@Override
	public int UpdateUserPhoto(String UserId, String PhotoStr) {
		Dbutil db = new Dbutil();
		Connection con = db.getCon();
		PreparedStatement pre = null;
		int result = 0;
		String sql = "update T_USER set T_USER.USER_HEAD='" + PhotoStr + "' where T_USER.USER_ID='" + UserId + "'";
		try {
			pre = con.prepareStatement(sql);
			result = pre.executeUpdate();
			return result;
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			try {
				pre.close();
				con.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return 0;
	}

	public int delete(String Id) {
		Dbutil db = new Dbutil();
		Connection con = db.getCon();
		PreparedStatement pre = null;
		int i = 0;
		String sql = "delete from t_user where user_id=?";
		try {
			pre = con.prepareStatement(sql);
			pre.setString(1, Id);
			i = pre.executeUpdate();
			if (i != 0) {
				return i;
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				pre.close();
				con.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

		}

		return i;

	}

	@Override
	public List<User> selectAll() {
		
		
		Dbutil db=new Dbutil();
		Connection con=db.getCon();
		PreparedStatement pre=null;
		ResultSet res=null;
		List<User> list=new ArrayList<>();
		String sql="select * from T_USER";
		try {
			pre=con.prepareStatement(sql);
			
			res=pre.executeQuery();
			while (res.next()) {
				User u=new User(res.getString("USER_NAME"), res.getString("USER_PASS"), res.getString("USER_NICK_NAME"), res.getInt("USER_AGE"), 
						res.getString("USER_ID"), res.getString("USER_DESC"), res.getString("USER_HEAD"), res.getInt("USER_STATE"),res.getInt("USER_COUNT"));
				System.out.println(u);
				list.add(u);
			}
			return list;}
			catch (Exception e) {
				e.printStackTrace();
			}finally {
				
				try {
					res.close();
					pre.close();
					con.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				
			}
		return null;
	}
		
	
	public ArrayList getUserMessage(String userId) {
		Dbutil db = new Dbutil();
		Connection con = db.getCon();
		PreparedStatement pre = null;
		ResultSet rs = null;
		ArrayList list = new ArrayList();
		String sql = "select * from T_USER where T_USER.USER_ID='" + userId + "'";
		try {
			pre = con.prepareStatement(sql);
			rs = pre.executeQuery();
			while (rs.next()) {

				list.add(rs.getString("USER_NAME"));
				list.add(rs.getString("USER_NICK_NAME"));
				list.add(rs.getString("USER_AGE"));
				list.add(rs.getString("USER_DESC"));
				list.add(rs.getString("USER_HEAD"));
			}

			return list;
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			try {
				rs.close();
				pre.close();
				con.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}

		return null;
	}

	public ArrayList selectAll(String Id) {
		Dbutil db = new Dbutil();
		Connection con = db.getCon();
		PreparedStatement pre = null;
		ResultSet res = null;
		ArrayList list = new ArrayList();
		String sql = "select * from t_user where user_state=?";
		try {
			pre = con.prepareStatement(sql);
			pre.setString(1, Id);
			res = pre.executeQuery();
			while (res.next()) {
				User u = new User(res.getString(1), res.getString(2), res.getString(3), res.getInt(4), res.getString(5),
						res.getString(6), res.getString(7), res.getInt(8));
				list.add(u);
			}
			return list;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				res.close();
				pre.close();
				con.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

		}
		return null;
	}

	public static void main(String[] args) {
		IUserService iu=new UserService();
	List list=iu.selectLike("aed315d7314f40ddae476301b5e97508");
for(int i=0;i<list.size();i++)
	System.out.println(list.get(i));
	
	}


	@Override
	public int selectUserCount() {
		Dbutil db=new Dbutil();
		Connection con=db.getCon();
		PreparedStatement pre=null;
		ResultSet res=null;
		int i=0;
		String sql="select count(*) from t_user";
		try {
			pre=con.prepareStatement(sql);
			res=pre.executeQuery();
			if (res.next()) {
				i=res.getInt(1);
				return i;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally {
			try {
				res.close();
				pre.close();
				con.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return 0;
	}

	@Override
	public User selectOMg(String UserId) {
		Dbutil db=new Dbutil();
		Connection con=db.getCon();
		PreparedStatement pre=null;
		ResultSet res=null;
		User u=new User();
		String sql="select * from t_user "
				+ "where user_id=?";
		try {
			pre=con.prepareStatement(sql);
			pre.setString(1, UserId);
			res=pre.executeQuery();
			if (res.next()) {
				u=new User(res.getString(1), res.getString(2), res.getString(3), 
						res.getInt(4), res.getString(5), res.getString(6),
						res.getString(7), res.getInt(8));
				return u;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			try {
				res.close();
				pre.close();
				con.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		return null;
	}

	@Override
	public int selectCount(String UserId) {
		Dbutil db=new Dbutil();
		Connection con=db.getCon();
		PreparedStatement pre=null;
		ResultSet res=null;
		User u=new User();
		String sql="select user_count from t_user where user_id=?";
		int i=0;
		try {
			pre=con.prepareStatement(sql);
			pre.setString(1, UserId);
			res=pre.executeQuery();
			if (res.next()) {
				i=res.getInt(1);
				return i;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			try {
				res.close();
				pre.close();
				con.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return 0;
	}

	@Override
	public int updateCount(String UserId) {
		User u=new User();
		Dbutil db=new Dbutil();
		Connection con=db.getCon();
		PreparedStatement pre=null;
		int i =0;
		String sql="update t_user set user_count=user_count+1 where user_id=?";

        try {
			pre=con.prepareStatement(sql);
			pre.setString(1, UserId);
			i=pre.executeUpdate();
			if (i!=0) {
				return i;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
        finally {
			try {
				pre.close();
				con.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<Topic> selectTopics(String UserId) {
		Dbutil db = new Dbutil();
		Connection con = db.getCon();
		ResultSet res = null;
		PreparedStatement pre = null;
		List<Topic> list=new ArrayList<>();
		String sql = "select * from t_topic t where t.topic_user=? order by t.TOPIC_TIME desc";
		try {
			pre = con.prepareStatement(sql);
			pre.setString(1, UserId);
			res = pre.executeQuery();
			while(res.next()) {
				Topic topic = new Topic(res.getString(1), res.getString(2), res.getString(3), res.getInt(4), res.getInt(5), res.getString(6), res.getInt(7), res.getTimestamp(8),res.getString(9));
				list.add(topic);
			}	
			return list;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				pre.close();
				db.getClose();
				res.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return null;
	}

	@Override
	public List<Comment> selectComment(String UserId) {
		Dbutil db = new Dbutil();
		Connection con = db.getCon();
		ResultSet res = null;
		PreparedStatement pre = null;
		List<Comment> list=new ArrayList<>();
		String sql = "select * from t_comment  s where s.comment_user=?";
		try {
			pre = con.prepareStatement(sql);
			pre.setString(1, UserId);
			res = pre.executeQuery();
			while(res.next()) {
				Comment comment = new Comment(res.getString(1), res.getString(2), res.getString(3), res.getString(4), res.getString(5), res.getTimestamp(6));
				
				list.add(comment);
			}	
			return list;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				pre.close();
				db.getClose();
				res.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return null;
	}

	@Override
	public String getTopic(String topicId) {
		Dbutil db = new Dbutil();
		Connection con = db.getCon();
		ResultSet res = null;
		PreparedStatement pre = null;
	String sql="select T_TOPIC.TOPIC_CONTENT from T_TOPIC where T_TOPIC.TOPIC_ID=?";
	try {
		pre=con.prepareStatement(sql);
		pre.setString(1, topicId);
		res=pre.executeQuery();
		if(res.next()){
			return res.getString(1);
		}
	} catch (SQLException e) {
		e.printStackTrace();
	}finally {
		try {
			
			pre.close();
			con.close();
			res.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
	
		return null;
	}
	public int getLikeCount(String userId) {
		// TODO Auto-generated method stub
		Dbutil db = new Dbutil();
		Connection con = db.getCon();
		PreparedStatement pre = null;
		ResultSet res = null;
		String sql = "select count(x.topic_id) from t_topic_like x where x.user_id=?";
		try {
			pre = con.prepareStatement(sql);
			pre.setString(1, userId);
			res = pre.executeQuery();
			String a;
			if (res.next()) {
				a = res.getString(1);
				return Integer.parseInt(a);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				pre.close();
				db.getClose();
				res.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return 0;
	}

	@Override
	public List<LikeDto> selectLike(String UserId) {
		Dbutil db = new Dbutil();
		Connection con = db.getCon();
		ResultSet res = null;
		PreparedStatement pre = null;
		List<LikeDto> list=new ArrayList<>();
		String sql = "select l.*,t.topic_title,t.topic_content from t_topic_like l left join t_topic t on t.topic_id=l.topic_id where l.user_id=?";
		try {
			pre = con.prepareStatement(sql);
			pre.setString(1, UserId);
			res = pre.executeQuery();
			while(res.next()) {
				LikeDto likedto = new LikeDto(res.getString(1), res.getString(2), res.getString(3), res.getString(4));
				
				list.add(likedto);
			}	
			return list;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				pre.close();
				db.getClose();
				res.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return null;
	}

}
