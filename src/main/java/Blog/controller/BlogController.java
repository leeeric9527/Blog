package Blog.controller;

import Blog.dao.BlogDao;
import Blog.entity.Blog;
import Blog.page.Page;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Created by CrazyCodess on 2016/6/29.
 */
@Controller
@RequestMapping("/blog")
public class BlogController {

    @Autowired
    private BlogDao blogDao;
    @RequestMapping(value = "/viewblog{posid}" , method = RequestMethod.GET)
    public String  viewBlog(Model  model,@PathVariable("posid") int posid){
        Blog blog=blogDao.getById(posid);
        model.addAttribute("blog",blog);
        return "blog/blogview";
    }


    @RequestMapping(value="/list",method=RequestMethod.GET)
    public String view(Model model, String page){

        int pageNum = page == null ? 1 : Integer.valueOf(page);

        Page<Blog> pageBlogs = blogDao.queryForNewsListByPage(pageNum, 15);
        model.addAttribute("page",pageBlogs);
        model.addAttribute("currentPage", pageNum);
        return "news/list";
    }



}
