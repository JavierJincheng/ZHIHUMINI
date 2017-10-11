package com.zhihu.dao;

import java.util.List;

import com.zhihu.model.Topic;
import com.zhihu.model.TopicType;
import com.zhihu.util.CRUDUtil;

/**
 * 
 * joecqupt 下午7:56:17
 */
public class TopicDao {
	private TopicDao() {
		// 构造函数私有化
	}

	private static TopicDao topicDao = new TopicDao();

	// 单例模式
	public static TopicDao getInstance() {
		return topicDao;
	}

	public int addTopic(Topic topic) {
		return CRUDUtil.add("insert into t_topic values(?,?,?,?,?,?,?,systimestamp,?)",
				new Object[] { topic.getTopicId(), topic.getTopicTitle(), topic.getTopicUser(), topic.getTopicType(),
						topic.getTopicStars(), topic.getTopicContent(), topic.getTopicComments(),
						topic.getTopicPic() });
	}

	public int addTopicComment(String topicId) {
		return CRUDUtil.update("update t_topic set topic_comments=topic_comments+1 where topic_id=?",
				new Object[] { topicId });
	}

	public List<TopicType> getAllTopicTypeList(){
		try {
			return CRUDUtil.selectListModel("select type_id as \"typeId\",type_name as \"typeName\",type_pic as \"typePic\" from T_TOPIC_TYPE",null, TopicType.class);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
}
