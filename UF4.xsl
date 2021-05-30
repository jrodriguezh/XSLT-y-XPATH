<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
    <html>
        <head>
            <title>Instituto Tecnológico Edix</title>
            <link rel="stylesheet" href="css/UF4.css"/>
        </head>
        <body>
            <div id="container">
                <header>
                    <h1>Instituto Tecnológico Edix</h1>
                    <img id="iconoEdix" src="Icon/EdixLogo.png" alt="EdixLogo" title="EdixLogo"/>
                </header>

                <nav class="menu">
                    <ul>
                        <li>
                            <a href="UF4.xml">Inicio</a>
                        </li>
                        <li>
                            <a href="UF4.xml">Contacto</a>
                        </li>
                        <li>
                            <a href="UF4.xml">Localización</a>
                        </li>
                        <li>
                            <a href="UF4.xml">¿Quienes somos?</a>
                        </li>
                    </ul>
                </nav>
                <section>
                    <div id="formaciones">
                        <h2>Formación Académica</h2>
                        <xsl:for-each select="ite/ciclos/ciclo">
                    <ul>
                        
                        <li>Ciclo: <xsl:value-of select="@id"/></li>
                        <li>Nombre del Grado: <xsl:value-of select="nombre"/></li>
                        <li>Tipo de grado: <xsl:value-of select="grado"/></li>
                        <li>Año del decreto : <xsl:value-of select="decretoTitulo/@año"/></li>
                    </ul>
                        </xsl:for-each>

                    </div>
                    <div class="formulario">

                    </div>
                </section>


                <aside>
                        <table>
                            <tr>
                                <th>ID Profesor</th>
                                <th>Nombre</th>
                            </tr>
                            <xsl:for-each select="ite/profesores/profesor">
                                <tr>
                                    <td><xsl:value-of select="id"></xsl:value-of></td>
                                    <td><xsl:value-of select="nombre"></xsl:value-of></td>
                                </tr>
                            </xsl:for-each>
                        </table>

                        <table>
                            <tr>
                                <th>Cargo</th>
                                <th>Nombre</th>
                                <th>Despacho</th>
                            </tr>
                            <tr>
                                <td>Director</td>
                                <td><xsl:value-of select="ite/director/nombre"></xsl:value-of></td>
                                <td><xsl:value-of select="ite/director/despacho"></xsl:value-of></td>
                            </tr>
                            <tr>
                                <td>Jefe de estudios:</td>
                                <td><xsl:value-of select="ite/jefe_estudios/nombre"></xsl:value-of></td>
                                <td><xsl:value-of select="ite/director/despacho"></xsl:value-of></td>
                                </tr>
                        </table>
                </aside>
            

                <footer>
                    <div class="containerfooter">
                        <div class= "column1">
                            <a href="https://www.grupoproeduca.com"><xsl:value-of select="ite/empresa"/></a>
                        </div>
                        <div class="column2">    
                            <a href="tel:+34 91 787 39 91"><xsl:value-of select="ite/telefono"/></a>
                        </div>
                    </div>
                </footer>

            </div>
        </body>
    </html>
    </xsl:template>
</xsl:stylesheet>