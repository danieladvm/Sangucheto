<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html lang="en">
	<head>
	<title>Arma tu sangucheto</title>
			<%@include file="/recursos/includes/recursos.html" %>
	</head>
	<body>

		<%@include file="/recursos/includes/navbar.html" %>

    <div class="container">
      <div class="starter-template">
        
        <h1>Arma tu sangucheto</h1>
        
        <div class="row">
          <div class="col-md-4">
            <table class="table table-striped">
                <thead>
                  <tr>
                    <th>Ingredientes</th>
                  </tr>
                </thead>
                <tbody>
                  <c:forEach var="ingrediente" items="${ingredientesSangucheto}">				
										<tr><td>${ingrediente.nombre}</td></tr>
									</c:forEach>
                </tbody>
              </table>
          </div>

          <div class="col-md-4">
            <table class="table table-striped">
                <thead>
                  <tr>
                    <th>Condimentos</th>
                  </tr>
                </thead>
                <tbody>
                  <c:forEach var="condimento" items="${condimentosSangucheto}">				
										<tr><td>${condimento.nombre}</td></tr>
									</c:forEach>
                </tbody>
              </table>
          </div>

          <div class="col-md-4">
            <div class="jumbotron">
              <div class="container">
                <h3>Precio</h3>
                <p>$${precio}</p>
                <p><a class="btn btn-primary" href="#" role="button">Listo! &raquo;</a></p>
              </div>
            </div>
          </div>
        </div>




        <div class="row">
          <div class="col-md-4">
            <ul class="list-group">
              <li class="list-group-item active">Ingredientes</li>
            	<c:forEach var="ingrediente" items="${ingredientesSangucheto}">				
								<li class="list-group-item">${ingrediente.nombre}</li>
							</c:forEach>
            </ul>
          </div>

          <div class="col-md-4">
            <ul class="list-group">
              <li class="list-group-item active">Condimentos</li>
            	<c:forEach var="condimento" items="${condimentosSangucheto}">				
								<li class="list-group-item">${condimento.nombre}</li>
							</c:forEach>
            </ul>
          </div>

          <div class="col-md-4">
            <div class="jumbotron">
              <div class="container">
                <h3>Precio</h3>
                <p>$${precio}</p>
                <p><a class="btn btn-primary" href="#" role="button">Listo! &raquo;</a></p>
              </div>
            </div>
          </div>
        </div>

        <hr>

        <div class="row">
          <div class="col-md-8">
          	<form:form class="form-horizontal" action="agregarIngredienteASangucheto" commandName="ingredienteAgregar" role="form" method="post">
          		<div class="form-group">
          			<label for="ingrediente" class="control-label col-md-3">Agregar ingrediente</label>
                <div class="col-md-6">
									<form:select class="form-control" id="ingrediente" path="nombre">
										<c:forEach var="ingrediente" items="${ingredientesStock}">
											<form:option value="${ingrediente.nombre}" > ${ingrediente.nombre} </form:option> 
										</c:forEach>
									</form:select>
								</div>
								<div class="col-md-2">
									<input type="submit" class="btn btn-primary" value="Agregar al Sangucheto"/>
								</div>
							</div>
						</form:form>
						
						<form:form class="form-horizontal" action="agregarCondimentoASangucheto" commandName="condimentoAgregar" role="form" method="post">
							<div class="form-group">
          			<label for="condimento" class="control-label col-md-3">Agregar condimento</label>
                <div class="col-md-6">
									<form:select class="form-control" id="condimento" path="nombre">
										<c:forEach var="condimento" items="${condimentosStock}">				
											<form:option value="${condimento.nombre}" > ${condimento.nombre} </form:option> 
										</c:forEach>
									</form:select>
								</div>
								<div class="col-md-2">
									<input type="submit" class="btn btn-primary" value="Agregar al Sangucheto"/>
								</div>
              </div>
						</form:form>
          </div> 
        </div>

      </div>
    </div><!-- /.container -->

    <script type="text/javascript">
      $(function() {
        $("#navbar ul li:contains(Sangucheto)").addClass("active");
      });
    </script>

	</body>
</html>