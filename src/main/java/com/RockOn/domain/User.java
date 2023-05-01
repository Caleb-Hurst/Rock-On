package com.RockOn.domain;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;

import org.apache.logging.log4j.message.Message;

@Entity
public class User {
    private Long userId;
    private String userName;
    private String password;
    private List<Message> messages = new ArrayList<>();
    private List<Channel> channels = new ArrayList<>();
    
    public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    public Long getUserId() {
        return userId;
    }
    public void setUserId(Long userId) {
        this.userId = userId;
    }
    @Column(unique = true)
    public String getUsername() {
        return userName;
    }
    public void setUsername(String username) {
        this.userName = username;
    }
    @OneToMany(mappedBy = "user", cascade = CascadeType.ALL)
    public List<Message> getMessages() {
        return messages;
    }
    public void setMessages(List<Message> messages) {
        this.messages = messages;
    }
    @ManyToMany(cascade = CascadeType.ALL)
    @JoinTable(
        name = "user_channel",
        joinColumns = @JoinColumn(name = "user_id"),
        inverseJoinColumns = @JoinColumn(name = "channel_id")
    )
    public List<Channel> getChannels() {
        return channels;
    }
    public void setChannels(List<Channel> channels) {
        this.channels = channels;
    }
}
