package com.internousdev.pumpkin.action;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.pumpkin.dao.UserInfoDAO;
import com.opensymphony.xwork2.ActionSupport;

public class ResetPasswordCompleteAction extends ActionSupport implements SessionAware {

	private Map<String,Object> session;

	public String execute(){

		String result = ERROR;
		UserInfoDAO userInfoDAO = new UserInfoDAO();
		int count = userInfoDAO.resetPassword(session.get("userIdResetPassword").toString(), session.get("newPassword").toString());

		if(count > 0){
			result = SUCCESS;

		}
		session.remove("userIdResetPassword");
		session.remove("newPassword");

		return result;
	}

	public Map<String,Object> getSession(){
		return session;
	}
	public void setSession(Map<String,Object>session){
		this.session=session;
	}
}
