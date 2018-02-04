package com.mmall.util;

import com.mmall.beans.Mail;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.lang3.StringUtils;
import org.apache.commons.mail.EmailException;
import org.apache.commons.mail.HtmlEmail;

@Slf4j
public class MailUtil {

    public static boolean send(Mail mail) {

        // TODO
        String from = "919433524@qq.com";
//        qq邮箱是465
//        int port = 25;
        int port = 465;
        String host = "smtp.qq.com";
        String pass = "olxbnugynfftbfae";
        String nickname = "admin";

//        qq邮箱授权码：olxbnugynfftbfae

        HtmlEmail email = new HtmlEmail();
        try {
            email.setHostName(host);
            email.setCharset("UTF-8");
            for (String str : mail.getReceivers()) {
                email.addTo(str);
            }
            email.setFrom(from, nickname);
            email.setSmtpPort(port);
//            下面这个是qq邮箱设置
            email.setSSLOnConnect(true);
            email.setAuthentication(from, pass);
            email.setSubject(mail.getSubject());
            email.setMsg(mail.getMessage());
            email.send();
            log.info("{} 发送邮件到 {}", from, StringUtils.join(mail.getReceivers(), ","));
            return true;
        } catch (EmailException e) {
            log.error(from + "发送邮件到" + StringUtils.join(mail.getReceivers(), ",") + "失败", e);
            return false;
        }
    }

}

