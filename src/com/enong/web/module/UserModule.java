package com.enong.web.module;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.mail.EmailException;
import org.nutz.ioc.loader.annotation.Inject;
import org.nutz.ioc.loader.annotation.IocBean;
import org.nutz.mvc.Mvcs;
import org.nutz.mvc.annotation.At;
import org.nutz.mvc.annotation.Attr;
import org.nutz.mvc.annotation.Ok;
import org.nutz.mvc.annotation.Param;

import com.enong.bo.EUser;
import com.enong.service.interfaces.UserService;
import com.enong.utils.Cons;
import com.enong.utils.JsonResult;
import com.enong.utils.MD5Utils;
import com.enong.utils.MailUtils;

@IocBean
@At("/user")
public class UserModule {

	@Inject("refer:userServiceImpl")
	UserService userService;

	@At("/register")
	@Ok("json")
	public JsonResult register(@Param("email") String email, @Param("phone") String phone,@Param("checkCode") String checkCode, @Param("password") String password) {
		String randCheckCode = (String) Mvcs.getHttpSession(false).getAttribute("randCheckCode");
		if(!checkCode.equals(randCheckCode)){
			return new JsonResult(0, "��֤�����");
		}
		EUser user = new EUser();
		user.setEmail(email);
		user.setPhone(phone);
		String salt = MD5Utils.createSalt();
		user.setSalt(salt);
		user.setPassword(MD5Utils.createPassword(password, salt));
		user.setType(Cons.userType.NORMAL);
		user.setState(Cons.userState.NORMAL);
		user.setEmailValidate("N");
		EUser u = userService.register(user);
		Mvcs.getHttpSession().setAttribute(Cons.session.USER, u);
		Mvcs.getHttpSession().removeAttribute("randCheckCode");
		// ������֤�ʼ�������
		return new JsonResult(1, "ע��ɹ�");
	}
 
	@At("/login")
	@Ok("json")
	public JsonResult login(@Param("loginuser") String loginuser, @Param("password") String password, HttpServletRequest req) {
		EUser user = userService.findUserByEmail(loginuser);
		if (user == null) {
			user = userService.findUserByPhone(loginuser);
		}
		if (user != null && user.getPassword().equals(MD5Utils.createPassword(password, user.getSalt()))) {
			Mvcs.getHttpSession().setAttribute(Cons.session.USER, user);
			return new JsonResult(1, "��¼�ɹ�");
		} else {
			return new JsonResult(0, "�û������������");
		}
	}

	@At("/logout")
	@Ok("jsp:views.login")
	public void logout() {
		HttpSession session = Mvcs.getHttpSession(false);
		if (session.getAttribute(Cons.session.USER) != null) {
			session.removeAttribute(Cons.session.USER);
		}
	}

	@At("/mail")
	public void mail() {
		try {
			MailUtils.SendMail("���", "gaojh@asiainfo-linkage.com", "<html>1231232</html>");
		} catch (EmailException e) {
			e.printStackTrace();
		}
	}

	@At("/changePassword")
	@Ok("json")
	public JsonResult changePassword(@Attr("ENONG_USER") EUser user, String oldPassword, String newPassword) {
		if (user == null) {
			return new JsonResult(0, "���ȵ�¼");
		} else {
			if(user.getPassword()== MD5Utils.createPassword(oldPassword, user.getSalt())){
				userService.changePassword(user.getId(), newPassword);
				Mvcs.getHttpSession(false).setAttribute(Cons.session.USER, userService.findUserById(user.getId()));
				return new JsonResult(1,"�����޸ĳɹ�");
			}else{
				return new JsonResult(0,"ԭ�������");
			}
		}
	}
}
