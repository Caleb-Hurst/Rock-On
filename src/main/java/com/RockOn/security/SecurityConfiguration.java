package com.RockOn.security;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.authentication.configuration.EnableGlobalAuthentication;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

@Configuration
@EnableGlobalAuthentication
public class SecurityConfiguration extends WebSecurityConfigurerAdapter {
  
//  @Autowired
//  private PasswordEncoder passwordEncoder;
 
	@Autowired
  private UserDetailsService userDetailsService;
  
  @Bean
  public BCryptPasswordEncoder passwordEncoder() {
    return new BCryptPasswordEncoder();
  }

  @Override
  protected void configure(AuthenticationManagerBuilder auth) throws Exception {
    auth
      .userDetailsService(userDetailsService)
      .passwordEncoder(passwordEncoder());
//    auth.inMemoryAuthentication().withUser("caleb").password("password123").roles("USER","ADMIN");
  }
  
  @Override
  protected void configure(HttpSecurity http) throws Exception {
	  http
	    .authorizeRequests()
	        .antMatchers("/logins/**", "/images/**").permitAll()
	        .antMatchers("/admin/**").hasAnyRole("ADMIN")
	        .antMatchers("/register/**").permitAll() // added this line to permit access to create-account
	        .anyRequest().authenticated() // grant access to all authenticated users (including admin)
	        .and()
	    .formLogin()
	        .loginPage("/login")
	        .defaultSuccessUrl("/home")
	        .failureUrl("/error")
	        .permitAll();
  }
}