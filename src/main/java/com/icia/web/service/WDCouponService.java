package com.icia.web.service;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.icia.web.dao.WDCouponDao;
import com.icia.web.model.WDCoupon;

@Service("WDCouponService")
public class WDCouponService {
	
	private static Logger logger = LoggerFactory.getLogger(WDCouponService.class);
	
	@Autowired
	private WDCouponDao wdCouponDao;
	
	public List<WDCoupon> couponSelectList(String userId) {
		
		List<WDCoupon> wdCoupon = null;
		try {
			wdCoupon = wdCouponDao.couponSelectList(userId);
		}
		catch(Exception e) {
			logger.error("[WDCouponService] couponSelect Exception", e);
		}
		
		return wdCoupon;
	}

}
