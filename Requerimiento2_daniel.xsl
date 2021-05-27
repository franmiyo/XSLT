<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

<xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes"/>
    <xsl:template match="/">


        <instituto>


            <datos>
                <nombre_centro><xsl:value-of select="ite/@nombre"/></nombre_centro>
                <pag_web><xsl:value-of select="ite/@web"/></pag_web>
                <empresa><xsl:value-of select="ite/empresa"/></empresa>
                <tlf><xsl:value-of select="ite/telefono"/></tlf>
            </datos>

            

            <ciclos>
                <xsl:for-each select="ite/ciclos/ciclo">
                    <ciclo>
                        <id><xsl:value-of select="@id"/></id>
                        <nombre><xsl:value-of select="nombre"/></nombre>
                        <grado><xsl:value-of select="grado"/></grado>
                        <ano_decreto> <xsl:value-of select="decretoTitulo/@year"/></ano_decreto>
                    </ciclo>  
                </xsl:for-each>
            </ciclos>



            <directiva>
                <director>
                    <nombre><xsl:value-of select="ite/director/nombre"/></nombre>
                    <despacho><xsl:value-of select="director/despacho"/></despacho>
                </director>
                <jefe_estudios>
                    <nombre><xsl:value-of select="ite/jefe_estudios/nombre"/></nombre>
                    <despacho><xsl:value-of select="jefe_estudios/despacho"/></despacho>
                </jefe_estudios>
            </directiva>

            <profesores>
                <xsl:for-each select="ite/profesores/profesor">
                    <profesor>
                        <id><xsl:value-of select="id"/></id>
                        <nombre><xsl:value-of select="nombre"/></nombre>
                    </profesor>  
                </xsl:for-each>
                
            </profesores>
    
        </instituto>

    
    </xsl:template>
</xsl:stylesheet>