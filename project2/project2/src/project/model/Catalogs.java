package project.model;

public class Catalogs {
	private String id;
	private String name;	
	public Catalogs() { }
	public Catalogs(String id, String name) {
		super();
		this.id = id;
		this.name = name;		
	}
	public String getId() {
		return id;
	}
	public void setId(String cate_id) {
		this.id = cate_id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;	}
	
	@Override
	public String toString() {
		return "Catalog [id=" + id + ", name=" + name + "]";
	}
	
}
