<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="/css/main.css" rel="stylesheet">
<script src="https://code.jquery.com/jquery-1.10.2.js" type="text/javascript"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</head>
<body>
<a class="btn btn-primary " href="http://localhost:8080/commandes" role="button">Retour aux commandes</a>
<h3>Dernier traitement :</h3>
<table class="table">
				<thead>
					<tr>
						<th>Nombre de commandes demandées</th>
						<th>Nombre de commandes en attente</th>
						<th>Nombre de commandes finies</th>
						<th>Nombre de commandes historisées</th>
					<tr>
				</thead>
					<tr>
						<td><c:out value="${numberOfCommandesInStateZero}" /></td>
						<td><c:out value="${numberOfCommandesInStateOne}" /></td>
						<td><c:out value="${numberOfCommandesInStateTwo}" /></td>
						<td><c:out value="${numberOfCommandesInStateThree}" /></td>
					</tr>
			</table>
</body>
</html>