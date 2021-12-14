package com.book.model;

import java.util.Scanner;

public class Testmain {

	public static void main(String[] args) {
		
		Scanner scan = new Scanner(System.in);
		System.out.println("\tWelcome to Online Book Shop");
		System.out.println("\n1.Register\n2.Login\nEnter your Choice :");
		int choice=Integer.parseInt(scan.nextLine());
		
		UserDao userDao=null;
		switch(choice)
		{
		case 1:
			userDao=new UserDao();
			System.out.println("Enter user Name:");
			String name=scan.nextLine();
			System.out.println("Enter email ID:");
			String email=scan.nextLine();
			System.out.println("Enter password:");
			String password=scan.nextLine();
			User user=new User(name,email,password);
			userDao.insertUser(user);
		
		case 2:
		userDao=new UserDao();
		System.out.println("User Login ");
		System.out.println("Enter the registered mail ID");
		String mailid=scan.nextLine();
		User currentUser=userDao.validateUser(mailid);
		}
	}
}
