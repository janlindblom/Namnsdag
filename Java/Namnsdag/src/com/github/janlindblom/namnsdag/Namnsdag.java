package com.github.janlindblom.namnsdag;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * This is the Java Namnsdag library.
 *
 * @author Jan Lindblom <lindblom.jan@gmail.com>
 * @version 0.1
 */
public class Namnsdag {
    
    /**
     * Returns the namnsdag for a given date.
     * 
     * @param date the {@link Date} to find the namnsdag for.
     * @return the namnsdag of the given date.
     * @throws NamnsdagException if there is no namnsdag for this date.
     */
    public static List<String> forDate(Date date) throws NamnsdagException {
        ArrayList<String> retval = new ArrayList<String>();
        
        return retval;
    }
    
    private String findExceptionReason(Date date) {
        String retval = "";
        
        return retval;
    }
}
