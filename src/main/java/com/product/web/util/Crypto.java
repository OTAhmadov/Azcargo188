/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.product.web.util;

import java.util.UUID;
import org.apache.commons.codec.binary.Base64;



/**
 *
 * @author Hasanov
 */
public class Crypto {
    
    public static String base64Encode(String value) {
        byte[] encoded = new Base64().encode(value.getBytes());
        return new String(encoded);
    }
    
    public static String base64Decode(String value) {
        byte[] decoded = new Base64().decode(value.getBytes());
        return new String(decoded);
    }
    
    public static String getGuid() {
        UUID uuid = UUID.randomUUID();
        String x = uuid.toString().replaceAll("-", "");
        return x;
    }
    
    public static String getDoubleGuid() {
        UUID uuid1 = UUID.randomUUID();
        UUID uuid2 = UUID.randomUUID();
        String x = (uuid1.toString() + uuid2.toString()).replaceAll("-", "");
        return x;
    }
}
