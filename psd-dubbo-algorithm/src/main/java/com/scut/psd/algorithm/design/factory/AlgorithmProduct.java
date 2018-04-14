package com.scut.psd.algorithm.design.factory;

import com.scut.psd.api.request.Algorithm;
import com.scut.psd.api.request.LaunchSignal;

import java.util.List;
import java.util.Map;

public abstract class AlgorithmProduct {

	 public abstract Map<String,List<String>> getCalculateResult(LaunchSignal launchSignal, Algorithm algorithm);

}
