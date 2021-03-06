<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<style>
.error {
	color: red;
	font-style: italic;
}

#error1, #error4, #error3 {
	color: red;
}
</style>
<script>
	function valid() {
		if (document.getElementById("name").value == "") {
			document.getElementById("error1").innerHTML = "<center>name required</center>";
			//return false;
		} else {

			document.getElementById("error1").innerHTML = "";

		}
		if (document.getElementById("quantity").value == "") {
			document.getElementById("error3").innerHTML = "<center> quantity required</center>";
			//return false;
		} else {

			document.getElementById("error3").innerHTML = "";

		}
		if (document.getElementById("price").value == "") {
			document.getElementById("error4").innerHTML = "<center>price required</center>";
			//return false;
		} else {
			document.getElementById("error4").innerHTML = "";
		}

	}
</script>
<form:form method="post" action="product" modelAttribute="product">
	<h2 class="jumbotron" align="center">Add Product</h2>
	<div align="center">
		<table>
			<tr>
				<form:hidden path="id"></form:hidden>
				<td>Product Name * :</td>
				<td><form:input path="name" id="name" size="35" maxlength="30" />
					<form:errors path="name" cssClass="error" /></td>
				<td><p id="error1"></p></td>
			</tr>

			<tr>
				<td>Product Description :</td>
				<td><form:input path="description" id="description" size="35"
						maxlength="30" /> <form:errors path="description"
						cssClass="error" /></td>

			</tr>
			<tr>
				<td>Quantity *:</td>
				<td><form:input path="quantity" id="quantity" size="6"
						maxlength="5" /> <form:errors path="quantity" cssClass="error" />
				<td><p id="error3"></p></td>


			</tr>
			<tr>
				<td>Purchase Price *:</td>
				<td><form:input path="price" id="price" size="8" maxlength="6" />
					<form:errors path="price" cssClass="error" /></td>
				<td><p id="error4"></p></td>
			</tr>
			<tr>
				<td>Selling Price *:</td>
				<td><form:input path="sPrice" id="sPrice" size="8" maxlength="6" />
					<form:errors path="sPrice" cssClass="error" /></td>
				<td><p id="error4"></p></td>
			</tr>
			<tr>
				<td><br /></td>
				<td><input type="submit" class="btn btn-success"
					value="Save Product" onclick="return valid()" /></td>
			</tr>

		</table>
	</div>
</form:form>