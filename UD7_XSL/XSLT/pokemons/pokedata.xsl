<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:template match="/">
        <html>
            <body>
                <h1 style="color:red">Pokemons</h1>
                <table border="1">
                    <tr style="color:blue">
                        <td>Id</td>
                        <td>Nombre</td>
                        <td>Tipos</td>
                        <td>Ataque/Defensa</td>
                    </tr>
                    <xsl:for-each select="/pokedex/pokemon">
                        <xsl:choose>
                            <xsl:when test="@id mod 2 = 0">
                                <tr bgcolor="#FFCC00">
                                    <td>
                                        <xsl:value-of select="@id" />
                                    </td>
                                    <td>
                                        <xsl:value-of select="name" />
                                    </td>
                                    <td>
                                       <ul>
                                            <xsl:for-each select="type">
                                                <xsl:variable name="tipo" select="." />
                                                <li>
                                                        <xsl:value-of select="." /> 
                                                        (<xsl:value-of select="count(/pokedex/pokemon[type = $tipo])" />)
                                                </li>
                                            </xsl:for-each>
                                        </ul>
                                    </td>
                                    
                                    <xsl:choose>
                                        <xsl:when test="stats/ATK > stats/DEF">
                                            <td style="color:red">
                                                <xsl:value-of select="stats/ATK" />
                                                /
                                                <xsl:value-of select="stats/DEF" />
                                            </td>
                                        </xsl:when>
                                        <xsl:otherwise>
                                            <td>
                                                <xsl:value-of select="stats/ATK" />
                                                /
                                                <xsl:value-of select="stats/DEF" />
                                            </td>
                                        </xsl:otherwise>
                                    </xsl:choose>
                                </tr>
                            </xsl:when>
                            <xsl:otherwise>
                                <tr bgcolor="#FF9900">
                                    <td>
                                        <xsl:value-of select="@id" />
                                    </td>
                                    <td>
                                        <xsl:value-of select="name" />
                                    </td>
                                    <td>
                                       <ul>
                                            <xsl:for-each select="type">
                                                <xsl:variable name="tipo" select="." />
                                                <li>
                                                        <xsl:value-of select="." /> 
                                                        (<xsl:value-of select="count(/pokedex/pokemon[type = $tipo])" />)
                                                </li>
                                            </xsl:for-each>
                                        </ul>
                                    </td>

                                    <xsl:choose>
                                        <xsl:when test="stats/ATK > stats/DEF">
                                            <td style="color:red">
                                                <xsl:value-of select="stats/ATK" />
                                                /
                                                <xsl:value-of select="stats/DEF" />
                                            </td>
                                        </xsl:when>
                                        <xsl:otherwise>
                                            <td>
                                                <xsl:value-of select="stats/ATK" />
                                                /
                                                <xsl:value-of select="stats/DEF" />
                                            </td>
                                        </xsl:otherwise>
                                    </xsl:choose>
                                </tr>
                            </xsl:otherwise>
                        </xsl:choose>
                 
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>