package project.model;

public class Chart {
	private String loai;
	private String thang;
	private double doanhthu;
	private int soluong;
	private double giathapnhat;
	private double giacaonhat;

	public Chart() {
		super();
	}

	public Chart(String loai,String thang, double doanhthu, int soluong, double giathapnhat, double giacaonhat) {
		super();
		this.loai = loai;
		this.thang = thang;
		this.doanhthu = doanhthu;
		this.soluong = soluong;
		this.giathapnhat = giathapnhat;
		this.giacaonhat = giacaonhat;
	}

	public String getLoai() {
		return loai;
	}

	public void setLoai(String loai) {
		this.loai = loai;
	}
	
	public String getThang() {
		return thang;
	}

	public void setThang(String thang) {
		this.thang = thang;
	}

	public double getDoanhthu() {
		return doanhthu;
	}

	public void setDoanhthu(double doanhthu) {
		this.doanhthu = doanhthu;
	}

	public int getSoluong() {
		return soluong;
	}

	public void setSoluong(int soluong) {
		this.soluong = soluong;
	}

	public double getGiathapnhat() {
		return giathapnhat;
	}

	public void setGiathapnhat(double giathapnhat) {
		this.giathapnhat = giathapnhat;
	}

	public double getGiacaonhat() {
		return giacaonhat;
	}

	public void setGiacaonhat(double giacaonhat) {
		this.giacaonhat = giacaonhat;
	}

	@Override
	public String toString() {
		return "Chart [loai=" + loai + ",thang=" + thang + ", doanhthu=" + doanhthu + ", soluong=" + soluong + ", giathapnhat="
				+ giathapnhat + ", giacaonhat=" + giacaonhat + "]";
	}

}