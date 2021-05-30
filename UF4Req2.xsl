<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

<xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes"/>
    <xsl:template match="/">
        
        <ite>


            <personal>
                <profesor>
                    <xsl:for-each select="ite/profesores/profesor">

                        <nombre><xsl:value-of select="nombre"/></nombre>
                        <id><xsl:value-of select="id"/></id>
        
                    </xsl:for-each>
                    
                </profesor>

                <director>
                    <nombre><xsl:value-of select="ite/director/nombre"/></nombre>
                    <despacho><xsl:value-of select="ite/director/despacho"/></despacho>
                </director>
                <jefe_estudios>
                    <nombre><xsl:value-of select="ite/jefe_estudios/nombre"/></nombre>
                    <despacho><xsl:value-of select="ite/jefe_estudios/despacho"/></despacho>
                </jefe_estudios>
            </personal>
           
            
            <grados>

                <grado>
                    <xsl:for-each select="ite/ciclos/ciclo">
                        <nombre><xsl:value-of select="nombre"/></nombre>
                        <id><xsl:value-of select="@id"/></id>
                        <grado><xsl:value-of select="grado"/></grado>
                        <decreto><xsl:value-of select="decretoTitulo/@año"/></decreto>
                    </xsl:for-each>

                </grado>

            </grados>


            <contacto>

                <paginaweb><xsl:value-of select="ite/@web"/></paginaweb>
                <nombre><xsl:value-of select="ite/@nombre"/></nombre>
                <empresa><xsl:value-of select="ite/empresa"/></empresa>
                <telefono><xsl:value-of select="ite/telefono"/></telefono>

            </contacto>
            
        </ite>
        


    </xsl:template>
</xsl:stylesheet>
