package com.bw.service;

import javax.servlet.http.HttpSession;

import com.bw.bean.User;

public interface UserService {

	boolean login(HttpSession session, User user);

	User usertest(String username);

}
