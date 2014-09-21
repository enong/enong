package com.enong.web.module;

import org.nutz.ioc.loader.annotation.IocBean;
import org.nutz.mvc.annotation.At;
import org.nutz.mvc.annotation.Ok;

@IocBean
public class MenuModule {

	@At("/")
	@Ok("jsp:views.index")
	public void openAdmin() {

	}

	@At("/index")
	@Ok("jsp:views.index")
	public void openAdminLogin() {

	}

	@At("/register")
	@Ok("jsp:views.register")
	public void openregister() {

	}

	@At("/registersuccess")
	@Ok("jsp:views.registersuccess")
	public void openregistersuccess() {

	}

	@At("/login")
	@Ok("jsp:views.login")
	public void openLogin() {

	}

	@At("/myenong")
	@Ok("jsp:myenong.myenong")
	public void openMyIndex() {

	}

	@At("/myenong/myorder")
	@Ok("jsp:myenong.myorder")
	public void openMyMyOrder() {

	}

	@At("/myenong/myreturn")
	@Ok("jsp:myenong.myreturn")
	public void openMyReturn() {

	}

	@At("/myenong/myevaluation")
	@Ok("jsp:myenong.myevaluation")
	public void openMyEvaluation() {

	}

	@At("/myenong/mycollection")
	@Ok("jsp:myenong.mycollection")
	public void openMyCollection() {

	}

	@At("/myenong/personaldata")
	@Ok("jsp:myenong.personaldata")
	public void openMyPersonaldata() {

	}

	@At("/myenong/changepassword")
	@Ok("jsp:myenong.changepassword")
	public void openMyChangePassword() {

	}

	@At("/myenong/address")
	@Ok("jsp:myenong.address")
	public void openMyAddress() {

	}

	@At("/myenong/bankacct")
	@Ok("jsp:myenong.bankacct")
	public void openMyBankAcct() {

	}

	@At("/myenong/cashacct")
	@Ok("jsp:myenong.cashacct")
	public void openMyCashAcct() {

	}

	@At("/myenong/scoreacct")
	@Ok("jsp:myenong.scoreacct")
	public void openMyScoreAcct() {

	}

	@At("/myenong/scoreexchange")
	@Ok("jsp:myenong.scoreexchange")
	public void openMyScoreExchange() {

	}

	@At("/myenong/balancecash")
	@Ok("jsp:myenong.balancecash")
	public void openMyBalanceCash() {

	}

}
