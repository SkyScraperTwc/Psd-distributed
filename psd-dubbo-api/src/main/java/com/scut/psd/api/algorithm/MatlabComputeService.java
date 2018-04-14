package com.scut.psd.api.algorithm;

import com.scut.psd.api.request.Algorithm;
import com.scut.psd.api.request.LaunchSignal;

import java.util.List;
import java.util.Map;

public interface MatlabComputeService {

    Map<String,List<String>> compute(LaunchSignal launchSignal, Algorithm algorithm);

}
