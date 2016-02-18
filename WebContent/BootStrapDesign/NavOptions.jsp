<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<% if(session.getAttribute("name") != null){
out.print("Welcome "+ session.getAttribute("name"));
}%>

	


<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                    <li><% if(session.getAttribute("name") == null){%>
                    <a href="home.jsp">Home</a>
                    <%}else{%>
                    <a href= ../logout>Log-Out</a><%
                    }%>
                    </li>
                    <li>
                        <a href="testimony.jsp">Testimony</a>
                    </li>
                    <li>
                        <a href="about.jsp">About</a>
                    </li>
                    <li>
                        <a href="contact.jsp">Contact</a>
                    </li>
                </ul>
            </div>
            