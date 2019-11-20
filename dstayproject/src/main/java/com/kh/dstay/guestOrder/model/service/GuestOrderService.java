package com.kh.dstay.guestOrder.model.service;

import com.kh.dstay.guestOrder.model.vo.GuestOrder;

public interface GuestOrderService {
	//비회원 주문 조회 서비스
	GuestOrder reviewNonMemberOrder(GuestOrder requestGo);

}
