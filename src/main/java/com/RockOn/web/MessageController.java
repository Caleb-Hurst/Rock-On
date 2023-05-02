package com.RockOn.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.RockOn.domain.Channel;
import com.RockOn.domain.Message;
import com.RockOn.domain.User;
import com.RockOn.service.ChannelService;
import com.RockOn.service.UserService;



public class MessageController {
	@Autowired
	private UserService userService;
	@Autowired 
	private ChannelService channelService;
	
	@PostMapping("/channel/{channelId}")
	public ResponseEntity<String> sendMessage(@PathVariable Long channelId, @RequestParam("message") String message,@RequestParam("user") String user) {	   
	    Channel channel = channelService.findById(channelId);
	    User newUser = userService.findByName(user);
	    Message newMessage = new Message();
	    newMessage.setMessage(message);
	    newMessage.setUser(newUser);
	    newMessage.setChannel(channel);
	    channel.getMessages().add(newMessage);
	    channelService.save(channel);
	    return ResponseEntity
	            .status(HttpStatus.OK)
	            .body("{\"status\": \"success\"}");
	}
	@GetMapping("/channel/{channelId}/messages")
	@ResponseBody
	public List<Message> getChannelMessages(@PathVariable Long channelId) {
	   Channel channel = channelService.findById(channelId);
	   return channel.getMessages();
	}
}
