package com.enong.web.module;

import org.nutz.ioc.loader.annotation.IocBean;
import org.nutz.mvc.annotation.At;
import org.nutz.mvc.annotation.Ok;

@IocBean
public class MenuModule {
	
	@At("/")
	@Ok("jsp:views.index")
	public void openAdmin(){
		
	}
	
	@At("/index")
	@Ok("jsp:views.index")
	public void openAdminLogin(){
		
	}
	
	@At("/register")
	@Ok("jsp:views.register")
	public void openregister(){
		
	}
	
}
