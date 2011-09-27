package uob.login;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import uob.data.SSOData;
import uob.service.HistClientService;
import uob.service.SSOClientService;

/**
 * Servlet implementation class Login2FAAction
 */
public class Login2FAAction extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Login2FAAction() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Boolean validCookieBool = false;
		Cookie[] cookies = request.getCookies();
		String userHash = getClientHash(cookies);
		SSOClientService ssocs = new SSOClientService();
		String hash2FA = request.getParameter("hash2FA");
		HistClientService hcs = new HistClientService();
	
		if(userHash==null){
			System.out.println("<fyp2><Login2FAAction>userHash from Client is null!");
		}
		
			
		
			String userName=ssocs.getLoginName(userHash);
			System.out.println("<fyp2><Login2FAAction>userName= "+userName);
			
			SSOData ssoData=ssocs.login2FA2(userName, hash2FA, userHash);
			
			
			if(ssoData.getLogin2FA2Success()){
				hcs.login2FASuccess(userName);
				request.setAttribute("userName", userName);
				RequestDispatcher dispatcher = request.getRequestDispatcher("/Landing/2FA.jsp");
				if (dispatcher != null) dispatcher.forward(request, response);

			
			}
			else{
				hcs.login2FANotSuccess(userName);
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