package com.waishe.test;

import com.waishe.utils.MailUtils;
import org.junit.Test;

import javax.mail.MessagingException;

public class TestEmail {

    @Test
    public void test_mail(){
        try {
            MailUtils.sendMail("153937793@qq.com","test");
        } catch (MessagingException e) {
            e.printStackTrace();
        }
    }
}
