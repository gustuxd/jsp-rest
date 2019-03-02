package br.com.gustu.controller;

import br.com.gustu.dao.UserDao;
import br.com.gustu.model.User;
import br.com.gustu.util.ConstantsUtil;
import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class UserController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private UserDao dao = new UserDao();

	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		this.doPost(req, resp);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		User user = new User();
		user.setNome(request.getParameter("nome"));
		user.setSobrenome(request.getParameter("sobrenome"));
		user.setEmail(request.getParameter("email"));
		String userid = request.getParameter("id");
		if (userid == null || userid.isEmpty()) {
			this.dao.addUser(user);
		} else {
			user.setId(Integer.parseInt(userid));
			this.dao.updateUser(user);
		}
		RequestDispatcher view = request.getRequestDispatcher(ConstantsUtil.LIST_USER);
		request.setAttribute("users", (Object) this.dao.getAllUsers());
		view.forward((ServletRequest) request, (ServletResponse) response);
	}
}