package uobBankAdmin.account;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import uobBankAdmin.service.SSOClientService;


public class AccountActivation2 extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public AccountActivation2() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Boolean validCookieBool = false;
		Cookie[] cookies = request.getCookies();
		String userHash = getClientHash(cookies);
		String custIdPib = request.getParameter("idPib");
		SSOClientService ssocs = new SSOClientService();
		
	
		if(userHash!=null){
			if(ssocs.checkTrust(userHash)>1){
				validCookieBool=true;
				System.out.println("<bankAdmin><AccountCreation>userHash = "+userHash);
			}	
		}
		else{
			System.out.println("<bankAdmin><AccountCreation>userHash from Client is null!");
		}
		
		
		if(validCookieBool){
			String userName=ssocs.getLoginName(userHash);
			System.out.println("<bankAdmin><AccountCreation>userName= "+userName);
			ssocs.activatePIBaccount(custIdPib);
			request.setAttribute("custIdPib", custIdPib);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("/Account/L2/accountActivation2.jsp");
			if (dispatcher != null) dispatcher.forward(request, response);
		}
		else{
			RequestDispatcher dispatcher = request.getRequestDispatcher("/Login/timedOut.jsp");
			if (dispatcher != null) dispatcher.forward(request, response);
		}
	}
	
	private String getClientHash(Cookie[] cookies){
		 for(int i=0; i<cookies.length; i++) {
		      Cookie cookie = cookies[i];
		      System.out.println("cookieName = "+ cookie.getName());
		     
		      if (cookie.getName().equals("AdminUserHash")){
		    	  System.out.println("returning = "+cookie.getValue());
		    	  return(cookie.getValue());
		      }
		       
		    }
		return null;
		
	}
	
	
	

}
