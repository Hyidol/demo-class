package service;

import domain.Class;
import domain.User;
import util.PageModel;

/**
 * @author Yuhua
 * @since 21.7.14 14:14
 */
public interface ClassService {
    void addClass(Class cla);
    void removeClass(int classId);
    void modifyClass(Class cla);
    Class queryById(int classId);
    PageModel queryPageAll(int currentPage, int pageSize);
}