package Blog.controller;

import Blog.dao.BlogDao;
import Blog.entity.Blog;
import Blog.entity.Comment;
import Blog.entity.User;
import Blog.page.Page;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * Created by CrazyCodess on 2016/6/29.
 */
@Controller
@RequestMapping("/blog")
public class BlogController {

    @Autowired
    private BlogDao blogDao;
    @RequestMapping(value = "/viewblog/{posid}" , method = RequestMethod.GET)
    public String  viewBlog(Model  model,@PathVariable("posid") int posid){
        Blog blog=blogDao.getById(posid);
        List<Comment> comments=blogDao.getCommentByBlog(posid);
        model.addAttribute("comments",comments);
        model.addAttribute("blog",blog);
        return "blog/blogview";
    }


    @RequestMapping(value="/list",method=RequestMethod.GET)
    public String view(Model model, String page){

        int pageNum = page == null ? 1 : Integer.valueOf(page);

        Page<Blog> pageBlogs = blogDao.queryForBlogsListByPage(pageNum, 15);
        model.addAttribute("page",pageBlogs);
        model.addAttribute("currentPage", pageNum);
        return "blog/list";
    }

    @RequestMapping(value = "/add",method = RequestMethod.POST)
    public String addBlog(String title, String description, String content,
                          RedirectAttributes redirectAttributes,  HttpSession session){
        User user =(User)session.getAttribute("user");
        int author=0;
        author=((User) session.getAttribute("user")).getId();
        blogDao.addBlog(title,description,content,author);

        redirectAttributes.addFlashAttribute("Msg","添加成功！");
        return "redirect:/blog/list";
    }
    @RequestMapping(value = "/add",method = RequestMethod.GET)
    public String addBlog(){
        return "blog/addBlog";
    }


    @RequestMapping(value = "/edit/{id}",method = RequestMethod.GET)
    public String editBlog(Model model ,@PathVariable("id") int id){
        Blog blog=blogDao.getById(id);
        if(blog==null){
            blog=new Blog();
        }
        model.addAttribute("blog",blog);
        return "blog/editBlog";
    }

    @RequestMapping(value = "/update/{id}" ,method = RequestMethod.POST)
    public String update(@PathVariable("id") int id,String title, String description, String content,
                         RedirectAttributes redirectAttributes,  HttpSession session){

        blogDao.updateBlog(id,title,description,content);
        redirectAttributes.addFlashAttribute("Msg","编辑成功！!");
        return "redirect:/blog/list";
    }

    @RequestMapping(value = "/comment/{id}" ,method = RequestMethod.POST)
    public String comment(Model model,@PathVariable("id") int id,String content,HttpSession session){

        User user=(User)session.getAttribute("user");
        String author = null;
        if(user!=null){
            author=user.getUsername();
        }
        if(author==null)
        {
            author="admin";
        }
        blogDao.comment(id,content,author);
        Blog blog=blogDao.getById(id);
        List<Comment> comments=blogDao.getCommentByBlog(id);
        model.addAttribute("comments",comments);
        model.addAttribute("blog",blog);
        return "blog/blogview";
    }

    @RequestMapping(value = "/delete/{id}",method = RequestMethod.GET)
    public String deleteBlog(Model model,@PathVariable("id") int id,RedirectAttributes redirectAttributes){
            blogDao.deleteBlog(id);
        redirectAttributes.addFlashAttribute("Msg","删除成功！!");
        return "redirect:/blog/list";
    }

    @RequestMapping(value="/list/{author}",method=RequestMethod.GET)
    public String view(Model model, String page,@PathVariable("author") int author){

        int pageNum = page == null ? 1 : Integer.valueOf(page);

        Page<Blog> pageBlogs = blogDao.queryForPBlogsByPage(pageNum, 15,author);
        model.addAttribute("page",pageBlogs);
        model.addAttribute("currentPage", pageNum);
        return "blog/personalblog";
    }
}
