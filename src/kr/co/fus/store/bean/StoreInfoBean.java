package kr.co.fus.store.bean;

import java.sql.Date;
import java.sql.Timestamp;

public class StoreInfoBean {
	private int storeInfoCode;
	private String storeInfoId;
	private String storeInfoName;
	private String storeInfoPassword;
	private String storeInfoAddress;
	private String storeInfoStorePhone;
	private String storeInfoMobilePhone;
	private String storeInfoCategory;
	private String storeInfoLicense;
	private String storeInfoOpen;
	private String storeInfoClose;
	private int storeInfoIsOpen;
	private Date storeInfoDate;
	private int storeInfoMaxSeat;
	private String storeInfoInfo;
	private Date storeInfoDropDate;
	
	public StoreInfoBean() {
	}

	public int getStoreInfoCode() {
		return storeInfoCode;
	}

	public void setStoreInfoCode(int storeInfoCode) {
		this.storeInfoCode = storeInfoCode;
	}

	public String getStoreInfoId() {
		return storeInfoId;
	}

	public void setStoreInfoId(String storeInfoId) {
		this.storeInfoId = storeInfoId;
	}

	public String getStoreInfoName() {
		return storeInfoName;
	}

	public void setStoreInfoName(String storeInfoName) {
		this.storeInfoName = storeInfoName;
	}

	public String getStoreInfoPassword() {
		return storeInfoPassword;
	}

	public void setStoreInfoPassword(String storeInfoPassword) {
		this.storeInfoPassword = storeInfoPassword;
	}

	public String getStoreInfoAddress() {
		return storeInfoAddress;
	}

	public void setStoreInfoAddress(String storeInfoAddress) {
		this.storeInfoAddress = storeInfoAddress;
	}

	public String getStoreInfoStorePhone() {
		return storeInfoStorePhone;
	}

	public void setStoreInfoStorePhone(String storeInfoStorePhone) {
		this.storeInfoStorePhone = storeInfoStorePhone;
	}

	public String getStoreInfoMobilePhone() {
		return storeInfoMobilePhone;
	}

	public void setStoreInfoMobilePhone(String storeInfoMobilePhone) {
		this.storeInfoMobilePhone = storeInfoMobilePhone;
	}

	public String getStoreInfoCategory() {
		return storeInfoCategory;
	}

	public void setStoreInfoCategory(String storeInfoCategory) {
		this.storeInfoCategory = storeInfoCategory;
	}

	public String getStoreInfoLicense() {
		return storeInfoLicense;
	}

	public void setStoreInfoLicense(String storeInfoLicense) {
		this.storeInfoLicense = storeInfoLicense;
	}

	public String getStoreInfoOpen() {
		return storeInfoOpen;
	}

	public void setStoreInfoOpen(String storeInfoOpen) {
		this.storeInfoOpen = storeInfoOpen;
	}

	public String getStoreInfoClose() {
		return storeInfoClose;
	}

	public void setStoreInfoClose(String storeInfoClose) {
		this.storeInfoClose = storeInfoClose;
	}

	public int getStoreInfoIsOpen() {
		return storeInfoIsOpen;
	}

	public void setStoreInfoIsOpen(int storeInfoIsOpen) {
		this.storeInfoIsOpen = storeInfoIsOpen;
	}

	public Date getStoreInfoDate() {
		return storeInfoDate;
	}

	public void setStoreInfoDate(Date storeInfoDate) {
		this.storeInfoDate = storeInfoDate;
	}

	public int getStoreInfoMaxSeat() {
		return storeInfoMaxSeat;
	}

	public void setStoreInfoMaxSeat(int storeInfoMaxSeat) {
		this.storeInfoMaxSeat = storeInfoMaxSeat;
	}

	public String getStoreInfoInfo() {
		return storeInfoInfo;
	}

	public void setStoreInfoInfo(String storeInfoInfo) {
		this.storeInfoInfo = storeInfoInfo;
	}

	public Date getStoreInfoDropDate() {
		return storeInfoDropDate;
	}

	public void setStoreInfoDropDate(Date storeInfoDropDate) {
		this.storeInfoDropDate = storeInfoDropDate;
	}

	@Override
	public String toString() {
		return "StoreInfoBean [storeInfoCode=" + storeInfoCode + ", storeInfoId=" + storeInfoId + ", storeInfoName="
				+ storeInfoName + ", storeInfoPassword=" + storeInfoPassword + ", storeInfoAddress=" + storeInfoAddress
				+ ", storeInfoStorePhone=" + storeInfoStorePhone + ", storeInfoMobilePhone=" + storeInfoMobilePhone
				+ ", storeInfoCategory=" + storeInfoCategory + ", storeInfoLicense=" + storeInfoLicense
				+ ", storeInfoOpen=" + storeInfoOpen + ", storeInfoClose=" + storeInfoClose + ", storeInfoIsOpen="
				+ storeInfoIsOpen + ", storeInfoDate=" + storeInfoDate + ", storeInfoMaxSeat=" + storeInfoMaxSeat
				+ ", storeInfoInfo=" + storeInfoInfo + ", storeInfoDropDate=" + storeInfoDropDate + "]";
	}
	
}
