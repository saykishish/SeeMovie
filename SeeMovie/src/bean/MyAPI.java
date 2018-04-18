package bean;

public class MyAPI {
	public static String getLottery() {
		return "" + (int)(Math.random()*49+1);
	}
	
	public static String sayHello(String name) {
		return "Hello to," + name;
	}

}
