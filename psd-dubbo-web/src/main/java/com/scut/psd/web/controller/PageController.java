package com.scut.psd.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.imageio.ImageIO;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.awt.*;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.util.Random;

@Controller
public class PageController {

	@Autowired
	private HttpServletRequest request;

	@Autowired
	private HttpServletResponse response;

	@RequestMapping("/index")
	public String index(){
		return "/index";
	}

	@RequestMapping("/authcode.img")
	public void getAuthcode() throws IOException {
		response.setHeader("Pragma", "No-cache");
		response.setHeader("Cache-Control", "no-cache");
		response.setDateHeader("Expires", 0);

		int width = 62, height = 22;
		BufferedImage image = new BufferedImage(width, height,
				BufferedImage.TYPE_INT_RGB);

		Graphics g = image.createGraphics();

		g.setColor(getRandColor(180, 250));
		g.fillRect(0, 0, width, height);

		g.setFont(new Font("Times New Roman", Font.PLAIN, 22));

		int length = 4;
		Random rand = new Random(); // 设置随机种子

		String base = "abcdefghijklmnopqrstuvwxyz0123456789";
		int size = base.length();
		StringBuffer str = new StringBuffer();
		for (int i = 0; i < length; i++) {
			int start = rand.nextInt(size);
			String tmpStr = base.substring(start, start + 1);
			str.append(tmpStr);
			g.setColor(getRandColor(10, 150));
			g.drawString(tmpStr, 13 * i + 6 + rand.nextInt(5), 14 + rand.nextInt(6));

		}
		// 将验证码存入session
		request.getSession().setAttribute("AUTHCODE", str.toString());

		g.dispose();

		ImageIO.write(image, "JPEG", response.getOutputStream());

	}

	Color getRandColor(int fc, int bc){
		Random random = new Random();
		if (fc > 255) {
			fc = 255;
		}
		if (bc > 255) {
			bc = 255;
		}
		int r = fc + random.nextInt(bc - fc);
		int g = fc + random.nextInt(bc - fc);
		int b = fc + random.nextInt(bc - fc);
		return new Color(r, g, b);
	}

}