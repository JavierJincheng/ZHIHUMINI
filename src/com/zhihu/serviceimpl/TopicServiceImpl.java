package com.zhihu.serviceimpl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;

import com.zhihu.model.Topic;
import com.zhihu.model.TopicType;
import com.zhihu.serviceinterface.TopicService;
import com.zhihu.util.CRUDUtil;
import com.zhihu.util.Dbutil;
import com.zhihu.dao.TopicDao;
import com.zhihu.dto.TopicDto;
import com.zhihu.serviceinterface.TopicService;

/**
 * 
 * joecqupt 下午7:56:31
 */

public class TopicServiceImpl implements TopicService {
	private TopicDao topicDao = TopicDao.getInstance();
	Dbutil db = new Dbutil();

	public TopicServiceImpl() {
	}

	private static TopicServiceImpl topicService = new TopicServiceImpl();

	// 单例模式
	public static TopicService getInstance() {
		return topicService;
	}

	@Override
	public TopicDto SelectTopic(String topicId) {
		Dbutil db = new Dbutil();
		Connection con = db.getCon();
		ResultSet res = null;
		PreparedStatement pre = null;
		String sql = "select c.*,u.user_nick_name,u.user_desc,u.user_head from (select x.*,t.type_name,t.type_pic from t_topic x left join t_topic_type t on x.topic_type=t.type_id) c left join t_user u on c.TOPIC_USER=u.user_id where c.topic_id=?";
		try {
			pre = con.prepareStatement(sql);
			pre.setString(1, topicId);
			res = pre.executeQuery();
			if (res.next()) {
				TopicDto topicdto = new TopicDto(res.getString(1), res.getString(2), res.getString(3), res.getInt(4),
						res.getInt(5), res.getString(6), res.getInt(7), res.getTimestamp(8), res.getString(9),
						res.getString(10), res.getString(11), res.getString(12), res.getString(13), res.getString(14));
				System.out.println(topicdto);
				return topicdto;
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
		return null;
	}

	@Override
	public TopicDto SelectTopic(String topicId, String userId) {
		Dbutil db = new Dbutil();
		Connection con = db.getCon();
		ResultSet res = null;
		PreparedStatement pre = null;
		String sql = "select t.*,l.user_id from (select c.*,u.user_nick_name,u.user_desc,u.user_head from (select x.*,t.type_name,t.type_pic from t_topic x left join t_topic_type t on x.topic_type=t.type_id) c left join t_user u on c.TOPIC_USER=u.user_id where c.topic_id=?) t left join t_topic_like l on t.topic_id=l.topic_id and l.user_id=?";
		try {
			pre = con.prepareStatement(sql);
			pre.setString(1, topicId);
			pre.setString(2, userId);
			res = pre.executeQuery();
			if (res.next()) {
				TopicDto topicdto = new TopicDto(res.getString(1), res.getString(2), res.getString(3), res.getInt(4),
						res.getInt(5), res.getString(6), res.getInt(7), res.getTimestamp(8), res.getString(9),
						res.getString(10), res.getString(11), res.getString(12), res.getString(13), res.getString(14),
						res.getString(15));
				System.out.println(topicdto);
				return topicdto;
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
		return null;
	}

	@Override
	public List<TopicDto> pagingSelectTopic(int i) {
		int j = i * 5;
		int k = j - 5;
		List<TopicDto> list = new LinkedList<>();
		Dbutil db = new Dbutil();
		Connection con = db.getCon();
		ResultSet res = null;
		PreparedStatement pre = null;
		String sql = "select TOPIC_ID,TOPIC_TITLE,TOPIC_USER,TOPIC_TYPE,TOPIC_STARS,TOPIC_CONTENT,TOPIC_COMMENTS,TOPIC_TIME,TOPIC_PIC,TOPIC_TYPE_NAME,TOPIC_TYPE_PIC,USER_NICK_NAME,USER_DESC,USER_HEAD from (select  rownum r,t0.* from (select t1.*,t2.user_nick_name,t2.user_desc,t2.user_head from (select  x.*,y.type_name TOPIC_TYPE_NAME,y.type_pic TOPIC_TYPE_PIC from t_topic x,t_topic_type y where topic_type=type_id) t1 left join t_user t2 on t1.topic_user=t2.user_id) t0 where rownum<=?) where r>? order by TOPIC_TIME desc";
		try {
			pre = con.prepareStatement(sql);
			pre.setInt(1, j);
			pre.setInt(2, k);
			res = pre.executeQuery();
			while (res.next()) {
				TopicDto topicdto = new TopicDto(res.getString(1), res.getString(2), res.getString(3), res.getInt(4),
						res.getInt(5), res.getString(6), res.getInt(7), res.getTimestamp(8), res.getString(9),
						res.getString(10), res.getString(11), res.getString(12), res.getString(13), res.getString(14));
				System.out.println(topicdto);
				list.add(topicdto);
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
	public List<TopicDto> pagingSelectTopicByType(int type) {
		List<TopicDto> list = new LinkedList<>();
		Dbutil db = new Dbutil();
		Connection con = db.getCon();
		ResultSet res = null;
		PreparedStatement pre = null;
		String sql = "select TOPIC_ID,TOPIC_TITLE,TOPIC_USER,TOPIC_TYPE,TOPIC_STARS,TOPIC_CONTENT,TOPIC_COMMENTS,TOPIC_TIME,TOPIC_PIC,TOPIC_TYPE_NAME,TOPIC_TYPE_PIC,USER_NICK_NAME,USER_DESC,USER_HEAD from (select  rownum r,t0.* from (select t1.*,t2.user_nick_name,t2.user_desc,t2.user_head from (select  x.*,y.type_name TOPIC_TYPE_NAME,y.type_pic TOPIC_TYPE_PIC from t_topic x,t_topic_type y where topic_type=type_id) t1 left join t_user t2 on t1.topic_user=t2.user_id) t0 ) where topic_type=?  order by TOPIC_TIME desc";
		try {
			pre = con.prepareStatement(sql);
			pre.setInt(1, type);
			res = pre.executeQuery();
			while (res.next()) {
				TopicDto topicdto = new TopicDto(res.getString(1), res.getString(2), res.getString(3), res.getInt(4),
						res.getInt(5), res.getString(6), res.getInt(7), res.getTimestamp(8), res.getString(9),
						res.getString(10), res.getString(11), res.getString(12), res.getString(13), res.getString(14));
				System.out.println(topicdto);
				list.add(topicdto);
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
	public List<TopicDto> pagingSelectTopic(String userId, int i) {
		int j = i * 5;
		int k = j - 5;
		List<TopicDto> list = new LinkedList<>();
		Dbutil db = new Dbutil();
		Connection con = db.getCon();
		ResultSet res = null;
		PreparedStatement pre = null;
		String sql = "select TOPIC_ID,TOPIC_TITLE,TOPIC_USER,TOPIC_TYPE,TOPIC_STARS,TOPIC_CONTENT,TOPIC_COMMENTS,TOPIC_TIME,TOPIC_PIC,TOPIC_TYPE_NAME,TOPIC_TYPE_PIC,USER_NICK_NAME,USER_DESC,USER_HEAD,LIKESTATE from (select  rownum r,t0.* from (select t3.*,t4.user_id as likestate from(select t1.*,t2.user_nick_name,t2.user_desc,t2.user_head from(select  x.*,y.type_name TOPIC_TYPE_NAME,y.type_pic TOPIC_TYPE_PIC from t_topic x,t_topic_type y where topic_type=type_id) t1 left join t_user t2 on t1.topic_user=t2.user_id) t3 left join t_topic_like t4 on (t3.topic_id=t4.topic_id and t4.user_id=?)) t0 where rownum<=?)where r>? order by TOPIC_TIME desc";
		try {
			pre = con.prepareStatement(sql);
			pre.setString(1, userId);
			pre.setInt(2, j);
			pre.setInt(3, k);
			res = pre.executeQuery();
			while (res.next()) {
				TopicDto topicdto = new TopicDto(res.getString(1), res.getString(2), res.getString(3), res.getInt(4),
						res.getInt(5), res.getString(6), res.getInt(7), res.getTimestamp(8), res.getString(9),
						res.getString(10), res.getString(11), res.getString(12), res.getString(13), res.getString(14)
						);
				
				System.out.println(topicdto);
				topicdto.setTopicLikestate(res.getString(15));
				list.add(topicdto);
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

	public static void main(String[] args) {
		TopicServiceImpl ts = new TopicServiceImpl();
		// List<Topic> list=ts.pagingSelectAllTopic(1);
		// if(ts.deleteTopic("7")){
		// System.out.println(ts.getPageCount());
		// }
		System.out.println(ts.getPageCount("LILI9"));
	}

	@Override
	public List<TopicType> getAllTopicTypeList() {
		// TODO Auto-generated method stub
		return topicDao.getAllTopicTypeList();
	}

	@Override
	public int getPageCount() {
		Dbutil db = new Dbutil();
		Connection con = db.getCon();
		ResultSet res = null;
		PreparedStatement pre = null;
		String sql = "select * from T_TOPIC";
		List<Topic> p = new LinkedList<>();
		int i = 0;
		try {
			pre = con.prepareStatement(sql);
			res = pre.executeQuery();
			while (res.next()) {
				i++;
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
		return (i - 1) / 5 + 1;
	}

	
	
	
	@Override
	public int getPageCount(String userId) {
		Dbutil db = new Dbutil();
		Connection con = db.getCon();
		ResultSet res = null;
		PreparedStatement pre = null;
		String sql = "select * from T_TOPIC where TOPIC_USER =?";
		List<Topic> p = new LinkedList<>();
		int i = 0;
		try {
			pre = con.prepareStatement(sql);
			pre.setString(1, userId);
			res = pre.executeQuery();
			while (res.next()) {
				i++;
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
		return (i - 1) / 5 + 1;
	}

	@Override
	public boolean deleteTopic(String topicId) {
		Dbutil db = new Dbutil();
		Connection con = db.getCon();
		PreparedStatement pre = null;
		String sql = "delete from T_TOPIC where TOPIC_ID=?";
		List<Topic> p = new LinkedList<>();
		try {
			pre = con.prepareStatement(sql);
			pre.setString(1, topicId);
			int i = pre.executeUpdate();
			if (i == 1) {
				return true;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				pre.close();
				db.getClose();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return false;
	}

	@Override
	public boolean publishTopic(Topic topic) {
		return topicDao.addTopic(topic) > 0 ? true : false;
	}

	@Override
	public boolean like(String userId, String topicId) {
		// TODO Auto-generated method stub
		Dbutil db = new Dbutil();
		Connection con = db.getCon();
		PreparedStatement pre = null;
		String sql = "insert into T_TOPIC_LIKE values(?,?)";
		try {
			pre = con.prepareStatement(sql);
			pre.setString(1, userId);
			pre.setString(2, topicId);
			int i = pre.executeUpdate();
			if (i > 0) {
				return true;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				pre.close();
				db.getClose();
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return false;
	}
	

	@Override
	public boolean addLike(String topicId) {
		// TODO Auto-generated method stub
		Dbutil db = new Dbutil();
		Connection con = db.getCon();
		PreparedStatement pre = null;
		String sql = "update T_TOPIC l set l.topic_stars=l.topic_stars+1 where l.topic_id=?";
		try {
			pre = con.prepareStatement(sql);
			pre.setString(1, topicId);
			int i = pre.executeUpdate();
			if (i > 0) {
				return true;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				pre.close();
				db.getClose();
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return false;
	}

	@Override
	public boolean isLike(String userId, String topicId) {
		Dbutil db = new Dbutil();
		Connection con = db.getCon();
		PreparedStatement pre = null;
		ResultSet res = null;
		String sql = "select * from T_TOPIC_LIKE where user_id=? and topic_id=?";
		try {
			pre = con.prepareStatement(sql);
			pre.setString(1, userId);
			pre.setString(2, topicId);
			res = pre.executeQuery();

			if (res.next()) {
				return false;
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
		// TODO Auto-generated method stub
		return true;
	}

	@Override
	public boolean deleteTopicById(String topicId) {
		int result = CRUDUtil.delete("delete from t_comment where comment_topic=?", new Object[] { topicId });
		System.out.println(result);
		// 这里应该有事务 但是没有
		return CRUDUtil.delete("delete from t_topic where topic_id=?", new Object[] { topicId }) > 0 ? true : false;
	}

	@Override
	public List<TopicDto> pagingSelectTopicByType(String userId, int type) {
		List<TopicDto> list = new LinkedList<>();
		Dbutil db = new Dbutil();
		Connection con = db.getCon();
		ResultSet res = null;
		PreparedStatement pre = null;
		String sql = "select TOPIC_ID,TOPIC_TITLE,TOPIC_USER,TOPIC_TYPE,TOPIC_STARS,TOPIC_CONTENT,TOPIC_COMMENTS,TOPIC_TIME,TOPIC_PIC,TOPIC_TYPE_NAME,TOPIC_TYPE_PIC,USER_NICK_NAME,USER_DESC,USER_HEAD,LIKESTATE from (select  rownum r,t0.* from (select t3.*,t4.user_id as likestate from(select t1.*,t2.user_nick_name,t2.user_desc,t2.user_head from(select  x.*,y.type_name TOPIC_TYPE_NAME,y.type_pic TOPIC_TYPE_PIC from t_topic x,t_topic_type y where topic_type=type_id) t1 left join t_user t2 on t1.topic_user=t2.user_id) t3 left join t_topic_like t4 on (t3.topic_id=t4.topic_id and t4.user_id=?))  t0 ) where topic_type=? order by TOPIC_TIME desc";
		try {
			pre = con.prepareStatement(sql);
			pre.setString(1, userId);
			pre.setInt(2, type);
			res = pre.executeQuery();
			while (res.next()) {
				TopicDto topicdto = new TopicDto(res.getString(1), res.getString(2), res.getString(3), res.getInt(4),
						res.getInt(5), res.getString(6), res.getInt(7), res.getTimestamp(8), res.getString(9),
						res.getString(10), res.getString(11), res.getString(12), res.getString(13), res.getString(14),
						res.getString(15));
				System.out.println(topicdto);
				list.add(topicdto);
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
