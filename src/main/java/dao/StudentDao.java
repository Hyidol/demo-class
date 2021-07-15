package dao;

import domain.Student;
import util.PageModel;

import java.sql.Connection;

/**
 * @author Yuhua
 * @since 21.7.14 18:33
 */
public interface StudentDao {
    Boolean insert(Connection conn, Student stu) throws Exception;
    void delete(Connection conn, int stuId) throws Exception;
    Boolean update(Connection conn, Student stu) throws Exception;
    Student selectById(Connection conn, int stuId) throws Exception;
    PageModel selectPageAll(Connection conn, int currentPage, int pageSize) throws Exception;
    PageModel selectPageByClassId(Connection conn,int classId, int currentPage, int pageSize) throws Exception;

}