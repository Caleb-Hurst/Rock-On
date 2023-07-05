package com.rockon.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.rockon.domain.Channel;
import com.rockon.domain.Message;
import com.rockon.domain.User;
import com.rockon.service.ChannelService;
import com.rockon.service.UserService;

@Controller

public class ForumController {
	@Autowired
	private ChannelService channelService;
	@Autowired
	private UserService userService;

	@GetMapping("/forums/{userId}/")
	public String channel(@PathVariable("userId") Long userId, ModelMap model) {
		User user = userService.findById(userId);
		model.put("userId", userId);
		model.put("user", user.getUsername());
		List<Channel> channels = channelService.findAll();
		Channel channel = new Channel();
		model.put("channel", channel);
		model.put("channels", channels);
		return "forums";
	}

	@PostMapping("/forums/{userId}")
	public String newChannel(Channel channel, @PathVariable("userId") Long userId) {
		channelService.save(channel);
		System.out.println(channel);
		return "redirect:/forums/" + userId + "/";
	}

	
}
