package util;

import com.mysql.jdbc.Driver;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 * @author Yuhua
 * @since 21.7.14 10:48
 */
public class DbHelper {
    //得到连接对象
    public static Connection getConn() throws Exception {
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/demo-class ","root","1234");
        return conn;
    }
    //关闭连接对象
    public static void closeAll(Connection conn)throws Exception{
        if(conn!=null){
            conn.close();
        }
    }
}