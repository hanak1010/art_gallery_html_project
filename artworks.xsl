<?xml version="1.0" encoding="UTF-8"?>
<!-- Hana(M01087805), Anushka(M01091174), Fathima(M01096140), Margaret(M01002694) -->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <title>Nova Art Collective - Catalog</title>
                <link rel="stylesheet" type="text/css" href="css_style.css"/>
                <style>
                    table { width: 90%; margin: 30px auto; border-collapse: collapse; background: #F9F5EB; }
                    th, td { padding: 15px; border: 1px solid #ccc; text-align: left; }
                    th { background-color: #FAEFED; font-family: 'Courier New', monospace; }
                    .nav-link { text-align: center; margin-top: 20px; display: block; }
                </style>
            </head>
            <body>
                <h1 style="text-align: center; margin-top: 20px;">Artwork Collection</h1>

                <a href="index.html" class="nav-link">Return to Home Page</a>

                <table>
                    <tr>
                        <th>Title</th>
                        <th>Artist</th>
                        <th>Year</th>
                        <th>Type</th>
                        <th>Description</th>
                        <th>Price</th>
                        <th>More Info</th>
                    </tr>
                    <xsl:for-each select="gallery/artwork">
                        <tr>
                            <td><strong><xsl:value-of select="title"/></strong></td>
                            <td><xsl:value-of select="artist"/></td>
                            <td><xsl:value-of select="year"/></td>
                            <td><xsl:value-of select="type"/></td>
                            <td><xsl:value-of select="description"/></td>
                            <td><xsl:value-of select="price"/></td>
                            <td><a href="{link}" target="_blank">View Official Source</a></td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>