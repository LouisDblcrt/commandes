<!DOCTYPE html>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="en">
<head>

<link rel="stylesheet" type="text/css"
 href="webjars/bootstrap/3.3.7/css/bootstrap.min.css" />

</head>
<body>
 <div class="container">
  <header>
   <h1>Spring MVC + JSP + JPA + Spring Boot 2</h1>
  </header>
  <div class="starter-template">
   <h1>Commandes List</h1>
   <table
    class="table table-striped table-hover table-condensed table-bordered">
    <tr>
     <th>Id</th>
     <th>id_magasin</th>
    </tr>
    <c:forEach var="com" items="${commandes}">
     <tr>
      <td>${com.id}</td>
      <td>${com.id_magasin}</td>
     </tr>
    </c:forEach>
   </table>
  </div>

 </div>

 <script type="text/javascript"
  src="webjars/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>

</html>