package com.zhihu.serviceinterface;

import java.util.List;

import com.zhihu.dto.CommentDto;
import com.zhihu.model.Comment;

public interface CommentService {
	boolean publishComment(Comment comment);
	public List<CommentDto> selectComment(String commentTopic);
}
