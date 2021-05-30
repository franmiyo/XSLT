<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:template match="/">
		<html>
			<head>
				<link rel="stylesheet" type="text/css" href="css/prueba.css" />

				<title>
					<h1>
						<xsl:value-of select="ite/@nombre" />
					</h1>
				</title>
			</head>
			<body>
				<div id="contenedor">
					<header>
						<h1>
							<xsl:value-of select="ite/empresa" />
						</h1>
					</header>

					<section>
						<!-- Contenido principal -->
						<h2>Ciclos</h2>


						<!-- Segunda tabla: ciclos -->
						<table border="1">
							<xsl:for-each select="ite/ciclos/ciclo">
								<tr>
									<th>Nombre</th>
									<th>id</th>
									<th>Grado</th>
									<th>Decreto Título</th>
								</tr>
								<tr>
									<td>
										<xsl:value-of select="nombre" />
									</td>
									<td>
										<xsl:value-of select="@id" />
									</td>
									<td>
										<xsl:value-of select="grado" />
									</td>
									<td>
										<xsl:value-of select="decretoTitulo/@year" />
									</td>
								</tr>
							</xsl:for-each>
						</table>

						<h2>
							<a href="#formulario">FORMULARIO DE CONTACTO</a>
						</h2>

						<h3 id="formulario">Formulario</h3>

						<label for="nombre">Nombre: </label>
						<input id="nombre" type="text" name="nombre" />
						<br />
						<label for="email">E-mail: </label>
						<input id="email" type="email" name="nombre" />
						<br />
						<label for="fecha">Fecha de nacimiento: </label>
						<input id="fecha" type="date" name="fecha"/>
						<br />

						<label for="ciclo_elegido">Escoja el ciclo por el que quiere contactar: </label>
						<select name="ciclo_elegido">
							<xsl:for-each select="ite/ciclos/ciclo">
								<xsl:element name="option">
									<xsl:value-of select="@id" />

									<xsl:value-of select="nombre" />
								</xsl:element>
							</xsl:for-each>
						</select>
						<br />
						<label for="comentario">Comentario: </label>
						<br />
						<textarea rows="5" cols="60" name="comentario"></textarea>

						<input type="submit" value="Enviar" />

					</section>

					<aside>

						<h2>Responsables</h2>
						<p>
							Director/a:
							<xsl:value-of select="ite/director/nombre" />
							<br />
							Despacho:
							<xsl:value-of select="ite/director/despacho" />
							<br />
						</p>
						<p>
							Jefe/a de estudios:
							<xsl:value-of select="ite/jefe_estudios/nombre" />
							<br />
							Despacho:
							<xsl:value-of select="ite/jefe_estudios/despacho" />
							<br />
						</p>

						<h2>Profesorado</h2>
						<table border="1">
							<xsl:for-each select="/ite/profesores/profesor">
								<tr>
									<th>ID</th>
									<th>Nombre</th>
								</tr>
								<tr>
									<td>
										<xsl:value-of select="id" />
									</td>
									<td>
										<xsl:value-of select="nombre" />
									</td>
								</tr>
							</xsl:for-each>
						</table>
					</aside>
				<footer>
					Teléfono: <xsl:value-of select="ite/telefono"/>
					<br/>
					Empresa: <xsl:value-of select="ite/empresa"/>
					<br/>
					Web: <a href="{@web}"><xsl:value-of select="ite/@web"/></a>
				</footer>
				</div>
				

			</body>

		</html>
	</xsl:template>

</xsl:stylesheet>
