<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="bookally.*,java.util.List,java.lang.*" %>

<%BookService bookSer  = new BookService();
List <Book> books = bookSer.getBooks();
UserDAO UserDao  = new UserDAO();
List<User> users = UserDao.getUsers();

%>


<html>
    <head>
        <%@ include file="header.jsp" %>
        <meta charset="UTF-8">
        <title>Wishlist</title>
        <link rel="stylesheet" href="../cssfolder/wishlist.css">
    </head>
    <body>
        
        <img  src="../images/BackgroundImage.png" id="backgroundImage">

        <h1 id="HeadTitle">BookAlly</h1>

        <%
		User userObj = (User)session.getAttribute("authenticated_user");
    
        if (userObj == null) {
            %>
            request.setAttribute("message", " You can not have a wishlist without an account.  Please login. ");
        %>
        <jsp:forward page="login.jsp" />
        <% 
        }
        
        books = bookSer.searchBook(userObj.getUsername());
        String count = request.getParameter("count");
        String time = request.getParameter("time");
        
        int counter = Integer.parseInt(count);
        int timer = Integer.parseInt(time);
        %>

        <%@ include file="menu.jsp" %>

        <div id="div2">
            <%if(books.size() != 0){
            %>
                <hr id="line">
                <%
                int bookPosition = 0;
                int i = 0;
                if( timer == 1 || timer == 2) {
                    for(i = counter;i < counter + 8; i++){
                            bookPosition += 1;
                        if(i < books.size() ){
                        %>
                            <a href="bookinfo.jsp?id=<%=books.get(i).getBookId() %>" data-toggle="tooltip" title="Πληροφορίες βιβλίου"><img src="../images/<%=books.get(i).getBookId() %>.jpg" id="book<%=bookPosition%>"></a>
                        <%}
                        }
                        if((books.size() - i) > 0){
                        %>
                            <a id="a2" href="wishlist.jsp?count=<%=i%>&time=2" data-toggle="tooltip" title="Επόμενο">&#8250;</a>
                        <%}
                        if(timer == 2){
                        %>
                            <a id="a1" href="wishlist.jsp?count=<%=i%>&time=3" data-toggle="tooltip" title="Προηγούμενο" >&#8249;</a>
                        <%  
                        }
                        
                }else if(timer == 3){
                    for( i = counter - 16 ;i < counter - 8; i++ ){
                        bookPosition += 1;
                    %>
                        <a href="bookinfo.jsp?id=<%=books.get(i).getBookId() %>"><img src="../images/<%=books.get(i).getBookId() %>.jpg" id="book<%=bookPosition%>"></a>
                    <%}
                    if((counter-16) > 0){
                    %>
                        <a id="a1" href="wishlist.jsp?count=<%=i%>&time=3" data-toggle="tooltip" title="Προηγούμενο" >&#8249;</a>
                    <%
                    }
                    %>
                    <a id="a2" href="wishlist.jsp?count=<%=i%>&time=2" data-toggle="tooltip" title="Επόμενο">&#8250;</a>
                <%    
                } 
            }else{
            %>
                <form id="alert-form">
                    <h2><font color="#81420e">Η wishlist σου είναι άδεια.<a href="bookbrowsing.jsp"  style="font-size: 100%"><font color="#4b1803" ><u>Explore new books!</u></font></a></font></h2>
                </form>
            <%
            }
            %>
        </div>
     
    </body>  
</html>