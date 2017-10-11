package com.zhihu.util;



import javax.mail.Message;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import java.util.Properties;
public class MailSend {


	/**
	 * Created by高林 on 2017/2/20.
	 */
 public String sendmail(String Toemail) throws  Exception{
	 String str="abcdefghjklmnopqrstuvwxy123456789";
     char[] param=str.toCharArray();
     String result="";
     for(int i=0;i<6;i++){
   	  result+= param[(int) (33*Math.random())];
     }
	      
	      
	    //閰嶇疆涓婁紶鍙傛暟
	       Properties prop = new Properties();
	     // 鍒濆鍖栧弬鏁�
	        // 鍗忚
	        prop.put("mail.transport.protocol", "smtp");
	        // 绔彛
	        prop.put("mail.smtp.port", "25");
	        // 涓绘満
	        prop.put("mail.smtp.host", "smtp.qq.com");
	        // 璁よ瘉

	        // 璋冭瘯prop.put("mail.smtp.auth", "true");
	        prop.put("mail.debug", "true");
	        prop.setProperty("mail.smtp.starttls.enable", "true");

	        Session session= Session.getDefaultInstance(prop);
	        Message message=new MimeMessage(session);
	        //鏍囬
	        message.setSubject("知乎MINI小助手");
	        //鏀朵欢浜�
	        message.setRecipient(Message.RecipientType.TO,new InternetAddress(Toemail));
	        message.setFrom(new InternetAddress("1219398062@qq.com"));
	       // message.setText("[知乎迷你]您的验证码为:"+result);
	        message.setContent("[知乎迷你]您的验证码为:"+result, "text/html;charset=UTF-8");// 发送邮件
	        message.saveChanges();
	        Transport t=session.getTransport();
	        t.connect("1219398062@qq.com","rghpqlfgpvdpiabe");
	      /*  t.connect("1219398062@qq.com","gaolin319");*/
	        t.sendMessage(message,message.getAllRecipients());
			return result;

	    }

	    public static void main(String[] args) throws Exception {
	    	MailSend j=new MailSend();
	      j.sendmail("1219398062@qq.com");
	    
	
	    
		    
	    }

	


}
