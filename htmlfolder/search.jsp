<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="bookally.*" %>

<% String title = request.getParameter("search");
    BookService bService = new BookService();

    try{
    Book book = (Book)bService.findBookbyTitle(title);
    %>
    <jsp: forward page = "bookinfo.jsp?id=<%=book.getBookId()%>"/>
    <% }catch(Exception e) {
        request.setAttribute("message", e.getMessage());
        %>
    <jsp: forward pade = "<%=request.getRequestURI().substring(request.getRequestURI().lastIndexOf("/") + 1)%>" />
    %>
    }
