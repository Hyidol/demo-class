package dao.impl;

import dao.BaseDao;
import dao.ClassDao;
import domain.Class;
import domain.User;
import util.PageModel;

import java.sql.Connection;
import java.sql.ResultSet;
import java.util.ArrayList;

/**
 * @author Yuhua
 * @since 21.7.14 13:52
 */
public class ClassDaoImpl extends BaseDao implements ClassDao {

    public void insert(Connection conn, Class cla) throws Exception {
        String sql = "insert into class(name) values(?);";
        Object[] param = {cla.getName()};
        exeSql(conn,sql,param);
    }

    public void update(Connection conn, Class cla) throws Exception {
        String sql = "update class set name=? where id=?;";
        Object[] param = {cla.getName(),cla.getId()};
        exeSql(conn,sql,param);
    }

    public void delete(Connection conn, int classId) throws Exception {
        String sql1 = "select * from student where classId=?;";
        Object[] param = {classId};
        ResultSet rs = getRs(conn,sql1,param);
        if(!rs.next()){
            String sql2 = "delete from class where id=?;";
            exeSql(conn,sql2,param);
        }
    }

    public Class selectById(Connection conn, int classId) throws Exception {
        String sql = "select * from class where id=?;";
        Object[] param = {classId};
        ResultSet rs = this.getRs(conn,sql,param);
        Class cla = null;
        if(rs.next()){
            cla = new Class();
            cla.setId(classId);
            cla.setName(rs.getString("name"));
        }
        return cla;
    }

    public PageModel selectPageAll(Connection conn, int currentPage, int pageSize) throws Exception {
        String sql = "select * from class limit ?,?;";
        Object[] param = {(currentPage-1)*pageSize,pageSize};
        ResultSet rs = getRs(conn,sql,param);
        ArrayList<Class> classList = new ArrayList<Class>();
        while (rs.next()){
            Class cla = new Class();
            cla.setId(rs.getInt("id"));
            cla.setName(rs.getString("name"));
            classList.add(cla);
        }
        String sql1 = "select count(*) from class;";
        PageModel userPageALl = new PageModel();
        userPageALl.setList(classList);
        userPageALl.setCurrentPage(currentPage);
        userPageALl.setPageSize(pageSize);
        userPageALl.setTotalRecord(getRowCount(conn,sql1,null));
        return userPageALl;
    }
}