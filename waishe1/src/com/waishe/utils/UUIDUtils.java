package com.waishe.utils;

import java.util.UUID;

public class UUIDUtils {
    //获取32位uuid
    public static String getUUID(){
        return UUID.randomUUID().toString().replaceAll("-","");
    }
}
