package com.RockOn.web;



import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.RockOn.domain.Channel;
import com.RockOn.domain.Message;
import com.RockOn.service.ChannelService;



@Controller 

public class ForumController {
	@Autowired
	private ChannelService channelService;
//	@Autowired
//	private MessageService messageService;

	@GetMapping("/forums")
	public String channel(ModelMap model) {
		List<Channel> channels = channelService.findAll();
		Channel channel = new Channel();
		model.put("channel", channel);
		model.put("channels", channels);
		return "forums/";
	}

	@PostMapping("/forums")
	public String newChannel(Channel channel) {
		channelService.save(channel);
		System.out.println(channel);
		return "redirect:/forum/";
	}

	@GetMapping("/channel/{channelId}")
	public String getChannelData(@PathVariable Long channelId, Model model) {
	    Channel channel = channelService.findById(channelId);
	    model.addAttribute("channel", channel);
	    model.addAttribute("channelId", channel.getChannelId());
	    model.addAttribute("newMessage", new Message());
	    return "forum/";
	}
}
