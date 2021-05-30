<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <link rel="stylesheet" href="css/style-index.css"/>
                <title>Instituto tecnológico Edix</title>
            </head>
            <body>

               <header>
                   <div class="logo">
                       <img src="img/edix-formacion.png"></img>
                       <p><xsl:value-of select="ite/@nombre"/></p>
                    </div>
                   
                   <div class="menu">
                       <ul>
                           <li><a href="#">Equipo</a></li>
                           <li><a href="#">Cursos</a></li>
                           <li><a href="#">Contacto</a></li>
                       </ul>
                   </div>
               </header>

               <div class="contenido">
                   
                   <div class="tabla">
                        <div class="nombre">Profesores</div>
                        <table class="equipo">
                            <tr>
                                <th>Nombre</th>
                                <th>Id</th>
                            </tr>
                            <xsl:for-each select="ite/profesores/profesor">
                            <tr>
                                <td><xsl:value-of select="nombre"/></td>
                                <td><xsl:value-of select="id"/></td>
                            </tr>
                            </xsl:for-each>
                        </table>

                        <div class="director">Director: <xsl:value-of select="ite/director/nombre"/></div>
                        <div class="despacho">Despacho: <xsl:value-of select="ite/director/despacho"/></div>
                        <div class="jefe-estudios">Jefe de estudios: <xsl:value-of select="ite/jefe_estudios/nombre"/></div>
                        <div class="despacho">Despacho: <xsl:value-of select="ite/jefe_estudios/despacho"/></div>
                   </div>
                   <div class="tabla">
                        <div class="nombre">Cursos</div>
                        <table class="cursos">
                            <tr>
                                <th>Id</th>
                                <th>Nombre</th>
                                <th>Grado</th>
                                <th>Año decreto</th>
                            </tr>

                            <xsl:for-each select="ite/ciclos/ciclo">
                        
                            <tr>
                                <td><xsl:value-of select="@id"/></td>
                                <td><xsl:value-of select="nombre"/></td>
                                <td><xsl:value-of select="grado"/></td>
                                <td><xsl:value-of select="decretoTitulo/@año"/></td>
                            </tr>
                            
                            </xsl:for-each>

                        </table>
                   </div>
               </div>

               <footer>
                    <div class="contacto">
                        <div class="texto-contacto">
                            <p class="ayuda">¿Necesitas ayuda?</p>
                            <p class="telefono"><xsl:value-of select="ite/telefono"/></p>
                            <p class="texto-contacto">Te ayudamos a elegir tu camino. Habla con uno de nuestros asesores o contáctanos en nuestro </p>
                            <div class="form-content"><div class="formulario"><a href="/formulario.html">formulario de contacto</a></div></div>

                        </div>
                    </div>

                    <div class="logos-footer">
                        <div class="social">
                            <a href="https://www.facebook.com/EdixEducacionDigital/" target="blanck"><img src="img/iconfinder_facebook_287739.png" alt="" id="facebook"/></a>
                            <a href="https://www.instagram.com/edixeducacion/" target="blanck"><img src="img/instagram.png" alt=""/></a>
                            <a href="https://twitter.com/EdixEducacion" target="blanck"><img src="img/twitter%20(2).png" alt=""/></a>
                            <a href="https://www.linkedin.com/school/edix-educacion/" target="blanck"><img src="img/iconfinder_Rounded_Linkedin2_svg_5282542.png" alt=""/></a>
                            <a href="https://www.youtube.com/EdixEducacion" target="blanck"><img src="img/youtube.png" alt=""/></a>
                            
                            
                            
                            
                        </div>

                        <div class="organizaciones">
                            <img src="img/lgo_unir-1280x720.jpg" alt=""/>
                            <img src="img/proeduca.png" alt=""/>
                            <img src="img/Comunidad-de-Madrid-negro.png" alt=""/>
                            <img src="img/gobierno.jpg" alt=""/>
                        </div>
                    </div>
                    
                    <div class="copyright">
                        <p>Copyright © 2021 Edix</p>
                        <p>Privacidad, cookies y condiciones legales</p>
                        <p>|</p>
                        <p>Navegación</p>
                    </div>
                    
               </footer>

            </body>


        </html>

    </xsl:template>

</xsl:stylesheet>