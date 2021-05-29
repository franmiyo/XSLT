<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

<xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes"/>
	<xsl:template match="/">

		<instituto>
			<informacion>
				<nombre><xsl:value-of select="ite/@nombre"/></nombre>
				<empresa><xsl:value-of select="ite/@empresa"/></empresa>
				<pagina_web><xsl:value-of select="ite/@web"/></pagina_web>
				<telefono><xsl:value-of select="ite/@telefono"/></telefono>
			</informacion>

			<personal>
				<responsables>
					<director>
						<nombre><xsl:value-of select="ite/director/nombre"/></nombre>
						<despacho><xsl:value-of select="ite/director/despacho"/></despacho>
					</director>

					<jefe_estudios>
						<nombre><xsl:value-of select="ite/jefe_estudios/nombre"/></nombre>
						<despacho><xsl:value-of select="ite/jefe_estudios/despacho"/></despacho>
					</jefe_estudios>
				</responsables>

				<profesorado>
					<xsl:for-each select="ite/profesores/profesor">
						<profesor>
							<id><xsl:value-of select="id"/></id>
							<nombre><xsl:value-of select="nombre"/></nombre>
						</profesor>
					</xsl:for-each>
				</profesorado>
			</personal>

			<ciclos>
				<xsl:for-each select="ite/ciclos/ciclo">
					<ciclo>
						<id><xsl:value-of select="@id"/></id>
						<nombre><xsl:value-of select="nombre"/></nombre>
						<grado><xsl:value-of select="grado"/></grado>
						<decreto><xsl:value-of select="decretoTitulo/@year"/></decreto>
					</ciclo>
				</xsl:for-each>
			</ciclos>

		</instituto>
	</xsl:template>
</xsl:stylesheet>



