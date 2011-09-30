package uobBankAdmin.data;


public class SSOData {
	private Boolean loginSuccess;
	private String cookieHash;
	private int level;
	
	public SSOData(){};
	
	public void setCookieHash(String cookieHash) {
		this.cookieHash = cookieHash;
	}
	public String getCookieHash() {
		return cookieHash;
	}
	public void setLoginSuccess(Boolean loginSuccess) {
		this.loginSuccess = loginSuccess;
	}
	public Boolean getLoginSuccess() {
		return loginSuccess;
	}

	public void setLevel(int level) {
		this.level = level;
	}

	public int getLevel() {
		return level;
	}
	
	
}

