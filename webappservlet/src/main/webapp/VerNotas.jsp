
<%-- <%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %> --%>
	<%@page import="java.util.List" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href='https://fonts.googleapis.com/css?family=Poppins' rel='stylesheet'>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/boxicons@latest/css/boxicons.min.css">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-select@1.13.14/dist/css/bootstrap-select.min.css">
<link rel="stylesheet" href="css/notas.css">
<link rel="stylesheet" href="css/estilo1.css">
<link rel="stylesheet" href="css/estilo2.css">
<link rel="stylesheet" href="css/menu.css">
<script src="https://kit.fontawesome.com/60e108111f.js"
	crossorigin="anonymous"></script>
<script src="js/javascript1.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"
	crossorigin="anonymous"></script>
<title>Insert title here</title>
</head>
<body id="body-pd">
.<%String usuario = (String)request.getAttribute("usuario"); %>
	<header class="header" id="header">
		<div class="header_toggle">
			<i class='bx bx-menu' id="header-toggle"></i>
		</div>
		<div class="Usuario">
			<h4><%= usuario%></h4>
		</div>
	</header>
	<div class="l-navbar" id="nav-bar">
		<nav class="nav">

			<div>
				<a href="#" class="nav_logo"> <i
					class='bx bx-layer nav_logo-icon'></i> <span class="nav_logo-name">CIBERTEC</span>
				</a>
				<div class="nav_list">
					<a href="Menu.jsp" class="nav_link"> <i class='bx bx-home nav_icon'></i>
						<span class="nav_name">Inicio</span>
					</a> <a href="#" class="nav_link active"> <i
						class='bx bx-book-open nav_icon'></i> <span class="nav_name">Ver
							mis notas</span>
					</a> <a href="#" class="nav_link"> <i class='bx bx-user nav_icon'></i>
						<span class="nav_name">Cerrar Sesi�n</span>
					</a>
				</div>
			</div>
		</nav>
	</div>

	<div class="bloque">
		<div class="filtrotop">
			<div class="modalidad">
				<label style="margin-right: 5px">Modalidad de Estudio</label>
				<div class="select-dropdown">
					<select>
						<option value="Option 1">SP_SEMI PRESENCIAL</option>
						<option value="Option 2">2nd Option</option>
						<option value="Option 3">Option Number 3</option>
					</select>
				</div>
			</div>
			<div class="cicloacademico">
				<label style="margin-right: 5px">Ciclo Academico</label>
				<div class="select-dropdown">
					<select>
						<option value="Option 1">202381</option>
						<option value="Option 2">2nd Option</option>
						<option value="Option 3">Option Number 3</option>
					</select>
				</div>
			</div>
		</div>
		<hr>
		<div>
			<h2 class="titulo">Preingreso de Notas</h2>
			<p>Permite el preingreso de las notas de los alumnos</p>
		</div>
		<hr
			style="width: 700px; margin-left: 28px; border-top: 3px dashed #4723d9">
		<div class="filtros">
			<div class="profesor">
				<label style="margin-right: 67px">Profesor</label>
				<div class="select-dropdown">
					<select  class="filtrosbot">
						<option value="Option 1">VELIZ COLQUI ROEL SOZIMO</option>
						<option value="Option 2">2nd Option</option>
						<option value="Option 3">Option Number 3</option>
					</select>
				</div>
			</div>
			<div class="asignatura">
				<label style="margin-right: 40px">Asignatura</label>
				<div class="select-dropdown">
					<select class="filtrosbot">
						<option value="Option 1">1981 - LENGUAJE DE PROGRAMACION 1</option>
						<option value="Option 2">2nd Option</option>
						<option value="Option 3">Option Number 3</option>
					</select>
				</div>
			</div>
			<div class="filtrosg">
			<div class="seccion">
				<label style="margin-right: 68px">Secci�n</label>
				<div class="select-dropdown">
					<select class="filtrosbot">
						<option value="Option 1">SELECCIONE SECCION</option>
						<option value="Option 2">2nd Option</option>
						<option value="Option 3">Option Number 3</option>
					</select>
				</div>
			</div>
			<div class="seccion">
				<label style="margin-left: 30px;margin-right: 49px">Grupo</label>
				<div class="select-dropdown">
					<select class="filtrosbot">
						<option value="Option 1">First Option</option>
						<option value="Option 2">2nd Option</option>
						<option value="Option 3">Option Number 3</option>
					</select>
				</div>
			</div>
			</div>
			
			<div class="filtrosg">
			<div class="seccion">
				<label style="margin-right: 28px">Tipo Prueba</label>
				<div class="select-dropdown">
					<select class="filtrosbot">
						<option value="Option 1">First Option</option>
						<option value="Option 2">2nd Option</option>
						<option value="Option 3">Option Number 3</option>
					</select>
				</div>
			</div>
			<div class="seccion">
				<label style="margin-right: 15px;margin-left: 30px">N� Prueba</label>
				<div class="select-dropdown">
					<select class="filtrosbot">
						<option value="Option 1">First Option</option>
						<option value="Option 2">2nd Option</option>
						<option value="Option 3">Option Number 3</option>
					</select>
				</div>
			</div>
			</div>
		</div>
		<!-- --------- -->
		<div class="tablanotas">
					<div>
						<div class="col-md-3" style="margin-top: 20px">
							<button type="submit"  class="btn btn-primary" id="validateBtnw1" >FILTRAR</button><br>&nbsp;<br>
						</div>
					
					</div>
					<div class="row" > 
						<div class="col-md-12">
								<div class="content" >
						
									<table id="mitabla" class="table table-striped table-bordered" >
										<thead>
											<tr>
												<th>campo1</th>
												<th>campo1</th>
												<th>campo1</th>
												<th>campo1</th>
												<th>campo1</th>
												<th>campo1</th>
												<th>Actualiza </th>
												<th>Elimina </th>
											</tr>
										</thead>
										<tbody>
												     
<%-- 												<c:forEach items="${listanotas}" var="x"> --%>
<!-- 													<tr> -->
<%-- 														<td>${x.id_producto}</td> --%>
<%-- 														<td>${x.descripcion}</td> --%>
<%-- 														<td>${x.precio_venta}</td> --%>
<%-- 														<td>${x.stock_actual}</td> --%>
<%-- 														<td>${x.fecha_venc}</td> --%>
<%-- 														<td>${x.nom_categoria}</td> --%>
<!-- 														<td> -->
															
<!-- 														 <a href="XXXXXXXXXXXXXXXXXX" ><img src='images/edit.gif' width='auto' height='auto' /></a>  -->
															
<!-- 														</td> -->
<!-- 														<td> -->
<!-- 															<button type='button' onclick="XXXXXXXXXXXXXXXX"> -->
<!-- 																<img src='images/delete.gif' width='auto' height='auto' /> -->
<!-- 															</button> -->
<!-- 														</td> -->
<!-- 													</tr> -->
<%-- 												</c:forEach> --%>
										</tbody>
										</table>	
									
								</div>	
						</div>
					</div>
					</div>
		<!-- --------- -->
	</div>


</body>
</html>