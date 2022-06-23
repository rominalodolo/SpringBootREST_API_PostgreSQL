package com.pairlearning.expensetrackerapi.exceptions;

import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ResponseStatus;

public class EtAuthException extends RuntimeException{

    @ResponseStatus(HttpStatus.UNAUTHORIZED)
    public EtAuthException(String message){
        super(message);
    }

}
