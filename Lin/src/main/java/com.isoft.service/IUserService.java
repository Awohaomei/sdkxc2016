package com.isoft.service;

public interface IUserService {
        String login(String unmae , String pswd);
        boolean register(String uname , String upswd , String email);

}
