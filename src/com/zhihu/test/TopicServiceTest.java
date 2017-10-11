package com.zhihu.test;

import org.junit.Assert;
import org.junit.Test;

import com.zhihu.model.Topic;
import com.zhihu.serviceimpl.TopicServiceImpl;
import com.zhihu.util.CRUDUtil;
import com.zhihu.util.Stringutil;

public class TopicServiceTest {

	@Test
	public void publishTopicTest() {
		Topic topic = new Topic();
		topic.setTopicComments(0);
		topic.setTopicContent("testAdd");
		topic.setTopicId(Stringutil.getUUID());
		topic.setTopicStars(0);
		topic.setTopicTitle("testAddTitle");
		topic.setTopicType(1);
		topic.setTopicUser(Stringutil.getUUID());
		topic.setTopicPic(Stringutil.getUUID());
		Assert.assertTrue(TopicServiceImpl.getInstance().publishTopic(topic));
	}

	@Test
	public void getAllTopicTypeTest() {
		System.out.println(TopicServiceImpl.getInstance().getAllTopicTypeList());
	}

	@Test
	public void insertTypeRecordTest() {
		Assert.assertEquals(1, CRUDUtil.add("insert into t_topic_type values(1,'编程',null)", new Object[]{}));
	}
}
