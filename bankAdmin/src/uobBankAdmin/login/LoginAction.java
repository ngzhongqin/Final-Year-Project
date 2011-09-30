package uobBankAdmin.login;

import java.io.IOException;
import java.util.Hashtable;

import javax.jms.Destination;
import javax.jms.JMSException;
import javax.jms.Message;
import javax.jms.Queue;
import javax.jms.QueueConnection;
import javax.jms.QueueConnectionFactory;
import javax.jms.QueueReceiver;
import javax.jms.QueueSender;
import javax.jms.QueueSession;
import javax.jms.TextMessage;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import uobBankAdmin.data.SSOData;
import uobBankAdmin.service.SSOClientService;


/**
 * Servlet implementation class AccountEnquiry
 */
public class LoginAction extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginAction() {
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
		// TODO Auto-generated method stub
		String userName = request.getParameter("userName");
		String password = request.getParameter("passWord");
				
		SSOClientService ssocs = new SSOClientService();
		
		System.out.println("userName: "+userName);
		System.out.println("password:"+password);
		
		SSOData ssoData=ssocs.login(userName, password);
		System.out.println("<bankAdmin><LoginAction><doPost> getLoginSucess "+ssoData.getLoginSuccess());
		
		if(ssoData.getLoginSuccess()){
			Cookie cookie1 = new Cookie("AdminUserHash",ssoData.getCookieHash());
			cookie1.setMaxAge(60*30);
			System.out.println("<BankAdmin><LoginAction>cookieHash= "+ssoData.getCookieHash());
			response.addCookie(cookie1);
			request.setAttribute("userName", userName);
			if(ssoData.getLevel()==1){
				RequestDispatcher dispatcher = request.getRequestDispatcher("/Landing/landing.jsp");
				if (dispatcher != null) dispatcher.forward(request, response);
			}
			if(ssoData.getLevel()==2){
				RequestDispatcher dispatcher = request.getRequestDispatcher("/Landing/L2/landing.jsp");
				if (dispatcher != null) dispatcher.forward(request, response);
			}
		}else{
		
			RequestDispatcher dispatcher = request.getRequestDispatcher("/Login/loginFail.jsp");
			if (dispatcher != null) dispatcher.forward(request, response);
		}
			
	}

	
	
}
