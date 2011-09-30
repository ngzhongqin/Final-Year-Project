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


public class AccountActivation extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public AccountActivation() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Boolean validCookieBool = false;
		Cookie[] cookies = request.getCookies();
		String userHash = getClientHash(cookies);
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
			
			List<String> t = ssocs.getListOfUnactivatedPIBAccounts();
			String[] records = getStringArray(t);
			request.setAttribute("records", records);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("/Account/L2/accountActivation1.jsp");
			if (dispatcher != null) dispatcher.forward(request, response);
		}
		else{
			RequestDispatcher dispatcher = request.getRequestDispatcher("/Login/timedOut.jsp");
			if (dispatcher != null) dispatcher.forward(request, response);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
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
	
	
	private String[] getStringArray(List<String> x){
		String [] object = null;
		if(x!=null){	
			int row = x.size();	
			object = new String[row+1];
			object[row]="-1";
			int i = 0;
			while(i<row){		
				object[i] = x.get(i);
				i++;
			}
			
			return object;
		}
		return object;
	}


}
