package kr.co.fus.store.bean;

import java.sql.Timestamp;

public class StoreEventBean {
	public int StoreEventBoardNum;
	public int StoreEventBoardCode;
	public String StoreEventBoardName;
	public String StoreEventBoardEventName;
	public String StoreEventBoardEventInfo;
	public Timestamp StoreEventBoardStartDate;
	public Timestamp StoreEventBoardEndDate;
	public String StoreInfoInfo;
	public int getStoreEventBoardNum() {
		return StoreEventBoardNum;
	}
	public void setStoreEventBoardNum(int storeEventBoardNum) {
		StoreEventBoardNum = storeEventBoardNum;
	}
	public int getStoreEventBoardCode() {
		return StoreEventBoardCode;
	}
	public void setStoreEventBoardCode(int storeEventBoardCode) {
		StoreEventBoardCode = storeEventBoardCode;
	}
	public String getStoreEventBoardName() {
		return StoreEventBoardName;
	}
	public void setStoreEventBoardName(String storeEventBoardName) {
		StoreEventBoardName = storeEventBoardName;
	}
	public String getStoreEventBoardEventName() {
		return StoreEventBoardEventName;
	}
	public void setStoreEventBoardEventName(String storeEventBoardEventName) {
		StoreEventBoardEventName = storeEventBoardEventName;
	}
	public String getStoreEventBoardEventInfo() {
		return StoreEventBoardEventInfo;
	}
	public void setStoreEventBoardEventInfo(String storeEventBoardEventInfo) {
		StoreEventBoardEventInfo = storeEventBoardEventInfo;
	}
	public Timestamp getStoreEventBoardStartDate() {
		return StoreEventBoardStartDate;
	}
	public void setStoreEventBoardStartDate(Timestamp storeEventBoardStartDate) {
		StoreEventBoardStartDate = storeEventBoardStartDate;
	}
	public Timestamp getStoreEventBoardEndDate() {
		return StoreEventBoardEndDate;
	}
	public void setStoreEventBoardEndDate(Timestamp storeEventBoardEndDate) {
		StoreEventBoardEndDate = storeEventBoardEndDate;
	}
	public String getStoreInfoInfo() {
		return StoreInfoInfo;
	}
	public void setStoreInfoInfo(String storeInfoInfo) {
		StoreInfoInfo = storeInfoInfo;
	}
	@Override
	public String toString() {
		return "StoreEventBean [StoreEventBoardNum=" + StoreEventBoardNum + ", StoreEventBoardCode="
				+ StoreEventBoardCode + ", StoreEventBoardName=" + StoreEventBoardName + ", StoreEventBoardEventName="
				+ StoreEventBoardEventName + ", StoreEventBoardEventInfo=" + StoreEventBoardEventInfo
				+ ", StoreEventBoardStartDate=" + StoreEventBoardStartDate + ", StoreEventBoardEndDate="
				+ StoreEventBoardEndDate + ", StoreInfoInfo=" + StoreInfoInfo + "]";
	}
	public StoreEventBean(int storeEventBoardNum, int storeEventBoardCode, String storeEventBoardName,
			String storeEventBoardEventName, String storeEventBoardEventInfo, Timestamp storeEventBoardStartDate,
			Timestamp storeEventBoardEndDate, String storeInfoInfo) {
		super();
		StoreEventBoardNum = storeEventBoardNum;
		StoreEventBoardCode = storeEventBoardCode;
		StoreEventBoardName = storeEventBoardName;
		StoreEventBoardEventName = storeEventBoardEventName;
		StoreEventBoardEventInfo = storeEventBoardEventInfo;
		StoreEventBoardStartDate = storeEventBoardStartDate;
		StoreEventBoardEndDate = storeEventBoardEndDate;
		StoreInfoInfo = storeInfoInfo;
	}
	
	
	
	}
