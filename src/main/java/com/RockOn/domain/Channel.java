package com.RockOn.domain;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;

@Entity
public class Channel {
    private Long channelId;
    private String channelName;
    private List<User> users = new ArrayList<>();
    private List<Message> messages = new ArrayList<>();
    
    @Id
    @GeneratedValue(strategy=GenerationType.IDENTITY)
    public Long getChannelId() {
        return channelId;
    }
    public void setChannelId(Long channelId) {
        this.channelId = channelId;
    }
    public String getChannelName() {
        return channelName;
    }
    public void setChannelName(String channelName) {
        this.channelName = channelName;
    }
    @ManyToMany(mappedBy = "channels")
    public List<User> getUsers() {
        return users;
    }
    public void setUsers(List<User> users) {
        this.users = users;
    }
    @OneToMany(mappedBy = "channel", cascade = CascadeType.ALL)
    public List<Message> getMessages() {
        return messages;
    }
    public void setMessages(List<Message> messages) {
        this.messages = messages;
    }
}

