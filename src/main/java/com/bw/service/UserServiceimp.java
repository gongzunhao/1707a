package com.bw.service;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.bw.bean.User;
import com.bw.mapper.UserDao;

@Service
@Transactional
public class UserServiceimp implements UserService{
	@Resource
	private UserDao dao;

	public boolean login(HttpSession session, User user) {
		User u=dao.login(user);
		if(u!=null){
			session.setAttribute("user",u);
		return true;
		}
		return false;
	}

	public User usertest(String username) {
		// TODO Auto-generated method stub
		return dao.usertest(username);
	}
}
