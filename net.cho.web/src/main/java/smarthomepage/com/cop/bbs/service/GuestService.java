package smarthomepage.com.cop.bbs.service;

import org.springframework.stereotype.Service;

@Service
public class GuestService {
	private static GuestService instance;
	public static GuestService getInstance(){
		if(instance==null){
			instance = new GuestService();
		}
		return instance;
	}
	private GuestService(){}
}
