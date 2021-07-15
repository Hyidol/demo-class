package dao;

import domain.User;
import util.PageModel;

import java.sql.Connection;

/**
 * @author Yuhua
 * @since 21.7.14 10:43
 */
public interface UserDao{
    public void insert(Connection conn,User user) throws Exception;
    public void update(Connection conn,User user) throws Exception;
    public void delete(Connection conn,int userId) throws Exception;
    public User selectUser(Connection conn, User user) throws Exception;
    public PageModel selectPageAll(Connection conn, int currentPage, int pageSize) throws Exception;
}
