package com.rockon.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.rockon.domain.Message;

@Repository
public interface MessageRepository extends JpaRepository<Message, Long> {

//	List<Message> findByChannelName(String channelName);

}
