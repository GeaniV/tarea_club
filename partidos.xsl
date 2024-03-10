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
    <main>
      <h1>PARTIDOS</h1>
      <table border="1">
        <tr bgcolor="#9acd32">
          <th>PARTIDO</th>
          <th>FECHA</th>
          <th>RESULTADO</th>
        </tr>
        <xsl:for-each select="club_voleibol/partido">
          <tr>
            <td><xsl:value-of select="equipos/local"/> - <xsl:value-of select="equipos/visitante"/></td>
            <td><xsl:value-of select="fecha"/></td>
            <td><xsl:choose><xsl:when test="equipos/local/@puntuacion > equipos/visitante/@puntuacion"><xsl:value-of select="equipos/local/@puntuacion"/> - <xsl:value-of select="equipos/visitante/@puntuacion"/></xsl:when><xsl:otherwise><xsl:value-of select="equipos/local/@puntuacion"/> - <span class="azul"><xsl:value-of select="equipos/visitante/@puntuacion"/></span></xsl:otherwise></xsl:choose></td>
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
