package dao.impl;

import dao.BaseDao;
import dao.StudentDao;
import domain.Student;
import util.PageModel;

import java.sql.Connection;
import java.sql.ResultSet;
import java.util.ArrayList;

/**
 * @author Yuhua
 * @since 21.7.14 18:36
 */
public class StudentDaoImpl extends BaseDao implements StudentDao {
    public Boolean insert(Connection conn, Student stu) throws Exception {
        Boolean isOk = false;
        //查找新加的学生所在班级是否存在
        String sql1 = "select * from class where id=?;";
        Object[] param1 = {stu.getClassId()};
        ResultSet rs = getRs(conn,sql1,param1);
        //如果班级存在
        if(rs.next()){
            isOk = true;
            String sql = "insert into student(name,classId) values(?,?);";
            Object[] param = {stu.getName(),stu.getClassId()};
            exeSql(conn,sql,param);
        }
        return isOk;
    }

    public void delete(Connection conn, int stuId) throws Exception {
        String sql = "delete from student where id=?;";
        Object[] param = {stuId};
        exeSql(conn,sql,param);
    }

    public Boolean update(Connection conn, Student stu) throws Exception {
        Boolean isOk = false;
        //查找更新的班级是否存在
        String sql1 = "select * from class where id=?;";
        Object[] param1 = {stu.getClassId()};
        ResultSet rs = getRs(conn,sql1,param1);
        //如果更新的班级存在
        if(rs.next()){
            isOk = true;
            String sql2 = "update student set name=?,classId=? where id=?;";
            Object[] param2 = {stu.getName(),stu.getClassId(),stu.getId()};
            exeSql(conn,sql2,param2);
        }
        return isOk;
    }

    public Student selectById(Connection conn, int stuId) throws Exception {
        String sql = "select * from student where id=?;";
        Object[] param = {stuId};
        ResultSet rs = this.getRs(conn,sql,param);
        Student stu = null;
        if(rs.next()){
            stu = new Student();
            stu.setId(stuId);
            stu.setName(rs.getString("name"));
            stu.setClassId(rs.getInt("classId"));
        }
        return stu;
    }

    public PageModel selectPageAll(Connection conn, int currentPage, int pageSize) throws Exception {
        String sql = "select * from student limit ?,?;";
        Object[] param = {(currentPage-1)*pageSize,pageSize};
        ResultSet rs = getRs(conn,sql,param);
        ArrayList<Student> studentList = new ArrayList<Student>();
        while (rs.next()){
            Student stu = new Student();
            stu.setId(rs.getInt("id"));
            stu.setName(rs.getString("name"));
            stu.setClassId(rs.getInt("classId"));
            studentList.add(stu);
        }
        String sql1 = "select count(*) from student;";
        PageModel userPageALl = new PageModel();
        userPageALl.setList(studentList);
        userPageALl.setCurrentPage(currentPage);
        userPageALl.setPageSize(pageSize);
        userPageALl.setTotalRecord(getRowCount(conn,sql1,null));
        return userPageALl;
    }

    public PageModel selectPageByClassId(Connection conn, int classId, int currentPage, int pageSize) throws Exception {
        String sql = "select * from student where classId=? limit ?,?;";
        Object[] param = {classId,(currentPage-1)*pageSize,pageSize};
        ResultSet rs = getRs(conn,sql,param);
        ArrayList<Student> studentList = new ArrayList<Student>();
        while (rs.next()){
            Student stu = new Student();
            stu.setId(rs.getInt("id"));
            stu.setName(rs.getString("name"));
            stu.setClassId(rs.getInt("classId"));
            studentList.add(stu);
        }
        String sql1 = "select count(*) from student where classId=?;";
        PageModel userPageALl = new PageModel();
        Object[] param1 = {classId};
        userPageALl.setList(studentList);
        userPageALl.setCurrentPage(currentPage);
        userPageALl.setPageSize(pageSize);
        userPageALl.setTotalRecord(getRowCount(conn,sql1,param1));
        return userPageALl;
    }
}