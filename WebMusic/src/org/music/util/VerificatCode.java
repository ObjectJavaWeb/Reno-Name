package org.music.util;

import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics;
import java.awt.image.BufferedImage;
import java.util.Random;
/**
 * ���ͼƬ��֤��
 * @author ������
 *
 */
public class VerificatCode {
	private int len;//��֤��ĳ���
	private int height;//ͼƬ�߶�
	private int width;//ͼƬ����
	private Font font;//����ͼƬ���弰��С
	private int interfere=1550;//���ø����ߵ�����
	private String[] str={"A","B","C","D","E","F","G","H",
						  "J","K","L","M","N","P","Q","R",
						  "S","T","U","V","W","X","Y","Z",
						  "a","b","c","d","e","f","g","h",
						  "i","j","k","m","n","p","s","t",
						  "u","v","w","x","y","z","1","2",
						  "3","4","5","6","7","8","9"} ;//������֤�������ַ�
	
	private String rand;
	/**
	 * 
	 * @param len ��֤���ַ�����
	 * @param height ͼƬ�߶�
	 */
	public VerificatCode(int len,int height) {
		this.len=len;
		this.height=height;
		this.width=len*((int)Math.floor(height/2))+12;
		this.font=new Font("����", Font.PLAIN, height);
	}
	/**
	 * ��ȡ��֤��ͼƬ�ϵ��ַ�
	 * @return ��֤��ͼƬ�ϵ��ַ�
	 */
	public String getRand() {
		return rand;
	}
	private Color getRanColor(int fc, int bc) {
		Random random = new Random();
		if (fc > 255) {
			fc = 255;
		}
		if (bc > 255) {
			bc = 255;
		}
		int r = fc + random.nextInt(bc-fc);
		int g = fc + random.nextInt(bc-fc);
		int b = fc + random.nextInt(bc-fc);
		return new Color(r, g, b);
	}
	/**
	 * ��ȡ��֤��ͼƬ
	 * @return ��֤��ͼƬ
	 */
	public BufferedImage getImage() {
		BufferedImage image=new BufferedImage(width, height, BufferedImage.TYPE_INT_RGB);
		Graphics g=image.getGraphics();
		Random random=new Random();
		//���ñ���ɫ
		g.setColor(getRanColor(200, 250));
		//��һ��ʵ�ĵĳ����Σ���Ϊ����
		g.fillRect(0, 0, width, height);
		//��������
		g.setFont(font);
		g.setColor(getRanColor(160, 200));
		//�����������
		for (int i = 0; i < interfere; i++) {
			int x=random.nextInt(width);
			int y=random.nextInt(height);
			int x1=random.nextInt(12);
			int y1=random.nextInt(12);
			g.drawLine(x, y, x+x1, y+y1);
		}
		String sRand="";
		for (int i = 0; i < len; i++) {
			String rand=str[random.nextInt(str.length)];
			sRand+=rand;
			//����֤����ʾ��ͼ����
			g.setColor(new Color(20+random.nextInt(110),20+random.nextInt(110),20+random.nextInt(110)));
			g.drawString(rand, (int)Math.floor((height/2))*i+6, height-(int)Math.floor(height/6));
		}
		rand=sRand;
		g.dispose();
		return image;
		
	}
}
