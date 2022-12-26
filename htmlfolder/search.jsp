<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="bookally.*" %>

<% String title = request.getParameter("search");

    BookService bService = new BookService();

  try {
    Book book = (Book)bService.findBookbyTitle(title);
%>
    <jsp:forward page = "bookinfo.jsp">
      <jsp:param name="id" value="<%=book.getBookId()%>"/>
    </jsp:forward>

<%
  } catch(Exception e) {
  request.setAttribute("message", e.getMessage());
  %>
    <jsp:forward page = "booknotfound.jsp" />
  <%
  }
  %>