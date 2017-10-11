package com.zhihu.serviceinterface;


import java.util.List;

import com.zhihu.dto.TopicDto;
import com.zhihu.model.Topic;
import com.zhihu.model.TopicType;



/**
 * 
 * joecqupt 下午7:56:41
 */
public interface TopicService {
	
	public TopicDto SelectTopic(String topicId);
	public TopicDto SelectTopic(String topicId,String userId);
	public List<TopicDto> pagingSelectTopic(int pageNow);
	public List<TopicDto> pagingSelectTopic(String userId,int pageNow);
	public int getPageCount();
	public int getPageCount(String userId);
	public boolean deleteTopic(String topicId);
    public boolean isLike(String userId,String topicId); 
    public boolean like(String userId,String topicId);
    public boolean addLike(String topicId);
	
	public boolean deleteTopicById(String topicId);
	
	List<TopicType> getAllTopicTypeList();
	boolean publishTopic(Topic topic);

	public List<TopicDto> pagingSelectTopicByType(int type);
	public List<TopicDto> pagingSelectTopicByType(String userId,int type);
}
