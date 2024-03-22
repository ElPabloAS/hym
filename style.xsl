<?xml version="1.0" encoding="utf-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html" encoding="utf-8" doctype-public="-//W3C//DTD XHTML 1.0 Transitional//EN" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"/>
<xsl:template match="/">



<html lang="en">

<head>
    <title>HM</title>
    <!-- Required meta tags -->
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>

    <!-- Bootstrap CSS v5.2.1 -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous"/>
    <link rel="stylesheet" href="style.css"/>
</head>

<body>
    <div class="container-flex shadow p-0 bg-grey">
        <nav class="navbar navbar-expand-md navbar-light bg-dark">
            <div class="container">
                <a class="navbar-brand" href="#">
                    <img src="img/HM-Logo.svg.png" alt="" width="80"/>
                </a>
                <button class="navbar-toggler d-lg-none" type="button" data-bs-toggle="collapse"
                    data-bs-target="#collapsibleNavId" aria-controls="collapsibleNavId" aria-expanded="false"
                    aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="collapsibleNavId">
                    <ul class="navbar-nav mx-auto mt-2 mt-lg-0 bg-red rounded-2">
                        <li class="nav-item">
                            <button class="nav-link btn text-white mx-1 fs-4" href="#" onclick="document.getElementById('Camisas').style = 'display:flex;';document.getElementById('Pantalones').style = 'display:none;';document.getElementById('Zapatos').style = 'display:none;';">Camisas</button>
                        </li>
                        <li class="nav-item">
                            <button class="nav-link btn  text-white mx-1 fs-4" href="#" onclick="document.getElementById('Camisas').style = 'display:none;';document.getElementById('Pantalones').style = 'display:flxz;';document.getElementById('Zapatos').style = 'display:none;';">Pantalones</button>
                        </li>
                        <li class="nav-item">
                            <button class="nav-link btn text-white mx-1 fs-4" href="#" onclick="document.getElementById('Camisas').style = 'display:none;';document.getElementById('Pantalones').style = 'display:none;';document.getElementById('Zapatos').style = 'display:felx;';">Zapatos</button>
                        </li>
                        <li class="nav-item">
                            <button class="nav-link btn text-white mx-1 fs-4" href="#" onclick="document.getElementById('Camisas').style = 'display:flex;';document.getElementById('Pantalones').style = 'display:flex;';document.getElementById('Zapatos').style = 'display:felx;';">Todo los productos</button>
                        </li>
                    </ul>
                    <form class="d-flex my-2 my-lg-0">
                <input
                    class="form-control me-sm-2"
                    type="text"
                    placeholder="Search"
                />
                <button
                    class="btn btn-outline-danger my-2 my-sm-0"
                    type="submit"
                >
                    Search
                </button>
            </form>
                </div>
            </div>
        </nav>
         <xsl:for-each select="ropa/prenda">
         <div class="display-4 ms-5"><strong><xsl:value-of select="@nombre"/></strong></div>
        <div class="row mt-4 justify-content-center" id="{@nombre}">
            <xsl:for-each select="articulo">
            <div class="col-sm-6 col-md-4 col-xl-3 mb-4 ps-5 pe-5">
                <div class="card h-100">
                    <img class="card-img-top" src="{foto}" alt="Title"/> 
                    <div class="card-body">
                        <h4 class="card-title"><xsl:value-of select="nombre"/></h4>
                        <p class="card-text"><xsl:value-of select="precio"/></p>
                    </div>
                </div>
            </div>
            </xsl:for-each>
        </div>
        </xsl:for-each>
            
        <h2 class="bg-dark text-red text-center p-3">HM Pablo Alvaro </h2>
    </div>
    <!-- Bootstrap JavaScript Libraries -->
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"
        integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous">
        </script>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.min.js"
        integrity="sha384-7VPbUDkoPSGFnVtYi0QogXtr74QeVeeIs99Qfg5YCF+TidwNdjvaKZX19NZ/e6oz" crossorigin="anonymous">
        </script>
</body>
<footer>
    
</footer>
</html>

</xsl:template>
</xsl:stylesheet>