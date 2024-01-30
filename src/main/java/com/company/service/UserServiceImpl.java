package com.company.service;

import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.company.dao.UserDao;
import com.company.dto.UserVoDto;
import com.company.dto.MainContentDto;
import com.company.dto.UserDto;

@Service
public class UserServiceImpl implements UserService {

	@Autowired
	UserDao dao;
	@Override
	public List<UserDto> readAll() {
		return dao.selectAll();
	}

	@Override
	public UserDto select_user(UserDto dto) {
		return dao.select(dto);
	}

	@Override
	public UserDto loginUser(UserDto dto) {
		return dao.loginUser(dto);
	}
	@Override
	public int insert_user(UserDto dto) {
		try {
			dto.setUser_ip(InetAddress.getLocalHost().getHostAddress());
		} catch (UnknownHostException e) {
			e.printStackTrace();
		}
		return dao.insert(dto);
	}

	@Override
	public int update_user(UserDto dto) {
		return dao.update(dto);
	}

	@Override
	public int delete_user(UserDto dto) {
		return dao.delete(dto);
	}

	@Override
	public UserDto find_id(UserDto dto) {
		return dao.findid(dto);
	}

	@Override
	public UserDto find_pass(UserDto dto) {
		return dao.findpass(dto);
	}

	@Override
	public int admin_plus(UserDto dto) {
		return dao.update_adminplus(dto);
	}

	@Override
	public int admin_delete(UserDto dto) {
		return dao.update_admindelete(dto);
	}

	@Override
	public List<UserVoDto> contentList(UserVoDto vodto) {

		return dao.contentList(vodto);
	}

	@Override
	public List<UserDto> select_admin() {
		return dao.select_admin();
	}

	@Override
	public int delete_myconetent(UserDto dto) {
		return dao.delete_myconetent(dto);
	}

	@Override
	public String random_code() {
		String code="";
		for(int i=0; i<4; i++) {			
			String random = String.valueOf((int)Math.floor(Math.random()*10));
			code+=random;
		}
		System.out.println(code);
		return code;
	}

	
}
