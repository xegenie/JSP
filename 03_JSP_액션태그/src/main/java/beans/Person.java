package beans;

import java.io.Serializable;

public class Person implements Serializable {
	private static final long serialVersionUID =1L;
	
	private String name;
	private int age;
	
	
	public Person() {
		this.name = "김조은";
		this.age = 20;
	}
	
	public Person(String name, int age) {
		super();
		this.name = name;
		this.age = age;
	}


	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	

}
