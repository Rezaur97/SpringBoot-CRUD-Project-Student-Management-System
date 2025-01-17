package com.main.util;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Component;

@Component
public class EmailServiceImpl implements EmailService {

	@Autowired
	private JavaMailSender javaMailSender;

	@Override
	public void sendSimpleMail(String to, String subject, String emailBody) {

		SimpleMailMessage mailMessage = new SimpleMailMessage();
		
         mailMessage.setTo(to);
         mailMessage.setSubject(subject);
         mailMessage.setText(emailBody);

         javaMailSender.send(mailMessage);

	}

}
