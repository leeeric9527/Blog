package Blog.entity;

import javax.persistence.*;

/**
 * Created by CrazyCodess on 2016/6/29.
 */
@Entity
@Table(name = "blog",catalog = "blog")
public class Blog {
    private String title;
    private int posid;
    private String description;
    private String content;
    private String author;
    private String comment;
    private Integer hits;

    @Basic
    @Column(name = "title", nullable = true, length = 80)
    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    @Id
    @Column(name = "posid", nullable = false)
    public int getPosid() {
        return posid;
    }

    public void setPosid(int posid) {
        this.posid = posid;
    }

    @Basic
    @Column(name = "description", nullable = true, length = 80)
    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
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
    @Column(name = "author", nullable = true, length = 15)
    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    @Basic
    @Column(name = "comment", nullable = true, length = -1)
    public String getComment() {
        return comment;
    }

    public void setComment(String comment) {
        this.comment = comment;
    }

    @Basic
    @Column(name = "hits", nullable = true)
    public Integer getHits() {
        return hits;
    }

    public void setHits(Integer hits) {
        this.hits = hits;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Blog blog = (Blog) o;

        if (posid != blog.posid) return false;
        if (title != null ? !title.equals(blog.title) : blog.title != null) return false;
        if (description != null ? !description.equals(blog.description) : blog.description != null) return false;
        if (content != null ? !content.equals(blog.content) : blog.content != null) return false;
        if (author != null ? !author.equals(blog.author) : blog.author != null) return false;
        if (comment != null ? !comment.equals(blog.comment) : blog.comment != null) return false;
        if (hits != null ? !hits.equals(blog.hits) : blog.hits != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = title != null ? title.hashCode() : 0;
        result = 31 * result + posid;
        result = 31 * result + (description != null ? description.hashCode() : 0);
        result = 31 * result + (content != null ? content.hashCode() : 0);
        result = 31 * result + (author != null ? author.hashCode() : 0);
        result = 31 * result + (comment != null ? comment.hashCode() : 0);
        result = 31 * result + (hits != null ? hits.hashCode() : 0);
        return result;
    }
}
