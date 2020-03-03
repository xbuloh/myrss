<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
	<rss version="2.0">
	<channel>
		<title>ZS Pardubičky</title>
		<description>This is an example of an RSS feed</description>
		<link>http://www.zs-pardubicky.cz/</link>
		<lastBuildDate>Mon, 06 Sep 2010 00:01:00 +0000 </lastBuildDate>
		<pubDate>Sun, 06 Sep 2009 16:20:00 +0000</pubDate>
		<ttl>1800</ttl>

<xsl:for-each select="//div[@id='sidebar']/div/p">
		<item>
			<title><xsl:value-of select="span"/></title>
			<description><xsl:value-of select="."/></description>
		</item>
</xsl:for-each>
			<!--link>http://www.example.com/blog/post/1</link>
			<guid isPermaLink="false">7bd204c6-1655-4c27-aeee-53f933c5395f</guid>
			<pubDate>Sun, 06 Sep 2009 16:20:00 +0000</pubDate-->

	</channel>
	</rss>

</xsl:template>

</xsl:stylesheet>
