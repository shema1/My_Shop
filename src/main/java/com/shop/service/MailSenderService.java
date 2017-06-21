package com.shop.service;

/**
 * Created by Mykola on 11.06.2017.
 */
public interface MailSenderService {
    void sendMail(String theme, String mailBody, String email) ;
}
