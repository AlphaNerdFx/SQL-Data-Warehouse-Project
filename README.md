# Data Warehouse and Analytics Project

Welcome to the Data Warehouse and Analytics Project repository! 

🚀 This project demonstrates a comprehensive data warehousing and analytics solution, from building a data warehouse to generating actionable insights. Designed as a portfolio project, it highlights industry best practices in data engineering and analytics.
🏗️ Data Architecture
The data architecture for this project follows Medallion Architecture Bronze, Silver, and Gold layers: Data Architecture

<mxfile host="Electron" agent="Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) draw.io/28.1.2 Chrome/138.0.7204.243 Electron/37.4.0 Safari/537.36" version="28.1.2">
  <diagram name="Page-1" id="SBxHi6xVujuODJrhT6Hx">
    <mxGraphModel dx="524" dy="833" grid="1" gridSize="10" guides="1" tooltips="1" connect="1" arrows="1" fold="1" page="1" pageScale="1" pageWidth="850" pageHeight="1100" math="0" shadow="0">
      <root>
        <mxCell id="0" />
        <mxCell id="1" parent="0" />
        <mxCell id="rFzrNgxuQG7IWoQBciA_-1" value="&lt;font style=&quot;font-size: 100px;&quot;&gt;&lt;b style=&quot;&quot;&gt;High Level Architecture&lt;/b&gt;&lt;/font&gt;" style="text;html=1;align=center;verticalAlign=middle;resizable=0;points=[];autosize=1;strokeColor=none;fillColor=none;" parent="1" vertex="1">
          <mxGeometry x="49.999999999999986" width="1140" height="130" as="geometry" />
        </mxCell>
        <mxCell id="rFzrNgxuQG7IWoQBciA_-2" value="" style="rounded=0;whiteSpace=wrap;html=1;strokeColor=default;dashed=1;fillColor=none;" parent="1" vertex="1">
          <mxGeometry x="90" y="221.25" width="130" height="320" as="geometry" />
        </mxCell>
        <mxCell id="rFzrNgxuQG7IWoQBciA_-3" value="" style="rounded=0;whiteSpace=wrap;html=1;fillColor=default;strokeColor=none;dashed=1;dashPattern=1 4;" parent="1" vertex="1">
          <mxGeometry x="125.36" y="200" width="60" height="40" as="geometry" />
        </mxCell>
        <mxCell id="rFzrNgxuQG7IWoQBciA_-5" value="&lt;b&gt;Sources&lt;/b&gt;" style="text;html=1;align=center;verticalAlign=middle;whiteSpace=wrap;rounded=0;" parent="1" vertex="1">
          <mxGeometry x="125.36" y="205" width="60" height="30" as="geometry" />
        </mxCell>
        <mxCell id="rFzrNgxuQG7IWoQBciA_-8" value="" style="rounded=0;whiteSpace=wrap;html=1;strokeColor=default;dashed=1;fillColor=none;" parent="1" vertex="1">
          <mxGeometry x="265" y="181.25" width="645" height="560" as="geometry" />
        </mxCell>
        <mxCell id="rFzrNgxuQG7IWoQBciA_-9" value="" style="rounded=0;whiteSpace=wrap;html=1;fillColor=default;strokeColor=none;dashed=1;dashPattern=1 4;" parent="1" vertex="1">
          <mxGeometry x="527.5" y="160" width="120" height="40" as="geometry" />
        </mxCell>
        <mxCell id="rFzrNgxuQG7IWoQBciA_-10" value="&lt;b&gt;Data Warehouse&lt;/b&gt;" style="text;html=1;align=center;verticalAlign=middle;whiteSpace=wrap;rounded=0;" parent="1" vertex="1">
          <mxGeometry x="537.5" y="165" width="100" height="30" as="geometry" />
        </mxCell>
        <mxCell id="rFzrNgxuQG7IWoQBciA_-11" value="" style="rounded=0;whiteSpace=wrap;html=1;strokeColor=default;dashed=1;fillColor=none;" parent="1" vertex="1">
          <mxGeometry x="940" y="216.25" width="210" height="512.5" as="geometry" />
        </mxCell>
        <mxCell id="rFzrNgxuQG7IWoQBciA_-12" value="" style="rounded=0;whiteSpace=wrap;html=1;fillColor=default;strokeColor=none;dashed=1;dashPattern=1 4;" parent="1" vertex="1">
          <mxGeometry x="1009.25" y="200" width="70" height="40" as="geometry" />
        </mxCell>
        <mxCell id="rFzrNgxuQG7IWoQBciA_-13" value="&lt;b&gt;Consume&lt;/b&gt;" style="text;html=1;align=center;verticalAlign=middle;whiteSpace=wrap;rounded=0;" parent="1" vertex="1">
          <mxGeometry x="1005.5" y="205" width="77.5" height="30" as="geometry" />
        </mxCell>
        <mxCell id="rFzrNgxuQG7IWoQBciA_-18" value="" style="rounded=0;whiteSpace=wrap;html=1;fillColor=#ffe6cc;strokeColor=#d79b00;" parent="1" vertex="1">
          <mxGeometry x="290" y="208.75" width="190" height="25" as="geometry" />
        </mxCell>
        <mxCell id="rFzrNgxuQG7IWoQBciA_-19" value="" style="rounded=0;whiteSpace=wrap;html=1;fillColor=#f5f5f5;fontColor=#333333;strokeColor=#666666;" parent="1" vertex="1">
          <mxGeometry x="500" y="206.25" width="180" height="22.5" as="geometry" />
        </mxCell>
        <mxCell id="rFzrNgxuQG7IWoQBciA_-20" value="" style="rounded=0;whiteSpace=wrap;html=1;fillColor=#fff2cc;strokeColor=#d6b656;" parent="1" vertex="1">
          <mxGeometry x="700" y="206.25" width="200" height="25" as="geometry" />
        </mxCell>
        <mxCell id="rFzrNgxuQG7IWoQBciA_-21" value="" style="rounded=0;whiteSpace=wrap;html=1;fillColor=none;strokeColor=#d79b00;strokeWidth=3;" parent="1" vertex="1">
          <mxGeometry x="285" y="251.25" width="185" height="480" as="geometry" />
        </mxCell>
        <mxCell id="rFzrNgxuQG7IWoQBciA_-22" value="" style="rounded=0;whiteSpace=wrap;html=1;fillColor=none;fontColor=#333333;strokeColor=#666666;strokeWidth=3;" parent="1" vertex="1">
          <mxGeometry x="490" y="248.75" width="190" height="482.5" as="geometry" />
        </mxCell>
        <mxCell id="rFzrNgxuQG7IWoQBciA_-24" value="" style="rounded=0;whiteSpace=wrap;html=1;fillColor=none;strokeColor=#d6b656;strokeWidth=3;" parent="1" vertex="1">
          <mxGeometry x="705" y="243.75" width="185" height="487.5" as="geometry" />
        </mxCell>
        <mxCell id="rFzrNgxuQG7IWoQBciA_-25" value="&lt;b&gt;&lt;font style=&quot;font-size: 15px;&quot;&gt;Bronze Layer&lt;/font&gt;&lt;/b&gt;" style="text;html=1;align=center;verticalAlign=middle;whiteSpace=wrap;rounded=0;" parent="1" vertex="1">
          <mxGeometry x="327.5" y="207.5" width="110" height="26.25" as="geometry" />
        </mxCell>
        <mxCell id="rFzrNgxuQG7IWoQBciA_-26" value="&lt;b&gt;&lt;font style=&quot;font-size: 15px;&quot;&gt;Silver Layer&lt;/font&gt;&lt;/b&gt;" style="text;html=1;align=center;verticalAlign=middle;whiteSpace=wrap;rounded=0;" parent="1" vertex="1">
          <mxGeometry x="492.5" y="200" width="195" height="35" as="geometry" />
        </mxCell>
        <mxCell id="rFzrNgxuQG7IWoQBciA_-27" value="&lt;b&gt;&lt;font style=&quot;font-size: 15px;&quot;&gt;Gold Layer&lt;/font&gt;&lt;/b&gt;" style="text;html=1;align=center;verticalAlign=middle;whiteSpace=wrap;rounded=0;" parent="1" vertex="1">
          <mxGeometry x="730" y="203.75" width="110" height="30" as="geometry" />
        </mxCell>
        <mxCell id="rFzrNgxuQG7IWoQBciA_-28" value="" style="image;aspect=fixed;html=1;points=[];align=center;fontSize=12;image=img/lib/azure2/general/Folder_Blank.svg;" parent="1" vertex="1">
          <mxGeometry x="124.25" y="261.25" width="49.29" height="40" as="geometry" />
        </mxCell>
        <mxCell id="rFzrNgxuQG7IWoQBciA_-34" value="" style="image;aspect=fixed;html=1;points=[];align=center;fontSize=12;image=img/lib/azure2/general/File.svg;" parent="1" vertex="1">
          <mxGeometry x="154.54" y="281.25" width="24.35" height="30" as="geometry" />
        </mxCell>
        <mxCell id="rFzrNgxuQG7IWoQBciA_-37" value="&lt;b&gt;CRM&lt;/b&gt;" style="text;html=1;align=center;verticalAlign=middle;whiteSpace=wrap;rounded=0;" parent="1" vertex="1">
          <mxGeometry x="124.24999999999999" y="321.25" width="60" height="30" as="geometry" />
        </mxCell>
        <mxCell id="rFzrNgxuQG7IWoQBciA_-38" value="" style="image;aspect=fixed;html=1;points=[];align=center;fontSize=12;image=img/lib/azure2/general/Folder_Blank.svg;" parent="1" vertex="1">
          <mxGeometry x="124.25" y="361.25" width="49.29" height="40" as="geometry" />
        </mxCell>
        <mxCell id="rFzrNgxuQG7IWoQBciA_-39" value="" style="image;aspect=fixed;html=1;points=[];align=center;fontSize=12;image=img/lib/azure2/general/File.svg;" parent="1" vertex="1">
          <mxGeometry x="154.54000000000002" y="381.25" width="24.35" height="30" as="geometry" />
        </mxCell>
        <mxCell id="rFzrNgxuQG7IWoQBciA_-40" value="&lt;b&gt;ERP&lt;/b&gt;" style="text;html=1;align=center;verticalAlign=middle;whiteSpace=wrap;rounded=0;" parent="1" vertex="1">
          <mxGeometry x="112.30999999999999" y="401.25" width="86.09" height="50" as="geometry" />
        </mxCell>
        <mxCell id="rFzrNgxuQG7IWoQBciA_-42" value="&lt;b&gt;Object Type:&amp;nbsp;&lt;/b&gt;&lt;div&gt;CSV Files&lt;/div&gt;" style="text;html=1;align=center;verticalAlign=middle;whiteSpace=wrap;rounded=0;" parent="1" vertex="1">
          <mxGeometry x="99.80000000000001" y="436.25" width="111.11" height="70" as="geometry" />
        </mxCell>
        <mxCell id="rFzrNgxuQG7IWoQBciA_-43" value="&lt;b&gt;Interface:&amp;nbsp;&lt;/b&gt;&lt;div&gt;Files in Folders&lt;/div&gt;" style="text;html=1;align=center;verticalAlign=middle;whiteSpace=wrap;rounded=0;" parent="1" vertex="1">
          <mxGeometry x="100.17" y="471.25" width="110.74" height="80" as="geometry" />
        </mxCell>
        <mxCell id="rFzrNgxuQG7IWoQBciA_-45" value="" style="endArrow=none;html=1;rounded=0;" parent="1" edge="1">
          <mxGeometry width="50" height="50" relative="1" as="geometry">
            <mxPoint x="120.35000000000002" y="441.25" as="sourcePoint" />
            <mxPoint x="190.35000000000002" y="441.25" as="targetPoint" />
          </mxGeometry>
        </mxCell>
        <mxCell id="rFzrNgxuQG7IWoQBciA_-46" value="" style="html=1;verticalLabelPosition=bottom;align=center;labelBackgroundColor=#ffffff;verticalAlign=top;strokeWidth=2;strokeColor=#d79b00;shadow=0;dashed=0;shape=mxgraph.ios7.icons.data;fillColor=#ffe6cc;" parent="1" vertex="1">
          <mxGeometry x="360" y="296.25" width="45" height="70" as="geometry" />
        </mxCell>
        <mxCell id="rFzrNgxuQG7IWoQBciA_-47" value="" style="html=1;verticalLabelPosition=bottom;align=center;labelBackgroundColor=#ffffff;verticalAlign=top;strokeWidth=2;strokeColor=#666666;shadow=0;dashed=0;shape=mxgraph.ios7.icons.data;fillColor=#f5f5f5;fontColor=#333333;" parent="1" vertex="1">
          <mxGeometry x="567.5" y="297.5" width="45" height="67.5" as="geometry" />
        </mxCell>
        <mxCell id="rFzrNgxuQG7IWoQBciA_-48" value="" style="html=1;verticalLabelPosition=bottom;align=center;labelBackgroundColor=#ffffff;verticalAlign=top;strokeWidth=2;strokeColor=#d6b656;shadow=0;dashed=0;shape=mxgraph.ios7.icons.data;fillColor=#fff2cc;" parent="1" vertex="1">
          <mxGeometry x="777.5" y="291.25" width="42.5" height="70" as="geometry" />
        </mxCell>
        <mxCell id="rFzrNgxuQG7IWoQBciA_-49" value="" style="shape=flexArrow;endArrow=classic;html=1;rounded=0;fillColor=#b1ddf0;strokeColor=#10739e;" parent="1" edge="1">
          <mxGeometry width="50" height="50" relative="1" as="geometry">
            <mxPoint x="200" y="331.25" as="sourcePoint" />
            <mxPoint x="340" y="331.25" as="targetPoint" />
            <Array as="points">
              <mxPoint x="258.89" y="331.75" />
            </Array>
          </mxGeometry>
        </mxCell>
        <mxCell id="rFzrNgxuQG7IWoQBciA_-56" value="" style="shape=flexArrow;endArrow=classic;html=1;rounded=0;fillColor=#b1ddf0;strokeColor=#10739e;" parent="1" edge="1">
          <mxGeometry width="50" height="50" relative="1" as="geometry">
            <mxPoint x="640" y="329.25" as="sourcePoint" />
            <mxPoint x="750" y="331.25" as="targetPoint" />
          </mxGeometry>
        </mxCell>
        <mxCell id="rFzrNgxuQG7IWoQBciA_-57" value="" style="shape=flexArrow;endArrow=classic;html=1;rounded=0;fillColor=#b1ddf0;strokeColor=#10739e;" parent="1" edge="1">
          <mxGeometry width="50" height="50" relative="1" as="geometry">
            <mxPoint x="425" y="328.25" as="sourcePoint" />
            <mxPoint x="540" y="328.75" as="targetPoint" />
            <Array as="points">
              <mxPoint x="425" y="328.75" />
            </Array>
          </mxGeometry>
        </mxCell>
        <mxCell id="rFzrNgxuQG7IWoQBciA_-59" value="" style="shape=flexArrow;endArrow=classic;rounded=0;fillColor=#b1ddf0;strokeColor=#10739e;" parent="1" edge="1">
          <mxGeometry width="50" height="50" relative="1" as="geometry">
            <mxPoint x="840" y="331.25" as="sourcePoint" />
            <mxPoint x="970" y="331.25" as="targetPoint" />
          </mxGeometry>
        </mxCell>
        <mxCell id="rFzrNgxuQG7IWoQBciA_-60" value="&lt;b&gt;&lt;font style=&quot;font-size: 15px;&quot;&gt;Raw Data&lt;/font&gt;&lt;/b&gt;" style="text;html=1;align=center;verticalAlign=middle;whiteSpace=wrap;rounded=0;" parent="1" vertex="1">
          <mxGeometry x="337.5" y="383.75" width="85" height="27.5" as="geometry" />
        </mxCell>
        <mxCell id="rFzrNgxuQG7IWoQBciA_-61" value="" style="endArrow=none;html=1;rounded=0;fillColor=#fad7ac;strokeColor=#b46504;" parent="1" edge="1">
          <mxGeometry width="50" height="50" relative="1" as="geometry">
            <mxPoint x="300" y="431.25" as="sourcePoint" />
            <mxPoint x="390" y="432.25" as="targetPoint" />
            <Array as="points">
              <mxPoint x="460" y="432.25" />
            </Array>
          </mxGeometry>
        </mxCell>
        <mxCell id="rFzrNgxuQG7IWoQBciA_-62" value="" style="endArrow=none;html=1;rounded=0;fillColor=#f5f5f5;strokeColor=#666666;" parent="1" edge="1">
          <mxGeometry width="50" height="50" relative="1" as="geometry">
            <mxPoint x="520" y="428.75" as="sourcePoint" />
            <mxPoint x="570" y="428.75" as="targetPoint" />
            <Array as="points">
              <mxPoint x="630" y="428.75" />
              <mxPoint x="640" y="428.75" />
              <mxPoint x="660" y="429.25" />
            </Array>
          </mxGeometry>
        </mxCell>
        <mxCell id="rFzrNgxuQG7IWoQBciA_-63" value="&lt;b&gt;&lt;font style=&quot;font-size: 15px;&quot;&gt;Cleaned, Standardized Data&lt;/font&gt;&lt;/b&gt;" style="text;html=1;align=center;verticalAlign=middle;whiteSpace=wrap;rounded=0;" parent="1" vertex="1">
          <mxGeometry x="505" y="391.25" width="170" height="30" as="geometry" />
        </mxCell>
        <mxCell id="rFzrNgxuQG7IWoQBciA_-64" value="" style="endArrow=none;html=1;rounded=0;fillColor=#fff2cc;strokeColor=#d6b656;" parent="1" edge="1">
          <mxGeometry width="50" height="50" relative="1" as="geometry">
            <mxPoint x="750" y="428.75" as="sourcePoint" />
            <mxPoint x="840" y="429.25" as="targetPoint" />
            <Array as="points">
              <mxPoint x="730" y="431.25" />
              <mxPoint x="860" y="431.25" />
            </Array>
          </mxGeometry>
        </mxCell>
        <mxCell id="rFzrNgxuQG7IWoQBciA_-65" value="&lt;b&gt;&lt;font style=&quot;font-size: 15px;&quot;&gt;Business-Ready Data&lt;/font&gt;&lt;/b&gt;" style="text;html=1;align=center;verticalAlign=middle;whiteSpace=wrap;rounded=0;" parent="1" vertex="1">
          <mxGeometry x="730" y="391.25" width="140" height="30" as="geometry" />
        </mxCell>
        <mxCell id="rFzrNgxuQG7IWoQBciA_-66" value="&lt;font style=&quot;font-size: 15px;&quot;&gt;&lt;b style=&quot;&quot;&gt;Object Type: &lt;/b&gt;Variables&lt;/font&gt;" style="text;html=1;align=center;verticalAlign=middle;whiteSpace=wrap;rounded=0;" parent="1" vertex="1">
          <mxGeometry x="290" y="431.25" width="160" height="40" as="geometry" />
        </mxCell>
        <mxCell id="rFzrNgxuQG7IWoQBciA_-79" value="&lt;b&gt;&lt;font style=&quot;font-size: 15px;&quot;&gt;Load:&amp;nbsp;&lt;/font&gt;&lt;/b&gt;&lt;div&gt;&lt;ul&gt;&lt;li style=&quot;&quot;&gt;&lt;font style=&quot;font-size: 15px;&quot;&gt;Batch Processing&lt;/font&gt;&lt;/li&gt;&lt;li style=&quot;&quot;&gt;&lt;font style=&quot;font-size: 15px;&quot;&gt;Full Load&lt;/font&gt;&lt;/li&gt;&lt;li style=&quot;&quot;&gt;&lt;font style=&quot;font-size: 15px;&quot;&gt;Truncate &amp;amp; Insert&lt;/font&gt;&lt;/li&gt;&lt;/ul&gt;&lt;/div&gt;" style="text;html=1;align=left;verticalAlign=middle;whiteSpace=wrap;rounded=0;" parent="1" vertex="1">
          <mxGeometry x="290" y="506.25" width="160" height="25" as="geometry" />
        </mxCell>
        <mxCell id="rFzrNgxuQG7IWoQBciA_-86" value="&lt;font style=&quot;font-size: 15px;&quot;&gt;No &lt;b style=&quot;&quot;&gt;Transformations&lt;/b&gt;&lt;/font&gt;" style="text;html=1;align=center;verticalAlign=middle;whiteSpace=wrap;rounded=0;" parent="1" vertex="1">
          <mxGeometry x="288.75" y="561.25" width="150" height="40" as="geometry" />
        </mxCell>
        <mxCell id="rFzrNgxuQG7IWoQBciA_-87" value="&lt;font style=&quot;font-size: 15px;&quot;&gt;&lt;b style=&quot;&quot;&gt;Data Model:&amp;nbsp;&lt;/b&gt;None (as-is)&lt;/font&gt;" style="text;html=1;align=center;verticalAlign=middle;whiteSpace=wrap;rounded=0;" parent="1" vertex="1">
          <mxGeometry x="288.75" y="601.25" width="177.5" height="40" as="geometry" />
        </mxCell>
        <mxCell id="rFzrNgxuQG7IWoQBciA_-88" value="&lt;font style=&quot;font-size: 15px;&quot;&gt;&lt;b style=&quot;&quot;&gt;Object Type: &lt;/b&gt;Variables&lt;/font&gt;" style="text;html=1;align=center;verticalAlign=middle;whiteSpace=wrap;rounded=0;" parent="1" vertex="1">
          <mxGeometry x="492.5" y="431.25" width="160" height="40" as="geometry" />
        </mxCell>
        <mxCell id="rFzrNgxuQG7IWoQBciA_-90" value="&lt;b&gt;&lt;font style=&quot;font-size: 15px;&quot;&gt;Load:&amp;nbsp;&lt;/font&gt;&lt;/b&gt;&lt;div&gt;&lt;ul&gt;&lt;li style=&quot;&quot;&gt;&lt;font style=&quot;font-size: 15px;&quot;&gt;Batch Processing&lt;/font&gt;&lt;/li&gt;&lt;li style=&quot;&quot;&gt;&lt;font style=&quot;font-size: 15px;&quot;&gt;Full Load&lt;/font&gt;&lt;/li&gt;&lt;li style=&quot;&quot;&gt;&lt;font style=&quot;font-size: 15px;&quot;&gt;Truncate &amp;amp; Insert&lt;/font&gt;&lt;/li&gt;&lt;/ul&gt;&lt;/div&gt;" style="text;html=1;align=left;verticalAlign=middle;whiteSpace=wrap;rounded=0;" parent="1" vertex="1">
          <mxGeometry x="492.5" y="506.25" width="160" height="30" as="geometry" />
        </mxCell>
        <mxCell id="rFzrNgxuQG7IWoQBciA_-91" value="&lt;b style=&quot;background-color: transparent; color: light-dark(rgb(0, 0, 0), rgb(255, 255, 255)); font-size: 15px; text-align: left;&quot;&gt;Transformations:&lt;/b&gt;&lt;blockquote style=&quot;margin: 0 0 0 40px; border: none; padding: 0px;&quot;&gt;&lt;div style=&quot;text-align: left;&quot;&gt;&lt;ul&gt;&lt;li&gt;&lt;span style=&quot;font-size: 15px;&quot;&gt;Data Cleansing&lt;/span&gt;&lt;/li&gt;&lt;li&gt;&lt;span style=&quot;font-size: 15px;&quot;&gt;Data Standardization&lt;/span&gt;&lt;/li&gt;&lt;li&gt;&lt;span style=&quot;font-size: 15px;&quot;&gt;Data Normalization&lt;/span&gt;&lt;/li&gt;&lt;li&gt;&lt;span style=&quot;font-size: 15px;&quot;&gt;Derived Columns&lt;/span&gt;&lt;/li&gt;&lt;li&gt;&lt;span style=&quot;font-size: 15px;&quot;&gt;Data Enrichment&lt;/span&gt;&lt;/li&gt;&lt;/ul&gt;&lt;/div&gt;&lt;/blockquote&gt;" style="text;html=1;align=center;verticalAlign=middle;whiteSpace=wrap;rounded=0;" parent="1" vertex="1">
          <mxGeometry x="430" y="611.25" width="250" height="40" as="geometry" />
        </mxCell>
        <mxCell id="rFzrNgxuQG7IWoQBciA_-92" value="&lt;font style=&quot;font-size: 15px;&quot;&gt;&lt;b style=&quot;&quot;&gt;Data Model:&amp;nbsp;&lt;/b&gt;None (as-is)&lt;/font&gt;" style="text;html=1;align=center;verticalAlign=middle;whiteSpace=wrap;rounded=0;" parent="1" vertex="1">
          <mxGeometry x="492.5" y="691.25" width="177.5" height="40" as="geometry" />
        </mxCell>
        <mxCell id="rFzrNgxuQG7IWoQBciA_-101" value="&lt;font style=&quot;font-size: 15px;&quot;&gt;&lt;b style=&quot;&quot;&gt;Object Type: &lt;/b&gt;Variables&lt;/font&gt;" style="text;html=1;align=center;verticalAlign=middle;whiteSpace=wrap;rounded=0;" parent="1" vertex="1">
          <mxGeometry x="710" y="436.25" width="160" height="40" as="geometry" />
        </mxCell>
        <mxCell id="rFzrNgxuQG7IWoQBciA_-102" value="&lt;font style=&quot;font-size: 15px;&quot;&gt;No&amp;nbsp;&lt;b&gt;Load&lt;/b&gt;&lt;/font&gt;" style="text;html=1;align=left;verticalAlign=middle;whiteSpace=wrap;rounded=0;" parent="1" vertex="1">
          <mxGeometry x="710" y="471.25" width="60" height="30" as="geometry" />
        </mxCell>
        <mxCell id="rFzrNgxuQG7IWoQBciA_-104" value="&lt;b style=&quot;background-color: transparent; color: light-dark(rgb(0, 0, 0), rgb(255, 255, 255)); font-size: 15px; text-align: left;&quot;&gt;Transformations:&lt;/b&gt;&lt;blockquote style=&quot;margin: 0 0 0 40px; border: none; padding: 0px;&quot;&gt;&lt;div style=&quot;text-align: left;&quot;&gt;&lt;ul&gt;&lt;li&gt;&lt;span style=&quot;font-size: 15px;&quot;&gt;Data Integrations&lt;/span&gt;&lt;/li&gt;&lt;li&gt;&lt;span style=&quot;font-size: 15px;&quot;&gt;Aggregations&lt;br&gt;&lt;/span&gt;&lt;/li&gt;&lt;li&gt;&lt;span style=&quot;font-size: 15px;&quot;&gt;Business Logics&lt;/span&gt;&lt;/li&gt;&lt;/ul&gt;&lt;/div&gt;&lt;/blockquote&gt;" style="text;html=1;align=center;verticalAlign=middle;whiteSpace=wrap;rounded=0;" parent="1" vertex="1">
          <mxGeometry x="647.5" y="536.25" width="250" height="40" as="geometry" />
        </mxCell>
        <mxCell id="rFzrNgxuQG7IWoQBciA_-107" value="&lt;b style=&quot;background-color: transparent; color: light-dark(rgb(0, 0, 0), rgb(255, 255, 255)); font-size: 15px; text-align: left;&quot;&gt;Data Model:&lt;/b&gt;&lt;blockquote style=&quot;margin: 0 0 0 40px; border: none; padding: 0px;&quot;&gt;&lt;div style=&quot;text-align: left;&quot;&gt;&lt;ul&gt;&lt;li&gt;&lt;span style=&quot;font-size: 15px;&quot;&gt;Star Schema&lt;/span&gt;&lt;/li&gt;&lt;li&gt;&lt;span style=&quot;font-size: 15px;&quot;&gt;Flat Table&lt;/span&gt;&lt;/li&gt;&lt;li&gt;&lt;span style=&quot;font-size: 15px;&quot;&gt;Aggregated Table&lt;/span&gt;&lt;/li&gt;&lt;/ul&gt;&lt;/div&gt;&lt;/blockquote&gt;" style="text;html=1;align=center;verticalAlign=middle;whiteSpace=wrap;rounded=0;" parent="1" vertex="1">
          <mxGeometry x="630" y="631.25" width="250" height="40" as="geometry" />
        </mxCell>
        <mxCell id="rFzrNgxuQG7IWoQBciA_-108" value="" style="image;aspect=fixed;html=1;points=[];align=center;fontSize=12;image=img/lib/azure2/power_platform/PowerBI.svg;" parent="1" vertex="1">
          <mxGeometry x="1007" y="253.67000000000002" width="76" height="101.33" as="geometry" />
        </mxCell>
        <mxCell id="rFzrNgxuQG7IWoQBciA_-109" value="&lt;span style=&quot;font-size: 15px;&quot;&gt;&lt;b&gt;PowerBI &amp;amp; Reporting&lt;/b&gt;&lt;/span&gt;" style="text;html=1;align=center;verticalAlign=middle;whiteSpace=wrap;rounded=0;" parent="1" vertex="1">
          <mxGeometry x="959.25" y="372.5" width="160" height="31.25" as="geometry" />
        </mxCell>
        <mxCell id="rFzrNgxuQG7IWoQBciA_-111" value="" style="image;aspect=fixed;html=1;points=[];align=center;fontSize=12;image=img/lib/azure2/ai_machine_learning/Anomaly_Detector.svg;" parent="1" vertex="1">
          <mxGeometry x="999.25" y="411.25" width="83.75" height="83.75" as="geometry" />
        </mxCell>
        <mxCell id="rFzrNgxuQG7IWoQBciA_-112" value="&lt;span style=&quot;font-size: 15px;&quot;&gt;&lt;b&gt;Ad-Hoc SQL Queries&lt;/b&gt;&lt;/span&gt;" style="text;html=1;align=center;verticalAlign=middle;whiteSpace=wrap;rounded=0;" parent="1" vertex="1">
          <mxGeometry x="965" y="508.75" width="160" height="31.25" as="geometry" />
        </mxCell>
        <mxCell id="rFzrNgxuQG7IWoQBciA_-114" value="" style="editableCssRules=.*;html=1;shape=image;verticalLabelPosition=bottom;labelBackgroundColor=#ffffff;verticalAlign=top;aspect=fixed;imageAspect=0;image=data:image/svg+xml,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHhtbG5zOnY9Imh0dHBzOi8vdmVjdGEuaW8vbmFubyIgd2lkdGg9IjE2Ljk3OTk5OTU0MjIzNjMyOCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDE2Ljk3OTk5OTU0MjIzNjMyOCAyMCI+JiN4YTsJPHN0eWxlIHR5cGU9InRleHQvY3NzIj4mI3hhOwkuc3Qwe2ZpbGw6IzY2OWRmNjt9JiN4YTsJLnN0MXtmaWxsOiM0Mjg1ZjQ7fSYjeGE7CS5zdDJ7ZmlsbDojYWVjYmZhO30mI3hhOwk8L3N0eWxlPiYjeGE7CTxnIGNsYXNzPSJzdDAiPiYjeGE7CQk8cGF0aCBkPSJNOC40OSAxMC4yOUwuMjQgNS4zNSA4LjQ5LjU4bDguMjQgNC42N3pNMS43NiA1LjM2bDYuNzIgNCA2LjcyLTQuMTEtNi43MS0zLjc4eiIvPiYjeGE7CQk8cGF0aCBkPSJNOC40OSAxOS40NEwuMjEgMTMuODkgOC40OSA5LjNsOC4xNSA0LjY0em0tNi44LTUuNWw2LjggNC41NiA2LjctNC41LTYuNy0zLjgyeiIvPiYjeGE7CTwvZz4mI3hhOwk8ZyBjbGFzcz0ic3QxIj4mI3hhOwkJPHBhdGggZD0iTS42MTMgNS41MDJsLjY3NS0uMzcxIDcuNDc3IDEzLjYtLjY3NS4zNzF6Ii8+JiN4YTsJCTxwYXRoIGQ9Ik04LjE5NCAxOC44MjZsNy4zMDEtMTMuNTU5LjY3OC4zNjUtNy4zMDEgMTMuNTU5ek0uNzE2IDEzLjY4N0w4LjA5Ni45MDRsLjY2Ny4zODUtNy4zOCAxMi43ODN6Ii8+JiN4YTsJCTxwYXRoIGQ9Ik04LjE5NCAxLjIxNGwuNjY5LS4zODEgNy40MDUgMTIuOTg3LS42NjkuMzgxeiIvPiYjeGE7CQk8cGF0aCBkPSJNOC4xMy45NmguNzdWMTguOWgtLjc3ek0uNTUgNS40M2guNzd2OC42NkguNTV6bTE0Ljk3LS4wOWguNzdWMTRoLS43N3oiLz4mI3hhOwk8L2c+JiN4YTsJPGcgY2xhc3M9InN0MiI+JiN4YTsJCTxjaXJjbGUgY3g9IjguNTIiIGN5PSIxLjA3IiByPSIxLjA3Ii8+JiN4YTsJCTxjaXJjbGUgY3g9IjE1LjkxIiBjeT0iNS4zNCIgcj0iMS4wNyIvPiYjeGE7CQk8Y2lyY2xlIGN4PSIxLjA3IiBjeT0iNS4zNCIgcj0iMS4wNyIvPiYjeGE7CQk8Y2lyY2xlIGN4PSI4LjUyIiBjeT0iOS45MyIgcj0iMS42OCIvPiYjeGE7CQk8Y2lyY2xlIGN4PSIxNS45MSIgY3k9IjEzLjk0IiByPSIxLjA3Ii8+JiN4YTsJCTxjaXJjbGUgY3g9IjEuMDciIGN5PSIxMy45NCIgcj0iMS4wNyIvPiYjeGE7CQk8Y2lyY2xlIGN4PSI4LjUyIiBjeT0iMTguOTMiIHI9IjEuMDciLz4mI3hhOwkJPHBhdGggZD0iTTguNDkgMTAuMjlMLjI0IDUuMzUgOC40OS41OGw4LjI0IDQuNjd6TTEuNzYgNS4zNmw2LjcyIDQgNi43Mi00LjExLTYuNzEtMy43OHoiLz4mI3hhOwkJPHBhdGggZD0iTTguNDkgMTkuNDRMLjIxIDEzLjg5IDguNDkgOS4zbDguMTUgNC42NHptLTYuOC01LjVsNi44IDQuNTYgNi43LTQuNS02LjctMy44MnoiLz4mI3hhOwkJPHBhdGggZD0iTS42MTMgNS41MDJsLjY3NS0uMzcxIDcuNDc3IDEzLjYtLjY3NS4zNzF6Ii8+JiN4YTsJCTxwYXRoIGQ9Ik04LjE5NCAxOC44MjZsNy4zMDEtMTMuNTU5LjY3OC4zNjUtNy4zMDEgMTMuNTU5ek0uNzE2IDEzLjY4N0w4LjA5Ni45MDRsLjY2Ny4zODUtNy4zOCAxMi43ODN6Ii8+JiN4YTsJCTxwYXRoIGQ9Ik04LjE5NCAxLjIxNGwuNjY5LS4zODEgNy40MDUgMTIuOTg3LS42NjkuMzgxeiIvPiYjeGE7CQk8cGF0aCBkPSJNOC4xMy45NmguNzdWMTguOWgtLjc3ek0uNTUgNS40M2guNzd2OC42NkguNTV6bTE0Ljk3LS4wOWguNzdWMTRoLS43N3oiLz4mI3hhOwk8L2c+JiN4YTsJPGcgY2xhc3M9InN0MCI+JiN4YTsJCTxjaXJjbGUgY3g9IjguNTIiIGN5PSIxLjA3IiByPSIxLjA3Ii8+JiN4YTsJCTxjaXJjbGUgY3g9IjE1LjkxIiBjeT0iNS4zNCIgcj0iMS4wNyIvPiYjeGE7CQk8Y2lyY2xlIGN4PSIxLjA3IiBjeT0iNS4zNCIgcj0iMS4wNyIvPiYjeGE7CQk8Y2lyY2xlIGN4PSI4LjUyIiBjeT0iOS45MyIgcj0iMS42OCIvPiYjeGE7CQk8Y2lyY2xlIGN4PSIxNS45MSIgY3k9IjEzLjk0IiByPSIxLjA3Ii8+JiN4YTsJCTxjaXJjbGUgY3g9IjEuMDciIGN5PSIxMy45NCIgcj0iMS4wNyIvPiYjeGE7CQk8Y2lyY2xlIGN4PSI4LjUyIiBjeT0iMTguOTMiIHI9IjEuMDciLz4mI3hhOwk8L2c+JiN4YTs8L3N2Zz4=;" parent="1" vertex="1">
          <mxGeometry x="993.78" y="560.63" width="100.94" height="118.75" as="geometry" />
        </mxCell>
        <mxCell id="rFzrNgxuQG7IWoQBciA_-115" value="&lt;span style=&quot;font-size: 15px;&quot;&gt;&lt;b&gt;Machine Learning&lt;/b&gt;&lt;/span&gt;" style="text;html=1;align=center;verticalAlign=middle;whiteSpace=wrap;rounded=0;" parent="1" vertex="1">
          <mxGeometry x="969.25" y="690" width="150" height="30" as="geometry" />
        </mxCell>
        <mxCell id="rFzrNgxuQG7IWoQBciA_-116" value="" style="image;aspect=fixed;html=1;points=[];align=center;fontSize=12;image=img/lib/azure2/databases/SQL_Database.svg;" parent="1" vertex="1">
          <mxGeometry x="267.5" y="140" width="25.5" height="34" as="geometry" />
        </mxCell>
        <mxCell id="rFzrNgxuQG7IWoQBciA_-117" value="&lt;font style=&quot;font-size: 15px;&quot;&gt;SQL Server&lt;/font&gt;" style="text;html=1;align=center;verticalAlign=middle;whiteSpace=wrap;rounded=0;" parent="1" vertex="1">
          <mxGeometry x="293" y="146.5" width="85" height="27.5" as="geometry" />
        </mxCell>
        <mxCell id="wVxzaaHvG-MLcD2AUTRB-1" value="" style="html=1;verticalLabelPosition=bottom;align=center;labelBackgroundColor=#ffffff;verticalAlign=top;strokeWidth=2;strokeColor=#0080F0;shadow=0;dashed=0;shape=mxgraph.ios7.icons.window;" vertex="1" parent="1">
          <mxGeometry x="320.5" y="261.25" width="30" height="30" as="geometry" />
        </mxCell>
        <mxCell id="wVxzaaHvG-MLcD2AUTRB-2" value="Stored Procedure" style="text;html=1;align=center;verticalAlign=middle;whiteSpace=wrap;rounded=0;" vertex="1" parent="1">
          <mxGeometry x="350" y="261" width="120" height="30" as="geometry" />
        </mxCell>
        <mxCell id="wVxzaaHvG-MLcD2AUTRB-9" value="" style="html=1;verticalLabelPosition=bottom;align=center;labelBackgroundColor=#ffffff;verticalAlign=top;strokeWidth=2;strokeColor=#0080F0;shadow=0;dashed=0;shape=mxgraph.ios7.icons.window;" vertex="1" parent="1">
          <mxGeometry x="520.5" y="261" width="30" height="30" as="geometry" />
        </mxCell>
        <mxCell id="wVxzaaHvG-MLcD2AUTRB-10" value="Stored Procedure" style="text;html=1;align=center;verticalAlign=middle;whiteSpace=wrap;rounded=0;" vertex="1" parent="1">
          <mxGeometry x="550" y="260.75" width="120" height="30" as="geometry" />
        </mxCell>
      </root>
    </mxGraphModel>
  </diagram>
</mxfile>

- Bronze Layer: Stores raw data as-is from the source systems. Data is ingested from CSV Files into SQL Server Database.
- Silver Layer: This layer includes data cleansing, standardization, and normalization processes to prepare data for analysis.
- Gold Layer: Houses business-ready data modeled into a star schema required for reporting and analytics.
📖 Project Overview

This project involves:

- Data Architecture: Designing a Modern Data Warehouse Using Medallion Architecture Bronze, Silver, and Gold layers.

- ETL Pipelines: Extracting, transforming, and loading data from source systems into the warehouse.

- Data Modeling: Developing fact and dimension tables optimized for analytical queries.

- Analytics & Reporting: Creating SQL-based reports and dashboards for actionable insights.

🚀 Project Requirements

📦 Building the Data Warehouse (Data Engineering)

🎯 Objective

Develop a modern data warehouse using SQL Server to consolidate sales data, enabling analytical reporting and informed decision-making.

🧾 Specifications

- Data Sources: Import data from two source systems (ERP and CRM) provided as CSV files.

- Data Quality: Cleanse and resolve data quality issues prior to analysis.

- Integration: Combine both sources into a single, user-friendly data model designed for analytical queries.

- Scope: Focus on the latest dataset only; historization of data is not required.

- Documentation: Provide clear documentation of the data model to support both business stakeholders and analytics teams.

📊 BI: Analytics & Reporting (Data Analysis)

🎯  Objective

Develop SQL-based analytics to deliver detailed insights into:

- Customer Behavior

- Product Performance

- Sales Trends

These insights empower stakeholders with key business metrics, enabling strategic decision-making.

🛡️ License

This project is licensed under the MIT License. You are free to use, modify, and share this project with proper attribution.

🌟 About Me

Hi there! I'm Youssef Larbi. I’m a data enthusiast and passionate Data Science student, driven to attain as much knowledge about the field and integrate Data/IT into every aspect of my day-to-day life!


