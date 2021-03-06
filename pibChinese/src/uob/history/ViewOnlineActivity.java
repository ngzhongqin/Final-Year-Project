package uob.history;

import java.io.IOException;
import java.text.DateFormat;
import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import uob.data.AccountClass;
import uob.data.HistoryData;
import uob.service.HistClientService;
import uob.service.RBKClientService;
import uob.service.SSOClientService;

/**
 * Servlet implementation class ViewOnlineActivity
 */
public class ViewOnlineActivity extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ViewOnlineActivity() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
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
			System.out.println("<pib><viewOnlineActivity>userHash from Client is null!");
		}
		
		
		if(validCookieBool){
			String userName=ssocs.getLoginName(userHash);
			System.out.println("<fyp2><viewOnlineActivity>userName= "+userName);
			
			//end of testing sector
			List<HistoryData> historyList = hcs.getHistory(userName);
			String[][] records = getStringArray(historyList);
			request.setAttribute("records", records);
			
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("History/ViewOnlineActivity.jsp");
			if (dispatcher != null) dispatcher.forward(request, response);
		}
		else{
			RequestDispatcher dispatcher = request.getRequestDispatcher("/login/timedOut.jsp");
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
	
	private String[][] getStringArray(List<HistoryData> historyList){
		int row = historyList.size() + 1;	
		String [][] object = new String[row][5];
		object[0][0] = "Date and Time";
		object[0][1] = "Transaction Name";
		object[0][2] = "Amount";
		object[0][3] = "Status";
		object[0][4] = "Txn No.";
		
		int i = 0;
		while(i!=(row-1)){
			object[i][0] = changeDate(historyList.get(i).getTime());
			object[i][1] = historyList.get(i).getTxnName();
			object[i][2] = Double.toString(historyList.get(i).getAmount());
			object[i][3] = historyList.get(i).getStatus();
			object[i][4] = Long.toString(historyList.get(i).getTxnNumber());
			i++;
		}
		return object;
	}
	
	private double roundTwoDecimals(double d) {
   	DecimalFormat twoDForm = new DecimalFormat("#.##");
   	return Double.valueOf(twoDForm.format(d));
	}
	
	private String changeDate(long time){
		DateFormat formatter = new SimpleDateFormat("dd/MM/yyyy hh:mm");
		Calendar calendar = Calendar.getInstance();
		calendar.setTimeInMillis(time);
		String x = formatter.format(calendar.getTime());
		String[] y = x.split(" ");
		x=y[0]+"+"+y[1];
		return x;
	}
}
