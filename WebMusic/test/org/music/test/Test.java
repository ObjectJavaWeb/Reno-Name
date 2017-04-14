package org.music.test;

import org.music.factory.ServiceFactory;

public class Test {
	public static void main(String[] args) {
		System.out.println(ServiceFactory.getIUserServiceInstance().loginDuplicate("吴文鑫"));
	}
}
