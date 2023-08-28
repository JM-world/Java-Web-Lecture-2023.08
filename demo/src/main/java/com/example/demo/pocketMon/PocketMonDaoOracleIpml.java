package com.example.demo.pocketMon;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class PocketMonDaoOracleIpml implements PocketMonService {
	@Autowired private PocketMonDaoOracle PocketMonDao;

	@Override
	public PocketMon getPocketmon(int cid) {
		PocketMon pocketMon = PocketMonDao.getPocketMon(cid);
		return pocketMon;
	}

	@Override
	public List<PocketMon> getPocketMonList(String field, String query) {
		query = '%' + query + "%";
		List<PocketMon> list = PocketMonDao.getPocketMonList(field, query);
		return list;
	}

	@Override
	public void insertPocketMon(PocketMon pocketMon) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void updatePocketMon(PocketMon pocketMon) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deletePocketMon(int cid) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void increaseViewCount(int bid) {
		// TODO Auto-generated method stub
		
	}
	
}
