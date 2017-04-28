<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:oxm="https://www.openxsl.com">
    <xsl:template match="/root" name="wurui.pageqrcode">
        <!-- className 'J_OXMod' required  -->
        <div class="J_OXMod oxmod-pageqrcode" ox-mod="pageqrcode">
            <xsl:variable name="data" select="data/title-and-qrcode"/>
            <section>
                <xsl:if test="$data/title !=''">
                <h3 class="title"><xsl:value-of select="$data/title"/></h3>
                </xsl:if>
                <xsl:if test="$data/img !=''">
                <img src="{$data/img}"/>
                </xsl:if>
            </section>
        </div>
    </xsl:template>
</xsl:stylesheet>
