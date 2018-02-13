package kr.co.fus.pos.bean;

public class PosSeatBean {
	public int PosSeatCode;
	public int PosSeatPersonnal;
	public int PosSeatIsTable;
	public int getPosSeatCode() {
		return PosSeatCode;
	}
	public void setPosSeatCode(int posSeatCode) {
		PosSeatCode = posSeatCode;
	}
	public int getPosSeatPersonnal() {
		return PosSeatPersonnal;
	}
	public void setPosSeatPersonnal(int posSeatPersonnal) {
		PosSeatPersonnal = posSeatPersonnal;
	}
	public int getPosSeatIsTable() {
		return PosSeatIsTable;
	}
	public void setPosSeatIsTable(int posSeatIsTable) {
		PosSeatIsTable = posSeatIsTable;
	}
	@Override
	public String toString() {
		return "PosSeatBean [PosSeatCode=" + PosSeatCode + ", PosSeatPersonnal=" + PosSeatPersonnal
				+ ", PosSeatIsTable=" + PosSeatIsTable + ", getPosSeatCode()=" + getPosSeatCode()
				+ ", getPosSeatPersonnal()=" + getPosSeatPersonnal() + ", getPosSeatIsTable()=" + getPosSeatIsTable()
				+ ", getClass()=" + getClass() + ", hashCode()=" + hashCode() + ", toString()=" + super.toString()
				+ "]";
	}

	
}
