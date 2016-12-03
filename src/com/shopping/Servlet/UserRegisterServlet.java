package com.shopping.Servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.shopping.models.User;
import com.shopping.service.UserService;


@SuppressWarnings("serial")
public class UserRegisterServlet extends HttpServlet {
	UserService us = new UserService();
	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String account = request.getParameter("account");
		String Userpwd = request.getParameter("Userpwd");
		String checkpwd = request.getParameter("checkpwd");
		String phone = request.getParameter("phone");
		String identifyingCode = request.getParameter("indentifyingCode");
		String phoneIdentifyingCode = request.getParameter("phoneIdentifyingCode");
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		Date currentDate = new Date(System.currentTimeMillis());//得到当前时间
		String str = sdf.format(currentDate);
		
		List<User> ul = null;
		try {
			ul = us.loadUserList();
		} catch (SQLException e1) {
			e1.printStackTrace();
		}
		boolean isSameAccount = false;
		boolean isSamePhone = false;
		for(User temp:ul){
			if(account.equals(temp.getUserAccount())){
				isSameAccount = true;
			}
		}
		for(User temp:ul){
			if(phone.equals(temp.getPhone())){
				isSamePhone = true;
			}
		}
		
		PrintWriter out=response.getWriter();

		String vcode = (String) request.getSession().getAttribute("yzm");
		boolean b = identifyingCode.equalsIgnoreCase(vcode);
		
		if(!Userpwd.equals(checkpwd)){
			out.write("<script>alert('两次密码输入不同！请重新输入！');history.go(-1);</script>");
			out.flush();
			out.close();
			return;
		}else if(account.equals("")||Userpwd.equals("")||checkpwd.equals("")||phone.equals("")||identifyingCode.equals("")||phoneIdentifyingCode.equals("")){
			out.write("<script>alert('信息不完整！');history.go(-1);</script>");
			out.flush();
			out.close();
			return;
		}else if(isSameAccount == true){
			out.write("<script>alert('您输入的用户名已存在！');history.go(-1);</script>");
			out.flush();
			out.close();
			return;
		}else if(isSamePhone == true){
			out.write("<script>alert('手机号码已存在！');history.go(-1);</script>");
			out.flush();
			out.close();
			return;
		}else if(!b){
			out.write("<script>alert('验证码错误！');history.go(-1);</script>");
			out.flush();
			out.close();
			return;
		}
		
		User user = new User();
		user.setUserAccount(account);
		user.setPassword(Userpwd);
		user.setSex("男");
		user.setPhone(phone);
		user.setRegistTime(str);
		user.setBirthday("2000-01-01 00:00:00");
		user.setUserImg("default.PNG");
		//鑻ユ敞鍐屼笉鎴愬姛  缁欏嚭鎻愮ず 骞惰繑鍥炴敞鍐岄〉闈�
		try {
			if(!us.register(user)){
				out.write("<script>alert('娉ㄥ唽澶辫触锛佽閲嶆柊娉ㄥ唽锛�);history.go(-1);</script>");
				out.flush();
				out.close();
				return;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}	
		//鑻ユ敞鍐屾垚鍔�缁欏嚭鎻愮ず 骞惰繑鍥炴敞鍐岄〉闈�
		HttpSession session=request.getSession();
		session.setAttribute("USER", user);
		response.sendRedirect("/JD/fristpage/search.jsp");
	}

}
