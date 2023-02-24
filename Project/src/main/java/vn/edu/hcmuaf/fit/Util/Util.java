package vn.edu.hcmuaf.fit.Util;

import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.util.Base64;

public class Util {
    public static String maHoaMatKhau(String matkhau) {
        String salt = "";
        String rs = null;
        matkhau = matkhau + salt;
        try {
            byte[] data = matkhau.getBytes("UTF-8");
            MessageDigest md = MessageDigest.getInstance("SHA-1");
            rs = Base64.getEncoder().encodeToString(md.digest(data));
        } catch (Exception e) {
            e.printStackTrace();
        }
        return rs;
    }


    public static void main(String[] args) {
        System.out.println(maHoaMatKhau("123"));
    }
}
