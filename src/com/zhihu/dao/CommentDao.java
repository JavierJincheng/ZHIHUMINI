package com.zhihu.dao;

import com.zhihu.model.Comment;
import com.zhihu.util.CRUDUtil;

public class CommentDao {
	private static CommentDao commentDao = new CommentDao();

	private CommentDao() {

	}

	public static CommentDao getInstance() {
		return commentDao;
	}

	public int addComment(Comment comment) {
		return CRUDUtil.add("insert into t_comment values(?,?,?,?,?,systimestamp)",
				new Object[] { comment.getCommentId(), comment.getCommentContent(), comment.getCommentUser(),
						comment.getCommentReplay(), comment.getCommentTopic() });
	}
}
