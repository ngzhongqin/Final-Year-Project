package com.LoginBankAdmin;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.URL;
import java.net.URLConnection;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Random;

import javax.ejb.Stateful;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

/**
 * Session Bean implementation class Account
 */
@Stateful(mappedName="LoginBankAdmin")
public class LoginBankAdmin implements LoginBankAdminRemote {

	
	@PersistenceContext(unitName="LoginBankAdmin-unit")
	private EntityManager em;

	@Override
	public int login(String idBankAdmin, String password) {
		LoginBankAdminClass x= em.find(LoginBankAdminClass.class, idBankAdmin);
		if(x!=null){
			if(x.getPassword().equals(password))
				return x.getLevel();
			else
				return -1;	
		}
		System.out.println(idBankAdmin+" not found in db");

		return -1;
	}
	

}

