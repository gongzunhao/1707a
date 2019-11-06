package com.bw.mapper;

import com.bw.bean.User;

public interface UserDao {

	User login(User user);

	User usertest(String username);

}
