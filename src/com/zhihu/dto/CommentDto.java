package com.zhihu.dto;

import java.util.Date;

public class CommentDto {
	private String commentId;
	private String commentContent;
	private String commentUserId;
	private String commentReplay;
	private String commentTopicId;
	private Date commentTime;
	private String commentUserNickName;
	private String commentUserHead;
	private String replayCommentId;
	private String replayCommentContent;
	private String replayCommentUserId;
	private String replayCommentUserNickName;
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
	public String getCommentUserId() {
		return commentUserId;
	}
	public void setCommentUserId(String commentUserId) {
		this.commentUserId = commentUserId;
	}
	public String getCommentReplay() {
		return commentReplay;
	}
	public void setCommentReplay(String commentReplay) {
		this.commentReplay = commentReplay;
	}
	public String getCommentTopicId() {
		return commentTopicId;
	}
	public void setCommentTopicId(String commentTopicId) {
		this.commentTopicId = commentTopicId;
	}
	public Date getCommentTime() {
		return commentTime;
	}
	public void setCommentTime(Date commentTime) {
		this.commentTime = commentTime;
	}
	public String getCommentUserNickName() {
		return commentUserNickName;
	}
	public void setCommentUserNickName(String commentUserNickName) {
		this.commentUserNickName = commentUserNickName;
	}
	public String getCommentUserHead() {
		return commentUserHead;
	}
	public void setCommentUserHead(String commentUserHead) {
		this.commentUserHead = commentUserHead;
	}
	public String getReplayCommentId() {
		return replayCommentId;
	}
	public void setReplayCommentId(String replayCommentId) {
		this.replayCommentId = replayCommentId;
	}
	public String getReplayCommentContent() {
		return replayCommentContent;
	}
	public void setReplayCommentContent(String replayCommentContent) {
		this.replayCommentContent = replayCommentContent;
	}
	public String getReplayCommentUserId() {
		return replayCommentUserId;
	}
	public void setReplayCommentUserId(String replayCommentUserId) {
		this.replayCommentUserId = replayCommentUserId;
	}
	public String getReplayCommentUserNickName() {
		return replayCommentUserNickName;
	}
	public void setReplayCommentUserNickName(String replayCommentUserNickName) {
		this.replayCommentUserNickName = replayCommentUserNickName;
	}
	@Override
	public String toString() {
		return "CommentDto [commentId=" + commentId + ", commentContent=" + commentContent + ", commentUserId="
				+ commentUserId + ", commentReplay=" + commentReplay + ", commentTopicId=" + commentTopicId
				+ ", commentTime=" + commentTime + ", commentUserNickName=" + commentUserNickName + ", commentUserHead="
				+ commentUserHead + ", replayCommentId=" + replayCommentId + ", replayCommentContent="
				+ replayCommentContent + ", replayCommentUserId=" + replayCommentUserId + ", replayCommentUserNickName="
				+ replayCommentUserNickName + "]";
	}
	public CommentDto(String commentId, String commentContent, String commentUserId, String commentReplay,
			String commentTopicId, Date commentTime, String commentUserNickName, String commentUserHead,
			String replayCommentId, String replayCommentContent, String replayCommentUserId,
			String replayCommentUserNickName) {
		super();
		this.commentId = commentId;
		this.commentContent = commentContent;
		this.commentUserId = commentUserId;
		this.commentReplay = commentReplay;
		this.commentTopicId = commentTopicId;
		this.commentTime = commentTime;
		this.commentUserNickName = commentUserNickName;
		this.commentUserHead = commentUserHead;
		this.replayCommentId = replayCommentId;
		this.replayCommentContent = replayCommentContent;
		this.replayCommentUserId = replayCommentUserId;
		this.replayCommentUserNickName = replayCommentUserNickName;
	}
	public CommentDto() {
		super();
	}
	

}
