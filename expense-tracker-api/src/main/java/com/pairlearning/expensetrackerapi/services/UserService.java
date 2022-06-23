package com.pairlearning.expensetrackerapi.services;

import com.pairlearning.expensetrackerapi.domain.User;

public interface UserService {

    User validateUser(String email, String password) throws EtAuthException;

    User registerUser(String firstName, String  lastName, String  email, String password) throws EtAuthException;


}