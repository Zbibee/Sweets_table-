<?xml version="1.0" encoding="utf-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">


<xsl:template match="/">
<xsl:variable name="header">

	

	  <tr>
				<th>Opakowanie</th>	  
  				<th>Nazwa</th>
  				<th>Producent</th>
				<th>kcal/100g</th>
				<th>ranking</th>
		</tr>
		
		
		
		
</xsl:variable>




<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
		<link rel="stylesheet" type="text/css" href="sweets.css" />
		<title>Zestawienie ulubionych słodkości</title>

	</head>
	<body>
	

	<h1>Zestawienie ulubionych słodkości</h1>
	
    	<table>
			<xsl:copy-of select="$header"/>
    		<xsl:for-each select="/sweets/sweet">
			<xsl:sort select="ranking" order="descending"/>
			<tr>
	
				<xsl:choose>
					<xsl:when test="@category='czekolada'">
						<xsl:attribute name="id">czekolada</xsl:attribute>
					</xsl:when>
						
					<xsl:when test="@category='ciastka'">
						<xsl:attribute name="id">ciastka</xsl:attribute>
					</xsl:when>

					<xsl:when test="@category='cukierki'">
						<xsl:attribute name="id">cukierki</xsl:attribute>
					</xsl:when>						
				</xsl:choose>
			
			
				<td><img>
					<xsl:attribute name="src">
						<xsl:value-of select="photo" />
					</xsl:attribute>
				</img></td>
      			<td><xsl:value-of select="name"/></td>	
      			<td><xsl:value-of select="producer"/></td>
				<td><xsl:value-of select="kcal"/></td>
				<td><xsl:value-of select="ranking"/></td>
    		</tr>
			
    		</xsl:for-each>
  		</table><br />
	
	</body>
</html>
</xsl:template>
</xsl:stylesheet>