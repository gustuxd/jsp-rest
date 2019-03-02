package br.com.gustu.dao;

import br.com.gustu.model.User;
import br.com.gustu.util.DBUtil;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class UserDao {
	private Connection connection = DBUtil.getConnection();

	public void addUser(User user) {
		try {
			PreparedStatement preparedStatement = this.connection
					.prepareStatement("insert into users(nome,sobrenome,email) values (?, ?, ?)");
			preparedStatement.setString(1, user.getNome());
			preparedStatement.setString(2, user.getSobrenome());
			preparedStatement.setString(3, user.getEmail());
			preparedStatement.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public void deleteUser(int userId) {
		try {
			PreparedStatement preparedStatement = this.connection.prepareStatement("delete from users where id=?");
			preparedStatement.setInt(1, userId);
			preparedStatement.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public void updateUser(User user) {
		try {
			PreparedStatement preparedStatement = this.connection
					.prepareStatement("update users set nome=?, sobrenome=?, email=? where id=?");
			preparedStatement.setString(1, user.getNome());
			preparedStatement.setString(2, user.getSobrenome());
			preparedStatement.setString(3, user.getEmail());
			preparedStatement.setInt(4, user.getId());
			preparedStatement.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public List<User> getAllUsers() {
		ArrayList<User> users = new ArrayList<User>();
		try {
			Statement statement = this.connection.createStatement();
			ResultSet rs = statement.executeQuery("select * from users");
			while (rs.next()) {
				User user = new User();
				user.setId(rs.getObject("id") != null ? rs.getInt("id") : 0);
				user.setNome(rs.getString("nome") != null ? rs.getString("nome") : "");
				user.setSobrenome(rs.getString("sobrenome") != null ? rs.getString("sobrenome") : "");
				user.setEmail(rs.getString("email") != null ? rs.getString("email") : "");
				users.add(user);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return users;
	}

	public User getUserById(int userId) {
		User user = new User();
		try {
			PreparedStatement preparedStatement = this.connection.prepareStatement("select * from users where id=?");
			preparedStatement.setInt(1, userId);
			ResultSet rs = preparedStatement.executeQuery();
			if (rs.next()) {
				user.setId(rs.getInt("id"));
				user.setNome(rs.getString("nome"));
				user.setSobrenome(rs.getString("sobrenome"));
				user.setEmail(rs.getString("email"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return user;
	}
}