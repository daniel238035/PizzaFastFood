<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html>
    <head>
        <meta charset="utf-8">
        <title>Monitoreo de Ventas</title>
        <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
        <link href='https://fonts.googleapis.com/css?family=Lato:400,400italic,700,700italic' rel='stylesheet' type='text/css'>
        <link rel="stylesheet" href="<c:url value="/src/fonts_fontello/style.css"/>">
        <link rel="stylesheet" href="<c:url value="/src/Css/bootstrap.css"/>">
        <link rel="stylesheet" href="<c:url value="/src/Css/css_monitoreo.css"/>">
        <link href="<c:url value="/src/Imagenes/logo-final.png"/>" rel='shortcut icon' type='image/png'>
    </head>
    <body>
        <section class="contenedor-total container-fluid">
      <header>
        <nav class="navegacion navbar navbar-inverse navbar-fixed-top ">
          <section class="navbar-hader">
              <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navegador1" aria-expanded="false">
                <span class="sr-only">Menu</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
              </button>
              <a class="navbar-brand" href="#">Fast Food</a>
          </section>

          <section class="collapse navbar-collapse" id="navegador1">
            <ul class="navegador-izq nav navbar-nav navbar-right">
              <li><a href="/Pizza/perfil_usuario">${usuario.nom} ${usuario.ap_pat} ${usuario.ap_mat}</a></li>
              <li><a href="#">Chiclayo</a></li>
              <li role="separator" class="divider"></li>
              <li><a href="/Pizza/index">Salir</a></li>
            </ul>
          </section>
        </nav>
      </header>
      <section class="fila row">
        <section class="titulo col-xs-12">
          <h3 class="text-center">MONITOREO DE LAS VENTAS </h3>
        </section>

        <section class="imagen col-xs-12">
          <figure class="imagen_principal">
              <img src="<c:url value="/src/Imagenes/portada_monitoreo.png"/>" class="img-responsive">
          </figure>
        </section>

        <section class="navegador2 col-xs-12 col-sm-12">
          <nav class="navegacion2_sub navbar navbar-inverse">
            <section class="navbar-hader">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navegador2" aria-expanded="false">
                  <span class="sr-only">Menu</span>
                  <span class="icon-bar"></span>
                  <span class="icon-bar"></span>
                  <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="#"></a>
            </section>

            <section class=" collapse navbar-collapse " id="navegador2">
              <ul class=" row navegador-acciones nav  nav-justified">
                <li class="col-sm-3 col-md-3"><a class="text-center" href="/Pizza/chart_ciudad">Por Cuidad</a></li>
                <li class="col-sm-3 col-md-3 "><a class="text-center" href="/Pizza/chart_producto">Por Producto</a></li>
                <li class="col-sm-3 col-md-3 "><a class="text-center" href="/Pizza/chart_ciudad_producto">Por Ciudad y Producto</a></li>
              </ul>
            </section>
          </nav>
        </section>

        <section class="seccion1 col-xs-12">
          <div class="container">
            <h2>Monitoreo por Ciudad Y Producto</h2>
            <form action="/Pizza/chart_ciudad_producto" method="post">
                <section class="form-group col-xs-12 col-md-6">
                  <label for="ciud"><span class="icon-ubicacion"></span>Ciudad</label>
                  <select class="opciones form-control input-lg" name="ciudad">
                    <option value="Chiclayo">Chiclayo</option>
                    <option value="Lima">Lima</option>
                    <option value="Trujillo">Trujillo</option>
                    <option value="Piura">Piura</option>
                    <option value="Tumbes">Tumbes</option>
                    <option value="Cajamarca">Cajamarca</option>
                    <option value="Arequipa">Arequipa</option>
                    <option value="Ica">Ica</option>
                    <option value="Cusco">Cusco</option>
                  </select>
                </section>
                <section class="form-group col-xs-12 col-md-6">
                  <label for="pizza"><span class="icon-cart"></span>Pizza</label>
                  <select class="opciones form-control input-lg" name="pizza">
                    <option value="Pizza Alemana">Alemana</option>
                    <option value="Pizza Americana">Americana</option>
                    <option value="Pizza Continental">Continental</option>
                    <option value="Pizza Hawaiana">Hawaiana</option>
                    <option value="Pizza Meat Lovers">Meat Lovers</option>
                    <option value="Pizza Pepperoni">Pepperoni</option>
                    <option value="Pizza Super_Suprema">Super_Suprema</option>
                    <option value="Pizza Suprema">Suprema</option>
                    <option value="Pizza Vegetariana">Vegetariana</option>
                  </select>
                </section>
                <input type="submit" class="boton-ing  col-xs-12 col-md-5 input-lg" name="ingresar" value="Graficar">
            </form>
            <section class="col-xs-12">
              <div id="more-chiclayo" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
                <div class="cuerpo-panel panel-body">
                  <ul class="ul-cel nav nav-tabs row">
                    <li class="active col-xs-4"><a class="botones-panel text-center" data-toggle="tab" href="#home"><h4 class="celu">MES</h4> <h4 class="lap">MENSUAL</h4></a></li>
                    <li class="col-xs-4"><a class="botones-panel text-center" data-toggle="tab" href="#menu1"> <h4 class="celu">TRIMES</h4> <h4 class="lap">TRIMESTRAL</h4></a></li>
                    <li class="col-xs-4"><a class="botones-panel text-center" data-toggle="tab" href="#menu2"><h4 class="celu">ANUAL</h4> <h4 class="lap">ANUAL</h4></a></li>
                  </ul>

                  <div class="tab-content">
                    <div id="home" class="opciones tab-pane fade in active">
                      <h3>MENSUAL</h3>
                      <section class="row">
                        <div class="col-xs-12 col-md-6" >
                          <div id="piechartMes1">

                          </div>
                        </div>
                        <div class="col-xs-12 col-md-6" >
                          <div id="tableMes1">

                          </div>
                        </div>
                      </section>
                    </div>
                    <div id="menu1" class="opciones tab-pane fade">
                      <h3>TRIMESTRAL</h3>
                      <section class="row">
                        <div class="col-xs-12 col-md-6">
                          <div id="piechartTri1">

                          </div>
                        </div>
                        <div class="col-xs-12 col-md-6">
                          <div id="tableTri1">

                          </div>
                        </div>
                      </section>
                    </div>
                    <div id="menu2" class="opciones tab-pane fade">
                      <h3>ANUAL</h3>
                      <section class="row">
                        <div class="col-xs-12 col-md-6">
                          <div id="piechartAnu1">

                          </div>
                        </div>
                        <div class="col-xs-12 col-md-6">
                          <div id="tableAnu1">

                          </div>
                        </div>
                      </section>
                    </div>
                  </div>
                </div>
              </div>
            </section>
          </div>
        </section>
        <section class="col-xs-12 pie">
          <footer class="container-fluid">
            <div class="container text-center">
              <span class="icon-facebook2"></span>
              <span class="icon-twitter2"></span>
              <h4 class="">Fast Food | CopyRight 2015 </h4>
              <span class="icon-youtube"></span>
              <span class="icon-github3"></span>
            </div>
          </footer>
        </section>

        <!-- JQUERY AND SCRIP bootstrap -->
        <script src="<c:url value="/src/js/jquery.js"/>"></script>  
        <script src="<c:url value="/src/js/bootstrap.min.js"/>"></script>
        <script type="text/javascript" src="https://www.google.com/jsapi"></script>    
        <script type="text/javascript">
            google.load("visualization", "1", {packages:["corechart"]});
            google.setOnLoadCallback(drawChartMain);
           
            function drawChartMain(){
                drawChartMes(${resultadoMes}, 1);                     
                drawChartTri(${resultadoTri}, 1);                
                drawChartAnu(${resultadoAnu}, 1);
            }        
        
        function drawChartMes() {        
        var result = arguments[0];        
        
        var dataMes = google.visualization.arrayToDataTable([
          ['Mes', 'Monto'],
          ['Enero',   result.enero],
          ['Febrero', result.febrero],
          ['Marzo',   result.marzo],
          ['Abril',   result.abril],
          ['Mayo',    result.mayo],
          ['Junio',   result.junio],
          ['Julio',   result.julio],
          ['Agosto',  result.agosto],
          ['Septiembre', result.septiembre],
          ['Octubre', result.octubre],
          ['Noviembre', result.noviembre],
          ['Diciembre', result.diciembre]
        ]);

        var options = {
            legend: {position: 'left'},
            pieHole: 0.4
        };
        
        var optionsT ={
            title : 'Pedidos Mensuales',
            vAxis: {title: 'Pedidos'},
            hAxis: {title: 'Meses'}
        };

        var chart = new google.visualization.PieChart(document.getElementById('piechartMes' + arguments[1]));
        var chartT = new google.visualization.ColumnChart(document.getElementById('tableMes' + arguments[1]));

        chart.draw(dataMes, options);
        chartT.draw(dataMes, optionsT);
      }
      
      function drawChartTri() {        
        var result = arguments[0];
        
        var dataTri = google.visualization.arrayToDataTable([
          ['Mes', 'Monto'],
          ['Q1', result.q1],
          ['Q2', result.q2],
          ['Q3', result.q3],
          ['Q4', result.q4]
        ]);

        var options = {
            legend: {position: 'bottom'},
            pieHole: 0.4
        };
        
        var optionsT = {
            title : 'Pedidos Mensuales',
            vAxis: {title: 'Pedidos'},
            hAxis: {title: 'Trimestres'}
        };

        var chart = new google.visualization.PieChart(document.getElementById('piechartTri' + arguments[1]));
        var chartT = new google.visualization.ColumnChart(document.getElementById('tableTri' + arguments[1]));

        chart.draw(dataTri, options);
        chartT.draw(dataTri, optionsT);
      }
      
      function drawChartAnu() {        
        var result = arguments[0];
        
        var dataAnu = google.visualization.arrayToDataTable([
          ['Mes', 'Monto'],
          ['2015', result.anio]
        ]);

        var options = {
            legend: {position: 'left'},
            pieHole: 0.4
        };
        
        var optionsT = {
            title : 'Pedidos Mensuales',
            vAxis: {title: 'Pedidos'},
            hAxis: {title: 'Año'}
        };

        var chart = new google.visualization.PieChart(document.getElementById('piechartAnu' + arguments[1]));
        var chartT = new google.visualization.ColumnChart(document.getElementById('tableAnu' + arguments[1]));

        chart.draw(dataAnu, options);
        chartT.draw(dataAnu, optionsT);
      }
      </script>
    </body>
</html>
