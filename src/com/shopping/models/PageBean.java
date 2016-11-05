package com.shopping.models;

import java.util.List;

//分页需要用到的实体类
public class PageBean {
	/** 当前页 */
	private int currentPage;
	/** 每页显示的条数 */
	private int pageSize;
	/** 上一页 */
	private int prePage;
	/** 下一页 */
	private int nextPage;
	/** 总页数 */
	private int pageCount;
	/** 总条数 */
	private int count;
	/** 每页对应的数据 */
	private java.util.List<Shoes> data;
	
	public int getCurrentPage() {
		return currentPage;
	}
	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}
	public int getPageSize() {
		return pageSize;
	}
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}
	public int getPrePage() {
		return prePage;
	}
	public void setPrePage(int prePage) {
		this.prePage = prePage;
	}
	public int getNextPage() {
		return nextPage;
	}
	public void setNextPage(int nextPage) {
		this.nextPage = nextPage;
	}
	public int getPageCount() {
		return pageCount;
	}
	public void setPageCount(int pageCount) {
		this.pageCount = pageCount;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	public java.util.List<Shoes> getData() {
		return data;
	}
	public void setData(java.util.List<Shoes> data) {
		this.data = data;
	}
	
	public PageBean(int currentPage, int pageSize, int count, List<Shoes> data) {
		super();
		this.currentPage = currentPage<=1?1:currentPage;
		this.pageSize = pageSize<=0?20:pageSize;
		this.count = count;
		this.data = data;
		
		//计算总页数，如果不能整出需要多加一页
		this.pageCount=count%pageSize!=0?
				count/pageSize + 1:count/pageSize;

		//计算上一页
		this.prePage = 
			currentPage-1>1?currentPage-1:1;
		//计算下一页
		this.nextPage = 
			currentPage>=pageCount?
					pageCount:currentPage+1;
	}
	
	
	
	
	
	
}
