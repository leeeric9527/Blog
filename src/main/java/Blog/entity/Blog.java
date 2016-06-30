package Blog.entity;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by CrazyCodess on 2016/6/29.
 */
@Entity
@Table(name = "blog",catalog = "blog")
public class Blog {

    @Basic
    @Column(name = "title", nullable = true, length = 80)
    private String title;

    @Id
    @Column(name = "id", nullable = false)
    private int id;
    @Basic
    @Column(name = "description", nullable = true, length = 80)
    private String description;
    @Basic
    @Column(name = "content", nullable = true, length = -1)
    private String content;

    @Basic
    @Column(name = "author", nullable = true, length = 15)
    private String author;
    @Basic
    @Column(name = "comment", nullable = true, length = -1)
    private String comment;

    @Basic
    @Column(name = "hits", nullable = true)
    private Integer hits;
    @Basic
    @Column(name = "thumb", nullable = true, length = 255)
    private String thumb;
    @Basic
    @Column(name = "inputtime", nullable = true, length = 20)
    private String inputtime;

/*
    @OneToMany(targetEntity = Comment.class)
    @JoinColumn(name="id",referencedColumnName = "id")
    private List<Comment> comments=new ArrayList<Comment>();
*/


    public Blog(String title, String description, String content,
                String author ) {
        this.title = title;
        this.description = description;
        this.content = content;
        this.author = author;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }


    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }


/*
    public List<Comment> getComments() {
        return comments;
    }

    public void setComments(List<Comment> comments) {
        this.comments = comments;
    }*/

    public Blog() {
    }



    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }


    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }


    public String getComment() {
        return comment;
    }

    public void setComment(String comment) {
        this.comment = comment;
    }

    public Integer getHits() {
        return hits;
    }

    public void setHits(Integer hits) {
        this.hits = hits;
    }


    public String getThumb() {
        return thumb;
    }

    public void setThumb(String thumb) {
        this.thumb = thumb;
    }


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
