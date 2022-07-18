package com.example.javaee_postgresql.logic.somePackage;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

public class LibraryServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PrintWriter pw = response.getWriter();

        try {
            Class.forName("org.postgresql.Driver"); // Загрузка драйвера
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
        try {
            Connection conn = DriverManager.getConnection(
                    "jdbc:pstgresql://localhost:5432/java_ee_db",
                    "postgres", "");// Подключение к базе данных
            Statement stmt = conn.createStatement(); // Создание объекта для создания запросов
            ResultSet rs = stmt.executeQuery("SELECT title from books"); // Результат запроса
            while(rs.next())// Показ книг из баз данных
                pw.println(rs.getString("title"));
            stmt.close(); // Закрытие подключения к базе данных
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
