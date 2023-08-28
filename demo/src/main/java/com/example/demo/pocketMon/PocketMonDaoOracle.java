package com.example.demo.pocketMon;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

@Mapper
public interface PocketMonDaoOracle {

	@Select("select * from pocketMon where bid = #{cid}")
	PocketMon getPocketMon(int cid);
	
	@Select("select * from pocketMon where ${field} like #{query} and isDeleted=0"
			+ " order by cid")
	List<PocketMon> getPocketMonList(String field, String query);
	
	@Insert("insert into pocketMon(cid, name, type, height, weight)"
			+ " values (#{cid}, #{name}, #{type}, #{height}, #{weight})")
	void insertBlog(PocketMon pocketMon);
	
}
