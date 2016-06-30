package Blog.page;

import Blog.dao.BaseDao;
import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.criterion.Projections;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by sl on 16-2-28.
 */


@Repository("pageDao")
public class PageDao extends BaseDao {

    /**
     * 创建Criteria对象
     * @param c
     * @return
     */
    public <T> Criteria getCriteria(Class<T> c) {
        return getSession().createCriteria(c);
    }

    public <T> long getTotalRowCount(Class<T> c) {
        return (long) getCriteria(c).setProjection(Projections.rowCount())
                .uniqueResult();
    }

    public <T> List<T> getPageList(int pageSize, int pageNow, Class<T> c){
        Criteria criteria = getCriteria(c);
        criteria.setFirstResult((pageNow-1)*pageSize);
        criteria.setMaxResults(pageSize);
        List<T> list = criteria.list();
        System.out.println("list" + list.size());
        return list;
    }

    public <T> List<T> getPageList(int pageSize, int pageNow, Query query){
        query.setFirstResult((pageNow-1)*pageSize);
        query.setMaxResults(pageSize);
        List<T> list = query.list();
        System.out.println("list" + list.size());
        return list;
    }

}


