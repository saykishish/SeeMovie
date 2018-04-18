package bean;

import java.io.Serializable;

public class MemberTest {

	private String name;

	private int age;

	public MemberTest(String name, int age) {

		this.name = name; this.age = age;

	}

	public String getName() {return name;}

	public int getAge() {return age;}

}

