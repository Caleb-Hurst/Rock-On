package com.RockOn.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.mysql.cj.protocol.Message;

public interface MessageRepository extends JpaRepository<Message, Long>{

}
