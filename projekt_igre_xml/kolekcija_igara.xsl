<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
<head>
    <meta charset="UTF-8"/>
    <title>XML prikaz igara</title>
    <link rel="stylesheet" href="default.css"/>
</head>
<body>
    <header>
        <div>
            <h1>XML prikaz igara</h1>
            <p>Podaci učitani iz XML datoteke</p>
        </div>
        <div class="kosara">XML</div>
    </header>

    <nav>
        <a href="index.html">Početna</a>
        <a href="igre.xml">XML prikaz</a>
    </nav>

    <div class="xml-container">
        <xsl:for-each select="kolekcija/igra">
            <div class="xml-game">
                <h2><xsl:value-of select="naziv"/></h2>
                <p><strong>Žanr:</strong> <xsl:value-of select="zanr"/></p>
                <p><strong>Platforma:</strong> <xsl:value-of select="platforma"/></p>
                <p><strong>Cijena:</strong> <xsl:value-of select="cijena"/></p>
            </div>
        </xsl:for-each>
    </div>

    <footer>
        <p>Niko Udovičić / Podatkovna povezanost i digitalna infrastruktura</p>
    </footer>
</body>
</html>
</xsl:template>
</xsl:stylesheet>
