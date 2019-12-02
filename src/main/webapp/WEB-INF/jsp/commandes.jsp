
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Commandes</title>
<meta charset="UTF-8">
<link href="/css/main.css" rel="stylesheet">
<script src="https://code.jquery.com/jquery-1.10.2.js"
	type="text/javascript"></script>
<script type="text/javascript">
function changeState(id){
	if(confirm("Etes-vous sur de changer l'état des 20 premières commandes ?")){
		const Http = new XMLHttpRequest();
		const url="http://localhost:8080/commandes/"+id;
		Http.open("post", url);
		Http.send();
		setTimeout(function(){
			  window.location.reload();
			});
	
	}else{
		document.location.reload(true);

	}
	}
	
	function deco() {
		if(confirm("Etes-vous sur de vouloir vous déconnecter ?")){
			const Http = new XMLHttpRequest();
			const url="http://localhost:8080/logout";
			Http.open("post", url);
			Http.send();
			document.location.href="login"
		}else{
			document.location.reload(true);
		}
	}
</script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
	integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
	integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
	crossorigin="anonymous"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
	integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
	crossorigin="anonymous"></script>
</head>
<body>
<button class="btn btn-primary" onclick="deco()">Déconnexion</button>
		<a class="btn btn-primary " href="http://localhost:8080/monitoring" role="button">suivi des commandes</a>
			<div>dernier traitement réalisé le : <span id="date_modif"><c:out value = "${getLastUpdatedCommande.date_modification}"/></span>
		</div>
	<div class="box1">
		<div id="a" class="table-responsive ">
		<h1>Demandé</h1>
			<div id="table-scroll">
				<table class="table">
					<thead>
						<tr>
							<th>ID Commande</th>
							<th>ID Magasin</th>
							<th>Etat</th>
							<th>Date création</th>
							<th>Date modification</th>
							<th><button
									onclick="changeState(${listCommandesDemande[0].id})">Changer
									d'état</button></th>
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
				<h1>En préparation</h1>
		
			<div id="table-scroll">

				<table class="table">
					<thead>
						<tr>
							<th>ID Commande</th>
							<th>ID Magasin</th>
							<th>Etat</th>
							<th>Date création</th>
							<th>Date modification</th>
							<th><button
									onclick="changeState(${listCommandesEnPrep[0].id})">Changer
									d'état</th>
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
				<h1>Fini</h1>
		
			<div id="table-scroll">

				<table class="table">
					<thead>
						<tr>
							<th>ID Commande</th>
							<th>ID Magasin</th>
							<th>Etat</th>
							<th>Date création</th>
							<th>Date modification</th>
							<th><button
									onclick="changeState(${listCommandesFini[0].id})">Changer
									d'état</th>
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
		<div id="d" class="table-responsive">
				<h1>Historisée</h1>
		
			<div id="table-scroll">

				<table class="table">


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
</body>
</html>