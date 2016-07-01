package Blog.controller;

import Blog.dao.BlogDao;
import Blog.entity.Blog;
import Blog.page.Page;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Created by CrazyCodess on 2016/6/29.
 */
@Controller
@RequestMapping("/")
public class IndexController {

    @Autowired
    private BlogDao blogDao;
    @RequestMapping(value = "/index" ,method= RequestMethod.GET)
    public String index(Model model){
        Page<Blog> pageBlogs = blogDao.queryForBlogsListByPage(1, 15);
        model.addAttribute("page",pageBlogs);
        model.addAttribute("currentPage", 1);

        return "MainPage/index";
    }
}
