package com.xworkz.SannidhiApp.service.impl;

import com.xworkz.SannidhiApp.entity.StudentEntity;
import com.xworkz.SannidhiApp.service.EmailService;
import com.xworkz.SannidhiApp.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import java.util.List;
import java.util.Properties;

@Service
public class EmailServiceImpl implements EmailService {

    @Autowired
    private StudentService studentService;

    @Value("${mail.username}")
    private String username;

    @Value("${mail.password}")
    private String password;

    @Override
    public void sendEmailToBatch(int batchId, String subject, String body) {

        List<StudentEntity> students =
                studentService.getStudentsByBatch(batchId);

        for (StudentEntity student : students) {
            sendMail(student.getEmail(), subject, body);
        }
    }

    private void sendMail(String toEmail, String subject, String content) {

        try {
            Properties props = new Properties();
            props.put("mail.smtp.auth", "true");
            props.put("mail.smtp.starttls.enable", "true");
            props.put("mail.smtp.host", "smtp.gmail.com");
            props.put("mail.smtp.port", "587");
            props.put("mail.smtp.ssl.protocols", "TLSv1.2");

            Session mailSession = Session.getInstance(props,
                    new javax.mail.Authenticator() {
                        protected PasswordAuthentication getPasswordAuthentication() {
                            return new PasswordAuthentication(username, password);
                        }
                    });

            Message message = new MimeMessage(mailSession);
            message.setFrom(new InternetAddress(username));
            message.setRecipients(Message.RecipientType.TO,
                    InternetAddress.parse(toEmail));
            message.setSubject(subject);
            String htmlContent =
                    "<div style='font-family: Arial, sans-serif; background-color:#f4f6f9; padding:20px;'>"
                            + "<div style='max-width:600px; margin:auto; background:#ffffff; "
                            + "border-radius:10px; overflow:hidden; box-shadow:0 4px 10px rgba(0,0,0,0.1);'>"

                            + "<div style='background:linear-gradient(90deg,#4e73df,#1cc88a); "
                            + "padding:20px; text-align:center; color:white;'>"
                            + "<h2 style='margin:0;'>Sannidhi App Notification</h2>"
                            + "</div>"

                            + "<div style='padding:30px; color:#333;'>"
                            + "<h3 style='color:#4e73df;'>Hello Trainees 👋</h3>"
                            + "<p style='font-size:16px; line-height:1.6;'>"
                            + content
                            + "</p>"
                            + "<br>"
                            + "<div style='text-align:center;'>"
                            + "<a href='http://localhost:8080/hi/' style='background:#1cc88a; color:white; padding:10px 20px; "
                            + "text-decoration:none; border-radius:5px;'>Visit Portal</a>"
                            + "</div>"
                            + "</div>"

                            + "<div style='background:#f8f9fc; padding:15px; text-align:center; font-size:12px; color:#858796;'>"
                            + "© 2026 Sannidhi App | All Rights Reserved"
                            + "</div>"

                            + "</div>"
                            + "</div>";
            message.setContent(htmlContent, "text/html; charset=utf-8");

            Transport.send(message);

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
