package Blog.entity;

import javax.persistence.*;

/**
 * Created by CrazyCodess on 2016/6/30.
 */
@Entity
@Table(name = "comment",catalog = "blog")
public class Comment {
    private int id;
    private String content;
    private String inputtime;
    private String author;
    private Integer blogid;

    @Id
    @Column(name = "id", nullable = false)
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @Basic
    @Column(name = "content", nullable = true, length = -1)
    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    @Basic
    @Column(name = "inputtime", nullable = true, length = 20)
    public String getInputtime() {
        return inputtime;
    }

    public void setInputtime(String inputtime) {
        this.inputtime = inputtime;
    }

    @Basic
    @Column(name = "author", nullable = true, length = 20)
    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    @Basic
    @Column(name = "blogid", nullable = true)
    public Integer getBlogid() {
        return blogid;
    }

    public void setBlogid(Integer blogid) {
        this.blogid = blogid;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Comment comment = (Comment) o;

        if (id != comment.id) return false;
        if (content != null ? !content.equals(comment.content) : comment.content != null) return false;
        if (inputtime != null ? !inputtime.equals(comment.inputtime) : comment.inputtime != null) return false;
        if (author != null ? !author.equals(comment.author) : comment.author != null) return false;
        if (blogid != null ? !blogid.equals(comment.blogid) : comment.blogid != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = id;
        result = 31 * result + (content != null ? content.hashCode() : 0);
        result = 31 * result + (inputtime != null ? inputtime.hashCode() : 0);
        result = 31 * result + (author != null ? author.hashCode() : 0);
        result = 31 * result + (blogid != null ? blogid.hashCode() : 0);
        return result;
    }
}
