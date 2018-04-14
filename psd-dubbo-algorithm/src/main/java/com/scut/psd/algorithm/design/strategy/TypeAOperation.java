package com.scut.psd.algorithm.design.strategy;

import com.scut.psd.algorithm.matlab.ComputeService;
import com.scut.psd.api.request.Algorithm;
import com.scut.psd.api.request.LaunchSignal;
import com.scut.psd.common.constant.AlgorithmBaseConst;

import java.util.List;
import java.util.Map;

public class TypeAOperation extends Strategy{

	@Override
	public Map<String,List<String>> doOperation(LaunchSignal launchSignal, Algorithm algorithm) {
		return new ComputeService().getComputeResult(AlgorithmBaseConst.CARDINAL_TEN);
	}
}
