package com.teco.train;
import java.sql.Connection;
import java.sql.DatabaseMetaData;
import java.sql.DriverManager;
import java.sql.SQLException;

import org.junit.jupiter.api.Test;

public class DatabaseTest {
    
    @Test
    public void testDatabaseConnection() throws SQLException {
        Connection connection = DriverManager.getConnection(
            "jdbc:mysql://localhost:3306/mydb?&useSSL=false&allowPublicKeyRetrieval=true&useUnicode=true&serverTimezone=UTC",
            "root",
            "12test34"
        );
        
        DatabaseMetaData metaData = connection.getMetaData();
        System.out.println(metaData.getDatabaseProductName());
        System.out.println(metaData.getDatabaseProductVersion());
        
        connection.close();
    }
}