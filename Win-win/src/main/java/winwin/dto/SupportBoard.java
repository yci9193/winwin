package winwin.dto;

import java.util.Date;

import com.fasterxml.jackson.annotation.JsonFormat;

/**
 * @author MoonJaeHwan
 *
 */
public class SupportBoard {

	private int passNo;
	private String title;
	private String task;
	@JsonFormat(pattern="yy.MM.dd")
	private Date supportDate;
	private String username;
	private String portfolioId;
	private String emailSend;
	private String status;
	private String pass;
	
	@Override
	public String toString() {
		return "SupportBoard [passNo=" + passNo + ", title=" + title + ", task=" + task + ", supportDate=" + supportDate
				+ ", username=" + username + ", portfolioId=" + portfolioId + ", emailSend=" + emailSend + ", status="
				+ status + ", pass=" + pass + "]";
	}

	public int getPassNo() {
		return passNo;
	}

	public void setPassNo(int passNo) {
		this.passNo = passNo;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getTask() {
		return task;
	}

	public void setTask(String task) {
		this.task = task;
	}

	public Date getSupportDate() {
		return supportDate;
	}

	public void setSupportDate(Date supportDate) {
		this.supportDate = supportDate;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPortfolioId() {
		return portfolioId;
	}

	public void setPortfolioId(String portfolioId) {
		this.portfolioId = portfolioId;
	}

	public String getEmailSend() {
		return emailSend;
	}

	public void setEmailSend(String emailSend) {
		this.emailSend = emailSend;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getPass() {
		return pass;
	}

	public void setPass(String pass) {
		this.pass = pass;
	}
	
	

	
}
