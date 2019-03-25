<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="3.0"
    xmlns="http://www.w3.org/1999/xhtml">
    <xsl:output method="xml" indent="yes" doctype-system="about:legacy-compat"/>
    <xsl:template match="/">
        <html>
            <head>
                <title>Comet Transformation</title>
            </head>
            <body>
                <xsl:apply-templates select="//body"></xsl:apply-templates>
            </body>
        </html>
    </xsl:template>
    <xsl:template match="p">
        <p>
            <xsl:apply-templates/>
        </p>
    </xsl:template>
    <xsl:template match="quotes">
       <xsl:text>“</xsl:text>
        <xsl:apply-templates/>
        <xsl:text>”</xsl:text>
    </xsl:template>
    <xsl:template match="litdev |  scifi | setting">
        <span class="{name()}">
            <xsl:apply-templates/>
        </span>
    </xsl:template>
    <xsl:template match="axes">
        <span class="{@trait}">
            <xsl:apply-templates/>
        </span>
    </xsl:template>
    <xsl:template match="q">
        <span class="{@qual}">
            <xsl:apply-templates/>
        </span>
    </xsl:template>
</xsl:stylesheet>