package com.scut.psd.algorithm.design.strategy;

import com.scut.psd.api.request.Algorithm;
import com.scut.psd.api.request.LaunchSignal;
import lombok.Data;

import java.util.List;
import java.util.Map;

@Data
public class Context{

	private Strategy strategy;

	/**执行操作*/
	public Map<String,List<String>> executeOperation(LaunchSignal launchSignal, Algorithm algorithm){

		String algorithmType = algorithm.getAlgorithmType();

		switch (algorithmType) {
			case "typeA":
				this.setStrategy(new TypeAOperation());
				break;
			case "typeB":
				this.setStrategy(new TypeBOperation());
				break;
			case "typeC":
				this.setStrategy(new TypeCOperation());
				break;
			case "typeD":
				this.setStrategy(new TypeDOperation());
				break;
			default:
				break;
		}
		return strategy.doOperation(launchSignal, algorithm);
	}

}