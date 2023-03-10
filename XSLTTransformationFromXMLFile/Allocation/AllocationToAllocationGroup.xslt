<?xml version="1.0" encoding="UTF-16"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0" xmlns:ns0="http://IHG.IIP.Core.IntegrationAccount.TotalTools.Allocation">
  <xsl:output omit-xml-declaration="yes" method="xml" version="1.0" />
  <xsl:key name="groups" match="@* | node()/Item" use="SONo" />

  <xsl:template match="@* | node()">
    <Root>
      <xsl:apply-templates select="Item[generate-id() = generate-id(key('groups', SONo)[1])]"/>
    </Root>
  </xsl:template>
  <xsl:template match="Item">
    <Item>
      <Header>
        <StoreNo>
          <xsl:value-of select="StoreNo"/>
        </StoreNo>
        <ETA_to_Store>
          <xsl:value-of select="ETA_to_Store"/>
        </ETA_to_Store>
        <SONo>
          <xsl:value-of select="SONo"/>
        </SONo>
        <StoreRef>
          <xsl:value-of select="StoreRef"/>
        </StoreRef>
      </Header>
      <xsl:for-each select="key('groups', SONo)">
        <Detail>
          <SKU>
            <xsl:value-of select="SKU"/>
          </SKU>
          <Qty>
            <xsl:value-of select="Qty"/>
          </Qty>
          <BatchNo>
            <xsl:value-of select="BatchNo"/>
          </BatchNo>
          <Desc>
            <xsl:value-of select="Desc"/>
          </Desc>
          <LineNo>
            <xsl:value-of select="LineNo"/>
          </LineNo>
        </Detail>
      </xsl:for-each>
      <Trailer>
        <xsl:for-each select="key('groups', SONo)">
          <xsl:if test="position()=last()">
            <DetailLines>
              <xsl:value-of select="last()" />
            </DetailLines>
          </xsl:if>
        </xsl:for-each>
        <SumOfQuantity>
          <xsl:value-of select="sum(key('groups', SONo)/Qty)"/>
        </SumOfQuantity>
      </Trailer>
    </Item>
  </xsl:template>
</xsl:stylesheet>
