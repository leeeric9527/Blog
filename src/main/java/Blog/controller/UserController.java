package Blog.controller;

import Blog.Util.StatusMessage;
import Blog.dao.UserDao;
import Blog.entity.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpSession;

/**
 * Created by bliss on 2016/6/29.
 */
@Controller
@RequestMapping("/user")
public class UserController {
    @Autowired
    private UserDao userDao;
    /**
     * login 跳转页面
     * @return
     */
    @RequestMapping(value = "/login",method = RequestMethod.GET)
    public String login(){
        return "register/login";
    }

    /**
     * 登陆页面参数接收
     * @return
     */
    @ResponseBody
    @RequestMapping(value = "/login",method =RequestMethod.POST)
    public StatusMessage login(String username, String password, HttpSession session){
        //判断是否有此用户
        StatusMessage statusMessage = new StatusMessage(0,"登陆成功");
        User user=userDao.getUserByName(username);
        if( username ==null||username.length()==0)
        {
            statusMessage.setMessage("请填写用户名！");
            statusMessage.setStatus(0);
        }
        else if(!userDao.isUsernameExit(username)){
            statusMessage.setMessage("用户名不存在！");
            statusMessage.setStatus(0);
        }
        else if(password ==null||password.length()==0){
            statusMessage.setMessage("请填写密码");
            statusMessage.setStatus(0);
        }
        else if(!password .equals(user.getPassword())){
            statusMessage.setMessage("密码错误");
            statusMessage.setStatus(0);
        }
        else {
            statusMessage.setMessage("登陆成功！");
            statusMessage.setStatus(1);
        }

        session.setAttribute("user",user);
        return statusMessage;
    }

    /**
     * 注册页面跳转
     * @return
     */
    @RequestMapping(value = "/register" , method = RequestMethod.GET)
    public String register(){
        return "register/register";
    }
    /**
     * 注册参数传入
     */
    @ResponseBody
    @RequestMapping(value = "/register",method = RequestMethod.POST)
    public StatusMessage register(
                                  String username, String password, String email, String sex, String interest, String city, HttpSession session){
        System.out.println("register----");
        User user=new User();
        StatusMessage statusMessage = null;
        //User user  = new User();

        if(username==""||username==null){
            statusMessage = new StatusMessage(0,"请输入用户名！");
        }
        else if(userDao.isUsernameExit(username)){

            statusMessage=new StatusMessage(0,"用户名已存在！");
        }
        else if(password==""||password==null){
            statusMessage=new StatusMessage(0,"请输入密码！");
        }
        else if(sex==""||sex==null){
            statusMessage=new StatusMessage(0,"请填写性别！");
        }
        else if(email==""||email==null){
            statusMessage=new StatusMessage(0,"请填写邮箱！");
        }
        else if(city==""||city==null){
            statusMessage=new StatusMessage(0,"请填写城市！");
        }
        else if(interest==""||interest==null){
            statusMessage=new StatusMessage(0,"请填写兴趣！");
        }
        else {
            user.setUsername(username);
            user.setPassword(password);
            user.setSex(sex);
            user.setEmail(email);
            user.setCity(city);
            user.setInterest(interest);
            session.setAttribute("user",user);
            userDao.save(user);
            statusMessage=new StatusMessage(1,"注册成功！，您已登录");
        }
        return statusMessage;
    }

    @RequestMapping(value = "/logout" , method = RequestMethod.GET)
    public String logout(HttpSession session){

        session.removeAttribute("user");
        return "redirect:/index";
    }
}
