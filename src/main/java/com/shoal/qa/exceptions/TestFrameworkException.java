package com.shoal.qa.exceptions;

/**
 * @author Abhishek Kumar on 07/01/2024
 */
public class TestFrameworkException extends RuntimeException{
    public TestFrameworkException(String message) {
        super(message);
    }
    public TestFrameworkException(String message, Throwable cause) {
        super(message, cause);
    }

}
