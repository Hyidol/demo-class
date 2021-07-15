package util;

import domain.User;

import java.util.ArrayList;

/**
 * @author Yuhua
 * @since 21.7.14 10:54
 */
public class PageModel {
    public static final int PAGE_SIZE = 10;
    private ArrayList list = new ArrayList();
    private int currentPage;
    private int pageSize;
    private int totalRecord;

    //页数
    public int getTotalPage(){
        return (pageSize+totalRecord+1)/pageSize;
    };
    //首页
    public int getFirstPage(){
        return 1;
    }
    //上一页
    public int getPageUp(){
        if(currentPage<=1){
            return 1;
        }
        currentPage--;
        return currentPage;
    }
    //下一页
    public int getPageDown(){
        if(currentPage>=pageSize){
            return pageSize;
        }
        currentPage++;
        return currentPage;
    }
    //尾页
    public int getLastPage(){
        return pageSize;
    }

    //自动生成

    public static int getPageSize() {
        return PAGE_SIZE;
    }

    public void setPageSize(int pageSize) {
        this.pageSize = pageSize;
    }

    public int getTotalRecord() {
        return totalRecord;
    }

    public void setTotalRecord(int totalRecord) {
        this.totalRecord = totalRecord;
    }

    public ArrayList getList() {
        return list;
    }

    public void setList(ArrayList list) {
        this.list = list;
    }

    public int getCurrentPage() {
        return currentPage;
    }

    public void setCurrentPage(int currentPage) {
        this.currentPage = currentPage;
    }
}