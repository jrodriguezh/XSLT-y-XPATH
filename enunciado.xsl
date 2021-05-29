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
                            <td><xsl:value-of select="ite/director/nombre"></xsl:value-of></td>
                            <td><xsl:value-of select="ite/director/despacho"></xsl:value-of></td>
                        </tr>
                        <tr>
                            <td>Jefe de estudios</td>
                            <td><xsl:value-of select="ite/jefe_estudios/nombre"></xsl:value-of></td>
                            <td><xsl:value-of select="ite/jefe_estudios/despacho"></xsl:value-of></td>
                        </tr>


                    </table>


                </div>
            </body>
        </html>


    </xsl:template>


</xsl:stylesheet>