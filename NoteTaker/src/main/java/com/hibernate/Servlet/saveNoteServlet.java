package com.hibernate.Servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.hibernate.entities.NoteBook;
import com.hibernate.helper.FactoryProvider;


public class saveNoteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
    public saveNoteServlet() {
        super();
        // TODO Auto-generated constructor stub
    }



	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		try {
			
			String title  = request.getParameter("title");
		String content = request.getParameter("content");
		
		NoteBook noteBook = new NoteBook(title, content, new Date());
		
	//	System.out.println(noteBook.getId() + " : " + noteBook.getTitle());
	
		//hibernate.save
		
		Session session = FactoryProvider.getFactory().openSession();
		Transaction tnx = session.beginTransaction();
		session.save(noteBook);
		
		tnx.commit();
		session.close();
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		out.println("<h1 style='text-align:center;'>Note is added Successfully..</h1>");
		out.println("<h1 style='text-align:center;'><a href='all_notes.jsp'>View all Notes</a></h1>");
		}catch(Exception e) {
			e.printStackTrace();		}
	}

}
