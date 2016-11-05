package com.shopping.Servlet;

import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics;
import java.awt.Graphics2D;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.util.Random;

import javax.imageio.ImageIO;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * �õ���֤���Servlet
 * 
 * @author Administrator
 * 
 */
public class Yzm extends HttpServlet {
	public static final int WIDTH = 120;
	public static final int HEIGHT = 35;
	private String text ;

	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// ׼��һ������
		BufferedImage image = new BufferedImage(WIDTH, HEIGHT,
				BufferedImage.TYPE_INT_RGB);

		// ͨ���������ȡ����
		Graphics g = image.getGraphics();
		// ���ñ���ɫ
		setBackGround(g);
		// ���ñ߿�
		setBorder(g);
		// ���ø�����
		drawRandomLine(g);
		// ���������
		String text = drawRandomNum((Graphics2D) g);
		// �����������Ҫ����

		response.setContentType("image/jpeg");
		response.setDateHeader("expries", -1);
		response.setHeader("Cache-Control", "no-cache");
		response.setHeader("Pragma", "no-cache");
		request.getSession().setAttribute("yzm", text);
		ImageIO.write(image, "jpg", response.getOutputStream());
	}

	private String drawRandomNum(Graphics2D g) {

		g.setColor(Color.RED);// ������ɫ
		g.setFont(new Font("����", Font.BOLD, 18));// ���壬���Σ��ָ�
		// ���ֵ����
		String base ="0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ";
		int x = 5;// д�ֵ���ʼx��λ��
		StringBuilder sb = new StringBuilder();
		// д�ĸ���
		for (int i = 0; i < 4; i++) {
			// ÿ������ת�Ķȣ�����������
			int degree = new Random().nextInt() % 40;
			// ȡһ������ַ�
			String ch = base.charAt(new Random().nextInt(base.length())) + "";
			sb.append(ch); 
			// ��ת�Ļ��ȣ��������PI�ٳ���180�����������ǻ����ĸ���
			g.rotate(degree * Math.PI / 180, x, 20);
			// д�֣���ȷ��xy��λ��
			g.drawString(ch, x, 25);
			// ��һ������ת��Ϻ�ڶ�����Ҫ��ԭ
			g.rotate(-degree * Math.PI / 180, x, 20);
			x += 30;// д�ڶ�����ʱ��λ��
		}
		return sb.toString(); 
	}

	private void drawRandomLine(Graphics g) {
		g.setColor(Color.GREEN);
		for (int i = 0; i < 8; i++) {
			int x1 = new Random().nextInt(WIDTH);
			int y1 = new Random().nextInt(HEIGHT);
			int x2 = new Random().nextInt(WIDTH);
			int y2 = new Random().nextInt(HEIGHT);
			// �����ߵ���ʼ�������ֹ���
			g.drawLine(x1, y1, x2, y2);
		}

	}

	private void setBorder(Graphics g) {
		g.setColor(Color.RED);
		g.drawRect(1, 1, WIDTH - 2, HEIGHT - 2);
	}

	private void setBackGround(Graphics g) {
		g.setColor(Color.gray);
		g.fillRect(0, 0, WIDTH, HEIGHT);
	}

}