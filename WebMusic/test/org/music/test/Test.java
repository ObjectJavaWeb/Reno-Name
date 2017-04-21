package org.music.test;

import java.io.File;
import java.util.Date;
import java.util.ArrayList;
import java.util.List;
//<<<<<<< HEAD
import java.util.Map;
import java.util.Set;
//>>> branch 'master' of https://github.com/ObjectJavaWeb/Reno-Name.git









import org.hibernate.Query;
import org.music.dao.impl.CommentDAOImpl;
import org.music.dao.impl.MusicDAOImpl;
import org.music.dbc.HibernateSessionFactory;
import org.music.factory.MusicFactory;
import org.music.factory.MusicServiceFactory;
import org.music.factory.ServiceFactory;
import org.music.pojo.Comment;
import org.music.pojo.Music;
import org.music.pojo.Mymusic;
import org.music.pojo.MymusicMusic;
import org.music.service.MusicService;
import org.music.util.Mp3Info;
import org.music.util.Mp3Tools;

public class Test {
public static void main(String[] args) {
	String hql="SELECT mm.music FROM MymusicMusic AS mm WHERE mm.mymusic.id=1 and mm.mymusic.user.id=1";
	List<Music> musics=HibernateSessionFactory.getSession().createQuery(hql).list();
	for (Music music : musics) {
		System.out.println(music.getName());
	}
}
}
