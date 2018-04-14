package com.scut.psd.web.controller;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.TypeReference;
import com.scut.psd.api.entity.CalculateData;
import com.scut.psd.api.entity.Pagination;
import com.scut.psd.api.entity.User;
import com.scut.psd.api.request.Algorithm;
import com.scut.psd.api.request.LaunchSignal;
import com.scut.psd.api.service.AlgorithmHandleService;
import com.scut.psd.api.service.UserService;
import com.scut.psd.common.constant.PageQuality;
import com.scut.psd.common.constant.PageReturnUrl;
import com.scut.psd.common.utils.LocalCache;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/handle")
public class AlgorithmHandleController {
	/**要注意处理线程安全问题，单例模式下的controller不能有成员变量*/

	@Resource
	private AlgorithmHandleService algorithmHandleService;

	@Resource
	private UserService userService;

	@Autowired
	private HttpSession session;

	/**
	 * 信号算法计算
	 * @param launchSignal
	 * @param algorithm
	 * @return
	 * @throws InterruptedException
	 */
	@RequestMapping(value = "/compute", method = RequestMethod.POST)
	public ModelAndView handle(LaunchSignal launchSignal, Algorithm algorithm) throws InterruptedException {

		Map<String,List<String>> resultMap =  algorithmHandleService.calculateAndDraw(launchSignal,algorithm);

		/**添加到本地缓存*/
		LocalCache.setCache(LocalCache.buildKey((String) session.getAttribute("username")),
				JSON.toJSONString(new CalculateData(launchSignal, algorithm, resultMap)));

		ModelAndView modelAndView = new ModelAndView(PageReturnUrl.SHOW_LAST);
		modelAndView.addObject("resultMap",resultMap);
		return modelAndView;
	}

	/**
	 * 保存计算数据
	 * @return
	 */
	@RequestMapping(value = "/insert", method = RequestMethod.GET)
	public String insert(){
		//从缓存获取运行数据
		User user = userService.getUserByName((String) session.getAttribute("username"));

		String data = (String) LocalCache.getCacheValue(LocalCache.buildKey(user.getUsername()));
		TypeReference typeReference = new TypeReference<CalculateData>(){};
		CalculateData calculateData = (CalculateData) JSON.parseObject(data, typeReference);

		algorithmHandleService.saveData(calculateData, user);
		return PageReturnUrl.REDIRECT_LIST;
	}

	/**
	 * 数据列表
	 * @param currentPage
	 * @return
	 */
	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public ModelAndView list(@RequestParam(value="currentPage",required=false) String currentPage){
		if(currentPage == null || currentPage.isEmpty()){
			currentPage = String.valueOf(PageQuality.CURRENTPAGE_ONE);
		}

		User user = userService.getUserByName((String) session.getAttribute("username"));
		/**获取对象*/
		Pagination<CalculateData> pagination = algorithmHandleService.getPagination(Integer.valueOf(currentPage), PageQuality.PAGE_SIZE_TEN, user);
		ModelAndView modelAndView = new ModelAndView(PageReturnUrl.DATA_LIST);
		modelAndView.addObject("pagination", pagination);
		return modelAndView;
	}

	@RequestMapping(value = "/detail", method = RequestMethod.GET)
	public ModelAndView detail(@RequestParam("id") String calculateDataId){
		ModelAndView modelAndView = new ModelAndView(PageReturnUrl.DATA_DETAIL);
		CalculateData calculateData = algorithmHandleService.getById(calculateDataId);

		modelAndView.addObject("calculateData", calculateData);
		return modelAndView;
	}

	/**
	 * 数据删除
	 * @param calculateDataId
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value = "/delete", method = RequestMethod.POST)
	public String delete(@RequestParam("id") String calculateDataId){
		algorithmHandleService.remove(calculateDataId);
		return "success";
	}

}
