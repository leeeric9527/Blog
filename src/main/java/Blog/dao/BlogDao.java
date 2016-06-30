package Blog.dao;

import Blog.Util.RegexUtils;
import Blog.entity.Comment;
import Blog.page.Page;
import Blog.page.PageHandler;
import org.hibernate.Query;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import Blog.entity.Blog;

import java.util.ArrayList;
import java.util.List;

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
    public void add(Blog blog){
        save(blog);
    }

    public Page<Blog> queryForBlogsListByPage(int pageNum , int pageSize) {
        String hql="from Blog as blog order by blog.inputtime desc";
        Query query = query(hql);
        Page<Blog> blogsPage = blogPageHandler.getPage(pageNum, pageSize, Blog.class, query);
        return blogsPage;
    }

    public void addBlog(String title, String description, String content,String author){
        Blog blog=new Blog( title,  description,  content,author);
        long currentTime=System.currentTimeMillis()/1000;
        blog.setInputtime( String.valueOf(currentTime));
        String thumb= RegexUtils.getPicPath(content);
        if(thumb==null||thumb.length()==0){
            thumb="";
        }
        blog.setThumb(thumb);
        add(blog);
    }

    public void updateBlog(int id,String title, String description, String content){
        Blog blog=getById(id);
        blog.setTitle(title);
        blog.setDescription(description);
        blog.setContent(content);
        blog.setInputtime(String.valueOf(System.currentTimeMillis()));
        //blog.setAuthor(author);
        update(blog);
    }

    public List<Comment> getCommentByBlog(int id){
        List<Comment> comments;
        String hql="from Comment as comm where comm.blogid=?";
        Query query=query(hql);
        query.setInteger(0,id);
        comments=query.list();
        return comments;

/*        System.out.println("评论");
        Blog blog=getById(id);
        Comment comment=new Comment();
        comment.setContent(content);
        comment.setUsername(author);
        comment.setInputtime(String.valueOf(System.currentTimeMillis()));
        List<Comment> comments= blog.getComments();
        //System.out.println("评论"+comments.get(0).getContent());
       if(comments==null){
           comments=new ArrayList<Comment>();
           comments.add(comment);
           blog.setComments(comments);
       }else
       {
           comments.add(comment);

       }*/

        //update(blog);
    }
    public void deleteBlog(int id){
        Blog blog=getById(id);
        delete(blog);
    }
    public void comment(int blogid,String content,String author){
        Comment comm=new Comment();
        comm.setBlogid(blogid);
        comm.setContent(content);
        comm.setAuthor(author);
        comm.setInputtime(String.valueOf(System.currentTimeMillis()));
        save(comm);
    }

}
