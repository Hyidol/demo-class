package dao;

import domain.Class;
import domain.User;
import util.PageModel;

import java.sql.Connection;

/**
 * @author Yuhua
 * @since 21.7.14 13:51
 */
public interface ClassDao {
    public void insert(Connection conn, Class cla) throws Exception;
    public void update(Connection conn,Class cla) throws Exception;
    public void delete(Connection conn,int classId) throws Exception;
    public Class selectById(Connection conn,int classId) throws Exception;
    public PageModel selectPageAll(Connection conn, int currentPage, int pageSize) throws Exception;
}
