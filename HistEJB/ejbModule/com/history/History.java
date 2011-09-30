package com.history;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.URL;
import java.net.URLConnection;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.Random;

import javax.ejb.Stateful;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;


/**
 * Session Bean implementation class Account
 */
@Stateful(mappedName="History")
public class History implements HistoryRemote {

	
	@PersistenceContext(unitName="history-unit")
	private EntityManager em;


	@Override
	public void addLogin1FASuccess(String idPib) {
		long loginTime = System.currentTimeMillis();
		long txnNumber=txnNumberGenerator();		
		HistoryClass h = new HistoryClass();
		h.setIdPib(idPib);
		h.setTime(loginTime);
		h.setTxnName("1FA Login");
		h.setStatus("Success");
		h.setTxnNumber(txnNumber);
		em.persist(h);
	}
	
	@Override
	public void addLogin1FANotSuccess(String idPib) {
		long loginTime = System.currentTimeMillis();
		long txnNumber=txnNumberGenerator();		
		HistoryClass h = new HistoryClass();
		h.setIdPib(idPib);
		h.setTime(loginTime);
		h.setTxnName("1FA Login");
		h.setStatus("Failed");
		h.setTxnNumber(txnNumber);
		em.persist(h);
		
	}
	
	private long txnNumberGenerator(){
		String numberS = hashGenerator(10);
		long number = Long.parseLong(numberS);
		HistoryClass x = em.find(HistoryClass.class, number);
		while(x!=null){
			System.out.println("<History><txnNumberGenerator>running...");
			numberS = hashGenerator(10);
			number = Long.parseLong(numberS);
			x = em.find(HistoryClass.class, number);	
		}
		return number;
	}
	
	private String hashGenerator(int len){
		String AB = "0123456789";
		Random rnd = new Random();
		StringBuilder sb = new StringBuilder(len);
		for( int i = 0; i < len; i++ ) 
		      sb.append( AB.charAt( rnd.nextInt(AB.length()) ) );		
		return sb.toString();
		
	}

	@Override
	public void addLogin2FANotSuccess(String idPib) {
		long loginTime = System.currentTimeMillis();
		long txnNumber=txnNumberGenerator();		
		HistoryClass h = new HistoryClass();
		h.setIdPib(idPib);
		h.setTime(loginTime);
		h.setTxnName("2FA Login");
		h.setStatus("Failed");
		h.setTxnNumber(txnNumber);
		em.persist(h);
		
	}

	@Override
	public void addLogin2FASuccess(String idPib) {
		long loginTime = System.currentTimeMillis();
		long txnNumber=txnNumberGenerator();		
		HistoryClass h = new HistoryClass();
		h.setIdPib(idPib);
		h.setTime(loginTime);
		h.setTxnName("2FA Login");
		h.setStatus("Success");
		h.setTxnNumber(txnNumber);
		em.persist(h);
		
	}

	@Override
	public List<HistoryData> getHistory(String idPib) {
		System.out.println("<History><getHistory>idPib = "+idPib);

		Query q = em.createQuery("SELECT m from HistoryClass m where m.idPib = ?1 ");
		q.setParameter(1, idPib);
		List<HistoryClass> aList = q.getResultList();
		List<HistoryData> resultList= new ArrayList<HistoryData>();
		
		
		//checking purpose
		System.out.println("<History><getHistory>size = "+ aList.size());
		int index = aList.size();
		int i =0;
		while(i!=index){
			HistoryData h = new HistoryData();
			h.setIdPib(idPib);
			h.setTime(aList.get(i).getTime());
			h.setTxnName(aList.get(i).getTxnName());
			h.setAmount(aList.get(i).getAmount());
			h.setStatus(aList.get(i).getStatus());
			h.setTxnNumber(aList.get(i).getTxnNumber());
			resultList.add(h);
			/*
			System.out.println("<History><getHistory>getIdPib  = "+ resultList.get(i).getIdPib());
			System.out.println("<History><getHistory>getStatus   = "+ resultList.get(i).getStatus());
			System.out.println("<History><getHistory>getAmount    = "+ resultList.get(i).getAmount());
			System.out.println("<History><getHistory>getTxnName  = "+ resultList.get(i).getTxnName());
			System.out.println("<History><getHistory>getTxnName    = "+ resultList.get(i).getTxnNumber());
			*/
			i++;
		}
        
		Collections.sort(resultList, new Comparator<HistoryData>(){	 
            public int compare(HistoryData h1, HistoryData h2) {
            	if (h1.getTime() < h2.getTime())
            		return 1;
            	else 
            		return 0;
            }
 
        });
        
		return resultList;
	}

	@Override
	public void addPayeeSuccess(String idPib, String fromS, String toS) {
		long time = System.currentTimeMillis();
		long txnNumber=txnNumberGenerator();		
		HistoryClass h = new HistoryClass();
		h.setIdPib(idPib);
		h.setTime(time);
		h.setTxnName("Add Payee From: "+fromS+" To: "+toS);
		h.setStatus("Success");
		h.setTxnNumber(txnNumber);
		em.persist(h);
		
	}

	@Override
	public void addPayeeNotSuccess(String idPib, String fromS, String toS) {
		long time = System.currentTimeMillis();
		long txnNumber=txnNumberGenerator();		
		HistoryClass h = new HistoryClass();
		h.setIdPib(idPib);
		h.setTime(time);
		h.setTxnName("Add Payee From: "+fromS+" To: "+toS);
		h.setStatus("2FA Auth. Failed");
		h.setTxnNumber(txnNumber);
		em.persist(h);
		
	}

	@Override
	public void fundTransferSuccess(String idPib, String fromS, String toS,String amount) {
		long time = System.currentTimeMillis();
		long txnNumber=txnNumberGenerator();		
		HistoryClass h = new HistoryClass();
		double amountDouble = Double.parseDouble(amount);
		h.setAmount(amountDouble);
		h.setIdPib(idPib);
		h.setTime(time);
		h.setTxnName("Fund Transfer From: "+fromS+" To: "+toS);
		h.setStatus("Success");
		h.setTxnNumber(txnNumber);
		em.persist(h);
		
	}

	@Override
	public void fundTransferNotSuccess(String idPib, String fromS, String toS,String amount) {
		long time = System.currentTimeMillis();
		long txnNumber=txnNumberGenerator();		
		HistoryClass h = new HistoryClass();
		double amountDouble = Double.parseDouble(amount);
		h.setAmount(amountDouble);
		h.setIdPib(idPib);
		h.setTime(time);
		h.setTxnName("Fund Transfer From: "+fromS+" To: "+toS);
		h.setStatus("2FA Auth. Failed");
		h.setTxnNumber(txnNumber);
		em.persist(h);
	}

	@Override
	public void changePasswordFail(String idPib) {
		long time = System.currentTimeMillis();
		long txnNumber=txnNumberGenerator();		
		HistoryClass h = new HistoryClass();
		h.setAmount(0);
		h.setIdPib(idPib);
		h.setTime(time);
		h.setTxnName("Change Password");
		h.setStatus("Failed");
		h.setTxnNumber(txnNumber);
		em.persist(h);
		
	}

	@Override
	public void changePasswordSuccess(String idPib) {
		long time = System.currentTimeMillis();
		long txnNumber=txnNumberGenerator();		
		HistoryClass h = new HistoryClass();
		h.setAmount(0);
		h.setIdPib(idPib);
		h.setTime(time);
		h.setTxnName("Change Password");
		h.setStatus("Success");
		h.setTxnNumber(txnNumber);
		em.persist(h);
		
	}

	@Override
	public void logout(String idPib) {
		long time = System.currentTimeMillis();
		long txnNumber=txnNumberGenerator();		
		HistoryClass h = new HistoryClass();
		h.setAmount(0);
		h.setIdPib(idPib);
		h.setTime(time);
		h.setTxnName("Logout");
		h.setStatus("Success");
		h.setTxnNumber(txnNumber);
		em.persist(h);
		
	}

}

