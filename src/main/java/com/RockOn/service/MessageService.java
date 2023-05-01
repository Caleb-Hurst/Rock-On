package com.RockOn.service;

import org.springframework.beans.factory.annotation.Autowired;

import com.RockOn.repository.MessageRepository;


public class MessageService {

	@Autowired
	private MessageRepository messageRepo;

//	public List<Message> findByChannelName(String channelName) {
//		
//		return messageRepo.findByChannelName(channelName);
//	}
	

}
