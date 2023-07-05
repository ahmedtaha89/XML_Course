<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">
	<xsl:template match="/">
		  <table border="3px">
					<tr>
						<th>Title</th>
						<th>Artist</th>
						<th>Price</th>
					</tr>
				
<!--  IF + Foreach
<xsl:for-each select="CATALOG/CD[position()>20]">
	<xsl:if test="PRICE>8">
					<tr>
						<td>
							<xsl:value-of select="TITLE"/>
						</td>
						<td>
							<xsl:value-of select="ARTIST"/>
						</td>
							<td>
							<xsl:value-of select="PRICE"/>
						</td>
					</tr>
		</xsl:if>
</xsl:for-each>		-->		
				
				
<!--Foreach + Sort  
<xsl:for-each select="CATALOG/CD">
	<xsl:sort select="PRICE" order="descending"/>
	<xsl:if test="PRICE>9.5">
				<tr>
					<td>
							<xsl:value-of select="TITLE"></xsl:value-of>
					</td>
					<td>
							<xsl:value-of select="PRICE"></xsl:value-of>
					</td>
				</tr>
	</xsl:if>
</xsl:for-each>	-->			
				
				
			<!--Choose-->	
					
			<xsl:for-each select="CATALOG/CD" >
				<xsl:choose>
					<xsl:when test="PRICE &gt; 9">
									<tr bgcolor="red">
									<td>
										<xsl:value-of select="TITLE"></xsl:value-of>
									</td>
										<td>
										<xsl:value-of select="ARTIST"></xsl:value-of>
									</td>
										<td>
										<xsl:value-of select="PRICE"></xsl:value-of>
									</td>
								</tr>	
					</xsl:when>
					<xsl:when test="PRICE &lt; 9">
					
										<tr bgcolor="yellow">
										<td>
											<xsl:value-of select="TITLE"></xsl:value-of>
										</td>
											<td>
											<xsl:value-of select="ARTIST"></xsl:value-of>
										</td>
											<td>
											<xsl:value-of select="PRICE"></xsl:value-of>
										</td>
									</tr>	
					</xsl:when>
					<xsl:otherwise>
									<tr bgcolor="pink">
										<td>
											<xsl:value-of select="TITLE"></xsl:value-of>
										</td>
											<td>
											<xsl:value-of select="ARTIST"></xsl:value-of>
										</td>
											<td>
											<xsl:value-of select="PRICE"></xsl:value-of>
										</td>
									</tr>	
					
					</xsl:otherwise>
				</xsl:choose>

			</xsl:for-each>					
			</table>
	</xsl:template>
</xsl:stylesheet>
