package com.internousdev.alatanapizza.action;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.alatanapizza.dao.ChangePasswordConfirmDAO;
import com.internousdev.alatanapizza.dto.ChangePasswordDTO;
import com.opensymphony.xwork2.ActionSupport;


public class ChangePasswordConfirmAction extends ActionSupport implements SessionAware{
	private Map<String,Object>session;
	private String result;
	private String secret_answer;
	private int secret_question;
	private String newpass;
	private String errorUserid;
	private String errorpassword;
	private String userid;
	private String checkpass;
	private ChangePasswordConfirmDAO CPCdao=new ChangePasswordConfirmDAO();
	//DTOいらんかも
	private ChangePasswordDTO CPDTO=new ChangePasswordDTO();
public String execute(){
	System.out.println(newpass);
	System.out.println(checkpass);


	if(CPCdao.CheckAnswer(userid,secret_question,secret_answer)){
		result=SUCCESS;
		session.put("newpass",newpass);
		session.put("userid",userid);
		session.put("secret_answer", secret_answer);
	}else{
		result=ERROR;
		errorUserid="*ユーザーIDと答えが一致していません";
		session.put("errorUserid",errorUserid);
	}
	//値の確認出力
		System.out.println(userid);
		System.out.println(result);
		System.out.println(CPCdao.getPassword());








	if(!(newpass.equals(checkpass))){
		result=ERROR;
		setErrorpassword("*新しいパスワードと確認用パスワードが合致しません");
	}else if(newpass.equals(CPCdao.getPassword())){
		result=ERROR;
		setErrorpassword("*新しいパスワードは以前のパスワードと同様の値に設定できません");

	}
	return result;



}







public String getResult() {
	return result;
}



public void setResult(String result) {
	this.result = result;
}



public String getErrorUserid() {
	return errorUserid;
}



public void setErrorUserid(String errorUserid) {
	this.errorUserid = errorUserid;
}



public int getSecret_question() {
	return secret_question;
}



public void setSecret_question(int secret_question) {
	this.secret_question = secret_question;
}



public String getNewpass() {
	return newpass;
}







public void setNewpass(String newpass) {
	this.newpass = newpass;
}







public String getUserid() {
	return userid;
}



public void setUserid(String userid) {
	this.userid = userid;
}



public String getSecret_answer() {
	return secret_answer;
}







public void setAnswer(String secret_answer) {
	this.secret_answer = secret_answer;
}







public String getCheckpass() {
	return checkpass;
}



public void setCheckpass(String checkpass) {
	this.checkpass = checkpass;
}



public String getErrorpassword() {
	return errorpassword;
}



public void setErrorpassword(String errorpassword) {
	this.errorpassword = errorpassword;
}






@Override
public void setSession(Map<String, Object>session) {
	this.session=session;

}







public ChangePasswordDTO getCPDTO() {
	return CPDTO;
}







public void setCPDTO(ChangePasswordDTO cPDTO) {
	CPDTO = cPDTO;
}



}
