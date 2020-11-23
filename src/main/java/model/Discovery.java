package model;

import java.sql.Timestamp;
import java.util.Objects;

public class Discovery {
    private long id;
    private String name;
    private String description;
    private String url;
    private Timestamp timestamp;
    private User user;
    private int upVote;
    private int downVote;

    public Discovery() {}

    public Discovery(Discovery discovery) {
        this.id = discovery.id;
        this.name = discovery.name;
        this.description = discovery.description;
        this.url = discovery.url;
        this.timestamp = discovery.timestamp;
        this.user = discovery.user;
        this.upVote = discovery.upVote;
        this.downVote = discovery.downVote;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public Timestamp getTimestamp() {
        return timestamp;
    }

    public void setTimestamp(Timestamp timestamp) {
        this.timestamp = timestamp;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public int getUpVote() {
        return upVote;
    }

    public void setUpVote(int upVote) {
        this.upVote = upVote;
    }

    public int getDownVote() {
        return downVote;
    }

    public void setDownVote(int downVote) {
        this.downVote = downVote;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Discovery discovery = (Discovery) o;
        return id == discovery.id &&
                upVote == discovery.upVote &&
                downVote == discovery.downVote &&
                Objects.equals(name, discovery.name) &&
                Objects.equals(description, discovery.description) &&
                Objects.equals(url, discovery.url) &&
                Objects.equals(timestamp, discovery.timestamp) &&
                Objects.equals(user, discovery.user);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, name, description, url, timestamp, user, upVote, downVote);
    }

    @Override
    public String toString() {
        return "Discovery{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", description='" + description + '\'' +
                ", url='" + url + '\'' +
                ", timestamp=" + timestamp +
                ", user=" + user +
                ", upVote=" + upVote +
                ", downVote=" + downVote +
                '}';
    }
}
