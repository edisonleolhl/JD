package com.shopping.service;

import java.sql.SQLException;
import java.util.List;

import com.shopping.DAO.CommentDAO;
import com.shopping.models.Comment;

public class CommentService {

	CommentDAO dao=new CommentDAO();
	public List<Comment> queryById(int id) throws SQLException
	{
		return dao.SelectById(id);
	}
}
