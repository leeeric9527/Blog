package Blog.page;


import java.util.ArrayList;
import java.util.List;
/**
 * Created by sl on 16-2-28.
 */

/**
 * 通用分页页面
 *
 * @author sloriac
 * @param <T>
 */
public class Page<T> {

    private long pageNow;
    private long totalPageCount;
    private boolean hasPre;
    private boolean hasNext;
    List<T> list = new ArrayList<T>();

    public Page() {
        super();
    }

    public Page(long pageNow, long totalPageCount, boolean hasPre,
                boolean hasNext, List<T> list) {
        super();
        this.pageNow = pageNow;
        this.totalPageCount = totalPageCount;
        this.hasPre = hasPre;
        this.hasNext = hasNext;
        this.list = list;
    }

    public long getPageNow() {
        return pageNow;
    }

    public void setPageNow(long pageNow) {
        this.pageNow = pageNow;
        if (pageNow == 1) {
            setHasPre(false);
        } else {
            setHasPre(true);
        }
    }

    public long getTotalPageCount() {
        return totalPageCount;
    }

    public void setTotalPageCount(long totalPageCount) {
        this.totalPageCount = totalPageCount;
        if (pageNow < totalPageCount) {
            setHasNext(true);
        } else {
            setHasNext(false);
        }
    }

    public boolean isHasPre() {
        return hasPre;
    }

    public void setHasPre(boolean hasPre) {
        this.hasPre = hasPre;
    }

    public boolean isHasNext() {
        return hasNext;
    }

    public void setHasNext(boolean hasNext) {
        this.hasNext = hasNext;
    }

    public List<T> getList() {
        return list;
    }

    public void setList(List<T> list) {
        this.list = list;
    }

    @Override
    public String toString() {
        return "Page [pageNow=" + pageNow + ", totalPageCount="
                + totalPageCount + ", hasPre=" + hasPre + ", hasNext="
                + hasNext + ", list=" + list + "]";
    }


}



