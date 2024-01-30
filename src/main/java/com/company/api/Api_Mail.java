package com.company.api;

import java.util.Properties;

import com.company.dto.UserDto;

public class Api_Mail {
	private String subject, content;
	
	public void sendMail(String subject, String content, UserDto dto) {
		
		String host="smtp.naver.com";
		String user="testdump123@naver.com";
		String password="Ljs159753";
		
		String to=dto.getUser_email();
		Properties props= new Properties();
	}
}
