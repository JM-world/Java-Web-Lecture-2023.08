package com.example.demo.pocketMon;

import java.util.List;

public interface PocketMonService {

	PocketMon getPocketmon(int cid); 
	
	List<PocketMon> getPocketMonList(String field, String query);
	
	void insertPocketMon(PocketMon pocketMon);
	
	void updatePocketMon(PocketMon pocketMon);
	
	void deletePocketMon(int cid);
	
	void increaseViewCount(int bid);
}
