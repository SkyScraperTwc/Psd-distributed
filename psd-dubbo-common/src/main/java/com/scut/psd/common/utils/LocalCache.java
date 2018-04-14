package com.scut.psd.common.utils;

import java.util.concurrent.ConcurrentHashMap;

/**
 * 本地缓存
 */
public class LocalCache{

    /**线程安全的Map*/
    public static final ConcurrentHashMap<String, String> safeMap = new ConcurrentHashMap<>();

//    /**
//     * 单例模式
//     */
//    private LocalCache(){}
//
//    private static volatile LocalCache instance;
//
//    public static LocalCache getInstance(){
//        if(null == instance){
//            synchronized (LocalCache.class){
//                if (null == instance){
//                    instance = new LocalCache();
//                }
//            }
//        }
//        return instance;
//    }

    /**
     * 添加缓存
     * @param key
     * @param value
     */
    public static void setCache(String key, String value) {
        safeMap.put(buildKey(key),value);
    }

    /**
     * 获取缓存
     * @param key
     * @return
     */
    public static Object getCacheValue(String key) {
        String newKey = buildKey(key);
        /**如果缓存中有该key，则返回value*/
        return safeMap.getOrDefault(newKey, null);
    }

    /**
     * 移除缓存
     * @param key
     */
    public static void removeCache(String key) {
        safeMap.remove(buildKey(key));
    }

    /**
     * 获取缓存的大小
     * @return
     */
    public static int getCacheSize() {
        return safeMap.size();
    }

    /**
     * 构建缓存key
     * @param key
     * @return
     */
    public static String buildKey(String key){
        return key + "_" + "data";
    }
}