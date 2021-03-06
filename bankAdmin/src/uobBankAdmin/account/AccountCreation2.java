package uobBankAdmin.account;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import uobBankAdmin.service.ICHClientService;
import uobBankAdmin.service.RBKClientService;
import uobBankAdmin.service.SSOClientService;


public class AccountCreation2 extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public AccountCreation2() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Boolean validCookieBool = false;
		Cookie[] cookies = request.getCookies();
		String userHash = getClientHash(cookies);
		SSOClientService ssocs = new SSOClientService();
		RBKClientService rbkcs = new RBKClientService();
		ICHClientService ichcs = new ICHClientService();

	
		if(userHash!=null){
			if(ssocs.checkTrust(userHash)>0){
				validCookieBool=true;
				System.out.println("<bankAdmin><AccountCreation>userHash = "+userHash);
			}	
		}
		else{
			System.out.println("<bankAdmin><AccountCreation>userHash from Client is null!");
		}
		
		
		if(validCookieBool){
			String userName=ssocs.getLoginName(userHash);
			//System.out.println("<bankAdmin><AccountCreation>userName= "+userName);
			String custName = request.getParameter("name");
			String custAddress = request.getParameter("address");
			String custHome = request.getParameter("home");
			String custMobile  = request.getParameter("mobile");
			String custIcNumber = request.getParameter("icNumber");
			String custAccountType = request.getParameter("accountType");
			String custDepositString = request.getParameter("deposit");
			String custIdPib = request.getParameter("idPib");
			/*
			System.out.println("<bankAdmin><AccountCreation>custName= "+custName);
			System.out.println("<bankAdmin><AccountCreation>custAddress= "+custAddress);
			System.out.println("<bankAdmin><AccountCreation>custHome= "+custHome);
			System.out.println("<bankAdmin><AccountCreation>custIcNumber= "+custIcNumber);
			System.out.println("<bankAdmin><AccountCreation>custAccountType= "+custAccountType);
			System.out.println("<bankAdmin><AccountCreation>custDepositString= "+custDepositString);			
			
			*/
			if(custName==null || custAddress == null || custHome == null ||
			   custIcNumber	==null || custIcNumber == null || custAccountType==null ||
			   custDepositString == null || custIdPib == null || custMobile == null ||
			   custName.isEmpty() || custAddress.isEmpty() || custHome.isEmpty() ||
			   custIcNumber.isEmpty() || custIcNumber.isEmpty() || custAccountType.isEmpty() ||
			   custDepositString.isEmpty() || custIdPib.isEmpty() ||custMobile.isEmpty()
			)
			{
				RequestDispatcher dispatcher = request.getRequestDispatcher("/Account/accountCreation1FieldEmpty.jsp");
				if (dispatcher != null) dispatcher.forward(request, response);
			
			}
			else
			{
				double deposit = Double.parseDouble(custDepositString);
				long accountNumber = rbkcs.createNewAccount(custAccountType, custIdPib, deposit);
				System.out.println("<bankAdmin><AccountCreation>account = "+accountNumber);
				
				boolean idNotTaken = ssocs.createPIBaccount(custIdPib, custMobile);
				System.out.println("<bankAdmin><AccountCreation>idNotTaken = "+idNotTaken);
				
				boolean custCreatedBool = ichcs.createNewCustomer(custIdPib, custName, custAddress, custMobile, custHome, custMobile, custIcNumber);
				System.out.println("<bankAdmin><AccountCreation>custCreatedBool = "+custCreatedBool);
			
				request.setAttribute("accountNumber", accountNumber);
				request.setAttribute("custIdPib", custIdPib);
				request.setAttribute("custName", custName);
				request.setAttribute("custAddress", custAddress);
				request.setAttribute("custMobile", custMobile);
				request.setAttribute("custHome", custHome);
				request.setAttribute("custMobile", custMobile);
				request.setAttribute("custIcNumber", custIcNumber);
				request.setAttribute("deposit", deposit);
				
				RequestDispatcher dispatcher = request.getRequestDispatcher("/Account/accountCreation2.jsp");
				if (dispatcher != null) dispatcher.forward(request, response);
			}
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
