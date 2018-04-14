package com.scut.psd.algorithm.design.factory;

import com.scut.psd.algorithm.matlab.ComputeService;
import com.scut.psd.api.request.Algorithm;
import com.scut.psd.api.request.LaunchSignal;
import com.scut.psd.common.constant.AlgorithmBaseConst;

import java.util.List;
import java.util.Map;

public class AlgorithmTypeC extends AlgorithmProduct{

	@Override
	public Map<String,List<String>> getCalculateResult(LaunchSignal launchSignal, Algorithm algorithm) {
		return new ComputeService().getComputeResult(AlgorithmBaseConst.CARDINAL_THOUSAND);
	}
}
