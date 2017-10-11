package com.zhihu.model;

import java.util.Date;

public class Comment {
	private String commentId;
	private String commentContent;
	private String commentUser;
	private String commentReplay;
	private String commentTopic;
	private Date commentTime;

	public String getCommentId() {
		return commentId;
	}

	public void setCommentId(String commentId) {
		this.commentId = commentId;
	}

	public String getCommentContent() {
		return commentContent;
	}

	public void setCommentContent(String commentContent) {
		this.commentContent = commentContent;
	}

	public String getCommentUser() {
		return commentUser;
	}

	public void setCommentUser(String commentUser) {
		this.commentUser = commentUser;
	}

	public String getCommentReplay() {
		return commentReplay;
	}

	public void setCommentReplay(String commentReplay) {
		this.commentReplay = commentReplay;
	}

	public String getCommentTopic() {
		return commentTopic;
	}

	public void setCommentTopic(String commentTopic) {
		this.commentTopic = commentTopic;
	}

	public Date getCommentTime() {
		return commentTime;
	}

	public void setCommentTime(Date commentTime) {
		this.commentTime = commentTime;
	}

	@Override
	public String toString() {
		return "Comment [commentId=" + commentId + ", commentContent=" + commentContent + ", commentUser=" + commentUser
				+ ", commentReplay=" + commentReplay + ", commentTopic=" + commentTopic + ", commentTime=" + commentTime
				+ "]";
	}

	public Comment(String commentId, String commentContent, String commentUser, String commentReplay,
			String commentTopic, Date commentTime) {
		super();
		this.commentId = commentId;
		this.commentContent = commentContent;
		this.commentUser = commentUser;
		this.commentReplay = commentReplay;
		this.commentTopic = commentTopic;
		this.commentTime = commentTime;
	}

	public Comment() {
		super();
	}
	

}
