package com.scut.psd.algorithm.design.factory;

import com.scut.psd.api.request.Algorithm;

public class AlgorithmFactory {

   public static AlgorithmProduct createAlgorithmProduct(Algorithm algorithm){
	   String algorithmType = algorithm.getAlgorithmType();

	   AlgorithmProduct  algorithmProduct = null;

	   switch (algorithmType) {
			case "typeA":
				algorithmProduct = new AlgorithmTypeA();
				break;
			case "typeB":
				algorithmProduct = new AlgorithmTypeB();
				break;
			case "typeC":
				algorithmProduct = new AlgorithmTypeC();
				break;
			case "typeD":
				algorithmProduct = new AlgorithmTypeD();
				break;
			default:
				break;
		}
		return algorithmProduct;
   }
}
