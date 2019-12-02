<<<<<<< Updated upstream

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
=======
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
>>>>>>> Stashed changes
<head>
<meta charset="UTF-8">
<link href="/css/main.css" rel="stylesheet">
<script src="https://code.jquery.com/jquery-1.10.2.js"
<<<<<<< Updated upstream
	type="text/javascript"></script>
<script type="text/javascript">
function changeState(id){
	const Http = new XMLHttpRequest();
	const url="http://localhost:8080/commandes/"+id;
	Http.open("post", url);
	Http.send();
	document.location.reload(true);
}
</script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</head>
<body>
	<div class="box1">
		<div id="a" class="table-responsive ">
<div id="table-scroll">
			<table class="table">
				<thead>
					<tr>
						<th>ID Commande</th>
						<th>ID Magasin</th>
						<th>Etat</th>
						<th>Date création</th>
						<th>Date modification</th>
						<th><button onclick="changeState(${listCommandesDemande[0].id})">Changer d'état</button></th>
					<tr>
				</thead>
				<c:forEach items="${listCommandesDemande}" var="val">
					<tr>
						<td><c:out value="${val.id}" /></td>
						<td><c:out value="${val.id_magasin}" /></td>
						<td><c:out value="${val.etat}" /></td>
						<td><c:out value="${val.date_creation}" /></td>
						<td><c:out value="${val.date_modification}" /></td>
						
						<td></td>
					</tr>
				</c:forEach>

			</table>
			</div>
			
		</div>
		<div id="b" class="table-responsive">
<div id="table-scroll">

			<table class="table">
				<thead>
					<tr>
						<th>ID Commande</th>
						<th>ID Magasin</th>
						<th>Etat</th>
						<th>Date création</th>
						<th>Date modification</th>
						<th><button onclick="changeState(${listCommandesEnPrep[0].id})">Changer d'état</th>
						
					<tr>
				</thead>

				<c:forEach items="${listCommandesEnPrep}" var="val">
					<tr>
						<td><c:out value="${val.id}" /></td>
						<td><c:out value="${val.id_magasin}" /></td>
						<td><c:out value="${val.etat}" /></td>
						<td><c:out value="${val.date_creation}" /></td>
						<td><c:out value="${val.date_modification}" /></td>
						
						<td></td>
					</tr>
				</c:forEach>

			</table>
			</div>
		</div>
	</div>
	<div class="box2">
		<div id="c" class="table-responsive">
<div id="table-scroll">

			<table class="table">
				<thead>
					<tr>
						<th>ID Commande</th>
						<th>ID Magasin</th>
						<th>Etat</th>
						<th>Date création</th>
						<th>Date modification</th>
						<th><button onclick="changeState(${listCommandesFini[0].id})">Changer d'état</th>
					<tr>
				</thead>
				<c:forEach items="${listCommandesFini}" var="val">
					<tr>
						<td><c:out value="${val.id}" /></td>
						<td><c:out value="${val.id_magasin}" /></td>
						<td><c:out value="${val.etat}" /></td>
						<td><c:out value="${val.date_creation}" /></td>
						<td><c:out value="${val.date_modification}" /></td>
						<td></td>
					</tr>
				</c:forEach>

			</table>
		</div>
		</div>
		<div id="d"  class="table-responsive">
<div id="table-scroll">

			<table class="table" >
	
			
				<thead>
					<tr>
						<th>ID Commande</th>
						<th>ID Magasin</th>
						<th>Etat</th>
						<th>Date création</th>
						<th>Date modification</th>
					<tr>
				</thead>
				<c:forEach items="${listCommandesHistorisee}" var="val">
					<tr>
						<td><c:out value="${val.id}" /></td>
						<td><c:out value="${val.id_magasin}" /></td>
						<td><c:out value="${val.etat}" /></td>
						<td><c:out value="${val.date_creation}" /></td>
						<td><c:out value="${val.date_modification}" /></td>
					</tr>
				</c:forEach>

			</table>
		</div>
		</div>
		</div>
=======
	type="text/javascript">
</script>
<title>Monitoring</title>
</head>
<body>
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
>>>>>>> Stashed changes
</body>
</html>