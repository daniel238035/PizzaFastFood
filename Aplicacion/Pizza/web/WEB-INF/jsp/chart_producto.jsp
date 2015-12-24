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

        <section class="seccion1 col-xs-12" id="xciudad">
          <div class="container">
            <h2>Monitoreo de Ventas por Productos</h2>
            <p>Obtendrás información detallada de cada sucursal de acuerdo a la ciudad que pertecence</p>
            <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
              <div class="panel panel-default">
                <div class="panel-heading" role="tab" id="headingOne">
                  <h4 class="panel-title">
                    <a role="button" data-toggle="collapse" data-parent="#accordion" href="#more-alemana" aria-expanded="true" aria-controls="collapseOne">
                      PIZZA ALEMANA
                    </a>
                  </h4>
                </div>
                <div id="more-alemana" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
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
              </div>

              <div class="panel panel-default">
                <div class="panel-heading" role="tab" id="headingThree">
                  <h4 class="panel-title">
                    <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#more-americana" aria-expanded="false" aria-controls="collapseThree">
                      PIZZA AMERICANA
                    </a>
                  </h4>
                </div>
                <div id="more-americana" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree">
                  <div class="cuerpo-panel panel-body">
                    <ul class="ul-cel nav nav-tabs row">
                      <li class="active col-xs-4"><a class="botones-panel text-center" data-toggle="tab" href="#home-americana"><h4 class="celu">MES</h4> <h4 class="lap">MENSUAL</h4></a></li>
                      <li class="col-xs-4"><a class="botones-panel text-center" data-toggle="tab" href="#menu1-americana"> <h4 class="celu">TRIMES</h4> <h4 class="lap">TRIMESTRAL</h4></a></li>
                      <li class="col-xs-4"><a class="botones-panel text-center" data-toggle="tab" href="#menu2-americana"><h4 class="celu">ANUAL</h4> <h4 class="lap">ANUAL</h4></a></li>
                    </ul>


                    <div class="tab-content">
                      <div id="home-americana" class="opciones tab-pane fade in active">
                        <h3>MENSUAL</h3>
                        <section class="row">
                          <div class="col-xs-12 col-md-6">
                            <div id="piechartMes2">

                            </div>
                          </div>
                          <div class="col-xs-12 col-md-6">
                            <div id="tableMes2">

                            </div>
                          </div>
                        </section>
                      </div>
                      <div id="menu1-americana" class="opciones tab-pane fade">
                        <h3>TRIMESTRAL</h3>
                        <section class="row">
                          <div class="col-xs-12 col-md-6">
                            <div id="piechartTri2">

                            </div>
                          </div>
                          <div class="col-xs-12 col-md-6">
                            <div id="tableTri2">

                            </div>
                          </div>
                        </section>
                      </div>
                      <div id="menu2-americana" class="opciones tab-pane fade">
                        <h3>ANUAL</h3>
                        <section class="row">
                          <div class="col-xs-12 col-md-6">
                            <div id="piechartAnu2">

                            </div>
                          </div>
                          <div class="col-xs-12 col-md-6">
                            <div id="tableAnu2">

                            </div>
                          </div>
                        </section>
                      </div>
                    </div>
                  </div>

                </div>
              </div>
              <div class="panel panel-default">
                <div class="panel-heading" role="tab" id="headingThree">
                  <h4 class="panel-title">
                    <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#more--continental" aria-expanded="false" aria-controls="collapseThree">
                      PIZZA CONTINENTAL
                    </a>
                  </h4>
                </div>
                <div id="more--continental" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree">
                  <div class="cuerpo-panel panel-body">
                    <ul class="ul-cel nav nav-tabs row">
                      <li class="active col-xs-4"><a class="botones-panel text-center" data-toggle="tab" href="#home-continental"><h4 class="celu">MES</h4> <h4 class="lap">MENSUAL</h4></a></li>
                      <li class="col-xs-4"><a class="botones-panel text-center" data-toggle="tab" href="#menu1-continental"> <h4 class="celu">TRIMES</h4> <h4 class="lap">TRIMESTRAL</h4></a></li>
                      <li class="col-xs-4"><a class="botones-panel text-center" data-toggle="tab" href="#menu2-continental"><h4 class="celu">ANUAL</h4> <h4 class="lap">ANUAL</h4></a></li>
                    </ul>


                    <div class="tab-content">
                      <div id="home-continental" class="opciones tab-pane fade in active">
                        <h3>MENSUAL</h3>
                        <section class="row">
                          <div class="col-xs-12 col-md-6">
                            <div id="piechartMes3">

                            </div>
                          </div>
                          <div class="col-xs-12 col-md-6">
                            <div id="tableMes3">

                            </div>
                          </div>
                        </section>
                      </div>
                      <div id="menu1-continental" class="opciones tab-pane fade">
                        <h3>TRIMESTRAL</h3>
                        <section class="row">
                          <div class="col-xs-12 col-md-6">
                            <div id="piechartTri3">

                            </div>
                          </div>
                          <div class="col-xs-12 col-md-6">
                            <div id="tableTri3">

                            </div>
                          </div>
                        </section>
                      </div>
                      <div id="menu2-continental" class="opciones tab-pane fade">
                        <h3>ANUAL</h3>
                        <section class="row">
                          <div class="col-xs-12 col-md-6">
                            <div id="piechartAnu3">

                            </div>
                          </div>
                          <div class="col-xs-12 col-md-6">
                            <div id="tableAnu3">

                            </div>
                          </div>
                        </section>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <div class="panel panel-default">
                <div class="panel-heading" role="tab" id="headingThree">
                  <h4 class="panel-title">
                    <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#more-hawaiana" aria-expanded="false" aria-controls="collapseThree">
                      PIZZA HAWAIANA
                    </a>
                  </h4>
                </div>
                <div id="more-hawaiana" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree">
                  <div class="cuerpo-panel panel-body">
                    <ul class="ul-cel nav nav-tabs row">
                      <li class="active col-xs-4"><a class="botones-panel text-center" data-toggle="tab" href="#home-hawaiana"><h4 class="celu">MES</h4> <h4 class="lap">MENSUAL</h4></a></li>
                      <li class="col-xs-4"><a class="botones-panel text-center" data-toggle="tab" href="#menu1-hawaiana"> <h4 class="celu">TRIMES</h4> <h4 class="lap">TRIMESTRAL</h4></a></li>
                      <li class="col-xs-4"><a class="botones-panel text-center" data-toggle="tab" href="#menu2-hawaiana"><h4 class="celu">ANUAL</h4> <h4 class="lap">ANUAL</h4></a></li>
                    </ul>


                    <div class="tab-content">
                      <div id="home-hawaiana" class="opciones tab-pane fade in active">
                        <h3>MENSUAL</h3>
                        <section class="row">
                          <div class="col-xs-12 col-md-6">
                            <div id="piechartMes4">

                            </div>
                          </div>
                          <div class="col-xs-12 col-md-6">
                            <div id="tableMes4">

                            </div>
                          </div>
                        </section>
                      </div>
                      <div id="menu1-hawaiana" class="opciones tab-pane fade">
                        <h3>TRIMESTRAL</h3>
                        <section class="row">
                          <div class="col-xs-12 col-md-6">
                            <div id="piechartTri4">

                            </div>
                          </div>
                          <div class="col-xs-12 col-md-6">
                            <div id="tableTri4">

                            </div>
                          </div>
                        </section>
                      </div>
                      <div id="menu2-hawaiana" class="opciones tab-pane fade">
                        <h3>ANUAL</h3>
                        <section class="row">
                          <div class="col-xs-12 col-md-6">
                            <div id="piechartAnu4">

                            </div>
                          </div>
                          <div class="col-xs-12 col-md-6">
                            <div id="tableAnu4">

                            </div>
                          </div>
                        </section>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <div class="panel panel-default">
                <div class="panel-heading" role="tab" id="headingThree">
                  <h4 class="panel-title">
                    <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#more-meat" aria-expanded="false" aria-controls="collapseThree">
                      PIZZA MEAT LOVERS
                    </a>
                  </h4>
                </div>
                <div id="more-meat" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree">
                  <div class="cuerpo-panel panel-body">
                    <ul class="ul-cel nav nav-tabs row">
                      <li class="active col-xs-4"><a class="botones-panel text-center" data-toggle="tab" href="#home-meat"><h4 class="celu">MES</h4> <h4 class="lap">MENSUAL</h4></a></li>
                      <li class="col-xs-4"><a class="botones-panel text-center" data-toggle="tab" href="#menu1-meat"> <h4 class="celu">TRIMES</h4> <h4 class="lap">TRIMESTRAL</h4></a></li>
                      <li class="col-xs-4"><a class="botones-panel text-center" data-toggle="tab" href="#menu2-meat"><h4 class="celu">ANUAL</h4> <h4 class="lap">ANUAL</h4></a></li>
                    </ul>


                    <div class="tab-content">
                      <div id="home-meat" class="opciones tab-pane fade in active">
                        <h3>MENSUAL</h3>
                        <section class="row">
                          <div class="col-xs-12 col-md-6">
                            <div id="piechartMes5">

                            </div>
                          </div>
                          <div class="col-xs-12 col-md-6">
                            <div id="tableMes5">

                            </div>
                          </div>
                        </section>
                      </div>
                      <div id="menu1-meat" class="opciones tab-pane fade">
                        <h3>TRIMESTRAL</h3>
                        <section class="row">
                          <div class="col-xs-12 col-md-6">
                            <div id="piechartTri5">

                            </div>
                          </div>
                          <div class="col-xs-12 col-md-6">
                            <div id="tableTri5">

                            </div>
                          </div>
                        </section>
                      </div>
                      <div id="menu2-meat" class="opciones tab-pane fade">
                        <h3>ANUAL</h3>
                        <section class="row">
                          <div class="col-xs-12 col-md-6">
                            <div id="piechartAnu5">

                            </div>
                          </div>
                          <div class="col-xs-12 col-md-6">
                            <div id="tableAnu5">

                            </div>
                          </div>
                        </section>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <div class="panel panel-default">
                <div class="panel-heading" role="tab" id="headingThree">
                  <h4 class="panel-title">
                    <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#more-pepperoni" aria-expanded="false" aria-controls="collapseThree">
                      PIZZA PEPPERONI
                    </a>
                  </h4>
                </div>
                <div id="more-pepperoni" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree">
                  <div class="cuerpo-panel panel-body">
                    <ul class="ul-cel nav nav-tabs row">
                      <li class="active col-xs-4"><a class="botones-panel text-center" data-toggle="tab" href="#home-pepperoni"><h4 class="celu">MES</h4> <h4 class="lap">MENSUAL</h4></a></li>
                      <li class="col-xs-4"><a class="botones-panel text-center" data-toggle="tab" href="#menu1-pepperoni"> <h4 class="celu">TRIMES</h4> <h4 class="lap">TRIMESTRAL</h4></a></li>
                      <li class="col-xs-4"><a class="botones-panel text-center" data-toggle="tab" href="#menu2-pepperoni"><h4 class="celu">ANUAL</h4> <h4 class="lap">ANUAL</h4></a></li>
                    </ul>


                    <div class="tab-content">
                      <div id="home-pepperoni" class="opciones tab-pane fade in active">
                        <h3>MENSUAL</h3>
                        <section class="row">
                          <div class="col-xs-12 col-md-6">
                            <div id="piechartMes6">

                            </div>
                          </div>
                          <div class="col-xs-12 col-md-6">
                            <div id="tableMes6">

                            </div>
                          </div>
                        </section>
                      </div>
                      <div id="menu1-pepperoni" class="opciones tab-pane fade">
                        <h3>TRIMESTRAL</h3>
                        <section class="row">
                          <div class="col-xs-12 col-md-6">
                            <div id="piechartTri6">

                            </div>
                          </div>
                          <div class="col-xs-12 col-md-6">
                            <div id="tableTri6">

                            </div>
                          </div>
                        </section>
                      </div>
                      <div id="menu2-pepperoni" class="opciones tab-pane fade">
                        <h3>ANUAL</h3>
                        <section class="row">
                          <div class="col-xs-12 col-md-6">
                            <div id="piechartAnu6">

                            </div>
                          </div>
                          <div class="col-xs-12 col-md-6">
                            <div id="tableAnu6">

                            </div>
                          </div>
                        </section>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <div class="panel panel-default">
                <div class="panel-heading" role="tab" id="headingThree">
                  <h4 class="panel-title">
                    <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#more-super" aria-expanded="false" aria-controls="collapseThree">
                      PIZZA SUPER SUPREMA
                    </a>
                  </h4>
                </div>
                <div id="more-super" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree">
                  <div class="cuerpo-panel panel-body">
                    <ul class="ul-cel nav nav-tabs row">
                      <li class="active col-xs-4"><a class="botones-panel text-center" data-toggle="tab" href="#home-super"><h4 class="celu">MES</h4> <h4 class="lap">MENSUAL</h4></a></li>
                      <li class="col-xs-4"><a class="botones-panel text-center" data-toggle="tab" href="#menu1-super"> <h4 class="celu">TRIMES</h4> <h4 class="lap">TRIMESTRAL</h4></a></li>
                      <li class="col-xs-4"><a class="botones-panel text-center" data-toggle="tab" href="#menu2-super"><h4 class="celu">ANUAL</h4> <h4 class="lap">ANUAL</h4></a></li>
                    </ul>


                    <div class="tab-content">
                      <div id="home-super" class="opciones tab-pane fade in active">
                        <h3>MENSUAL</h3>
                        <section class="row">
                          <div class="col-xs-12 col-md-6">
                            <div id="piechartMes7">

                            </div>
                          </div>
                          <div class="col-xs-12 col-md-6">
                            <div id="tableMes7">

                            </div>
                          </div>
                        </section>
                      </div>
                      <div id="menu1-super" class="opciones tab-pane fade">
                        <h3>TRIMESTRAL</h3>
                        <section class="row">
                          <div class="col-xs-12 col-md-6">
                            <div id="piechartTri7">

                            </div>
                          </div>
                          <div class="col-xs-12 col-md-6">
                            <div id="tableTri7">

                            </div>
                          </div>
                        </section>
                      </div>
                      <div id="menu2-super" class="opciones tab-pane fade">
                        <h3>ANUAL</h3>
                        <section class="row">
                          <div class="col-xs-12 col-md-6">
                            <div id="piechartAnu7">

                            </div>
                          </div>
                          <div class="col-xs-12 col-md-6">
                            <div id="tableAnu7">

                            </div>
                          </div>
                        </section>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <div class="panel panel-default">
                <div class="panel-heading" role="tab" id="headingThree">
                  <h4 class="panel-title">
                    <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#more-suprema" aria-expanded="false" aria-controls="collapseThree">
                      PIZZA SUPREMA
                    </a>
                  </h4>
                </div>
                <div id="more-suprema" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree">
                  <div class="cuerpo-panel panel-body">
                    <ul class="ul-cel nav nav-tabs row">
                      <li class="active col-xs-4"><a class="botones-panel text-center" data-toggle="tab" href="#home-suprema"><h4 class="celu">MES</h4> <h4 class="lap">MENSUAL</h4></a></li>
                      <li class="col-xs-4"><a class="botones-panel text-center" data-toggle="tab" href="#menu1-suprema"> <h4 class="celu">TRIMES</h4> <h4 class="lap">TRIMESTRAL</h4></a></li>
                      <li class="col-xs-4"><a class="botones-panel text-center" data-toggle="tab" href="#menu2-suprema"><h4 class="celu">ANUAL</h4> <h4 class="lap">ANUAL</h4></a></li>
                    </ul>


                    <div class="tab-content">
                      <div id="home-suprema" class="opciones tab-pane fade in active">
                        <h3>MENSUAL</h3>
                        <section class="row">
                          <div class="col-xs-12 col-md-6">
                            <div id="piechartMes8">

                            </div>
                          </div>
                          <div class="col-xs-12 col-md-6">
                            <div id="tableMes8">

                            </div>
                          </div>
                        </section>
                      </div>
                      <div id="menu1-suprema" class="opciones tab-pane fade">
                        <h3>TRIMESTRAL</h3>
                        <section class="row">
                          <div class="col-xs-12 col-md-6">
                            <div id="piechartTri8">

                            </div>
                          </div>
                          <div class="col-xs-12 col-md-6">
                            <div id="tableTri8">

                            </div>
                          </div>
                        </section>
                      </div>
                      <div id="menu2-suprema" class="opciones tab-pane fade">
                        <h3>ANUAL</h3>
                        <section class="row">
                          <div class="col-xs-12 col-md-6">
                            <div id="piechartAnu8">

                            </div>
                          </div>
                          <div class="col-xs-12 col-md-6">
                            <div id="tableAnu8">

                            </div>
                          </div>
                        </section>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <div class="panel panel-default">
                <div class="panel-heading" role="tab" id="headingTwo">
                  <h4 class="panel-title">
                    <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#more-vegetariana" aria-expanded="false" aria-controls="collapseTwo">
                      PIZZA VEGETARIANA
                    </a>
                  </h4>
                </div>
                <div id="more-vegetariana" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
                  <div class="cuerpo-panel panel-body">
                    <ul class="ul-cel nav nav-tabs row">
                      <li class="active col-xs-4"><a class="botones-panel text-center" data-toggle="tab" href="#home-vegetariana"><h4 class="celu">MES</h4> <h4 class="lap">MENSUAL</h4></a></li>
                      <li class="col-xs-4"><a class="botones-panel text-center" data-toggle="tab" href="#menu1-vegetariana"> <h4 class="celu">TRIMES</h4> <h4 class="lap">TRIMESTRAL</h4></a></li>
                      <li class="col-xs-4"><a class="botones-panel text-center" data-toggle="tab" href="#menu2-vegetariana"><h4 class="celu">ANUAL</h4> <h4 class="lap">ANUAL</h4></a></li>
                    </ul>


                    <div class="tab-content">
                      <div id="home-vegetariana" class="opciones tab-pane fade in active">
                        <h3>MENSUAL</h3>
                        <section class="row">
                          <div class="col-xs-12 col-md-6">
                            <div id="piechartMes9">

                            </div>
                          </div>
                          <div class="col-xs-12 col-md-6">
                            <div id="tableMes9">

                            </div>
                          </div>
                        </section>
                      </div>
                      <div id="menu1-vegetariana" class="opciones tab-pane fade">
                        <h3>TRIMESTRAL</h3>
                        <section class="row">
                          <div class="col-xs-12 col-md-6">
                            <div id="piechartTri9">

                            </div>
                          </div>
                          <div class="col-xs-12 col-md-6">
                            <div id="tableTri9">

                            </div>
                          </div>
                        </section>
                      </div>
                      <div id="menu2-vegetariana" class="opciones tab-pane fade">
                        <h3>ANUAL</h3>
                        <section class="row">
                          <div class="col-xs-12 col-md-6">
                            <div id="piechartAnu9">

                            </div>
                          </div>
                          <div class="col-xs-12 col-md-6">
                            <div id="tableAnu9">

                            </div>
                          </div>
                        </section>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </section>
      </section>

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

    <script type="text/javascript" src="https://www.google.com/jsapi"></script>
    <!-- JQUERY AND SCRIP bootstrap -->
     <script src="<c:url value="/src/js/jquery.js"/>"></script>    
    <script src="<c:url value="/src/js/bootstrap.min.js"/>"></script>
    <script type="text/javascript" src="https://www.google.com/jsapi"></script>    
    <script type="text/javascript">
        google.load("visualization", "1", {packages:["corechart"]});
        google.setOnLoadCallback(drawChartMain);
           
        function drawChartMain(){
            <c:set var="i" value="0"/>
            <c:set var="j" value="0"/>
            <c:set var="k" value="0"/>
            <c:forEach items="${resultadoMes}" var="resultadoM">
                console.log(${resultadoM});
                drawChartMes(${resultadoM}, ${i = i + 1});   
            </c:forEach>
            <c:forEach items="${resultadoTri}" var="resultadoT">                
                drawChartTri(${resultadoT}, ${j = j + 1});   
            </c:forEach>
            <c:forEach items="${resultadoAnu}" var="resultadoA">                
                drawChartAnu(${resultadoA}, ${k = k + 1});   
            </c:forEach>
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