<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="menu.aspx.cs" Inherits="Examen3AndresSevilla.menu" %>

<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width,initial-scale=1">

    <link rel="stylesheet" type="text/css" href ="css/desplegable.css" media="screen" />
    
    <title>Menú desplegable con Css3</title>
    
  <link href="estilos.css" rel="stylesheet" type="text/css" media="all">
</head>

<body>
<div id="header">
  <a id="backTutorial">Bienvenido Profe!!</a>
    <!-- a id="backDemos" href="#">Ver otros demos</a -->
</div>
<div id="contenedor">
  <h1>BIBLIOTECA</h1>
    <ul id="menu">
    
        <li><a href="#">            </a></li>
      <li> </li>
        <li><a href="#">            </a></li>
        <li><a href="#">            </a></li>
  
        <li><a href="#">            </a></li>
        <li>
            <a href="#"></a>
            <a href="#"></a>
          <a href="#">LIBROS</a>
          <ul class="children">
              <li><a href="actualizarlibros.aspx">AGREGAR</a></li>
            
            
        
            </ul>
            <li>
<a href="#"></a>
                <a href="#"></a>
          <a href="#">AUTORES</a>
          <ul class="children">
              <li><a href="actualizarlibros.aspx">AGREGAR</a></li>
        
              
        
            </ul>
        </li>
      <li><a href="#">            </a></li>
                  

        <li><a href="bitacora.aspx">BITACORA LIBROS </a></li>
    </ul>
</div>
</body>
</html>

