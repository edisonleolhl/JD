package com.shopping.Servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.shopping.DAO.ShoesDAO;
import com.shopping.models.Comment;
import com.shopping.models.Shoes;
import com.shopping.models.ShoesColor;
import com.shopping.models.ShoesImg;
import com.shopping.models.ShoesInfo;
import com.shopping.models.ShoesSize;
import com.shopping.service.CommentService;
import com.shopping.service.ShoesColorService;
import com.shopping.service.ShoesImgService;
import com.shopping.service.ShoesInfoService;
import com.shopping.service.ShoesService;
import com.shopping.service.ShoesSizeService;

public class Shoesinfo extends HttpServlet {

	ShoesService shda=new ShoesService();
    ShoesInfoService shse=new ShoesInfoService();
    ShoesImgService sis = new ShoesImgService();
    ShoesColorService cose=new ShoesColorService();
    ShoesSizeService ss=new ShoesSizeService();
    CommentService gase=new CommentService();
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request,response);

	}

	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
      
		int id=Integer.parseInt(request.getParameter("shoesid"));
         
         
         //信息图片
		ShoesInfo Shoesinfo = null;
		//商品信息
		Shoes Shoes = null;
		//商品颜色图片
		ShoesImg ShoesImg = null;
		//商品颜色
		ShoesColor ShoesColor = null;
		//商品尺码
		List<ShoesSize> ShoesSize = null;
		//商品评价
		List<Comment> Comment = null;
		try {
			Shoesinfo = (ShoesInfo)shse.queryByid(id);
			 Shoes = shda.SelectById(id);
			 ShoesImg = (ShoesImg)sis.queryById(id);
			 ShoesColor = cose.SelectlById(id);
			 ShoesSize = ss.SelectlAllSize();
			 Comment = gase.queryById(id);
		} catch (SQLException e) {
			e.printStackTrace();
		}
         //评价条数
         int count = Comment.size();
         
         request.setAttribute("Shoesinfo", Shoesinfo);
         request.setAttribute("ShoesColor", ShoesColor);
         request.setAttribute("ShoesSize", ShoesSize);
         request.setAttribute("Shoes", Shoes);
         request.setAttribute("Comment", Comment);
         request.setAttribute("ShoesImg", ShoesImg);
         request.setAttribute("count", count);
 		 request.getRequestDispatcher("/enter/RaiKe.jsp").forward(request, response);
	}

}
