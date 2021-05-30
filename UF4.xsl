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
                <section>
                    <article id="article">
                        <h2>Formación Académica</h2>
                        <xsl:for-each select="ite/ciclos/ciclo">
                    <ul>
                        
                        <li>Ciclo: <xsl:value-of select="@id"/></li>
                        <li>Nombre del Grado: <xsl:value-of select="nombre"/></li>
                        <li>Tipo de grado: <xsl:value-of select="grado"/></li>
                        <li>Año del decreto : <xsl:value-of select="decretoTitulo/@año"/></li>
                    </ul>
                        </xsl:for-each>

                    </article> 
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
                    <a href="https://www.grupoproeduca.com"><xsl:value-of select="ite/empresa"/></a>
                    <a href="tel:+34 91 787 39 91"><xsl:value-of select="ite/telefono"/></a>
                </footer>
            </div>
        </body>
    </html>
    </xsl:template>
</xsl:stylesheet>