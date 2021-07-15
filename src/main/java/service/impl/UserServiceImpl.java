package service.impl;

import dao.UserDao;
import dao.impl.UserDaoImpl;
import domain.User;
import service.UserService;
import util.DbHelper;
import util.PageModel;

import java.sql.Connection;
import java.sql.SQLException;

/**
 * @author Yuhua
 * @since 21.7.14 11:33
 */
public class UserServiceImpl implements UserService {
    UserDao userDao = new UserDaoImpl();
    Connection conn = null;

    public void addUser(User user) {
        try {
            conn= DbHelper.getConn();
            userDao.insert(conn,user);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                conn.close();
            } catch (SQLException throwables) {
                throwables.printStackTrace();
            }
        }
    }

    public void removeUser(int userId) {
        try {
            conn= DbHelper.getConn();
            userDao.delete(conn,userId);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                conn.close();
            } catch (SQLException throwables) {
                throwables.printStackTrace();
            }
        }
    }

    public void modifyUser(User user) {
        try {
            conn= DbHelper.getConn();
            userDao.update(conn,user);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                conn.close();
            } catch (SQLException throwables) {
                throwables.printStackTrace();
            }
        }
    }

    public PageModel queryPageAll(int currentPage, int pageSize) {
        PageModel pageModel = new PageModel();
        try {
            conn= DbHelper.getConn();
            pageModel  = userDao.selectPageAll(conn,currentPage,pageSize);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                conn.close();
            } catch (SQLException throwables) {
                throwables.printStackTrace();
            }
        }
        return pageModel;
    }

    public User login(User user){
        Connection conn=null;
        User us=null;
        try {
            conn= DbHelper.getConn();
            us=userDao.selectUser(conn, user);
        } catch (Exception e) {
            e.printStackTrace();
        }finally{
            try {
                DbHelper.closeAll(conn);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return us;
    }
}