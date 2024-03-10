<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

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
      <h1>EQUIPOS</h1>
      <xsl:for-each select="club_voleibol/equipo">
        <div class="equipos">
          <h4><xsl:value-of select="nombre"/> - <xsl:value-of select="@categoria"/></h4>
          <p>Entrenador: <a href="https://es.wikipedia.org/wiki/Julio_Velasco"><xsl:value-of select="entrenador/nombre"/></a></p>
          <p>Jugadores:</p>
          <ul>
            <xsl:for-each select="jugadores/jugador">
              <li><xsl:value-of select="camiseta"/> - <xsl:value-of select="nombre"/> - <xsl:value-of select="posicion"/> - <xsl:value-of select="nacionalidad"/> - <xsl:choose><xsl:when test="titular='si'">Titular</xsl:when><xsl:otherwise>Suplente</xsl:otherwise></xsl:choose></li>
            </xsl:for-each>
          </ul>
        </div>
      </xsl:for-each>
    </main>
    <footer>
      <address>© Desarrollado por info@birt.eus</address>
    </footer>
  </body>
  </html>
</xsl:template>

</xsl:stylesheet>
