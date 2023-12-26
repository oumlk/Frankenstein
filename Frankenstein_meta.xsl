<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:tei="http://www.tei-c.org/ns/1.0"
    exclude-result-prefixes="xs tei"
    version="2.0">
    
    <!-- Temp for specific TEI elements -->

    <xsl:template match="tei:TEI">
        <div class="row">
            <div class="col">
                <h4>About the manuscript page:</h4>
                <xsl:value-of select="//tei:sourceDesc"/>
                <xsl:value-of select="//tei:licence"/> <!-- visualize metadata -->
            </div>
            <div class="col">
                <ul>
                    <li>Total number of modifications: 
                        <xsl:value-of select="count(//tei:del|//tei:add)" />
                    </li>
                    <li>Number of additions: 
                        <xsl:value-of select="count(//tei:add)" />
                    </li>
                    <li>Number of deletions: 
                        <xsl:value-of select="count(//tei:del)" />
                    </li>
                    <li>Corrections by Mary Shelley (#MWS): 
                        <xsl:value-of select="count(//tei:add[@hand='#MWS']|//tei:del[@hand='#MWS'])" />
                    </li>
                    <li>Corrections by Percy Shelley (#PBS): 
                        <xsl:value-of select="count(//tei:add[@hand='#PBS']|//tei:del[@hand='#PBS'])" />
                    </li>
                    <li>Number of words on the page: 
                        <xsl:value-of select="count(//tei:p//text())" /> 
                    </li>
                </ul>
            </div>
        </div>
        <hr/>
    </xsl:template>
    
    <!-- Other templates for elements like tei:p, tei:lb, tei:hi etc. -->
    
</xsl:stylesheet>
