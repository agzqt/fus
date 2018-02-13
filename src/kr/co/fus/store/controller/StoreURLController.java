package kr.co.fus.store.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.co.fus.store.service.StoreInfoService;

@Controller
public class StoreURLController {
	//private StoreJoinDao storeJoinDao;

	@Autowired
	private StoreInfoService storeInfoService; 
	
	@RequestMapping(value = "/storemain.sto", method = RequestMethod.GET)
	public String storeMain() {
		System.out.println("스토어 메인실행됨.[GET방식]");
		return "store/StoreMain";
	}
	
	@RequestMapping(value = "/storeindex.sto", method = RequestMethod.GET)
	public String storeIndex() {
		System.out.println("스토어 인덱스실행됨.[GET방식]");
		return "store/StoreIndex";
	}
	
	@RequestMapping(value = "/storepreserve.sto", method = RequestMethod.GET)
	public String storepreserve() {
		System.out.println("스토어 지난예약내역실행됨.[GET방식]");
		return "store/StoreReservePassed";
	}
	
	@RequestMapping(value = "/storeseat.sto", method = RequestMethod.GET)
	public String storeSeat() {
		System.out.println("스토어 좌석실행됨.[GET방식]");
		return "store/StoreUpdateSeat";
	}
	
	@RequestMapping(value = "/storeinfo.sto", method = RequestMethod.GET)
	public String storeInfo() {
		System.out.println("스토어 정보실행됨.[GET방식]");
		return "store/StoreUpdateMyStore";
	}

	@RequestMapping(value = "/storehelp.sto", method = RequestMethod.GET)
	public String storeHelp() {
		System.out.println("스토어 고객센터실행됨.[GET방식]");
		return "store/StoreHelp";
	}
	
	@RequestMapping(value = "/storeevet.sto", method = RequestMethod.GET)
	public String storeEvent() {
		System.out.println("스토어 이벤트실행됨.[GET방식]");
		return "store/StoreEvent";
	}
	
	@RequestMapping(value = "/storereview.sto", method = RequestMethod.GET)
	public String storeReview() {
		System.out.println("스토어 리뷰실행됨.[GET방식]");
		return "store/StoreReview";
	}
	
	@RequestMapping(value = "/storejoin.sto", method = RequestMethod.GET)
	public String storeJoin() {
		System.out.println("스토어 조인실행됨.[GET방식]");
		return "store/StoreJoin";
	}

	@RequestMapping(value = "/storelogin.sto", method = RequestMethod.GET)
	public String storeLogin() {
		System.out.println("실행됨.[GET방식]");
		return "store/StoreLogin";
	}
	}
