package com.enong.utils;

import org.apache.commons.mail.DefaultAuthenticator;
import org.apache.commons.mail.EmailException;
import org.apache.commons.mail.HtmlEmail;

public class MailUtils {
	
	public static void SendMail(String subject, String sendTo, String msg) throws EmailException {
		HtmlEmail email = new HtmlEmail();
		email.setHostName(Configer.getConfigMapValue("SEND_MAIL", "hostName").toString());
		email.setCharset(Configer.getConfigMapValue("SEND_MAIL", "charset").toString());
		email.addTo(sendTo);
		email.setFrom(Configer.getConfigMapValue("SEND_MAIL", "from").toString(), Configer.getConfigMapValue("SEND_MAIL", "fromName").toString());
		email.setSubject(subject);
		email.setAuthenticator(new DefaultAuthenticator(Configer.getConfigMapValue("SEND_MAIL", "username").toString(), Configer.getConfigMapValue("SEND_MAIL", "password").toString()));
		email.setMsg(msg);
		email.send();
	}
	

}
