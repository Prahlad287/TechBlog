package com.tech.blog.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.tech.blog.entities.User;

public class UserDao {
	private Connection connection;

	public UserDao(Connection con) {
		connection = con;
	}

	public boolean saveUser(User user) {
		boolean f = false;
		try {
			// user --> database
			String query = "insert into User(Name, Email,Password,Gender,About)values (?,?,?,?,?)";
			PreparedStatement psmt = connection.prepareStatement(query);
			psmt.setString(1, user.getName());
			psmt.setString(2, user.getEmail());
			psmt.setString(3, user.getPassword());
			psmt.setString(4, user.getGender());
			psmt.setString(5, user.getAbout());
			System.out.println(user.getGender());
			int count = psmt.executeUpdate();
			if (count > 0) {
				System.out.println("data saved successfully");
				f = true;
			} else {
				System.out.println("data not saved");
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return f;
	}

	public User getUserByEmailAndPassword(String email, String password) {
		User user = null;
		try {
			String queryString = "select * from User where email=? and password=?";
			PreparedStatement psmt = connection.prepareStatement(queryString);
			psmt.setString(1, email);
			psmt.setString(2, password);
			ResultSet resultSet = psmt.executeQuery();
			if (resultSet.next()) {

				user = new User();
				user.setName(resultSet.getString("Name"));
				user.setEmail(resultSet.getString("Email"));
				user.setGender(resultSet.getString("Gender"));
				user.setAbout(resultSet.getString("About"));
				user.setDateTime(resultSet.getString("Registerdate"));
			}

		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return user;

	}

}
