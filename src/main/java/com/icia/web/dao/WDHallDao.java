package com.icia.web.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.icia.web.model.WDHall;
import com.icia.web.model.WDHallFile;

@Repository("wdHallDao")
public interface WDHallDao {																																										

	//홀 랭킹 조회
	public List<WDHall> WDHallRanking();
	
	//홀 조회
	public WDHall WDHallSelect(WDHall wdHall);
	
	//홀 첨부파일 조회
	public WDHallFile WDHallFileSelect(WDHallFile wdHallFile);
	
	//홀 리스트
	public List<WDHall> WDHallList(WDHall wdHall);
	
	//홀 개수 체크
	public long WDHallListCount(WDHall wdHall);
	
																																																																																																																																													
}
