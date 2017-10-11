package com.zhihu.test;


import org.junit.Assert;
import org.junit.Test;

import com.zhihu.model.Comment;
import com.zhihu.serviceimpl.CommentServiceImpl;
import com.zhihu.util.Stringutil;

public class CommentServiceTest {

	@Test
	public void publishCommentService() {
		Comment comment=new Comment();
		comment.setCommentContent("测试");
		comment.setCommentId(Stringutil.getUUID());
		comment.setCommentReplay("0");
		comment.setCommentTopic("9e3d86e3b1a74d1692f5dcbd3b389dc5");
		comment.setCommentUser("df96e27893854e9f9f14e8ab8876ea45");
		Assert.assertTrue(CommentServiceImpl.getInstance().publishComment(comment));
	}

}
