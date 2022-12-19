<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="bookally.*" %>

<% String title = request.getParameter("search");
    BookService bService = new BookService();

    try{
    Book book = (Book)bService.findBookbyTitle(title);
    }
