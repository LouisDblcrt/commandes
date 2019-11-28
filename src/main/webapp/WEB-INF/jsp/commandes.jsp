 <%@ taglib prefix="c"
           uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link href="/css/main.css" rel="stylesheet">
    <script src="https://code.jquery.com/jquery-1.10.2.js"
	type="text/javascript"></script>
<script type="text/javascript">
function changeState(id){
	const Http = new XMLHttpRequest();
	const url="http://localhost:8080/commandes/${id}";
	Http.open("post", url);
	Http.send();
	Location.reload();
}
</script>
</head>
<body>
  
<table>
    <thead>
    <tr>
        <th>ID Commande</th>
        <th>ID Magasin</th>
        <th>Etat</th>
        <th>Date création</th>
    <tr>
    </thead>
    <c:forEach items="${listCommandes}" var="val">
        <tr>
            <td><c:out value="${val.id}"/></td>
            <td><c:out value="${val.id_magasin}"/></td>
            <td><c:out value="${val.etat}"/></td>
            <td><c:out value="${val.date_creation}"/></td>
            <td>  <input type="submit" value="Changer etat" onclick="changeState(${val.id})"></td>
        </tr>
    </c:forEach>
</table>

</body>
</html>