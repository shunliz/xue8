package com.zsl.idating.security;
import java.util.ArrayList;
import java.util.Collection;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.GrantedAuthorityImpl;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

import com.zsl.service.UserService;

public class IDUserDetailsService implements UserDetailsService {

	@Autowired  
    private UserService userService; 
	
	@Override
	public UserDetails loadUserByUsername(String username)
			throws UsernameNotFoundException, DataAccessException {
		Collection<GrantedAuthority> auths=new ArrayList<GrantedAuthority>();
		GrantedAuthorityImpl auth2=new GrantedAuthorityImpl("ROLE_ADMIN");
		auths.add(auth2);
		
		com.zsl.idating.entity.User usr = userService.getUserByName(username);
		if (usr == null){
			throw new UsernameNotFoundException("user not found");  
		}
		
		//todo:expand here to get fine grained access controll
		/*if(username.equals("robin1")){
			auths=new ArrayList<GrantedAuthority>();
			GrantedAuthorityImpl auth1=new GrantedAuthorityImpl("ROLE_ROBIN");
			auths.add(auth1);
		}*/
		
		User user = new User(username,
			usr.getPassword(), true, true, true, true, auths);
		return user;
	}
	
}