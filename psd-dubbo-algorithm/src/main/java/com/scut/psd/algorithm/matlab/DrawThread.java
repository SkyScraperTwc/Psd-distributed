package com.scut.psd.algorithm.matlab;

import com.scut.psd.api.request.Algorithm;
import com.scut.psd.api.request.LaunchSignal;
import lombok.AllArgsConstructor;

@AllArgsConstructor
public class DrawThread extends Thread{

	private LaunchSignal launchSignal;

	private Algorithm algorithm;

	@Override
	public void run() {
	   DrawService drawService = new DrawService();
		//开始画图
	   drawService.draw(launchSignal, algorithm);
	   //等待关闭
	   drawService.waitForFigures();
	}

}
