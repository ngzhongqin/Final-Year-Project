package uob.landing;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import uob.data.AccountClass;
import uob.data.AccountLinkDataStructure;
import uob.service.FDClientService;
import uob.service.RBKClientService;
import uob.service.SSOClientService;

public class Landing1FA extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Landing1FA() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Boolean validCookieBool = false;
		Cookie[] cookies = request.getCookies();
		String userHash = getClientHash(cookies);
		SSOClientService ssocs = new SSOClientService();
		FDClientService fdcs = new FDClientService();
		RBKClientService rbkcs = new RBKClientService();
		
		if(userHash!=null){
			if(ssocs.checkTrust1FA(userHash)||ssocs.checkTrust2FA(userHash)){
				validCookieBool=true;
				System.out.println("<fypWebService><landing1fa>userHash = "+userHash);
				
			}	
		}
		else{
			System.out.println("<fypWebService><landing1fa>userHash from Client is null!");
		}
		
		
		if(validCookieBool){
			String userName=ssocs.getLoginName(userHash);
			request.setAttribute("userName", userName);
					
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("/Landing/1FA.jsp");
			if (dispatcher != null) dispatcher.forward(request, response);
		}
		else{
			RequestDispatcher dispatcher = request.getRequestDispatcher("/Login/timedout.jsp");
			if (dispatcher != null) dispatcher.forward(request, response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		
	}
	
	private String getClientHash(Cookie[] cookies){
		 for(int i=0; i<cookies.length; i++) {
		      Cookie cookie = cookies[i];
		      System.out.println("cookieName = "+ cookie.getName());
		     
		      if (cookie.getName().equals("fypUserHash")){
		    	  System.out.println("returning = "+cookie.getValue());
		    	  return(cookie.getValue());
		      }
		       
		    }
		return null;
		
	}
	

}
