package dao.impl;

import dao.BaseDao;
import dao.UserDao;
import domain.User;
import util.PageModel;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 * @author Yuhua
 * @since 21.7.14 10:45
 */

public class UserDaoImpl extends BaseDao implements UserDao {
    public void insert(Connection conn, User user) throws Exception {
        String sql = "insert into user(name,password) values(?,?);";
        Object[] param = {user.getName(),user.getPassword()};
        exeSql(conn,sql,param);
    }

    public void update(Connection conn, User user) throws Exception {
        String sql = "update user set name=?,password=? where id=?;";
        Object[] param = {user.getName(),user.getPassword(),user.getId()};
        exeSql(conn,sql,param);
    }

    public void delete(Connection conn, int userId) throws Exception {
        String sql = "delete from user where id=?;";
        Object[] param = {userId};
        exeSql(conn,sql,param);
    }

    public User selectUser(Connection conn,User user) throws Exception {
        String sql="select * from user where name=? and password=?";
        Object[] param={user.getName(),user.getPassword()};
        ResultSet rs = this.getRs(conn, sql, param);
        User us=null;
        if(rs.next()){
            us=new User();
            us.setName(rs.getString("name"));
            us.setPassword(rs.getString("password"));
        }
        return us;
    }

    public PageModel selectPageAll(Connection conn,int currentPage,int pageSize) throws Exception {
        String sql = "select * from user limit ?,?;";
        Object[] param = {(currentPage-1)*pageSize,pageSize};
        ResultSet rs = getRs(conn,sql,param);
        ArrayList<User> userList = new ArrayList<User>();
        while (rs.next()){
            User user = new User();
            user.setId(rs.getInt("id"));
            user.setName(rs.getString("name"));
            user.setPassword(rs.getString("password"));
            userList.add(user);
        }
        String sql1 = "select count(*) form user;";
        PageModel userPageALl = new PageModel();
        userPageALl.setList(userList);
        userPageALl.setCurrentPage(currentPage);
        userPageALl.setPageSize(pageSize);
        userPageALl.setTotalRecord(getRowCount(conn,sql1,null));
        return userPageALl;
    }
}