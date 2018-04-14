package com.scut.psd.api.service;

import com.scut.psd.api.entity.CalculateData;
import com.scut.psd.api.entity.Pagination;
import com.scut.psd.api.entity.User;
import com.scut.psd.api.request.Algorithm;
import com.scut.psd.api.request.LaunchSignal;

import java.util.List;
import java.util.Map;

public interface AlgorithmHandleService {

    Map<String,List<String>> calculateAndDraw(LaunchSignal launchSignal, Algorithm algorithm);

    void saveData(CalculateData calculateData, User user);

    Pagination<CalculateData> getPagination(int currentPage, int pageSize, User user);

    CalculateData getById(String calculateDataId);

    void remove(String calculateDataId);
}
