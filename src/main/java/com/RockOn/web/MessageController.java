package com.RockOn.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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
@Controller
public class MessageController {
	@Autowired
	private UserService userService;
	@Autowired
	private ChannelService channelService;

	@PostMapping("/channel/{channelId}/{userId}")
	public String sendMessage(@PathVariable Long channelId, @PathVariable Long userId, @RequestParam("message") String message) {
		Channel channel = channelService.findById(channelId);
		User newUser = userService.findById(userId);
		Message newMessage = new Message();
		newMessage.setMessage(message);
		newMessage.setUser(newUser);
		newMessage.setChannel(channel);
		channel.getMessages().add(newMessage);
		channelService.save(channel);
		return "redirect:/channel/" + channelId + "/" + userId;
	}

	@GetMapping("/channel/{channelId}/messages")
	@ResponseBody
	public List<Message> getChannelMessages(@PathVariable Long channelId) {
		Channel channel = channelService.findById(channelId);
		System.out.println(channel.getMessages());
		return channel.getMessages();
	}
	@GetMapping("/channel/{channelId}/{userId}")
	public String getChannelData(@PathVariable Long channelId,@PathVariable("userId") Long userId, Model model) {
		Channel channel = channelService.findById(channelId);
		model.addAttribute("channel", channel);
		model.addAttribute("userId", userId);
		model.addAttribute("channelId", channel.getChannelId());
		
		model.addAttribute("message", new Message());
		return "forum";
	}
}
