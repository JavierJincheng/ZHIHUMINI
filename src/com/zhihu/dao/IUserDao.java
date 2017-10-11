package com.zhihu.dao;


import java.nio.channels.SelectableChannel;
import java.util.ArrayList;
import java.util.List;

import com.zhihu.model.User;

public interface IUserDao {

	public int login(String userName,String userPass);
	public int Register(User user);
	public int isRegister(String Email);

	int UpdateUserPhoto(String UserId,String PhotoStr);
	ArrayList getUserMessage(String userId);

	public User selectMg(String userName,String userPass);
	public int update(String userNickName,int userAge,String userDesc,String userHead,String userId );
	public int delete(String Id);
	public List<User> selectAll(int page);
	public int selectUserCount();
	public List selectAll(String Id);
	public User selectOMg(String UserId);
	String getTopic(String topicId);

}
