<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes" />


    <xsl:template match="/">
        <ite>

            <datosIte>
                <nombre>
                    <xsl:value-of select="ite/@nombre" />
                </nombre>
                <web>
                    <xsl:value-of select="ite/@web" />
                </web>
                <empresa>
                    <xsl:value-of select="ite/empresa" />
                </empresa>
                <telefono>
                    <xsl:value-of select="ite/telefono" />
                </telefono>

            </datosIte>

            <trabajadores>
                <profesor>
                    <xsl:for-each select="ite/profesores/profesor">

                        <nombre>
                            <xsl:value-of select="nombre" />
                        </nombre>
                        <id>
                            <xsl:value-of select="id" />
                        </id>

                    </xsl:for-each>

                </profesor>

                <director>
                    <nombre>
                        <xsl:value-of select="ite/director/nombre" />
                    </nombre>
                    <despacho>
                        <xsl:value-of select="ite/director/despacho" />
                    </despacho>
                </director>
                <jefe_estudios>
                    <nombre>
                        <xsl:value-of select="ite/jefe_estudios/nombre" />
                    </nombre>
                    <despacho>
                        <xsl:value-of select="ite/jefe_estudios/despacho" />
                    </despacho>
                </jefe_estudios>
            </trabajadores>
            <estudios>

                <ciclo>
                    <xsl:for-each select="ite/ciclos/ciclo">
                        <nombre>
                            <xsl:value-of select="nombre" />
                        </nombre>
                        <abreviatura>
                            <xsl:value-of select="@id" />
                        </abreviatura>
                        <grado>
                            <xsl:value-of select="grado" />
                        </grado>
                        <anoDecreto>
                            <xsl:value-of select="decretoTitulo/@ano" />
                        </anoDecreto>
                    </xsl:for-each>

                </ciclo>

            </estudios>


        </ite>


    </xsl:template>


</xsl:stylesheet>