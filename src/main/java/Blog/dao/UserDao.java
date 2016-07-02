package Blog.dao;


import Blog.entity.User;
import org.hibernate.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by bliss on 2016/6/29.
 */
@Repository
public class UserDao extends BaseDao {
    public User getUserByName(String username){
        String hql= "from User as us where us.username = ?";
        Query query=super.query(hql);
        query.setString(0,username);

        List<User> userlist=query.list();

        return userlist.get(0);
    }

    /**
     * 判断用户名是否存在
     * @param username
     * @return
     */
    public boolean isUsernameExit(String username){
        if(HQuery("username",username) == null){
            return false;
        }

        return true;
    }

    /**
     * 查询
     * @param colume
     * @param value
     * @return
     */
    private User HQuery(String colume , String value){
        String hql = "from User  where "+colume+"=?";
        Query query = query(hql);
        //query.setString(0, String.valueOf(value));
        query.setString(0, value);
        User results = (User) query.uniqueResult();
        return results;
    }
    public void save(User user){
        super.save(user);
    }
}
