package com.scut.psd.algorithm.design.strategy;

import com.scut.psd.api.request.Algorithm;
import com.scut.psd.api.request.LaunchSignal;

import java.util.List;
import java.util.Map;

public abstract class Strategy {

	public abstract Map<String,List<String>> doOperation(LaunchSignal launchSignal, Algorithm algorithm);

}
