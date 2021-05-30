<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html"/>
   <xsl:template match="/">
       <html>
           <head>
               <title><xsl:value-of select="@nombre" mode="head"/></title>
           </head>
           <body>
               <h1><xsl:value-of select="empresa"/></h1>
               <p><xsl:value-of select="telefono"/></p>

               <h2>Profesores</h2>
               <table>
                    <xsl:for-each select="/profesores/profesor">
                        <tr>
                            <td>ID</td>
                            <td>NOMBRE</td>
                        </tr>
                        <tr>
                            <td><xsl:value-of select="id"/></td>
                            <td><xsl:value-of select="nombre"/></td>
                        </tr>
                    </xsl:for-each>
               </table>

               <h2>Directiva</h2>
               <table>
                        <tr>
                            <td>NOMBRE</td>
                            <td>DESPACHO</td>
                            <td>CARGO</td>
                        </tr>
                        <tr>
                            <td><xsl:value-of select="director/nombre"/></td>
                            <td><xsl:value-of select="director/despacho"/></td>
                            <td>Directora</td>
                        </tr>
                        <tr>
                            <td><xsl:value-of select="jefe_estudios/nombre"/></td>
                            <td><xsl:value-of select="jefe_estudios/despacho"/></td>
                            <td>Jefe de estudios</td>
                        </tr>
               </table>


               <h2>Ciclos</h2>
               <ol>
                    <xsl:for-each select="ciclos/ciclo">
                        <li><a href="#ciclos"><xsl:for-each select="nombre"/></a></li>


                    </xsl:for-each>
               </ol>

               <table id="ciclos">
                    <xsl:for-each select="ciclos/ciclo">
                        <tr>
                            <td>NOMBRE</td>
                            <td>GRADO</td>
                            <td>DECRETO TÍTULO</td>
                        </tr>
                        <tr>
                            <td><xsl:value-of select="nombre"/></td>
                            <td><xsl:value-of select="grado"/></td>
                            <td><xsl:value-of select="decretoTitulo/@year"/></td>
                        </tr>
                    </xsl:for-each>
                </table>

                <h2><a href="#formulario">FORMULARIO DE CONTACTO</a></h2>
                
                <h3 id="formulario">Formulario</h3>

                <label for="nombre">Nombre: </label>
                <input id="nombre" type="text" name="nombre"/>


                <!-- No se puede hacer que el value lo coja con el xsl:value-of?-->
                <label for="ciclo_elegido">Escoja el ciclo por el que quiere contactar: </label>
                    <select name="ciclo_elegido">
                        <xsl:for-each select="ciclos/ciclo">
                            <option value=<xsl:value-of select="@id"/>><xsl:value-of select="nombre"/></option>
                        </xsl:for-each>
                    </select>
                
                <input type="submit" value="Enviar" />




           </body>

       </html>
  </xsl:template>
</xsl:stylesheet>