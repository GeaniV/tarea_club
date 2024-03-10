<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:output method="html"/>

<xsl:template match="/">
  <html>
  <head>
    <link href="../css/estilo.css" rel="stylesheet" type="text/css" />
    <meta charset="utf-8"/>
    <meta name="description" content="Página principal" />
    <title>titulo de la web</title>
  </head>
  <body>
    <header>
      <img src= "../img/logotipo.png" alt= "Reservas" />
      <a href="tienda.html">Tienda</a>
      <a href="equipos.html">Equipos</a>
      <a href="partidos.html">Partidos</a>
    </header>
    <main class="principal">
      <table border="1">
        <tr bgcolor="#9acd32">
          <th>Artículo</th>
          <th>Precio</th>
          <th>Comentarios</th>
        </tr>
        <xsl:for-each select="club_voleibol/tienda/articulo">
          <tr>
            <td>
              <img class="articulo" src="{@foto}"/>
              <br/>
              <xsl:value-of select="nombre"/>
            </td>
            <td><xsl:value-of select="precio"/></td>
            <td>
              <ul>
                <xsl:for-each select="comentarios">
                  <li><xsl:value-of select="@fecha"/>: <xsl:value-of select="."/></li>
                </xsl:for-each>
              </ul>
            </td>
          </tr>
        </xsl:for-each>
      </table>
    </main>
    <footer>
      <address>© Desarrollado por info@birt.eus</address>
    </footer>
  </body>
  </html>
</xsl:template>

</xsl:stylesheet>
