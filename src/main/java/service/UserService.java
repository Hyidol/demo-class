package service;

import domain.User;
import util.PageModel;

/**
 * @author Yuhua
 * @since 21.7.14 11:30
 */
public interface UserService {
    void addUser(User user);
    void removeUser(int userId);
    void modifyUser(User user);
    User login(User user);
    PageModel queryPageAll(int currentPage, int pageSize);
}
