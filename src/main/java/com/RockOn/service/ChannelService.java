package com.RockOn.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.RockOn.domain.Channel;
import com.RockOn.repository.ChannelRepository;
@Service
public class ChannelService {
	@Autowired
	ChannelRepository channelRepo;

	public Channel save(Channel channel) {		
		return channelRepo.save(channel);
	}

	public List<Channel> findAll() {
		
		return channelRepo.findAll();
	}

	public Channel findById(Long id) {
		return channelRepo.findById(id).get();
	}

	public Channel createNewChannel() {
		Channel channel = new Channel();
		
		
		return channelRepo.save(channel);
	}

	

}