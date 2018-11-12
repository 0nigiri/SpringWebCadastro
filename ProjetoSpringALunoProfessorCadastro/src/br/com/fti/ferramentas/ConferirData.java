package br.com.fti.ferramentas;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.time.format.DateTimeParseException;
import java.time.format.ResolverStyle;

public class ConferirData {
    public static boolean isDate(String strDate) {
    	  String dateFormat = "uuuu-MM-dd";
    	  

    	    DateTimeFormatter dateTimeFormatter = DateTimeFormatter
    	    .ofPattern(dateFormat)
    	    .withResolverStyle(ResolverStyle.STRICT);
    	    
    	    LocalDate dataHoje = LocalDate.parse("2018-12-31", dateTimeFormatter);
    	    LocalDate dataMinimo= LocalDate.parse("1900-01-01", dateTimeFormatter);
    	    try {
    	        LocalDate date = LocalDate.parse(strDate, dateTimeFormatter);
    	        if(date.isAfter(dataMinimo)&&date.isBefore(dataHoje)) {
    	        return true;
    	        } else return false;
    	    } catch (DateTimeParseException e) {
    	       return false;
    	    } 
    	}
}