package org.music.service.impl.tc;

import static org.junit.Assert.*;

import java.security.Provider.Service;
import java.util.List;

import org.hibernate.sql.Insert;
import org.junit.Test;
import org.music.factory.DAOFactory;
import org.music.factory.MusicFactory;
import org.music.factory.ServiceFactory;
import org.music.pojo.Music;

public class MusicServiceImplTest {

	@Test
	public void testInsert() throws Exception {
		Music music = new Music();
		MusicFactory.getMusicDAO().doCreate(music);
		
	}

	@Test
	public void testDelete() throws Exception {
		int id = new Integer(1);
		MusicFactory.getMusicDAO().findById(id);
	}

	@Test
	public void testUpdate() throws Exception {
		
	}

	@Test
	public void testFindById() throws Exception {
		MusicFactory.getMusicDAO().findById(2);
	}

	@Test
	public void testList() throws Exception {
		//MusicFactory.getMusicDAO().findAll(1,10, "", "name");
		MusicFactory.getMusicDAO().getAllcount("", "name");
	}

	@Test
	public void testGetType() throws Exception {
		List<Music> musiclist = null;
		String type = "华语";
		musiclist = MusicFactory.getMusicDAO().getType(type);
	}

	@Test
	public void testAddHit() throws Exception {
		MusicFactory.getMusicDAO().addHit(3);
	}

	@Test
	public void testParade() throws Exception {
		List<Music> list=null;
		list=MusicFactory.getMusicDAO().parade();
	}

}
