package com.zhihu.serviceimpl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.LinkedList;
import java.util.List;

import com.zhihu.dao.CommentDao;
import com.zhihu.dao.TopicDao;
import com.zhihu.dto.CommentDto;
import com.zhihu.model.Comment;
import com.zhihu.model.Topic;
import com.zhihu.serviceinterface.CommentService;
import com.zhihu.util.Dbutil;

/**
 * 
 * joecqupt 下午6:28:16
 */
public class CommentServiceImpl implements CommentService {
	private CommentDao commentDao = CommentDao.getInstance();
	private TopicDao topicDao = TopicDao.getInstance();

	@Override
	public boolean publishComment(Comment comment) {
		int i = topicDao.addTopicComment(comment.getCommentTopic());// 添加话题的赞的数量
		// 这里应该有事务 但是没有 没有就没有
//		System.out.println(i);
		return commentDao.addComment(comment) > 0 ? true : false;
	}

	private static CommentService commentService = new CommentServiceImpl();

	public static CommentService getInstance() {
		return commentService;
	}

	@Override
	public List<CommentDto> selectComment(String commentTopic) {
		List<CommentDto> list = new LinkedList<>();
		Dbutil db = new Dbutil();
		Connection con = db.getCon();
		ResultSet res = null;
		PreparedStatement pre = null;
		String sql = "select t1.*,(t2.comment_id) as reply_id,(t2.comment_content) as reply_content,(t2.comment_user) as reply_userid,t2.reply_nickname from (select c.*,u.user_nick_name,u.user_head from T_COMMENT c left join t_user u on c.comment_user=u.user_id) t1 left join (select c.*,(u.user_nick_name) as reply_nickname from T_COMMENT c left join t_user u on c.comment_user=u.user_id) t2 on t1.comment_reply=t2.comment_id where t1.comment_topic=? order by t1.comment_time desc";
		try {
			pre = con.prepareStatement(sql);
			pre.setString(1, commentTopic);
			res = pre.executeQuery();
			while (res.next()) {
				CommentDto cd = new CommentDto(res.getString(1), res.getString(2), res.getString(3), res.getString(4),
						res.getString(5), res.getTimestamp(6), res.getString(7), res.getString(8), res.getString(9),
						res.getString(10), res.getString(11), res.getString(12));
				System.out.println(cd);
				list.add(cd);
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
		CommentServiceImpl cs = new CommentServiceImpl();
		System.out.println(cs.selectComment("2"));
	}

}
