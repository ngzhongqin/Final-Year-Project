package uob.password;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import uob.service.HistClientService;
import uob.service.SSOClientService;

public class ChangePassword2FA2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ChangePassword2FA2() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {	
		Boolean validCookieBool = false;
		Cookie[] cookies = request.getCookies();
		String userHash = getClientHash(cookies);
		SSOClientService ssocs = new SSOClientService();
		HistClientService hcs = new HistClientService();
		
		if(userHash!=null){
			if(ssocs.checkTrust2FA(userHash)){
				validCookieBool=true;	
			}	
		}
		else{
			System.out.println("<pib><ChangePassword2FA2>userHash from Client is null!");
		}
		
		
		if(validCookieBool){
			String userName=ssocs.getLoginName(userHash);
			System.out.println("<fyp2><ChangePassword2FA2>userName= "+userName);
			String oldPassword = request.getParameter("oldPassword");
			String newPassword1 = request.getParameter("newPassword1");
			String newPassword2 = request.getParameter("newPassword2");
		
			boolean b = ssocs.changePassword(userName, oldPassword, newPassword1, newPassword2);
			
			if(b){
				hcs.changePasswordSuccess(userName);
				RequestDispatcher dispatcher = request.getRequestDispatcher("/Password/changePassword2FA2Success.jsp");
				if (dispatcher != null) dispatcher.forward(request, response);
			}
			else
			{
				hcs.changePasswordFail(userName);
				RequestDispatcher dispatcher = request.getRequestDispatcher("/Password/changePassword2FA2Fail.jsp");
				if (dispatcher != null) dispatcher.forward(request, response);
			}
			
		
		}
		else{
			RequestDispatcher dispatcher = request.getRequestDispatcher("/Login/timedout.jsp");
			if (dispatcher != null) dispatcher.forward(request, response);
		}
	
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
