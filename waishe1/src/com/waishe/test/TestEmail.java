package com.waishe.test;

import com.waishe.utils.MailUtils;
import com.waishe.utils.UUIDUtils;
import org.junit.Test;

import javax.mail.MessagingException;

public class TestEmail {

    @Test
    public void test_mail(){
        System.out.println(UUIDUtils.getUUID().substring(0,4));
//        try {
//            MailUtils.sendMail("153937793@qq.com","test");
//        } catch (MessagingException e) {
//            e.printStackTrace();
//        }
    }
}
