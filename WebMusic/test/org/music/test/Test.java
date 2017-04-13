package org.music.test;

import java.util.List;

import org.music.factory.ServiceFactory;
import org.music.pojo.Mymusic;

public class Test {
	public static void main(String[] args) {
		try {
			
	Mymusic m=	ServiceFactory.getIMymusicServiceInstance().findById(3);
	System.out.println(m.getName());
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
