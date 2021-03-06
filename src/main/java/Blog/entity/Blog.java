package Blog.entity;

import javax.persistence.*;

/**
 * Created by CrazyCodess on 2016/7/3.
 */
@Entity
@Table(name = "blog",catalog = "blog")
public class Blog {
    private String title;
    private int id;
    private String description;
    private String content;
    private Integer author;
    private String comment;
    private Integer hits;
    private String thumb;
    private String inputtime;

    public Blog() {
    }

    public Blog(String title, String description, String content, Integer author) {
        this.title = title;
        this.description = description;
        this.content = content;
        this.author = author;
    }

    @Basic
    @Column(name = "title", nullable = true, length = 125)
    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    @Id
    @Column(name = "id", nullable = false)
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @Basic
    @Column(name = "description", nullable = true, length = 255)
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
    @Column(name = "author", nullable = true)
    public Integer getAuthor() {
        return author;
    }

    public void setAuthor(Integer author) {
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

    @Basic
    @Column(name = "thumb", nullable = true, length = 255)
    public String getThumb() {
        return thumb;
    }

    public void setThumb(String thumb) {
        this.thumb = thumb;
    }

    @Basic
    @Column(name = "inputtime", nullable = true, length = 20)
    public String getInputtime() {
        return inputtime;
    }

    public void setInputtime(String inputtime) {
        this.inputtime = inputtime;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Blog blog = (Blog) o;

        if (id != blog.id) return false;
        if (title != null ? !title.equals(blog.title) : blog.title != null) return false;
        if (description != null ? !description.equals(blog.description) : blog.description != null) return false;
        if (content != null ? !content.equals(blog.content) : blog.content != null) return false;
        if (author != null ? !author.equals(blog.author) : blog.author != null) return false;
        if (comment != null ? !comment.equals(blog.comment) : blog.comment != null) return false;
        if (hits != null ? !hits.equals(blog.hits) : blog.hits != null) return false;
        if (thumb != null ? !thumb.equals(blog.thumb) : blog.thumb != null) return false;
        if (inputtime != null ? !inputtime.equals(blog.inputtime) : blog.inputtime != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = title != null ? title.hashCode() : 0;
        result = 31 * result + id;
        result = 31 * result + (description != null ? description.hashCode() : 0);
        result = 31 * result + (content != null ? content.hashCode() : 0);
        result = 31 * result + (author != null ? author.hashCode() : 0);
        result = 31 * result + (comment != null ? comment.hashCode() : 0);
        result = 31 * result + (hits != null ? hits.hashCode() : 0);
        result = 31 * result + (thumb != null ? thumb.hashCode() : 0);
        result = 31 * result + (inputtime != null ? inputtime.hashCode() : 0);
        return result;
    }
}
