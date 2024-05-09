<?xml version="1.0" encoding="ISO-8859-1"?>
<fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
  <fo:layout-master-set>
    <fo:simple-page-master master-name="A4"
      page-height="29.7cm"
      page-width="21cm"
      margin-top="1cm"
      margin-bottom="2cm"
      margin-left="2.5cm"
      margin-right="2.5cm">
      <fo:region-body margin-top="3cm" />
      <fo:region-before extent="3cm" />
      <fo:region-after extent="1.5cm" />
    </fo:simple-page-master>
  </fo:layout-master-set>
  <fo:page-sequence master-reference="A4">
    <fo:flow flow-name="xsl-region-body">
      <fo:block font-size="18pt"
        font-family="sans-serif"
        line-height="24pt"
        space-after.optimum="15pt"
        text-align="center"
        padding-top="3pt">
        Mi primer XSL-FO
      </fo:block>
      <fo:block font-size="12pt"
        font-family="sans-serif"
        line-height="15pt"
        space-after.optimum="3pt"
        text-align="justify">
        Hola este es mi primer XSL-FO.
      </fo:block>
    </fo:flow>
  </fo:page-sequence>
</fo:root>