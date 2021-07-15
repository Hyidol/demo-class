package service;

import domain.Class;
import domain.Student;
import util.PageModel;

/**
 * @author Yuhua
 * @since 21.7.14 18:41
 */
public interface StudentService {
    Boolean addStudent(Student stu);
    void removeStudent(int stuId);
    Boolean modifyStudent(Student stu);
    Student queryById(int studentId);
    PageModel queryPageAll(int currentPage,int pageSize);
    PageModel queryPageByClassId(int classId,int currentPage,int pageSize);
}
