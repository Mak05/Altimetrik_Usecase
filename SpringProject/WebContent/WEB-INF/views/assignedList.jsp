<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Ticket Management Screen</title>
<style type="text/css">
              body {
                     font-family: verdana;
                     font-size: 12px;
                     margin: 40px;
              }
              td {
                     border-collapse: collapse;
                     margin: 2px;
                     padding: 2px 2px 2px 10px;
                     font-size: 12px;
              }
              th {
                     font-weight: bold;
                     font-size: 12px;
                     background-color: #5C82FF;
                     color: white;
              }
              a, a:AFTER {
                     color: blue;
              }
</style>
</head>
<body>
	<div align="center">
		<h1>Hi Team member</h1>
		<c:set var = "name"></c:set>
		<c:forEach var="ticket" items="${assignedList}">
			<c:set var = "name" value="${ticket.assigneeId}"></c:set>
		</c:forEach>
		<h2>Ticket List for the ${name}</h2>
		<table border="1">

			<th>Ticket Id</th>
			<th>Ticket Details</th>
			<th>Ticket Status</th>
			<th>Assignee Id</th>

			<c:forEach var="ticket" items="${assignedList}">
				<tr>					
					<td>
						<c:if test="${ticket.ticketStatus == 'Resolved'}">${ticket.ticketId}</c:if>
						<c:if test="${ticket.ticketStatus != 'Resolved'}"><a href ="/SpringProject/getTicket?ticketId=${ticket.ticketId}">${ticket.ticketId}</a></c:if>
					</td>
					<td>${ticket.ticketDesc}</td>
					<td>${ticket.ticketStatus}</td>
					<td>${ticket.assigneeId}</td>
				</tr>
			</c:forEach>
		</table>
	</div>
</body>
</html>