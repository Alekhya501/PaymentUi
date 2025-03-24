package com.grandhi.alekhya;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.entities.BankAccount;
import com.entities.BankAccountDao;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/AddBankAccount")
public class AddBankAccount extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	 PrintWriter pw=response.getWriter();
	 try {
		
		int bankid=Integer.parseInt(request.getParameter("bank_account_id"));
		int userid=Integer.parseInt(request.getParameter("user_id"));
		String bankname=request.getParameter("bank_name");
		String accno=request.getParameter("account_no");
		String accounttype=request.getParameter("account_type");
		String ifsc=request.getParameter("ifsc");
		double balance = Double.parseDouble(request.getParameter("balance"));
		BankAccount ba=new BankAccount();
		ba.setBankAccountId(bankid);
		ba.setUserId(userid);
		ba.setBankName(bankname);
		ba.setAccountNumber(accno);
		ba.setIsActive(accounttype);
		ba.setIfscCode(ifsc);
		ba.setCurrent_balance(balance);
		BankAccountDao bad=new BankAccountDao();
		int i=bad.addBankAccount(ba);
		if(i>0) {
			RequestDispatcher rd=request.getRequestDispatcher("DashBoard.jsp");
			rd.forward(request, response);
		}
			
		
	} catch (ClassNotFoundException | SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}	 
	}

}

