package com.niit.frontend.exception;

import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.NoHandlerFoundException;


@ControllerAdvice

public class GlobalDefaultExceptionHandler {
	
	@ExceptionHandler(NoHandlerFoundException.class)
	public ModelAndView handlerNoHandlerFoundException()
	{
		ModelAndView mv=new ModelAndView("error");
		mv.addObject("errorTitle","The page is not construted!");
		
		mv.addObject("errorDescription","The page you are not looking for is not available now !");
		
		mv.addObject("title","this is 404 error");
		
		return mv;
		
		
		
	
	
	}
	

}
