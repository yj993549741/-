package com.neuedu.shop.util;
import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
/**
 * 设置当前编码集
 */
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;


public class ServletUtil {
	/**
     * 生成32位md5码
     * @param password
     * @return
     */
    public static String md5Password(String password) {

        try {
            // 得到一个信息摘要器
            MessageDigest digest = MessageDigest.getInstance("md5");
            byte[] result = digest.digest(password.getBytes());
            StringBuffer buffer = new StringBuffer();
            // 把每一个byte 做一个与运算 0xff;
            for (byte b : result) {
                // 与运算
                int number = b & 0xff;// 加盐
                String str = Integer.toHexString(number);
                if (str.length() == 1) {
                    buffer.append("0");
                }
                buffer.append(str);
            }

            // 标准的md5加密后的结果
            return buffer.toString();
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
            return "";
        }

    }
    /**
      * 文件拷贝到本地
     * @param src 被拷贝的文件
     * @param dest 目标文件（拷贝到哪里）
     */
    public static void fileCopyToLocal(File src,File dest) {
    	//JDK7 Files
    	try {
			Files.copy(src.toPath(), dest.toPath());
		} catch (IOException e) {
			e.printStackTrace();
		}
    }
   /* public static void main(String[] args) {
		File src = new File("F:1.txt");
		File dest = new File("E:\\neuedu\\project\\eclipse\\shop\\src\\main\\webapp\\files\\2.txt");
		fileCopyToLocal(src,dest);
	}
*/
}
