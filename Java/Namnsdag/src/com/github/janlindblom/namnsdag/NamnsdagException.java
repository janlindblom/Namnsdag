package com.github.janlindblom.namnsdag;

/**
 * Exception thrown when a namnsdag for a given date is not found.
 *
 * @author Jan Lindblom <lindblom.jan@gmail.com>
 * @version 0.1
 */
class NamnsdagException extends Exception {
    
    public NamnsdagException() {
        super();
    }
    
    public NamnsdagException(String reason) {
        super(reason);
    }
}
