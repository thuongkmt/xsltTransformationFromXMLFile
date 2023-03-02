<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">


  <xsl:output method="xml" indent="yes"/>
  <xsl:key name="groups" match="/Orders/Order" use="InvoiceNumber" />


  <xsl:template match="/Orders">
    <Orders>
      <xsl:apply-templates select="Order[generate-id() = generate-id(key('groups', InvoiceNumber)[1])]"/>
    </Orders>
  </xsl:template>
  <xsl:template match="Order">
    <Order>
      <Header>
        <DeliveryDate>
          <xsl:value-of select="DeliveryDate"/>
        </DeliveryDate>
        <InvoiceNumber>
          <xsl:value-of select="InvoiceNumber"/>
        </InvoiceNumber>
      </Header>

      <xsl:for-each select="key('groups', InvoiceNumber)">
        <Detail>
          <ProductCode>
            <xsl:value-of select="ProductCode"/>
          </ProductCode>
        </Detail>
      </xsl:for-each>

      <Trailer>
        <DistributionCentre>
          <xsl:value-of select="otalOrderQuantity"/>
        </DistributionCentre>
        <CustomerNumber>
          <xsl:value-of select="CustomerNumber"/>
        </CustomerNumber>
      </Trailer>
    </Order>
  </xsl:template>
  
</xsl:stylesheet>