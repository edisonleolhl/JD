package com.shopping.Servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.shopping.BAO.ShoesDAO;
import com.shopping.models.GoodAppraise;
import com.shopping.models.Shoes;
import com.shopping.models.ShoesColor;
import com.shopping.models.ShoesImg;
import com.shopping.models.ShoesInfo;
import com.shopping.models.ShoesSize;
import com.shopping.serveice.GoodAppraiseService;
import com.shopping.serveice.ShoesColorService;
import com.shopping.serveice.ShoesImgService;
import com.shopping.serveice.ShoesInfoService;
import com.shopping.serveice.ShoesService;
import com.shopping.serveice.ShoesSizeService;

public class Shoesinfo extends HttpServlet {

	ShoesService shda=new ShoesService();
    ShoesInfoService shse=new ShoesInfoService();
    ShoesImgService sis = new ShoesImgService();
    ShoesColorService cose=new ShoesColorService();
    ShoesSizeService ss=new ShoesSizeService();
    GoodAppraiseService gase=new GoodAppraiseService();
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request,response);

	}

	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
         int id=Integer.parseInt(request.getParameter("shoesid"));
         
         
         //信息图片
         ShoesInfo Shoesinfo=(ShoesInfo)shse.queryByid(id);
         //商品信息
         Shoes Shoes=shda.SelectlById(id);
         //商品颜色图片
         ShoesImg ShoesImg=(ShoesImg)sis.queryById(id);
         //商品颜色
         ShoesColor ShoesColor=cose.SelectlById(id);
         //商品尺码
         List<ShoesSize> ShoesSize=ss.SelectlAllSize();
         //商品评价
         List<GoodAppraise> GoodAppraise=gase.queryById(id);
         //评价条数
         int count=GoodAppraise.size();
         
         request.setAttribute("Shoesinfo", Shoesinfo);
         request.setAttribute("ShoesColor", ShoesColor);
         request.setAttribute("ShoesSize", ShoesSize);
         request.setAttribute("Shoes", Shoes);
         request.setAttribute("GoodAppraise", GoodAppraise);
         request.setAttribute("ShoesImg", ShoesImg);
         request.setAttribute("count", count);
 		 request.getRequestDispatcher("/enter/RaiKe.jsp").forward(request, response);
	}

}
