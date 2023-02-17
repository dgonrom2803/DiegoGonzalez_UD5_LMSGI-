<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" 
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
<html>
<body>
<h1>Ejemplos Plantillas</h1>
<xsl:apply-templates/>
</body>
</html>
</xsl:template>

<xsl:template match="libreria">
<h2>Mi biblioteca personal</h2>
<table>
<tr bgcolor="#007780">
<th>ISBN</th>
<th>Titulo</th>
<th>Autor</th>
<th>Precio</th>
<th>Nº Páginas</th>
</tr>
<xsl:apply-templates select="libro"/>
</table>
</xsl:template>

<xsl:template match="libro">
<tr>
<td><xsl:apply-templates select="isbn"/></td>
<td><xsl:apply-templates select="titulo"/></td>
<td><xsl:apply-templates select="autor"/></td>
<td><xsl:apply-templates select="precio"/></td>
<td><xsl:apply-templates select="numPaginas"/></td>
</tr>
</xsl:template>

<xsl:template match="isbn">
<td><xsl:value-of select="."/></td>
</xsl:template>

<xsl:template match="titulo">
<td><xsl:value-of select="."/></td>
</xsl:template>

<xsl:template match="autor">
<td><xsl:value-of select="."/></td>
</xsl:template>

<xsl:template match="precio">
<td><xsl:value-of select="."/></td>
</xsl:template>

<xsl:template match="numPaginas">
<td><xsl:value-of select="."/></td>
</xsl:template>


</xsl:stylesheet>