package com.zhihu.dto;

import java.util.Date;

public class TopicDto {
	private String topicId;
	private String topicTitle;
	private String topicUser;
	private int topicType;
	private int topicStars;
	private String topicContent;
	private int topicComments;
	private Date topicTime;
	private String topicPic;
	private String topicTypeName;
	private String topicTypePic;
	private String topicUserNickName;
	private String topicUserDesc;
	private String topicUserHead;	
	private String topicLikestate;//null为未点赞
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
	public String getTopicUser() {
		return topicUser;
	}
	public void setTopicUser(String topicUser) {
		this.topicUser = topicUser;
	}
	public int getTopicType() {
		return topicType;
	}
	public void setTopicType(int topicType) {
		this.topicType = topicType;
	}
	public int getTopicStars() {
		return topicStars;
	}
	public void setTopicStars(int topicStars) {
		this.topicStars = topicStars;
	}
	public String getTopicContent() {
		return topicContent;
	}
	public void setTopicContent(String topicContent) {
		this.topicContent = topicContent;
	}
	public int getTopicComments() {
		return topicComments;
	}
	public void setTopicComments(int topicComments) {
		this.topicComments = topicComments;
	}
	public Date getTopicTime() {
		return topicTime;
	}
	public void setTopicTime(Date topicTime) {
		this.topicTime = topicTime;
	}
	public String getTopicPic() {
		return topicPic;
	}
	public void setTopicPic(String topicPic) {
		this.topicPic = topicPic;
	}
	public String getTopicTypeName() {
		return topicTypeName;
	}
	public void setTopicTypeName(String topicTypeName) {
		this.topicTypeName = topicTypeName;
	}
	public String getTopicTypePic() {
		return topicTypePic;
	}
	public void setTopicTypePic(String topicTypePic) {
		this.topicTypePic = topicTypePic;
	}
	public String getTopicUserNickName() {
		return topicUserNickName;
	}
	public void setTopicUserNickName(String topicUserNickName) {
		this.topicUserNickName = topicUserNickName;
	}
	public String getTopicUserDesc() {
		return topicUserDesc;
	}
	public void setTopicUserDesc(String topicUserDesc) {
		this.topicUserDesc = topicUserDesc;
	}
	public String getTopicUserHead() {
		return topicUserHead;
	}
	public void setTopicUserHead(String topicUserHead) {
		this.topicUserHead = topicUserHead;
	}
	
	public String getTopicLikestate() {
		return topicLikestate;
	}
	public void setTopicLikestate(String topicLikestate) {
		this.topicLikestate = topicLikestate;
	}
	@Override
	public String toString() {
		return "TopicDto [topicId=" + topicId + ", topicTitle=" + topicTitle + ", topicUser=" + topicUser
				+ ", topicType=" + topicType + ", topicStars=" + topicStars + ", topicContent=" + topicContent
				+ ", topicComments=" + topicComments + ", topicTime=" + topicTime + ", topicPic=" + topicPic
				+ ", topicTypeName=" + topicTypeName + ", topicTypePic=" + topicTypePic + ", topicUserNickName="
				+ topicUserNickName + ", topicUserDesc=" + topicUserDesc + ", topicUserHead=" + topicUserHead
				+ ", topicLikestate=" + topicLikestate + "]";
	}
	public TopicDto(String topicId, String topicTitle, String topicUser, int topicType, int topicStars,
			String topicContent, int topicComments, Date topicTime, String topicPic, String topicTypeName,
			String topicTypePic, String topicUserNickName, String topicUserDesc, String topicUserHead) {
		super();
		this.topicId = topicId;
		this.topicTitle = topicTitle;
		this.topicUser = topicUser;
		this.topicType = topicType;
		this.topicStars = topicStars;
		this.topicContent = topicContent;
		this.topicComments = topicComments;
		this.topicTime = topicTime;
		this.topicPic = topicPic;
		this.topicTypeName = topicTypeName;
		this.topicTypePic = topicTypePic;
		this.topicUserNickName = topicUserNickName;
		this.topicUserDesc = topicUserDesc;
		this.topicUserHead = topicUserHead;
	}
	public TopicDto(String topicId, String topicTitle, String topicUser, int topicType, int topicStars,
			String topicContent, int topicComments, Date topicTime, String topicPic, String topicTypeName,
			String topicTypePic, String topicUserNickName, String topicUserDesc, String topicUserHead,
			String topicLikestate) {
		super();
		this.topicId = topicId;
		this.topicTitle = topicTitle;
		this.topicUser = topicUser;
		this.topicType = topicType;
		this.topicStars = topicStars;
		this.topicContent = topicContent;
		this.topicComments = topicComments;
		this.topicTime = topicTime;
		this.topicPic = topicPic;
		this.topicTypeName = topicTypeName;
		this.topicTypePic = topicTypePic;
		this.topicUserNickName = topicUserNickName;
		this.topicUserDesc = topicUserDesc;
		this.topicUserHead = topicUserHead;
		this.topicLikestate = topicLikestate;
	}

	

}
