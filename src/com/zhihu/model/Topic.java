package com.zhihu.model;

import java.util.Date;

/**
 * 
 * joecqupt 下午7:56:24
 */
public class Topic {

	private String topicId;
	private String topicTitle;
	private String topicUser;
	private int topicType;
	private int topicStars;
	private String topicContent;
	private int topicComments;
	private Date topicTime;
	private String topicPic;
	
	public String getTopicPic() {
		return topicPic;
	}

	public void setTopicPic(String topicPic) {
		this.topicPic = topicPic;
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

	
	public Topic() {
		super();
	}

	@Override
	public String toString() {
		return "Topic [topicId=" + topicId + ", topicTitle=" + topicTitle + ", topicUser=" + topicUser + ", topicType="
				+ topicType + ", topicStars=" + topicStars + ", topicContent=" + topicContent + ", topicComments="
				+ topicComments + ", topicTime=" + topicTime + ", topicPic=" + topicPic + "]";
	}

	public Topic(String topicId, String topicTitle, String topicUser, int topicType, int topicStars,
			String topicContent, int topicComments, Date topicTime, String topicPic) {
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
	}
	 
}
