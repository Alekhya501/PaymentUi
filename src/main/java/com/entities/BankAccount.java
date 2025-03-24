package com.entities;

public class BankAccount {
	private int bankAccountId;
	private int userId;
	private String bankName;
	private String accountNumber;
	private String isActive;
	private String ifscCode;

	private double current_balance;

	public BankAccount() {
		super();
	}

	public BankAccount(int bankAccountId, int userId, String bankName, String accountNumber, String isActive,
			String ifscCode, double current_balance) {
		super();
		this.bankAccountId = bankAccountId;
		this.userId = userId;
		this.bankName = bankName;
		this.accountNumber = accountNumber;
		this.isActive = isActive;
		this.ifscCode = ifscCode;
		this.current_balance = current_balance;
	}

	public int getBankAccountId() {
		return bankAccountId;
	}

	public void setBankAccountId(int bankAccountId) {
		this.bankAccountId = bankAccountId;
	}

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public String getBankName() {
		return bankName;
	}

	public void setBankName(String bankName) {
		this.bankName = bankName;
	}

	public String getAccountNumber() {
		return accountNumber;
	}

	public void setAccountNumber(String accountNumber) {
		this.accountNumber = accountNumber;
	}

	public String getIsActive() {
		return isActive;
	}

	public void setIsActive(String isActive) {
		this.isActive = isActive;
	}

	public String getIfscCode() {
		return ifscCode;
	}

	public void setIfscCode(String ifscCode) {
		this.ifscCode = ifscCode;
	}

	public double getCurrent_balance() {
		return current_balance;
	}

	public void setCurrent_balance(double current_balance) {
		this.current_balance = current_balance;
	}
	
}

	