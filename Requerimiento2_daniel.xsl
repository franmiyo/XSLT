<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

<xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes"/>
    <xsl:template match="/">


    <ciclos>
        <xsl:for-each select="ciclos/ciclo">
            <ciclo>
                <id><xsl:value-of select="@id"/></id>
                <nombre><xsl:value-of select="nombre"/></nombre>
                <grado><xsl:value-of select="grado"/></grado>
                <decretoTitulo> <xsl:value-of select="decretoTitulo/@year"/></decretoTitulo>
            </ciclo>  
        </xsl:for-each>
    </ciclos>
    
    

    
    </xsl:template>
</xsl:stylesheet>