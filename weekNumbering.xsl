<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="3.0">
<xsl:mode on-no-match="shallow-copy"/>
    
<xsl:template match="th[contains(., 'Week:')]">
    <th id="week-{count(preceding::th[contains(., 'Week:')]) + 1}">Week <xsl:value-of select="count(preceding::th[contains(., 'Week:')]) + 1"/></th>
</xsl:template>

</xsl:stylesheet>