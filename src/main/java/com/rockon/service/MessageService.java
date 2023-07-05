package com.rockon.service;

import org.springframework.beans.factory.annotation.Autowired;

import com.rockon.repository.MessageRepository;


public class MessageService {

	@Autowired
	private MessageRepository messageRepo;

//	public List<Message> findByChannelName(String channelName) {
//		
//		return messageRepo.findByChannelName(channelName);
//	}
	

}
