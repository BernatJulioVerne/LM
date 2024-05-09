<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:template match="/">
        <html>
            <body>
                <h1>Equipos</h1>
                <table border="1">
                    <tr style="color:blue">
                        <td>Id</td>
                        <td>Nombre</td>
                        <td>Ciudad</td>
                        <td>Capacidad</td>
                        <td>Favor Arbitral</td>
                        <td>PJL</td>
                        <td>PJV</td>
                        <td>Partidos</td>
                        <td>Ganados</td>
                        <td>Perdidos</td>
                        <td>Empates</td>
                        <td>Puntos</td>
                    </tr>
                    <xsl:for-each select="/laliga/equipos/equipo">
                        <xsl:variable name="id" select="@id" />
                               
                        <tr>
                            <td>
                                <xsl:value-of select="$id" />
                            </td>
                            <td>
                                <xsl:value-of select="nombre" />
                            </td>

                            <td>
                            </td>

                            <td>
                            </td>
                            <xsl:choose>
                                <xsl:when test="ciudad='Madrid'">
                                    <td style="background-color:red;width:20px"></td>
                                </xsl:when>
                                <xsl:otherwise>
                                    <td></td>
                                </xsl:otherwise>
                            </xsl:choose>
                            <td>
                                <xsl:value-of select="count(/laliga/partidos/partido[local/nombre/@idEquipo=$id])" />

                            </td>
                            <td>
                                <xsl:value-of select="count(/laliga/partidos/partido[visitante/nombre/@idEquipo=$id])" />
                            </td>
                            <td>
                                <xsl:value-of select="count(/laliga/partidos/partido[local/nombre/@idEquipo=$id]) + count(/laliga/partidos/partido[visitante/nombre/@idEquipo=$id])" />
                            </td>   
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>