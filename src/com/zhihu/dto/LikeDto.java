package com.zhihu.dto;

public class LikeDto {
private String userId; 
private String topicId; 
private String topicTitle; 
private String topicContent;
public String getUserId() {
	return userId;
}
public void setUserId(String userId) {
	this.userId = userId;
}
public String getTopicId() {
	return topicId;
}
public void setTopicId(String topicId) {
	this.topicId = topicId;
}
public String getTopicTitle() {
	return topicTitle;
}
public void setTopicTitle(String topicTitle) {
	this.topicTitle = topicTitle;
}
public String getTopicContent() {
	return topicContent;
}
public void setTopicContent(String topicContent) {
	this.topicContent = topicContent;
}
public LikeDto(String userId, String topicId, String topicTitle, String topicContent) {
	this.userId = userId;
	this.topicId = topicId;
	this.topicTitle = topicTitle;
	this.topicContent = topicContent;
}
@Override
public String toString() {
	return "LikeDto [userId=" + userId + ", topicId=" + topicId + ", topicTitle=" + topicTitle + ", topicContent="
			+ topicContent + "]";
} 


}
