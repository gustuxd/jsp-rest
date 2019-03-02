package br.com.gustu.controller;

import br.com.gustu.dao.UserDao;
import br.com.gustu.model.User;
import br.com.gustu.util.ConstantsUtil;
import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class RedirectController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private UserDao dao;

	public RedirectController() {
		dao = new UserDao();
	}

	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doPost(req, resp);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String forward = "";
		String action = request.getParameter("action");
		int userId = Integer.parseInt((request.getParameter("id") != null) && (!"".equals(request.getParameter("id")))
				? request.getParameter("id")
				: "0");

		switch (action) {
		case "delete":
			dao.deleteUser(userId);
			forward = ConstantsUtil.LIST_USER;
			request.setAttribute("users", dao.getAllUsers());
			break;
		case "edit":
			forward = ConstantsUtil.INSERT_OR_EDIT;
			User user = dao.getUserById(userId);
			request.setAttribute("user", user);
			break;
		case "listUser":
			forward = ConstantsUtil.LIST_USER;
			request.setAttribute("users", dao.getAllUsers());
			break;
		default:
			forward = ConstantsUtil.INSERT_OR_EDIT;
			break;
		}

		RequestDispatcher view = request.getRequestDispatcher(forward);
		view.forward(request, response);
	}
}