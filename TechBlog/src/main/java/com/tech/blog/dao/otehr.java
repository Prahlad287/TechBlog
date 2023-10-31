package com.tech.blog.dao;

import java.io.File;
import java.io.IOException;
import java.util.Scanner;

public class otehr {
	
public static void main(String[] args) {
	
	File file=new File("First.txt");
	 try {
		 if (file.createNewFile()) {
			System.out.println("file create successfully" );
		}else {
			System.out.println("already ");
		}
		
	} catch (IOException e) {
		System.out.println(e);
		e.printStackTrace();
	}
	  Scanner sc=new Scanner(System.in);
      System.out.println("================================");
      for(int i=0;i<3;i++){
          String s1=sc.next();
          int x=sc.nextInt();
          System.out.printf("%-15s%03d%n", s1, x);
         
      }
      System.out.println("================================");

}
}
