package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 * @author Yuhua
 * @since 21.7.14 10:38
 */
public class BaseDao {
    public static void exeSql(Connection conn,String sql,Object[] param) throws Exception{
        PreparedStatement pstmt = conn.prepareStatement(sql);
        if(param!=null){
            for (int i = 0; i < param.length; i++) {
                pstmt.setObject(i+1,param[i]);
            }
        }
        pstmt.executeUpdate();
    }

    public ResultSet getRs(Connection conn, String sql, Object[] param) throws Exception{
        PreparedStatement pstmt = conn.prepareStatement(sql);
        if(param!=null){
            for (int i = 0; i < param.length; i++) {
                pstmt.setObject(i+1,param[i]);
            }
        }
        return pstmt.executeQuery();
    }

    public int getRowCount(Connection conn, String sql, Object[] param) throws Exception {
        ResultSet rs = this.getRs(conn, sql, param);
        int n = 0;
        if(rs.next()){
            n =rs.getInt(1);
        }
        return n;
    }
}