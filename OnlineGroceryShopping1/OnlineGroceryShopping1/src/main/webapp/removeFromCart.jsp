<%@page import="project.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<%
  String email=session.getAttribute("email").toString();
  String id=request.getParameter("id");
  try{
	  
	  Connection con =ConnectionProvider.getCon();
	  Statement st=con.createStatement();
	  st.executeUpdate("delete from cart where product_id='"+id+"' and email='"+email+"' and address is NULL");
	  response.sendRedirect("myCart.jsp?msg=removed");
	  
  }catch(Exception e){
	  System.out.println(e);
  }
  %>