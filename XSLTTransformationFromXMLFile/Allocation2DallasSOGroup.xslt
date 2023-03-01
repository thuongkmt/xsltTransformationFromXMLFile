<?xml version="1.0" encoding="UTF-16"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" xmlns:var="http://schemas.microsoft.com/BizTalk/2003/var" exclude-result-prefixes="msxsl var s0 userCSharp" version="1.0" xmlns:s0="http://IHG.IIP.Core.IntegrationAccount.TotalTools.Allocation" xmlns:ns0="http://IHG.IIP.Core.IntegrationAccount.TotalTools.DallasSO" xmlns:userCSharp="http://schemas.microsoft.com/BizTalk/2003/userCSharp">
  <xsl:output omit-xml-declaration="yes" method="xml" version="1.0" />
  <xsl:template match="/">
    <xsl:apply-templates select="/s0:Orders" />
  </xsl:template>
  <xsl:key name="groupByOrderNumber" match="/Order/Header" use="./InvoiceNumber"/>
  <xsl:template match="/Order">
    <Orders>
      <xsl:for-each select= "Header[generate-id(.)=generate-id(key('groupByOrderNumber', ./InvoiceNumber))]">
        <Order>
          <Header select="Header">
            <DistributionCentre>
              <xsl:value-of select="DistributionCentre" />
            </DistributionCentre>
            <Warehouse>
              <xsl:value-of select="Warehouse" />
            </Warehouse>
            <CustomerNumber>
              <xsl:value-of select="CustomerNumber/text()" />
            </CustomerNumber>
            <DeliveryDate>
              <xsl:value-of select="DeliveryDate/text()" />
            </DeliveryDate>
            <DeliveryTime>
              <xsl:value-of select="DeliveryTime" />
            </DeliveryTime>
            <InvoiceNumber>
              <xsl:value-of select="InvoiceNumber/text()" />
            </InvoiceNumber>
            <OrderPersonalityType>
              <xsl:value-of select="OrderPersonalityType" />
            </OrderPersonalityType>
            <OrderDate>
              <xsl:value-of select="OrderDate/text()" />
            </OrderDate>
            <OrderTime>
              <xsl:value-of select="OrderTime" />
            </OrderTime>
            <PPS>
              <xsl:value-of select="PPS" />
            </PPS>
            <TokenNumber>
              <xsl:value-of select="TokenNumber/text()" />
            </TokenNumber>
            <OrderInstruction>
              <xsl:value-of select="OrderInstruction/text()" />
            </OrderInstruction>
          </Header>
        
          <Detail select="Detail">
              <ProductCode>
                <xsl:value-of select="ProductCode/text()" />
              </ProductCode>
              <OrderQuantity>
                <xsl:value-of select="OrderQuantity/text()" />
              </OrderQuantity>
              <ReserveOverrideFlag>
                <xsl:value-of select="ReserveOverrideFlag" />
              </ReserveOverrideFlag>
              <PriceAdjustFlag>
                <xsl:value-of select="PriceAdjustFlag" />
              </PriceAdjustFlag>
              <ShipCaseUnit>
                <xsl:value-of select="ShipCaseUnit" />
              </ShipCaseUnit>
              <SubstitutionType>
                <xsl:value-of select="SubstitutionType" />
              </SubstitutionType>
              <SubstitutionCode1>
                <xsl:value-of select="SubstitutionCode1" />
              </SubstitutionCode1>
              <SubstitutionFactor1>
                <xsl:value-of select="SubstitutionFactor1" />
              </SubstitutionFactor1>
              <SubstitutionPriceAdjustFlag1>
                <xsl:value-of select="SubstitutionPriceAdjustFlag1" />
              </SubstitutionPriceAdjustFlag1>
              <SubstitutionCode2>
                <xsl:value-of select="SubstitutionCode2" />
              </SubstitutionCode2>
              <SubstitutionFactor2>
                <xsl:value-of select="SubstitutionFactor2" />
              </SubstitutionFactor2>
              <SubstitutionPriceAdjustFlag2>
                <xsl:value-of select="SubstitutionPriceAdjustFlag2" />
              </SubstitutionPriceAdjustFlag2>
              <SubstitutionCode3>
                <xsl:value-of select="SubstitutionCode3" />
              </SubstitutionCode3>
              <SubstitutionFactor3>
                <xsl:value-of select="SubstitutionFactor3" />
              </SubstitutionFactor3>
              <SubstitutionPriceAdjustFlag3>
                <xsl:value-of select="SubstitutionPriceAdjustFlag3" />
              </SubstitutionPriceAdjustFlag3>
              <PickSlot>
                <xsl:value-of select="PickSlot" />
              </PickSlot>
              <PickType>
                <xsl:value-of select="PickType" />
              </PickType>
              <WeekNumber>
                <xsl:value-of select="WeekNumber" />
              </WeekNumber>
              <PromoWeekNumber>
                <xsl:value-of select="PromoWeekNumber" />
              </PromoWeekNumber>
              <PickEaches>
                <xsl:value-of select="PickEaches" />
              </PickEaches>
            </Detail>
        
          <Trailer select="Trailer">
            <DistributionCentre>
              <xsl:value-of select="DistributionCentre" />
            </DistributionCentre>
            <Warehouse>
              <xsl:value-of select="Warehouse" />
            </Warehouse>
            <CustomerNumber>
              <xsl:value-of select="CustomerNumber/text()" />
            </CustomerNumber>
            <OrderType>
              <xsl:value-of select="OrderType" />
            </OrderType>
            <DetailLines>
              <xsl:value-of select="DetailLines" />
            </DetailLines>
            <otalOrderQuantity>
              <xsl:value-of select="otalOrderQuantity" />
            </otalOrderQuantity>
          </Trailer>
        </Order>
      </xsl:for-each>
    </Orders>
  </xsl:template>
</xsl:stylesheet>