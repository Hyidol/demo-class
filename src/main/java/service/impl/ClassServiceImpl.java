package service.impl;

import dao.ClassDao;
import dao.impl.ClassDaoImpl;
import domain.Class;
import service.ClassService;
import util.DbHelper;
import util.PageModel;

import java.sql.Connection;
import java.sql.SQLException;

/**
 * @author Yuhua
 * @since 21.7.14 14:16
 */
public class ClassServiceImpl implements ClassService {
    ClassDao classDao = new ClassDaoImpl();
    Connection conn = null;

    public void addClass(Class cla) {
        try {
            conn= DbHelper.getConn();
            classDao.insert(conn,cla);
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

    public void removeClass(int classId) {
        try {
            conn= DbHelper.getConn();
            classDao.delete(conn,classId);
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

    public void modifyClass(Class cla) {
        try {
            conn= DbHelper.getConn();
            classDao.update(conn,cla);
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

    public Class queryById(int classId) {
        Class cla = null;
        try {
            conn= DbHelper.getConn();
            cla = classDao.selectById(conn,classId);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                conn.close();
            } catch (SQLException throwables) {
                throwables.printStackTrace();
            }
        }
        return cla;
    }

    public PageModel queryPageAll(int currentPage, int pageSize) {
        PageModel pageModel = new PageModel();
        try {
            conn= DbHelper.getConn();
            pageModel = classDao.selectPageAll(conn,currentPage,pageSize);
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
}