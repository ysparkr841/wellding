package com.icia.web.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.icia.web.model.WDCoupon;

@Repository("wdCouponDao")
public interface WDCouponDao {
	
	public List<WDCoupon> couponSelectList(String userId);

}
