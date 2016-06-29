package Blog.dao;

import Blog.page.Page;
import Blog.page.PageHandler;
import org.hibernate.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import Blog.entity.Blog;
/**
 * Created by CrazyCodess on 2016/6/29.
 */
@Repository("blogDao")
public class BlogDao extends BaseDao{

    @Autowired
    private PageHandler<Blog> blogPageHandler;
    public Blog getById(int id){

        return get(Blog.class,id);
    }
    public void delete(Blog blog){
        delete(blog);
    }
    public void add(Blog blog){
        add(blog);
    }
    public void update(Blog blog){
        update(blog);
    }

    public Page<Blog> queryForNewsListByPage(int pageNum , int pageSize) {
        String hql="from Blog as blog order by blog.listorder desc, ";
        Query query = query(hql);
        Page<Blog> newsPage = blogPageHandler.getPage(pageNum, pageSize, Blog.class, query);
        return newsPage;
    }

}
