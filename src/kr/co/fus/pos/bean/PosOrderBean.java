package kr.co.fus.pos.bean;

import java.sql.Timestamp;

public class PosOrderBean {
public int PosOrderNum;
public String PosOrderId;
public int PosOrderCode;
public int PosOrderIsReview;
public Timestamp PosOrderDate;
public int PosOrderPoint;
public int getPosOrderNum() {
	return PosOrderNum;
}
public void setPosOrderNum(int posOrderNum) {
	PosOrderNum = posOrderNum;
}
public String getPosOrderId() {
	return PosOrderId;
}
public void setPosOrderId(String posOrderId) {
	PosOrderId = posOrderId;
}
public int getPosOrderCode() {
	return PosOrderCode;
}
public void setPosOrderCode(int posOrderCode) {
	PosOrderCode = posOrderCode;
}
public int getPosOrderIsReview() {
	return PosOrderIsReview;
}
public void setPosOrderIsReview(int posOrderIsReview) {
	PosOrderIsReview = posOrderIsReview;
}
public Timestamp getPosOrderDate() {
	return PosOrderDate;
}
public void setPosOrderDate(Timestamp posOrderDate) {
	PosOrderDate = posOrderDate;
}
public int getPosOrderPoint() {
	return PosOrderPoint;
}
public void setPosOrderPoint(int posOrderPoint) {
	PosOrderPoint = posOrderPoint;
}
@Override
public String toString() {
	return "PosOrderBean [PosOrderNum=" + PosOrderNum + ", PosOrderId=" + PosOrderId + ", PosOrderCode=" + PosOrderCode
			+ ", PosOrderIsReview=" + PosOrderIsReview + ", PosOrderDate=" + PosOrderDate + ", PosOrderPoint="
			+ PosOrderPoint + ", getPosOrderNum()=" + getPosOrderNum() + ", getPosOrderId()=" + getPosOrderId()
			+ ", getPosOrderCode()=" + getPosOrderCode() + ", getPosOrderIsReview()=" + getPosOrderIsReview()
			+ ", getPosOrderDate()=" + getPosOrderDate() + ", getPosOrderPoint()=" + getPosOrderPoint()
			+ ", getClass()=" + getClass() + ", hashCode()=" + hashCode() + ", toString()=" + super.toString() + "]";
}


}
