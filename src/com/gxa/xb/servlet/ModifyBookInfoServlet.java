package com.gxa.xb.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.JOptionPane;

import com.gxa.xb.Dao.Impl.bookDaoImpl;
import com.gxa.xb.Dao.Impl.typeDaoImpl;
import com.gxa.xb.pojo.Book;
import com.gxa.xb.pojo.Type;

/**
 * Servlet implementation class ModifyBookInfoServlet
 */
@WebServlet("/ModifyBookInfoServlet")
public class ModifyBookInfoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	typeDaoImpl dao = new typeDaoImpl();
    bookDaoImpl bookdao = new bookDaoImpl();

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String origName =new String(request.getParameter("bookOrigName").getBytes("ISO8859-1"),"UTF-8");
		if(bookdao.findBooksByName(origName)==null)
		{
			JOptionPane.showMessageDialog(null,"查无此书哦www","修改错误", JOptionPane.ERROR_MESSAGE);
			response.sendRedirect("/booksshop/update_books.jsp");
		}
		else{
		String name = new String(request.getParameter("bookName").getBytes("ISO8859-1"),"UTF-8");
		String author = new String(request.getParameter("bookAuthor").getBytes("ISO8859-1"),"UTF-8");
		String bookurl = new String(request.getParameter("bookPic").getBytes("ISO8859-1"),"UTF-8");
		int bookprice = Integer.parseInt(new String(request.getParameter("bookPrice").getBytes("ISO8859-1"),"UTF-8"));
		String bookpub = new String(request.getParameter("bookPub").getBytes("ISO8859-1"),"UTF-8");
		String bookjj = new String(request.getParameter("bookDesc").getBytes("ISO8859-1"),"UTF-8");
		
		int id = Integer.parseInt(new String(request.getParameter("typeId").getBytes("ISO8859-1"),"UTF-8"));
		Type booktype = dao.findTypeByTypeId(id);
		Book book = new Book(name,author,bookurl,bookprice,bookpub,bookjj,booktype);
		bookdao.modifyBooks(book, origName);
		JOptionPane.showMessageDialog(null,"修改成功哦www","修改成功", JOptionPane.DEFAULT_OPTION);
		response.sendRedirect("/booksshop/update_books.jsp");
		}
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
