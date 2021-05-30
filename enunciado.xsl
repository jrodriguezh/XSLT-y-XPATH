<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <meta charset="UTF-8"></meta>
                <meta http-equiv="X-UA-Compatible" content="IE=edge"></meta>
                <meta name="viewport" content="width=device-width, initial-scale=1.0"></meta>
                <title>
                    Instituto Tecnológico Edix
                </title>
            </head>
            <body>
                <div>
                    
                    <a href="https://www.grupoproeduca.com"><xsl:value-of select="ite/empresa"/></a>
                    <br></br>
                    <a href="tel:"><xsl:value-of select="ite/telefono"></xsl:value-of></a>
                    
                    <table border="1">
                        <tr>
                            <th>Id Profesor</th>
                            <th>Nombre</th>
                        </tr>
                        <xsl:for-each select="ite/profesores/profesor">
                            <tr>
                                <td>
                                    <xsl:value-of select="id"></xsl:value-of>
                                </td>
                                <td>
                                    <xsl:value-of select="nombre"></xsl:value-of>
                                </td>
                            </tr>
                        </xsl:for-each>

                    </table>

                    <table border="1">
                        <tr>
                            <th>Cargo</th>
                            <th>Nombre</th>
                            <th>Localización Despacho</th>
                        </tr>
                        <tr>
                            <td>Director</td>
                            <td>
                                <xsl:value-of select="ite/director/nombre"></xsl:value-of>
                            </td>
                            <td>
                                <xsl:value-of select="ite/director/despacho"></xsl:value-of>
                            </td>
                        </tr>
                        <tr>
                            <td>Jefe de estudios</td>
                            <td>
                                <xsl:value-of select="ite/jefe_estudios/nombre"></xsl:value-of>
                            </td>
                            <td>
                                <xsl:value-of select="ite/jefe_estudios/despacho"></xsl:value-of>
                            </td>
                        </tr>
                    </table>
                    
                    <h2>Ciclos impartidos:</h2>

                    <xsl:for-each select="ite/ciclos/ciclo">
                        <ul>
                            <li>Ciclo: <xsl:value-of select="@id"></xsl:value-of></li>
                            <li>Nombre: <xsl:value-of select="nombre"></xsl:value-of></li>
                            <li>Tipo de grado: <xsl:value-of select="grado"></xsl:value-of></li>
                            <li>Año: <xsl:value-of select="decretoTitulo/@año"></xsl:value-of></li>
                        </ul>
                    </xsl:for-each>


                    <a href="formulario.html">Formulario de contacto</a>
                    


                </div>
            </body>
        </html>


    </xsl:template>


</xsl:stylesheet>