package com.zhihu.serviceinterface;

import java.util.ArrayList;
import java.util.List;

import com.zhihu.dto.LikeDto;
import com.zhihu.model.Comment;
import com.zhihu.model.Topic;
import com.zhihu.model.User;

public interface IUserService {

	public int login(String user_name, String user_pass);

	public int Register(User user);

	public int isRegister(String Email);

	public User selectMg(String userName, String userPass);

	public int update(String userNickName, int userAge, String userDesc, String userId);

	int UpdateUserPhoto(String UserId, String PhotoStr);

	ArrayList getUserMessage(String userId);

	public int delete(String Id);

	public List<User> selectAll();

	public int selectUserCount();

	public List<User> selectAll(String Id);

	public User selectOMg(String UserId);
	public int selectCount(String UserId);
	public int updateCount(String UserId);
	public int getLikeCount(String UserId);
	
	public List<Topic> selectTopics(String UserId);
	public List<Comment> selectComment(String UserId);
	String getTopic(String topicId);
	public List<LikeDto> selectLike(String UserId);
}
