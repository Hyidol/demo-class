package service.impl;

import dao.StudentDao;
import dao.impl.StudentDaoImpl;
import domain.Class;
import domain.Student;
import service.StudentService;
import util.DbHelper;
import util.PageModel;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 * @author Yuhua
 * @since 21.7.14 18:43
 */
public class StudentServiceImpl implements StudentService {
    StudentDao studentDao = new StudentDaoImpl();
    Connection conn = null;

    public Boolean addStudent(Student stu) {
        Boolean isOk = false;
        try {
            conn = DbHelper.getConn();
            isOk = studentDao.insert(conn,stu);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                conn.close();
            } catch (SQLException throwables) {
                throwables.printStackTrace();
            }
        }
        return isOk;
    }

    public void removeStudent(int stuId) {
        try {
            conn = DbHelper.getConn();
            studentDao.delete(conn,stuId);
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

    public Boolean modifyStudent(Student stu) {
        Boolean isOk = false;
        try {
            conn = DbHelper.getConn();
            isOk = studentDao.update(conn,stu);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                conn.close();
            } catch (SQLException throwables) {
                throwables.printStackTrace();
            }
        }
        return isOk;
    }

    public Student queryById(int studentId) {
        Student stu = null;
        try {
            conn= DbHelper.getConn();
            stu = studentDao.selectById(conn,studentId);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                conn.close();
            } catch (SQLException throwables) {
                throwables.printStackTrace();
            }
        }
        return stu;
    }

    public PageModel queryPageAll(int currentPage, int pageSize) {
        PageModel pageModel = new PageModel();
        try {
            conn= DbHelper.getConn();
            pageModel = studentDao.selectPageAll(conn,currentPage,pageSize);
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

    public PageModel queryPageByClassId(int classId, int currentPage, int pageSize) {
        PageModel pageModel = new PageModel();
        try {
            conn= DbHelper.getConn();
            pageModel = studentDao.selectPageByClassId(conn,classId,currentPage,pageSize);
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