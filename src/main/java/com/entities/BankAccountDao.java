package com.entities;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.grandhi.alekhya.dbcon;

public class BankAccountDao {
	public int addBankAccount(BankAccount bank) throws ClassNotFoundException, SQLException {
		Connection con=dbcon.getcon();
		String query="INSERT INTO bankaccounts (bank_account_id, user_id, bank_name, account_no, account_type, ifsc, balance) VALUES (?,?,?,?,?,?,?)";
		PreparedStatement ps=con.prepareStatement(query);
		ps.setInt(1, bank.getBankAccountId());
		ps.setInt(2, bank.getUserId());
		ps.setString(3, bank.getBankName());
		ps.setString(4, bank.getAccountNumber());
		ps.setString(5, bank.getIsActive());
		ps.setString(6, bank.getIfscCode());
		ps.setDouble(7, bank.getCurrent_balance());
		int i=ps.executeUpdate();
		if(i>0)
			return 1;
		else
			return 0; 
		
	}
	public List<BankAccount> getAllBankAccounts(int user_id) throws ClassNotFoundException, SQLException{
		Connection con=dbcon.getcon();
		String query="select *from bankaccounts  where user_id=?";
		List<BankAccount> bankAcc=new ArrayList<BankAccount>();
		PreparedStatement ps=con.prepareStatement(query);
		ps.setInt(1, user_id);
		ResultSet rs=ps.executeQuery();
		if(rs.next()) {
			BankAccount ba=new BankAccount();
			ba.setBankAccountId(rs.getInt(1));
			ba.setBankName(rs.getString(3));
			ba.setAccountNumber(rs.getString(4));
			ba.setIfscCode(rs.getString(6));
			ba.setCurrent_balance(rs.getDouble(7));
			bankAcc.add(ba);
			
			
		}
		return bankAcc;
		
	}

}
