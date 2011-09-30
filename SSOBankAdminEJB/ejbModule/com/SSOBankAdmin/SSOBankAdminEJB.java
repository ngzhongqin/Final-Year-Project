package com.SSOBankAdmin;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.URL;
import java.net.URLConnection;
import java.util.Hashtable;
import java.util.Properties;

import javax.ejb.ActivationConfigProperty;
import javax.ejb.EJB;
import javax.ejb.MessageDriven;
import javax.jms.JMSException;
import javax.jms.Message;
import javax.jms.MessageListener;
import javax.jms.Queue;
import javax.jms.QueueConnection;
import javax.jms.QueueConnectionFactory;
import javax.jms.QueueSender;
import javax.jms.QueueSession;
import javax.jms.TextMessage;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;

import com.LoginBankAdmin.LoginBankAdminRemote;
import com.login.LoginRemote;
import com.trustBankAdmin.TrustBankAdminRemote;


/**
 * Message-Driven Bean implementation class for: RBK
 * 
 */
@MessageDriven(mappedName = "SSOBankAdminQueue", activationConfig = { @ActivationConfigProperty(propertyName = "destinationType", propertyValue = "javax.jms.Queue") })
public class SSOBankAdminEJB implements MessageListener {
	QueueConnection cnn = null;
    QueueSender sender = null;
    QueueSession session = null;
    InitialContext ctx;
    Hashtable ht = new Hashtable();
	
    
    //==========
	private void replyToServlet(String message){	
        try {
        	ht.put(Context.INITIAL_CONTEXT_FACTORY, "weblogic.jndi.WLInitialContextFactory");
        	ht.put(Context.PROVIDER_URL,"t3://localhost:7001");

            ctx = new InitialContext(ht);
            Queue queue = (Queue) ctx.lookup("SSOBankAdminReplyQueue");
            QueueConnectionFactory factory = (QueueConnectionFactory) ctx.lookup("SSOBankAdminReplyConnectionFactory");
            cnn = factory.createQueueConnection();
            session = cnn.createQueueSession(false, QueueSession.AUTO_ACKNOWLEDGE);
            TextMessage msg = session.createTextMessage();

            msg.setText(message);
            sender = session.createSender(queue);
            sender.send(msg);
            
           
            System.out.println("<sso><replyToServlet>");
            session.close(); // this is important.
        } catch (Exception e) {
            e.printStackTrace();
        }
	}
	//==========
	
	@EJB (mappedName="LoginBankAdmin")
	LoginBankAdminRemote loginBankAdmin;
	
	@EJB (mappedName="TrustBankAdmin")
	TrustBankAdminRemote trustBankAdmin;
	
	@EJB (mappedName="Login")
	LoginRemote login;
	
	
	/**
	 * Default constructor.
	 */
	public SSOBankAdminEJB() {
		
	}

	public void onMessage(Message message) {
		TextMessage tmsg = null;
		tmsg = (TextMessage) message;
		int opCode = 99;
		String parameter1 = null;
		String parameter2 = null;
		String parameter3 = null;
		
		//parsing message into opcode, and parameters
		String preParse;
		try {
			preParse = tmsg.getText();
			String[] postParse=preParse.split("[|]+");
			opCode=Integer.parseInt(postParse[0]);
			parameter1=postParse[1];
			parameter2=postParse[2];
			parameter3=postParse[3];
			
		} catch (JMSException e1) {
			e1.printStackTrace();
		}
		
		
		switch(opCode){
			case 11: 
				
				try {
					if(parameter1!=null && parameter2!=null && !parameter1.isEmpty() && !parameter2.isEmpty()){
						//merely renaming
						String idBankAdmin = parameter1;
						String password = parameter2;
						SSODataBankAdmin s = login(idBankAdmin,password);
						
						if(s.getLoginSuccess()){
							replyToServlet("19|"+s.getCookieHash()+"|"+s.getLevel()+"|");
						}
						else
							replyToServlet("10||");
					}
					
				} catch (Exception e1) {
					e1.printStackTrace();	
				}
				break;
				
			case 21:
				
				try {
					if(parameter1!=null && !parameter1.isEmpty()){
						//merely renaming
						String userHash = parameter1;
						int b = check(userHash);
						
						if(b>0){
							replyToServlet("29|"+b+"|");
						}
						else
							replyToServlet("20||");
					}
					
				} catch (Exception e1) {
					e1.printStackTrace();	
				}
				break;
			
			case 31:
				try {
					if(parameter1!=null && !parameter1.isEmpty()){
						//merely renaming
						String userHash = parameter1;
						String s = getLoginName(userHash);
						
						if(s!=null){
							replyToServlet("39|"+s+"|");
						}
						else
							replyToServlet("30||");
					}
					
				} catch (Exception e1) {
					e1.printStackTrace();	
				}
				break;
				
			case 41:
				try {
					if(parameter1!=null && parameter2!=null && !parameter1.isEmpty() && !parameter2.isEmpty()){
						//merely renaming
						String idPib = parameter1;
						String telephone = parameter2;
						
						boolean b = createPIBaccount(idPib,telephone);
						
						if(b)
							replyToServlet("49||");
						else
							replyToServlet("40||");
					}
					
				} catch (Exception e1) {
					e1.printStackTrace();	
				}
				break;
			
			case 51:
				try {
					if(parameter1!=null && !parameter1.isEmpty()){
						//merely renaming
						String idPib = parameter1;
						boolean s = activatePIBaccount(idPib);
						
						if(s){
							replyToServlet("59||");
						}
						else
							replyToServlet("50||");
					}
					
				} catch (Exception e1) {
					e1.printStackTrace();	
				}
				break;		
			
			case 61:  
				
				break;
				
			case 71:

				break;	
				
			case 81:

				break;	
			
			case 91:

				break;	
			
			case 101:
				break;
			}
		
	}
	
	private boolean activatePIBaccount(String idPib) {
		return login.activateAccount(idPib);
	}

	private boolean createPIBaccount(String idPib, String telephone) {		
		return login.createPIBaccount(idPib,telephone);
	}

	private String getLoginName(String userHash) {
		return trustBankAdmin.getIdBankAdmin(userHash);
	}

	private int check(String userHash) {
		return trustBankAdmin.check(userHash);
	}

	private SSODataBankAdmin login(String idBankAdmin, String password) {
		SSODataBankAdmin s = new SSODataBankAdmin();
		int level = loginBankAdmin.login(idBankAdmin, password);
		if(level>0){
			s.setLoginSuccess(true);
			String c = trustBankAdmin.newLogin(idBankAdmin,level);
			s.setCookieHash(c);
			s.setLevel(level);
		}else{
			s.setCookieHash(null);
			s.setLoginSuccess(false);
		}
		
		return s;
	}
	

	
}

