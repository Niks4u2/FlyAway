package com.dao;

import com.dto.Admin;

public class AdminDaoImpl implements AdminDao{

	public boolean validateAdmin(Admin admin) {
		boolean isAdminValid = false;
		String email = admin.getEmail();
		String password = admin.getPassword();
		
		if(email.equals("nik") && password.equals("nik123"))
			isAdminValid = true;
		
		return isAdminValid;
	}

}
