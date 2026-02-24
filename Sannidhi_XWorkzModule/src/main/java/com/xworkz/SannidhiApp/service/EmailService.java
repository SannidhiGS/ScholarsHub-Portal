package com.xworkz.SannidhiApp.service;

public interface EmailService {
    void sendEmailToBatch(int batchId, String subject, String body);
}
