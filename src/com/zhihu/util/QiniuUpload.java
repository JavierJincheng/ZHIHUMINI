package com.zhihu.util;

import com.qiniu.api.auth.AuthException;
import com.qiniu.api.auth.digest.Mac;
import com.qiniu.api.config.Config;
import com.qiniu.api.io.IoApi;
import com.qiniu.api.io.PutExtra;
import com.qiniu.api.io.PutRet;
import com.qiniu.api.rs.GetPolicy;
import com.qiniu.api.rs.PutPolicy;
import com.qiniu.api.rs.RSClient;
import com.qiniu.api.rs.URLUtils;
import org.json.JSONException;
import java.io.ByteArrayInputStream;
import java.io.File;

public class QiniuUpload {

	public static final String ACCESS_KEY = "HUWlhVWWD1y5-JucvIIA7GfHAS3-e9Qx0J0peY3_"; // 你的access_key
	public static final String SECRET_KEY = "BricvcWAfzhx951scoIsPSqgTDl3zNMjurHI0Pjc"; // 你的secret_key
	public static final String BUCKET_NAME = "zhihu"; // 你的bucket_name

	public static String uploadFile(String filePath, String fileName) {

		Mac mac = new Mac(QiniuUpload.ACCESS_KEY, QiniuUpload.SECRET_KEY);
		PutPolicy putPolicy = new PutPolicy(QiniuUpload.BUCKET_NAME);
		String uptoken = null;


			try {
				uptoken = putPolicy.token(mac);
			} catch (AuthException e1) {
				e1.printStackTrace();
			} catch (JSONException e1) {
				e1.printStackTrace();
			}


		System.out.println(uptoken); // 输出上传凭证

		PutExtra putExtra = new PutExtra();

		PutRet putRet = null;
		try {
			putRet = IoApi.putFile(uptoken, fileName, filePath, putExtra);
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println(e.toString());
		}

		return ("http://otq7c7vb0.bkt.clouddn.com/" + putRet.getKey());

	}

	public static void main(String[] args) {
		try {
			System.out.println(uploadFile("F:\\11.png", "vedio03.jpg")); // 第一个参数是本地文件路径，第二个参数是上传到七牛云之后的文件名称，由你来设定。
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
