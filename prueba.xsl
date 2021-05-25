<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/">

        <html>
            <head>
                <title>Instituto Tecnológico EDIX</title>
            </head>

            <body>
                <!-- Al menos dos tablas -->
                <table class="default">
                    <tr>
                        <th></th>
                        <th></th>
                        <th></th>
                    </tr>
                </table>

                <table class="default">
                    <tr>
                        <th></th>
                        <th></th>
                        <th></th>
                    </tr>
                </table>

                <!-- Al menos dos enlaces -->

                <a href="www.miweb.es">PINCHA AQUI</a>
                <a href="www.miweb.es">PINCHA AQUI</a>

                <!-- Al menos una lista ordenada o no ordenada -->

                <h1>CREO UNA LISTA ORDENADA</h1>
                    <ol>
                        <li>Primero</li>
                        <li>Segundo</li>
                        <li>Tercero</li>
                        <li>Cuarto</li>
                    </ol>

                <!-- Al menos un formulario de contacto-->

                <h1>CREO UN FORMULARIO DE CONTACTO</h1>
                <form action="procesoPeticion.jsp" method="post">
                    <p>
                        <input type="text" name="introducir_nombre" id="nombre" required="obligatorio" placeholder="Escribe tu nombre">
                    </p>
                    <br/>
                    <p>
                        <input type="email" name="introducir_email" id="email" required="obligatorio" placeholder="Escribe tu email">
                    </p>
                    <br/>
                    <p>
                        <input type="tel" name="introducir_telefono" id="telefono" placeholder="Escribe tu teléfono">
                    </p>
                    <br/>
                    <p>
                        <input type="url" name="introducir_website" id="website" placeholder="Escribe la URL de tu web">
                    </p>
                    <br/>
                    <p>
                        <input type="text" name="introducir_asunto" id="asunto" required="obligatorio" placeholder="Escribe un asunto">
                    </p>
                    <br/>
                    <p>
                        <input type="submit" value="Enviar">
                    </p>
                    <br/>
                </form>   

            </body>


        </html>
    </xsl:template>

</xsl:stylesheet>