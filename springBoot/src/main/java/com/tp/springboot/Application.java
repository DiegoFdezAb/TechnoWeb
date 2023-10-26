package com.tp.springboot;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

import java.sql.*;
import java.time.LocalDateTime;

@SpringBootApplication
public class Application {

	public static void main(String[] args) {

		SpringApplication.run(Application.class, args);
		try (Connection connection = DriverManager.getConnection("jdbc:h2:mem:testdb", "sa", "")) {
			System.out.println("connection.isValid(0) = " + connection.isValid(0));

			// CRUD

			// select

				PreparedStatement ps = connection.prepareStatement("SELECT * FROM Utilisateur WHERE nom_utilisateur = ?");
				ps.setString(1, "John");

				ResultSet resultSet = ps.executeQuery();
				while (resultSet.next()) {
					System.out.println(resultSet.getInt("id") + " - " + resultSet.getString("nom_utilisateur"));
				}

			// inserts

			// updates

			// deletes
		} catch (SQLException e) {
			System.out.println("No connection to database");
			throw new RuntimeException(e);
		}
	}

}
