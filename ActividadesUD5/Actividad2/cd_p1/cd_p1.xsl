<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
<body>
<h1>Mi Lista de Música</h1>
<table>
<tr bgcolor="#A9F5A9">
<th>Título Álbum</th>
<th>Artista</th>
<th>Canciones</th>
<th>Sello</th>
<th>Año Publicación</th>
</tr>
<xsl:for-each select="lista/cd">
<tr>
<td><xsl:value-of select="albumTitulo"/></td>
<td><xsl:value-of select="artista"/></td>
<td>
<ul>
<xsl:for-each select="canciones/cancion">
<li>
<xsl:value-of select="."/>
<xsl:value-of select="@duracion"/>
</li>
</xsl:for-each>
</ul>
</td>
<td><xsl:value-of select="sello"/></td>
<td><xsl:value-of select="annoPublicacion"/></td>
</tr>
</xsl:for-each>
</table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>