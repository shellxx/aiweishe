package com.waishe.utils;

import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMessage.RecipientType;

public class MailUtils {

	public static void sendMail(String email, String emailMsg)
			throws AddressException, MessagingException {
		// 1.创建一个程序与邮件服务器会话对象 Session

		Properties props = new Properties();
		props.setProperty("mail.transport.protocol", "SMTP");//链接协议
		props.setProperty("mail.host", "smtp.163.com");//主机名
        props.put("mail.smtp.port", "465");//端口号 网易smtp465
		props.setProperty("mail.smtp.auth", "true");// 指定验证为true
		props.put("mail.smtp.ssl.enable", "true");//设置是否使用ssl安全连接 ---一般都使用
		props.put("mail.debug", "true");//设置是否显示debug信息 true 会在控制台显示相关信息
		// 创建验证器
		Authenticator auth = new Authenticator() {
			public PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication("shellxx233@163.com", "WBIPBDKSGPURSFTZ");
			}
		};

		Session session = Session.getInstance(props, auth);

		// 2.创建一个Message，它相当于是邮件内容
		Message message = new MimeMessage(session);

		message.setFrom(new InternetAddress("shellxx233@163.com")); // 设置发送者

		message.setRecipient(RecipientType.TO, new InternetAddress(email)); // 设置发送方式与接收者
//邮件标题
		message.setSubject("用户激活");
		// message.setText("这是一封激活邮件，请<a href='#'>点击</a>");

		message.setContent(emailMsg, "text/html;charset=utf-8");

		// 3.创建 Transport用于将邮件发送

		Transport.send(message);
	}
}
