package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import DBConnection.DbConnection;

public class Login
{
	public static boolean logindao(String uname, String pass)
	{
		System.out.println("in login doa");
		boolean status=false;
		Connection con = DbConnection.getConnection();
		try {
			System.out.println("in try block of logindao");
			PreparedStatement ps= con.prepareStatement("SELECT User_Name ,Password FROM user_master WHERE Status=1 ");
			ResultSet rt = ps.executeQuery();
			String username=null , password=null;
			while(rt.next())
			{
				username=rt.getString(1);
				password=rt.getString(2);
				if(username.equals(uname) && password.equals(pass))
				{
					status=true;
					break;
				}
				if(status==false)
				{
					status=false;
				}
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return status;

		
	}

}
