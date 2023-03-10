<?xml version="1.0" encoding="UTF-16"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" xmlns:var="http://schemas.microsoft.com/BizTalk/2003/var" exclude-result-prefixes="msxsl var s0 userCSharp" version="1.0" xmlns:s0="http://IHG.IIP.Core.IntegrationAccount.TotalTools.Allocation" xmlns:ns0="http://IHG.IIP.Core.IntegrationAccount.TotalTools.DallasSO" xmlns:userCSharp="http://schemas.microsoft.com/BizTalk/2003/userCSharp">
  <xsl:output omit-xml-declaration="yes" method="xml" version="1.0" />
  <xsl:template match="/">
    <xsl:apply-templates select="/s0:Root" />
  </xsl:template>
  <xsl:template match="/s0:Root">
    <ns0:Orders>
      <xsl:for-each select="Item">
        <xsl:variable name="var:v1" select="userCSharp:StringUpperCase(&quot;18&quot;)" />
        <xsl:variable name="var:v2" select="userCSharp:StringUpperCase(&quot;08&quot;)" />
        <xsl:variable name="var:v3" select="userCSharp:StringUpperCase(&quot;0000&quot;)" />
        <xsl:variable name="var:v4" select="userCSharp:StringUpperCase(&quot;REG&quot;)" />
        <xsl:variable name="var:v5" select="userCSharp:StringUpperCase(&quot;000000000&quot;)" />
        <xsl:variable name="var:v6" select="userCSharp:StringUpperCase(&quot;N&quot;)" />
        <xsl:variable name="var:v7" select="userCSharp:StringUpperCase(&quot;0001&quot;)" />
        <xsl:variable name="var:v8" select="userCSharp:StringUpperCase(&quot;0&quot;)" />
        <xsl:variable name="var:v9" select="userCSharp:StringUpperCase(&quot;000000000000000000&quot;)" />
        <xsl:variable name="var:v10" select="userCSharp:StringUpperCase(&quot;0100&quot;)" />
        <xsl:variable name="var:v11" select="userCSharp:StringUpperCase(&quot;B&quot;)" />
        <xsl:variable name="var:v12" select="userCSharp:StringUpperCase(&quot;SCE&quot;)" />
        <xsl:variable name="var:v13" select="userCSharp:StringUpperCase(&quot;00&quot;)" />
        <xsl:variable name="var:v14" select="userCSharp:StringUpperCase(&quot;STD&quot;)" />
        <xsl:variable name="var:v15" select="userCSharp:StringUpperCase(&quot;1&quot;)" />
        <Order>
          <Header>
            <DistributionCentre>
              <xsl:value-of select="$var:v1" />
            </DistributionCentre>
            <Warehouse>
              <xsl:value-of select="$var:v2" />
            </Warehouse>
            <CustomerNumber>
              <xsl:value-of select="StoreNo/text()" />
            </CustomerNumber>
            <DeliveryDate>
              <xsl:value-of select="ETA_to_Store/text()" />
            </DeliveryDate>
            <DeliveryTime>
              <xsl:value-of select="$var:v3" />
            </DeliveryTime>
            <InvoiceNumber>
              <xsl:value-of select="SONo/text()" />
            </InvoiceNumber>
            <OrderPersonalityType>
              <xsl:value-of select="$var:v4" />
            </OrderPersonalityType>
            <OrderDate>
              <xsl:value-of select="ETA/text()" />
            </OrderDate>
            <OrderTime>
              <xsl:value-of select="$var:v4" />
            </OrderTime>
            <PPS>
              <xsl:value-of select="$var:v5" />
            </PPS>
            <TokenNumber>
              <xsl:value-of select="SONo/text()" />
            </TokenNumber>
            <OrderInstruction>
              <xsl:value-of select="StoreRef/text()" />
            </OrderInstruction>
          </Header>
          <Detail>
            <ProductCode>
              <xsl:value-of select="SKU/text()" />
            </ProductCode>
            <OrderQuantity>
              <xsl:value-of select="Qty/text()" />
            </OrderQuantity>
            <ReserveOverrideFlag>
              <xsl:value-of select="$var:v6" />
            </ReserveOverrideFlag>
            <PriceAdjustFlag>
              <xsl:value-of select="$var:v6" />
            </PriceAdjustFlag>
            <ShipCaseUnit>
              <xsl:value-of select="$var:v7" />
            </ShipCaseUnit>
            <SubstitutionType>
              <xsl:value-of select="$var:v8" />
            </SubstitutionType>
            <SubstitutionCode1>
              <xsl:value-of select="$var:v9" />
            </SubstitutionCode1>
            <SubstitutionFactor1>
              <xsl:value-of select="$var:v10" />
            </SubstitutionFactor1>
            <SubstitutionPriceAdjustFlag1>
              <xsl:value-of select="$var:v6" />
            </SubstitutionPriceAdjustFlag1>
            <SubstitutionCode2>
              <xsl:value-of select="$var:v9" />
            </SubstitutionCode2>
            <SubstitutionFactor2>
              <xsl:value-of select="$var:v10" />
            </SubstitutionFactor2>
            <SubstitutionPriceAdjustFlag2>
              <xsl:value-of select="$var:v6" />
            </SubstitutionPriceAdjustFlag2>
            <SubstitutionCode3>
              <xsl:value-of select="$var:v9" />
            </SubstitutionCode3>
            <SubstitutionFactor3>
              <xsl:value-of select="$var:v10" />
            </SubstitutionFactor3>
            <SubstitutionPriceAdjustFlag3>
              <xsl:value-of select="$var:v6" />
            </SubstitutionPriceAdjustFlag3>
            <PickSlot>
              <xsl:value-of select="$var:v11" />
            </PickSlot>
            <PickType>
              <xsl:value-of select="$var:v12" />
            </PickType>
            <WeekNumber>
              <xsl:value-of select="$var:v13" />
            </WeekNumber>
            <PromoWeekNumber>
              <xsl:value-of select="$var:v13" />
            </PromoWeekNumber>
            <PickEaches>
              <xsl:value-of select="$var:v6" />
            </PickEaches>
          </Detail>
          <Trailer>
            <DistributionCentre>
              <xsl:value-of select="$var:v1" />
            </DistributionCentre>
            <Warehouse>
              <xsl:value-of select="$var:v1" />
            </Warehouse>
            <CustomerNumber>
              <xsl:value-of select="SONo/text()" />
            </CustomerNumber>
            <OrderType>
              <xsl:value-of select="$var:v14" />
            </OrderType>
            <DetailLines>
              <xsl:value-of select="$var:v15" />
            </DetailLines>
            <otalOrderQuantity>
              <xsl:value-of select="$var:v15" />
            </otalOrderQuantity>
          </Trailer>
        </Order>
      </xsl:for-each>
    </ns0:Orders>
  </xsl:template>
  <msxsl:script language="C#" implements-prefix="userCSharp"><![CDATA[
public string StringUpperCase(string str)
{
	if (str == null)
	{
		return "";
	}
	return str.ToUpper(System.Globalization.CultureInfo.InvariantCulture);
}



]]></msxsl:script>
</xsl:stylesheet>