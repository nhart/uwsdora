<xsl:stylesheet version="1.0" xmlns="http://www.loc.gov/mods/v3" xmlns:marc="http://www.loc.gov/MARC21/slim" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
  <xsl:output encoding="UTF-8"  indent="yes" method="xml"/>
  <xsl:strip-space elements="*"/>

<!--  <xsl:stylesheet xmlns="http://www.loc.gov/
mods/v3" xmlns:marc="http://www.loc.gov/MARC21/slim" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" exclude-result-prefixes="xlink marc" version="1.0">
  <xsl:output encoding="UTF-8" indent="yes" method="xml"/> 
  <xsl:strip-space elements="*" /> -->  

  <xsl:template match="/">
<!-- <modsCollection xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://www.loc.gov/mods/v3 http://www.loc.gov/standards/mods/v3/mods-3-4.xsd"> -->
<mods version="3.4">
 <xsl:apply-templates select="Session/Formdata"/>
  </mods>
<!-- </modsCollection> -->
  </xsl:template>
  
  <xsl:template match="Session/Formdata">



  <!-- ................................Generic Stuff.................................................-->

      <!-- FOR -->
      <xsl:choose>
       <xsl:when test="FOR">
<note type='FOR_code'>
<xsl:attribute name="apportionment"> <xsl:apply-templates select="FOR_apportionment"/></xsl:attribute>
<note type="anzsrc_FOR_field_of_research_code">
<xsl:if test="FOR = '0101 - Pure Mathematics'">0101 - Pure Mathematics</xsl:if>
<xsl:if test="FOR = '0102 - Applied Mathematics'">0102 - Applied Mathematics</xsl:if>
<xsl:if test="FOR = '0103 - Numerical and Computational Mathematics'">0103 - Numerical and Computational Mathematics</xsl:if>
<xsl:if test="FOR = '0104 - Statistics'">0104 - Statistics</xsl:if>
<xsl:if test="FOR = '0105 - Mathematical Physics'">0105 - Mathematical Physics</xsl:if>
<xsl:if test="FOR = '0199 - Other Mathematical Sciences'">0199 - Other Mathematical Sciences</xsl:if>
<xsl:if test="FOR = '0201 - Astronomical and Space Sciences'">0201 - Astronomical and Space Sciences</xsl:if>
<xsl:if test="FOR = '0202 - Atomic, Molecular, Nuclear, Particle and Plasma Physics'">0202 - Atomic, Molecular, Nuclear, Particle and Plasma Physics</xsl:if>
<xsl:if test="FOR = '0203 - Classical Physics'">0203 - Classical Physics</xsl:if>
<xsl:if test="FOR = '0204 - Condensed Matter Physics'">0204 - Condensed Matter Physics</xsl:if>
<xsl:if test="FOR = '0205 - Optical Physics'">0205 - Optical Physics</xsl:if>
<xsl:if test="FOR = '0206 - Quantum Physics'">0206 - Quantum Physics</xsl:if>
<xsl:if test="FOR = '0299 - Other Physical Sciences'">0299 - Other Physical Sciences</xsl:if>
<xsl:if test="FOR = '0301 - Analytical Chemistry'">0301 - Analytical Chemistry</xsl:if>
<xsl:if test="FOR = '0302 - Inorganic Chemistry'">0302 - Inorganic Chemistry</xsl:if>
<xsl:if test="FOR = '0303 - Macromolecular and Materials Chemistry'">0303 - Macromolecular and Materials Chemistry</xsl:if>
<xsl:if test="FOR = '0304 - Medicinal and Biomolecular Chemistry'">0304 - Medicinal and Biomolecular Chemistry</xsl:if>
<xsl:if test="FOR = '0305 - Organic Chemistry'">0305 - Organic Chemistry</xsl:if>
<xsl:if test="FOR = '0306 - Physical Chemistry (incl. Structural)'">0306 - Physical Chemistry (incl. Structural)</xsl:if>
<xsl:if test="FOR = '0307 - Theoretical and Computational Chemistry'">0307 - Theoretical and Computational Chemistry</xsl:if>
<xsl:if test="FOR = '0399 - Other Chemical Sciences'">0399 - Other Chemical Sciences</xsl:if>
<xsl:if test="FOR = '0401 - Atmospheric Sciences'">0401 - Atmospheric Sciences</xsl:if>
<xsl:if test="FOR = '0402 - Geochemistry'">0402 - Geochemistry</xsl:if>
<xsl:if test="FOR = '0403 - Geology'">0403 - Geology</xsl:if>
<xsl:if test="FOR = '0404 - Geophysics'">0404 - Geophysics</xsl:if>
<xsl:if test="FOR = '0405 - Oceanography'">0405 - Oceanography</xsl:if>
<xsl:if test="FOR = '0406 - Physical Geography and Environmental Geoscience'">0406 - Physical Geography and Environmental Geoscience</xsl:if>
<xsl:if test="FOR = '0499 - Other Earth Sciences'">0499 - Other Earth Sciences</xsl:if>
<xsl:if test="FOR = '0501 - Ecological Applications'">0501 - Ecological Applications</xsl:if>
<xsl:if test="FOR = '0502 - Environmental Science and Management'">0502 - Environmental Science and Management</xsl:if>
<xsl:if test="FOR = '0503 - Soil Sciences'">0503 - Soil Sciences</xsl:if>
<xsl:if test="FOR = '0599 - Other Environmental Sciences'">0599 - Other Environmental Sciences</xsl:if>
<xsl:if test="FOR = '0601 - Biochemistry and Cell Biology'">0601 - Biochemistry and Cell Biology</xsl:if>
<xsl:if test="FOR = '0602 - Ecology'">0602 - Ecology</xsl:if>
<xsl:if test="FOR = '0603 - Evolutionary Biology'">0603 - Evolutionary Biology</xsl:if>
<xsl:if test="FOR = '0604 - Genetics'">0604 - Genetics</xsl:if>
<xsl:if test="FOR = '0605 - Microbiology'">0605 - Microbiology</xsl:if>
<xsl:if test="FOR = '0606 - Physiology'">0606 - Physiology</xsl:if>
<xsl:if test="FOR = '0607 - Plant Biology'">0607 - Plant Biology</xsl:if>
<xsl:if test="FOR = '0608 - Zoology'">0608 - Zoology</xsl:if>
<xsl:if test="FOR = '0699 - Other Biological Sciences'">0699 - Other Biological Sciences</xsl:if>
<xsl:if test="FOR = '0701 - Agriculture, Land and Farm Management'">0701 - Agriculture, Land and Farm Management</xsl:if>
<xsl:if test="FOR = '0702 - Animal Production'">0702 - Animal Production</xsl:if>
<xsl:if test="FOR = '0703 - Crop and Pasture Production'">0703 - Crop and Pasture Production</xsl:if>
<xsl:if test="FOR = '0704 - Fisheries Sciences'">0704 - Fisheries Sciences</xsl:if>
<xsl:if test="FOR = '0705 - Forestry Sciences'">0705 - Forestry Sciences</xsl:if>
<xsl:if test="FOR = '0706 - Horticultural Production'">0706 - Horticultural Production</xsl:if>
<xsl:if test="FOR = '0707 - Veterinary Sciences'">0707 - Veterinary Sciences</xsl:if>
<xsl:if test="FOR = '0799 - Other Agricultural and Veterinary Sciences'">0799 - Other Agricultural and Veterinary Sciences</xsl:if>
<xsl:if test="FOR = '0801 - Artificial Intelligence and Image Processing'">0801 - Artificial Intelligence and Image Processing</xsl:if>
<xsl:if test="FOR = '0802 - Computation Theory and Mathematics'">0802 - Computation Theory and Mathematics</xsl:if>
<xsl:if test="FOR = '0803 - Computer Software'">0803 - Computer Software</xsl:if>
<xsl:if test="FOR = '0804 - Data Format'">0804 - Data Format</xsl:if>
<xsl:if test="FOR = '0805 - Distributed Computing'">0805 - Distributed Computing</xsl:if>
<xsl:if test="FOR = '0806 - Information Systems'">0806 - Information Systems</xsl:if>
<xsl:if test="FOR = '0807 - Library and Information Studies'">0807 - Library and Information Studies</xsl:if>
<xsl:if test="FOR = '0899 - Other Information and Computing Sciences'">0899 - Other Information and Computing Sciences</xsl:if>
<xsl:if test="FOR = '0901 - Aerospace Engineering'">0901 - Aerospace Engineering</xsl:if>
<xsl:if test="FOR = '0902 - Automotive Engineering'">0902 - Automotive Engineering</xsl:if>
<xsl:if test="FOR = '0903 - Biomedical Engineering'">0903 - Biomedical Engineering</xsl:if>
<xsl:if test="FOR = '0904 - Chemical Engineering'">0904 - Chemical Engineering</xsl:if>
<xsl:if test="FOR = '0905 - Civil Engineering'">0905 - Civil Engineering</xsl:if>
<xsl:if test="FOR = '0906 - Electrical and Electronic Engineering'">0906 - Electrical and Electronic Engineering</xsl:if>
<xsl:if test="FOR = '0907 - Environmental Engineering'">0907 - Environmental Engineering</xsl:if>
<xsl:if test="FOR = '0908 - Food Sciences'">0908 - Food Sciences</xsl:if>
<xsl:if test="FOR = '0909 - Geomatic Engineering'">0909 - Geomatic Engineering</xsl:if>
<xsl:if test="FOR = '0910 - Manufacturing Engineering'">0910 - Manufacturing Engineering</xsl:if>
<xsl:if test="FOR = '0911 - Maritime Engineering'">0911 - Maritime Engineering</xsl:if>
<xsl:if test="FOR = '0912 - Materials Engineering'">0912 - Materials Engineering</xsl:if>
<xsl:if test="FOR = '0913 - Mechanical Engineering'">0913 - Mechanical Engineering</xsl:if>
<xsl:if test="FOR = '0914 - Resources Engineering and Extractive Metallurgy'">0914 - Resources Engineering and Extractive Metallurgy</xsl:if>
<xsl:if test="FOR = '0915 - Interdisciplinary Engineering'">0915 - Interdisciplinary Engineering</xsl:if>
<xsl:if test="FOR = '0999 - Other Engineering'">0999 - Other Engineering</xsl:if>
<xsl:if test="FOR = '1001 - Agricultural Biotechnology'">1001 - Agricultural Biotechnology</xsl:if>
<xsl:if test="FOR = '1002 - Environmental Biotechnology'">1002 - Environmental Biotechnology</xsl:if>
<xsl:if test="FOR = '1003 - Industrial Biotechnology'">1003 - Industrial Biotechnology</xsl:if>
<xsl:if test="FOR = '1004 - Medical Biotechnology'">1004 - Medical Biotechnology</xsl:if>
<xsl:if test="FOR = '1005 - Communications Technologies'">1005 - Communications Technologies</xsl:if>
<xsl:if test="FOR = '1006 - Computer Hardware'">1006 - Computer Hardware</xsl:if>
<xsl:if test="FOR = '1007 - Nanotechnology'">1007 - Nanotechnology</xsl:if>
<xsl:if test="FOR = '1099 - Other Technology'">1099 - Other Technology</xsl:if>
<xsl:if test="FOR = '1101 - Medical Biochemistry and Metabolomics'">1101 - Medical Biochemistry and Metabolomics</xsl:if>
<xsl:if test="FOR = '1102 - Cardiorespiratory Medicine and Haematology'">1102 - Cardiorespiratory Medicine and Haematology</xsl:if>
<xsl:if test="FOR = '1103 - Clinical Sciences'">1103 - Clinical Sciences</xsl:if>
<xsl:if test="FOR = '1104 - Complementary and Alternative Medicine'">1104 - Complementary and Alternative Medicine</xsl:if>
<xsl:if test="FOR = '1105 - Dentistry'">1105 - Dentistry</xsl:if>
<xsl:if test="FOR = '1106 - Human Movement and Sports Science'">1106 - Human Movement and Sports Science</xsl:if>
<xsl:if test="FOR = '1107 - Immunology'">1107 - Immunology</xsl:if>
<xsl:if test="FOR = '1108 - Medical Microbiology'">1108 - Medical Microbiology</xsl:if>
<xsl:if test="FOR = '1109 - Neurosciences'">1109 - Neurosciences</xsl:if>
<xsl:if test="FOR = '1110 - Nursing'">1110 - Nursing</xsl:if>
<xsl:if test="FOR = '1111 - Nutrition and Dietetics'">1111 - Nutrition and Dietetics</xsl:if>
<xsl:if test="FOR = '1112 - Oncology and Carcinogenesis'">1112 - Oncology and Carcinogenesis</xsl:if>
<xsl:if test="FOR = '1113 - Ophthalmology and Optometry'">1113 - Ophthalmology and Optometry</xsl:if>
<xsl:if test="FOR = '1114 - Paediatrics and Reproductive Medicine'">1114 - Paediatrics and Reproductive Medicine</xsl:if>
<xsl:if test="FOR = '1115 - Pharmacology and Pharmaceutical Sciences'">1115 - Pharmacology and Pharmaceutical Sciences</xsl:if>
<xsl:if test="FOR = '1116 - Medical Physiology'">1116 - Medical Physiology</xsl:if>
<xsl:if test="FOR = '1117 - Public Health and Health Services'">1117 - Public Health and Health Services</xsl:if>
<xsl:if test="FOR = '1199 - Other Medical and Health Sciences'">1199 - Other Medical and Health Sciences</xsl:if>
<xsl:if test="FOR = '1201 - Architecture'">1201 - Architecture</xsl:if>
<xsl:if test="FOR = '1202 - Building'">1202 - Building</xsl:if>
<xsl:if test="FOR = '1203 - Design Practice and Management'">1203 - Design Practice and Management</xsl:if>
<xsl:if test="FOR = '1204 - Engineering Design'">1204 - Engineering Design</xsl:if>
<xsl:if test="FOR = '1205 - Urban and Regional Planning'">1205 - Urban and Regional Planning</xsl:if>
<xsl:if test="FOR = '1299 - Other Built Environment and Design'">1299 - Other Built Environment and Design</xsl:if>
<xsl:if test="FOR = '1301 - Education Systems'">1301 - Education Systems</xsl:if>
<xsl:if test="FOR = '1302 - Curriculum and Pedagogy'">1302 - Curriculum and Pedagogy</xsl:if>
<xsl:if test="FOR = '1303 - Specialist Studies in Education'">1303 - Specialist Studies in Education</xsl:if>
<xsl:if test="FOR = '1399 - Other Education'">1399 - Other Education</xsl:if>
<xsl:if test="FOR = '1401 - Economic Theory'">1401 - Economic Theory</xsl:if>
<xsl:if test="FOR = '1402 - Applied Economics'">1402 - Applied Economics</xsl:if>
<xsl:if test="FOR = '1403 - Econometrics'">1403 - Econometrics</xsl:if>
<xsl:if test="FOR = '1499 - Other Economics'">1499 - Other Economics</xsl:if>
<xsl:if test="FOR = '1501 - Accounting, Auditing and Accountability'">1501 - Accounting, Auditing and Accountability</xsl:if>
<xsl:if test="FOR = '1502 - Banking, Finance and Investment'">1502 - Banking, Finance and Investment</xsl:if>
<xsl:if test="FOR = '1503 - Business and Management'">1503 - Business and Management</xsl:if>
<xsl:if test="FOR = '1504 - Commercial Services'">1504 - Commercial Services</xsl:if>
<xsl:if test="FOR = '1505 - Marketing'">1505 - Marketing</xsl:if>
<xsl:if test="FOR = '1506 - Tourism'">1506 - Tourism</xsl:if>
<xsl:if test="FOR = '1507 - Transportation and Freight Services'">1507 - Transportation and Freight Services</xsl:if>
<xsl:if test="FOR = '1599 - Other Commerce, Management, Tourism and Services'">1599 - Other Commerce, Management, Tourism and Services</xsl:if>
<xsl:if test="FOR = '1601 - Anthropology'">1601 - Anthropology</xsl:if>
<xsl:if test="FOR = '1602 - Criminology'">1602 - Criminology</xsl:if>
<xsl:if test="FOR = '1603 - Demography'">1603 - Demography</xsl:if>
<xsl:if test="FOR = '1604 - Human Geography'">1604 - Human Geography</xsl:if>
<xsl:if test="FOR = '1605 - Policy and Administration'">1605 - Policy and Administration</xsl:if>
<xsl:if test="FOR = '1606 - Political Science'">1606 - Political Science</xsl:if>
<xsl:if test="FOR = '1607 - Social Work'">1607 - Social Work</xsl:if>
<xsl:if test="FOR = '1608 - Sociology'">1608 - Sociology</xsl:if>
<xsl:if test="FOR = '1699 - Other Studies in Human Society'">1699 - Other Studies in Human Society</xsl:if>
<xsl:if test="FOR = '1701 - Psychology'">1701 - Psychology</xsl:if>
<xsl:if test="FOR = '1702 - Cognitive Sciences'">1702 - Cognitive Sciences</xsl:if>
<xsl:if test="FOR = '1799 - Other Psychology and Cognitive Sciences'">1799 - Other Psychology and Cognitive Sciences</xsl:if>
<xsl:if test="FOR = '1801 - Law'">1801 - Law</xsl:if>
<xsl:if test="FOR = '1802 - Maori Law'">1802 - Maori Law</xsl:if>
<xsl:if test="FOR = '1899 - Other Law and Legal Studies'">1899 - Other Law and Legal Studies</xsl:if>
<xsl:if test="FOR = '1901 - Art Theory and Criticism'">1901 - Art Theory and Criticism</xsl:if>
<xsl:if test="FOR = '1902 - Film, Television and Digital Media'">1902 - Film, Television and Digital Media</xsl:if>
<xsl:if test="FOR = '1903 - Journalism and Professional Writing'">1903 - Journalism and Professional Writing</xsl:if>
<xsl:if test="FOR = '1904 - Performing Arts and Creative Writing'">1904 - Performing Arts and Creative Writing</xsl:if>
<xsl:if test="FOR = '1905 - Visual Arts and Crafts'">1905 - Visual Arts and Crafts</xsl:if>
<xsl:if test="FOR = '1999 - Other Studies in Creative Arts and Writing'">1999 - Other Studies in Creative Arts and Writing</xsl:if>
<xsl:if test="FOR = '2001 - Communication and Media Studies'">2001 - Communication and Media Studies</xsl:if>
<xsl:if test="FOR = '2002 - Cultural Studies'">2002 - Cultural Studies</xsl:if>
<xsl:if test="FOR = '2003 - Language Studies'">2003 - Language Studies</xsl:if>
<xsl:if test="FOR = '2004 - Linguistics'">2004 - Linguistics</xsl:if>
<xsl:if test="FOR = '2005 - Literary Studies'">2005 - Literary Studies</xsl:if>
<xsl:if test="FOR = '2099 - Other Language, Communication and Culture'">2099 - Other Language, Communication and Culture</xsl:if>
<xsl:if test="FOR = '2101 - Archaeology'">2101 - Archaeology</xsl:if>
<xsl:if test="FOR = '2102 - Curatorial and Related Studies'">2102 - Curatorial and Related Studies</xsl:if>
<xsl:if test="FOR = '2103 - Historical Studies'">2103 - Historical Studies</xsl:if>
<xsl:if test="FOR = '2199 - Other History and Archaeology'">2199 - Other History and Archaeology</xsl:if>
<xsl:if test="FOR = '2201 - Applied Ethics'">2201 - Applied Ethics</xsl:if>
<xsl:if test="FOR = '2202 - History and Philosophy of Specific Fields'">2202 - History and Philosophy of Specific Fields</xsl:if>
<xsl:if test="FOR = '2203 - Philosophy'">2203 - Philosophy</xsl:if>
<xsl:if test="FOR = '2204 - Religion and Religious Studies'">2204 - Religion and Religious Studies</xsl:if>
<xsl:if test="FOR = '2299 - Other Philosophy and Religious Studies'">2299 - Other Philosophy and Religious Studies</xsl:if>
 </note> 
  </note>
      </xsl:when>
    </xsl:choose>

      <!--Other FOR code -->
    <xsl:apply-templates select="*[starts-with(local-name(),'FOR_')]"/>


  <!-- SEO code -->    
  <xsl:choose>
      <xsl:when test="SEO_code">
<note type="anzsrc_SEO_socio-economic_objective_code">
<xsl:if test="SEO_code  ='810101'">810101 - Air Force</xsl:if> 
<xsl:if test="SEO_code  ='810102'">810102 - Army</xsl:if> 
<xsl:if test="SEO_code  ='810103'">810103 - Command, Control and Communications</xsl:if> 
<xsl:if test="SEO_code  ='810104'">810104 - Emerging Defence Technologies</xsl:if> 
<xsl:if test="SEO_code  ='810105'">810105 - Intelligence</xsl:if> 
<xsl:if test="SEO_code  ='810106'">810106 - Logistics</xsl:if> 
<xsl:if test="SEO_code  ='810107'">810107 - National Security</xsl:if> 
<xsl:if test="SEO_code  ='810108'">810108 - Navy</xsl:if> 
<xsl:if test="SEO_code  ='810109'">810109 - Personnel</xsl:if> 
<xsl:if test="SEO_code  ='810199'">810199 - Defence not elsewhere classified</xsl:if> 
<xsl:if test="SEO_code  ='820101'">820101 - Hardwood Plantations</xsl:if> 
<xsl:if test="SEO_code  ='820102'">820102 - Harvesting and Transport of Forest Products</xsl:if> 
<xsl:if test="SEO_code  ='820103'">820103 - Integration of Farm and Forestry</xsl:if> 
<xsl:if test="SEO_code  ='820104'">820104 - Native Forests</xsl:if> 
<xsl:if test="SEO_code  ='820105'">820105 - Softwood Plantations</xsl:if> 
<xsl:if test="SEO_code  ='820199'">820199 - Forestry not elsewhere classified</xsl:if> 
<xsl:if test="SEO_code  ='820201'">820201 - Almonds</xsl:if> 
<xsl:if test="SEO_code  ='820202'">820202 - Berry Fruit (excl. Kiwifruit)</xsl:if> 
<xsl:if test="SEO_code  ='820203'">820203 - Citrus Fruit</xsl:if> 
<xsl:if test="SEO_code  ='820204'">820204 - Hops</xsl:if> 
<xsl:if test="SEO_code  ='820205'">820205 - Kiwifruit</xsl:if> 
<xsl:if test="SEO_code  ='820206'">820206 - Macadamias</xsl:if> 
<xsl:if test="SEO_code  ='820207'">820207 - Mushrooms and Truffles</xsl:if> 
<xsl:if test="SEO_code  ='820208'">820208 - Olives</xsl:if> 
<xsl:if test="SEO_code  ='820209'">820209 - Ornamentals, Natives, Flowers and Nursery Plants</xsl:if> 
<xsl:if test="SEO_code  ='820210'">820210 - Pome Fruit, Pip Fruit</xsl:if> 
<xsl:if test="SEO_code  ='820211'">820211 - Stone Fruit</xsl:if> 
<xsl:if test="SEO_code  ='820212'">820212 - Table Grapes</xsl:if> 
<xsl:if test="SEO_code  ='820213'">820213 - Tree Nuts (excl. Almonds and Macadamias)</xsl:if> 
<xsl:if test="SEO_code  ='820214'">820214 - Tropical Fruit</xsl:if> 
<xsl:if test="SEO_code  ='820215'">820215 - Vegetables</xsl:if> 
<xsl:if test="SEO_code  ='820299'">820299 - Horticultural Crops not elsewhere classified</xsl:if> 
<xsl:if test="SEO_code  ='820301'">820301 - Cotton</xsl:if> 
<xsl:if test="SEO_code  ='820302'">820302 - Essential Oil Crops (e.g. Tea Tree, Eucalyptus, Lavender, Peppermint, Boronia, Sandalwood)</xsl:if> 
<xsl:if test="SEO_code  ='820303'">820303 - Plant Extract Crops (e.g. Pyrethrum, Jojoba)</xsl:if> 
<xsl:if test="SEO_code  ='820304'">820304 - Sugar</xsl:if> 
<xsl:if test="SEO_code  ='820305'">820305 - Tobacco</xsl:if> 
<xsl:if test="SEO_code  ='820306'">820306 - Wine Grapes</xsl:if> 
<xsl:if test="SEO_code  ='820399'">820399 - Industrial Crops not elsewhere classified</xsl:if> 
<xsl:if test="SEO_code  ='820401'">820401 - Maize</xsl:if> 
<xsl:if test="SEO_code  ='820402'">820402 - Rice</xsl:if> 
<xsl:if test="SEO_code  ='820403'">820403 - Safflower Seed</xsl:if> 
<xsl:if test="SEO_code  ='820404'">820404 - Sorghum</xsl:if> 
<xsl:if test="SEO_code  ='820405'">820405 - Soybeans</xsl:if> 
<xsl:if test="SEO_code  ='820499'">820499 - Summer Grains and Oilseeds not elsewhere classified</xsl:if> 
<xsl:if test="SEO_code  ='820501'">820501 - Barley</xsl:if> 
<xsl:if test="SEO_code  ='820502'">820502 - Canola</xsl:if> 
<xsl:if test="SEO_code  ='820503'">820503 - Grain Legumes</xsl:if> 
<xsl:if test="SEO_code  ='820504'">820504 - Linseed</xsl:if> 
<xsl:if test="SEO_code  ='820505'">820505 - Lupins</xsl:if> 
<xsl:if test="SEO_code  ='820506'">820506 - Oats</xsl:if> 
<xsl:if test="SEO_code  ='820507'">820507 - Wheat</xsl:if> 
<xsl:if test="SEO_code  ='820599'">820599 - Winter Grains and Oilseeds not elsewhere classified</xsl:if> 
<xsl:if test="SEO_code  ='820601'">820601 - Cotton Lint and Cotton Seed</xsl:if> 
<xsl:if test="SEO_code  ='820602'">820602 - Fresh Fruit and Vegetables (Post Harvest)</xsl:if> 
<xsl:if test="SEO_code  ='820603'">820603 - Sugar Cane (Cut for Crushing)</xsl:if> 
<xsl:if test="SEO_code  ='820604'">820604 - Tobacco Leaf</xsl:if> 
<xsl:if test="SEO_code  ='820605'">820605 - Unprocessed Grains</xsl:if> 
<xsl:if test="SEO_code  ='820606'">820606 - Unprocessed Industrial Crops (excl. Sugar, Tobacco and Cotton)</xsl:if> 
<xsl:if test="SEO_code  ='820607'">820607 - Unprocessed Oilseeds</xsl:if> 
<xsl:if test="SEO_code  ='820699'">820699 - Harvesting and Packing of Plant Products not elsewhere classified</xsl:if> 
<xsl:if test="SEO_code  ='829801'">829801 - Management of Gaseous Waste from Plant Production (excl. Greenhouse Gases)</xsl:if> 
<xsl:if test="SEO_code  ='829802'">829802 - Management of Greenhouse Gas Emissions from Plant Production</xsl:if> 
<xsl:if test="SEO_code  ='829803'">829803 - Management of Liquid Waste from Plant Production (excl. Water)</xsl:if> 
<xsl:if test="SEO_code  ='829804'">829804 - Management of Solid Waste from Plant Production</xsl:if> 
<xsl:if test="SEO_code  ='829805'">829805 - Management of Water Consumption by Plant Production</xsl:if> 
<xsl:if test="SEO_code  ='829899'">829899 - Environmentally Sustainable Plant Production not elsewhere classified</xsl:if> 
<xsl:if test="SEO_code  ='829901'">829901 - Forest Product Traceability and Quality Assurance</xsl:if> 
<xsl:if test="SEO_code  ='829902'">829902 - Plant Product, Traceability and Quality Assurance (excl. Forest Products)</xsl:if> 
<xsl:if test="SEO_code  ='829999'">829999 - Plant Production and Plant Primary Products not elsewhere classified</xsl:if> 
<xsl:if test="SEO_code  ='830101'">830101 - Aquaculture Crustaceans (excl. Rock Lobster and Prawns)</xsl:if> 
<xsl:if test="SEO_code  ='830102'">830102 - Aquaculture Fin Fish (excl. Tuna)</xsl:if> 
<xsl:if test="SEO_code  ='830103'">830103 - Aquaculture Molluscs (excl. Oysters)</xsl:if> 
<xsl:if test="SEO_code  ='830104'">830104 - Aquaculture Oysters</xsl:if> 
<xsl:if test="SEO_code  ='830105'">830105 - Aquaculture Prawns</xsl:if> 
<xsl:if test="SEO_code  ='830106'">830106 - Aquaculture Rock Lobster</xsl:if> 
<xsl:if test="SEO_code  ='830107'">830107 - Aquaculture Tuna</xsl:if> 
<xsl:if test="SEO_code  ='830199'">830199 - Fisheries - Aquaculture not elsewhere classified</xsl:if> 
<xsl:if test="SEO_code  ='830201'">830201 - Fisheries - Recreational</xsl:if> 
<xsl:if test="SEO_code  ='830202'">830202 - Wild Caught Crustaceans (excl. Rock Lobster and Prawns)</xsl:if> 
<xsl:if test="SEO_code  ='830203'">830203 - Wild Caught Edible Molluscs</xsl:if> 
<xsl:if test="SEO_code  ='830204'">830204 - Wild Caught Fin Fish (excl. Tuna)</xsl:if> 
<xsl:if test="SEO_code  ='830205'">830205 - Wild Caught Rock Lobster</xsl:if> 
<xsl:if test="SEO_code  ='830206'">830206 - Wild Caught Prawns</xsl:if> 
<xsl:if test="SEO_code  ='830207'">830207 - Wild Caught Tuna</xsl:if> 
<xsl:if test="SEO_code  ='830299'">830299 - Fisheries - Wild Caught not elsewhere classified</xsl:if> 
<xsl:if test="SEO_code  ='830301'">830301 - Beef Cattle</xsl:if> 
<xsl:if test="SEO_code  ='830302'">830302 - Dairy Cattle</xsl:if> 
<xsl:if test="SEO_code  ='830303'">830303 - Deer</xsl:if> 
<xsl:if test="SEO_code  ='830304'">830304 - Goats</xsl:if> 
<xsl:if test="SEO_code  ='830305'">830305 - Game Livestock (e.g. Kangaroos, Wallabies, Camels, Buffaloes, Possums)</xsl:if> 
<xsl:if test="SEO_code  ='830306'">830306 - Horses</xsl:if> 
<xsl:if test="SEO_code  ='830307'">830307 - Minor Livestock (e.g. Alpacas, Ostriches, Crocodiles, Farmed Rabbits)</xsl:if> 
<xsl:if test="SEO_code  ='830308'">830308 - Pigs</xsl:if> 
<xsl:if test="SEO_code  ='830309'">830309 - Poultry</xsl:if> 
<xsl:if test="SEO_code  ='830310'">830310 - Sheep - Meat</xsl:if> 
<xsl:if test="SEO_code  ='830311'">830311 - Sheep - Wool</xsl:if> 
<xsl:if test="SEO_code  ='830399'">830399 - Livestock Raising not elsewhere classified</xsl:if> 
<xsl:if test="SEO_code  ='830401'">830401 - Browse Crops</xsl:if> 
<xsl:if test="SEO_code  ='830402'">830402 - Lucerne</xsl:if> 
<xsl:if test="SEO_code  ='830403'">830403 - Native and Residual Pastures</xsl:if> 
<xsl:if test="SEO_code  ='830404'">830404 - Non-Cereal Crops for Hay</xsl:if> 
<xsl:if test="SEO_code  ='830405'">830405 - Non-Cereal Crops for Silage/Green Feed</xsl:if> 
<xsl:if test="SEO_code  ='830406'">830406 - Sown Pastures (excl. Lucerne)</xsl:if> 
<xsl:if test="SEO_code  ='830499'">830499 - Pasture, Browse and Fodder Crops not elsewhere classified</xsl:if> 
<xsl:if test="SEO_code  ='830501'">830501 - Eggs</xsl:if> 
<xsl:if test="SEO_code  ='830502'">830502 - Honey</xsl:if> 
<xsl:if test="SEO_code  ='830503'">830503 - Live Animals</xsl:if> 
<xsl:if test="SEO_code  ='830504'">830504 - Pearls</xsl:if> 
<xsl:if test="SEO_code  ='830505'">830505 - Raw Wool</xsl:if> 
<xsl:if test="SEO_code  ='830506'">830506 - Unprocessed or Minimally Processed Fish</xsl:if> 
<xsl:if test="SEO_code  ='830507'">830507 - Unprocessed or Minimally Processed Milk</xsl:if> 
<xsl:if test="SEO_code  ='830599'">830599 - Primary Animal Products not elsewhere classified</xsl:if> 
<xsl:if test="SEO_code  ='839801'">839801 - Management of Gaseous Waste from Animal Production (excl. Greenhouse Gases)</xsl:if> 
<xsl:if test="SEO_code  ='839802'">839802 - Management of Greenhouse Gas Emissions from Animal Production</xsl:if> 
<xsl:if test="SEO_code  ='839803'">839803 - Management of Liquid Waste from Animal Production (excl. Water)</xsl:if> 
<xsl:if test="SEO_code  ='839804'">839804 - Management of Solid Waste from Animal Production</xsl:if> 
<xsl:if test="SEO_code  ='839805'">839805 - Management of Water Consumption by Animal Production</xsl:if> 
<xsl:if test="SEO_code  ='839899'">839899 - Environmentally Sustainable Animal Production not elsewhere classified</xsl:if> 
<xsl:if test="SEO_code  ='839901'">839901 - Animal Welfare</xsl:if> 
<xsl:if test="SEO_code  ='839902'">839902 - Fish Product Traceability and Quality Assurance</xsl:if> 
<xsl:if test="SEO_code  ='839903'">839903 - Livestock Product Traceability and Quality Assurance</xsl:if> 
<xsl:if test="SEO_code  ='839999'">839999 - Animal Production and Animal Primary Products not elsewhere classified</xsl:if> 
<xsl:if test="SEO_code  ='840101'">840101 - Aluminium Ore Exploration</xsl:if> 
<xsl:if test="SEO_code  ='840102'">840102 - Copper Ore Exploration</xsl:if> 
<xsl:if test="SEO_code  ='840103'">840103 - Diamond Exploration</xsl:if> 
<xsl:if test="SEO_code  ='840104'">840104 - Iron Ore Exploration</xsl:if> 
<xsl:if test="SEO_code  ='840105'">840105 - Precious (Noble) Metal Ore Exploration</xsl:if> 
<xsl:if test="SEO_code  ='840106'">840106 - Stone and Clay Exploration</xsl:if> 
<xsl:if test="SEO_code  ='840107'">840107 - Titanium Minerals, Zircon, and Rare Earth Metal Ore</xsl:if> 
<xsl:if test="SEO_code  ='840108'">840108 - Zinc Ore Exploration</xsl:if> 
<xsl:if test="SEO_code  ='840199'">840199 - Mineral Exploration not elsewhere classified</xsl:if> 
<xsl:if test="SEO_code  ='840201'">840201 - Mining and Extraction of Aluminium Ores</xsl:if> 
<xsl:if test="SEO_code  ='840202'">840202 - Mining and Extraction of Copper Ores</xsl:if> 
<xsl:if test="SEO_code  ='840203'">840203 - Mining and Extraction of Diamonds</xsl:if> 
<xsl:if test="SEO_code  ='840204'">840204 - Mining and Extraction of Iron Ores</xsl:if> 
<xsl:if test="SEO_code  ='840205'">840205 - Mining and Extraction of Precious (Noble) Metal Ores</xsl:if> 
<xsl:if test="SEO_code  ='840206'">840206 - Mining and Extraction of Stone and Clay</xsl:if> 
<xsl:if test="SEO_code  ='840207'">840207 - Mining and Extraction of Titanium Minerals, Zircon, and Rare Earth Metal Ores (e.g. Monazite)</xsl:if> 
<xsl:if test="SEO_code  ='840208'">840208 - Mining and Extraction of Zinc Ores</xsl:if> 
<xsl:if test="SEO_code  ='840299'">840299 - Primary Mining and Extraction of Mineral Resources not elsewhere classified</xsl:if> 
<xsl:if test="SEO_code  ='840301'">840301 - Alumina Production</xsl:if> 
<xsl:if test="SEO_code  ='840302'">840302 - Beneficiation of Bauxite and Aluminium Ores (excl. Alumina Production)</xsl:if> 
<xsl:if test="SEO_code  ='840303'">840303 - Beneficiation or Dressing of Iron Ores</xsl:if> 
<xsl:if test="SEO_code  ='840304'">840304 - Beneficiation or Dressing of Non-Metallic Minerals (incl. Diamonds)</xsl:if> 
<xsl:if test="SEO_code  ='840305'">840305 - Concentrating Processes of Base Metal Ores (excl. Aluminium and Iron Ores)</xsl:if> 
<xsl:if test="SEO_code  ='840306'">840306 - Production of Unrefined Precious Metal Ingots and Concentrates</xsl:if> 
<xsl:if test="SEO_code  ='840399'">840399 - First Stage Treatment of Ores and Minerals not elsewhere classified</xsl:if> 
<xsl:if test="SEO_code  ='849801'">849801 - Management of Gaseous Waste From Mineral Resource Activities (excl. Greenhouse Gases)</xsl:if> 
<xsl:if test="SEO_code  ='849802'">849802 - Management of Greenhouse Gas Emissions from Mineral Resource Activities</xsl:if> 
<xsl:if test="SEO_code  ='849803'">849803 - Management of Liquid Waste from Mineral Resource Activities (excl. Water)</xsl:if> 
<xsl:if test="SEO_code  ='849804'">849804 - Management of Solid Waste from Mineral Resource Activities</xsl:if> 
<xsl:if test="SEO_code  ='849805'">849805 - Management of Water Consumption by Mineral Resource Activities</xsl:if> 
<xsl:if test="SEO_code  ='849899'">849899 - Environmentally Sustainable Mineral Resource Activities not elsewhere classified</xsl:if> 
<xsl:if test="SEO_code  ='849999'">849999 - Mineral Resources (excl. Energy Resources) not elsewhere classified</xsl:if> 
<xsl:if test="SEO_code  ='850101'">850101 - Coal Exploration</xsl:if> 
<xsl:if test="SEO_code  ='850102'">850102 - Geothermal Exploration</xsl:if> 
<xsl:if test="SEO_code  ='850103'">850103 - Oil and Gas Exploration</xsl:if> 
<xsl:if test="SEO_code  ='850104'">850104 - Oil Shale and Tar Sands Exploration</xsl:if> 
<xsl:if test="SEO_code  ='850105'">850105 - Uranium Exploration</xsl:if> 
<xsl:if test="SEO_code  ='850199'">850199 - Energy Exploration not elsewhere classified</xsl:if> 
<xsl:if test="SEO_code  ='850201'">850201 - Coal Mining and Extraction</xsl:if> 
<xsl:if test="SEO_code  ='850202'">850202 - Geothermal Energy Extraction</xsl:if> 
<xsl:if test="SEO_code  ='850203'">850203 - Oil and Gas Extraction</xsl:if> 
<xsl:if test="SEO_code  ='850204'">850204 - Oil Shale and Tar Sands Mining and Extraction</xsl:if> 
<xsl:if test="SEO_code  ='850205'">850205 - Uranium Mining and Extraction</xsl:if> 
<xsl:if test="SEO_code  ='850299'">850299 - Mining and Extraction of Energy Resources not elsewhere classified</xsl:if> 
<xsl:if test="SEO_code  ='850301'">850301 - Hydrogen Production from Fossil Fuels</xsl:if> 
<xsl:if test="SEO_code  ='850302'">850302 - Hydrogen Production from Nuclear Energy</xsl:if> 
<xsl:if test="SEO_code  ='850303'">850303 - Hydrogen Production from Renewable Energy</xsl:if> 
<xsl:if test="SEO_code  ='850304'">850304 - Oil and Gas Refining</xsl:if> 
<xsl:if test="SEO_code  ='850305'">850305 - Preparation of Black Coal</xsl:if> 
<xsl:if test="SEO_code  ='850306'">850306 - Preparation of Brown Coal (Lignite)</xsl:if> 
<xsl:if test="SEO_code  ='850307'">850307 - Preparation of Oil Shale and Tar Sands</xsl:if> 
<xsl:if test="SEO_code  ='850308'">850308 - Preparation of Uranium</xsl:if> 
<xsl:if test="SEO_code  ='850309'">850309 - Production of Biofuels (Biomass)</xsl:if> 
<xsl:if test="SEO_code  ='850399'">850399 - Preparation and Production of Energy Sources not elsewhere classified</xsl:if> 
<xsl:if test="SEO_code  ='850401'">850401 - Fuel Cells (excl. Solid Oxide)</xsl:if> 
<xsl:if test="SEO_code  ='850402'">850402 - Hydrogen-based Energy Systems (incl. Internal Hydrogen Combustion Engines)</xsl:if> 
<xsl:if test="SEO_code  ='850403'">850403 - Nuclear Energy</xsl:if> 
<xsl:if test="SEO_code  ='850404'">850404 - Solid Oxide Fuel Cells</xsl:if> 
<xsl:if test="SEO_code  ='850405'">850405 - Transformation of Black Coal into Electricity</xsl:if> 
<xsl:if test="SEO_code  ='850406'">850406 - Transformation of Brown Coal (Lignite) into Electricity</xsl:if> 
<xsl:if test="SEO_code  ='850407'">850407 - Transformation of Coal into Gaseous Fuels</xsl:if> 
<xsl:if test="SEO_code  ='850408'">850408 - Transformation of Coal into Liquid Fuels</xsl:if> 
<xsl:if test="SEO_code  ='850409'">850409 - Transformation of Gas into Electricity</xsl:if> 
<xsl:if test="SEO_code  ='850410'">850410 - Transformation of Gas into Liquid Fuels</xsl:if> 
<xsl:if test="SEO_code  ='850499'">850499 - Energy Transformation not elsewhere classified</xsl:if> 
<xsl:if test="SEO_code  ='850501'">850501 - Biofuel (Biomass) Energy</xsl:if> 
<xsl:if test="SEO_code  ='850502'">850502 - Geothermal Energy</xsl:if> 
<xsl:if test="SEO_code  ='850503'">850503 - Hydro-Electric Energy</xsl:if> 
<xsl:if test="SEO_code  ='850504'">850504 - Solar-Photovoltaic Energy</xsl:if> 
<xsl:if test="SEO_code  ='850505'">850505 - Solar-Thermal Electric Energy</xsl:if> 
<xsl:if test="SEO_code  ='850506'">850506 - Solar-Thermal Energy</xsl:if> 
<xsl:if test="SEO_code  ='850507'">850507 - Tidal Energy</xsl:if> 
<xsl:if test="SEO_code  ='850508'">850508 - Wave Energy</xsl:if> 
<xsl:if test="SEO_code  ='850509'">850509 - Wind Energy</xsl:if> 
<xsl:if test="SEO_code  ='850599'">850599 - Renewable Energy not elsewhere classified</xsl:if> 
<xsl:if test="SEO_code  ='850601'">850601 - Energy Services and Utilities</xsl:if> 
<xsl:if test="SEO_code  ='850602'">850602 - Energy Storage (excl. Hydrogen)</xsl:if> 
<xsl:if test="SEO_code  ='850603'">850603 - Energy Systems Analysis</xsl:if> 
<xsl:if test="SEO_code  ='850604'">850604 - Energy Transmission and Distribution (excl. Hydrogen)</xsl:if> 
<xsl:if test="SEO_code  ='850605'">850605 - Hydrogen Distribution</xsl:if> 
<xsl:if test="SEO_code  ='850606'">850606 - Hydrogen Storage</xsl:if> 
<xsl:if test="SEO_code  ='850699'">850699 - Energy Storage, Distribution and Supply not elsewhere classified</xsl:if> 
<xsl:if test="SEO_code  ='850701'">850701 - Commercial Energy Conservation and Efficiency</xsl:if> 
<xsl:if test="SEO_code  ='850702'">850702 - Energy Conservation and Efficiency in Transport</xsl:if> 
<xsl:if test="SEO_code  ='850703'">850703 - Industrial Energy Conservation and Efficiency</xsl:if> 
<xsl:if test="SEO_code  ='850704'">850704 - Residential Energy Conservation and Efficiency</xsl:if> 
<xsl:if test="SEO_code  ='850799'">850799 - Energy Conservation and Efficiency not elsewhere classified</xsl:if> 
<xsl:if test="SEO_code  ='859801'">859801 - Management of Gaseous Waste from Energy Activities (excl. Greenhouse Gases)</xsl:if> 
<xsl:if test="SEO_code  ='859802'">859802 - Management of Greenhouse Gas Emissions from Electricity Generation</xsl:if> 
<xsl:if test="SEO_code  ='859803'">859803 - Management of Greenhouse Gas Emissions from Energy Activities (excl. Electricity Generation)</xsl:if> 
<xsl:if test="SEO_code  ='859804'">859804 - Management of Liquid Waste from Energy Activities (excl. Water)</xsl:if> 
<xsl:if test="SEO_code  ='859805'">859805 - Management of Solid Waste from Energy Activities</xsl:if> 
<xsl:if test="SEO_code  ='859806'">859806 - Management of Water Consumption by Energy Activities</xsl:if> 
<xsl:if test="SEO_code  ='859899'">859899 - Environmentally Sustainable Energy Activities not elsewhere classified</xsl:if> 
<xsl:if test="SEO_code  ='859999'">859999 - Energy not elsewhere classified</xsl:if> 
<xsl:if test="SEO_code  ='860101'">860101 - Bakery Products</xsl:if> 
<xsl:if test="SEO_code  ='860102'">860102 - Beverages (excl. Fruit Juices)</xsl:if> 
<xsl:if test="SEO_code  ='860103'">860103 - Carcass Meat (incl. Fish and Seafood)</xsl:if> 
<xsl:if test="SEO_code  ='860104'">860104 - Flour Mill and Cereal Food</xsl:if> 
<xsl:if test="SEO_code  ='860105'">860105 - Nutraceuticals and Functional foods</xsl:if> 
<xsl:if test="SEO_code  ='860106'">860106 - Oils and Fats (incl. Margarines)</xsl:if> 
<xsl:if test="SEO_code  ='860107'">860107 - Processed Fish and Seafood Products</xsl:if> 
<xsl:if test="SEO_code  ='860108'">860108 - Processed Fruit and Vegetable Products (incl. Fruit Juices)</xsl:if> 
<xsl:if test="SEO_code  ='860109'">860109 - Processed Meat Products</xsl:if> 
<xsl:if test="SEO_code  ='860110'">860110 - Soy Products</xsl:if> 
<xsl:if test="SEO_code  ='860111'">860111 - Sugar and Confectionery Products</xsl:if> 
<xsl:if test="SEO_code  ='860199'">860199 - Processed Food Products and Beverages (excl. Dairy Products) not elsewhere classified</xsl:if> 
<xsl:if test="SEO_code  ='860201'">860201 - Butter and Milk-Derived Fats and Oils (excl. Cream)</xsl:if> 
<xsl:if test="SEO_code  ='860202'">860202 - Casein</xsl:if> 
<xsl:if test="SEO_code  ='860203'">860203 - Cheese</xsl:if> 
<xsl:if test="SEO_code  ='860204'">860204 - Processed Milk and Cream (incl. Powder, Evaporated and Condensed)</xsl:if> 
<xsl:if test="SEO_code  ='860205'">860205 - Whey</xsl:if> 
<xsl:if test="SEO_code  ='860299'">860299 - Dairy Products not elsewhere classified</xsl:if> 
<xsl:if test="SEO_code  ='860301'">860301 - Essential Oils (e.g. Tea Tree, Eucalyptus, Lavender, Peppermint, Boronia, Sandalwood)</xsl:if> 
<xsl:if test="SEO_code  ='860302'">860302 - Organic Fertilisers</xsl:if> 
<xsl:if test="SEO_code  ='860303'">860303 - Plant Extracts (e.g. Pyrethrum, Alkaloids, Jojoba Oil)</xsl:if> 
<xsl:if test="SEO_code  ='860304'">860304 - Prepared Animal Feed</xsl:if> 
<xsl:if test="SEO_code  ='860399'">860399 - Processed Non-Food Agricultural Products (excl. Wood, Paper and Fibre) not elsewhere classified</xsl:if> 
<xsl:if test="SEO_code  ='860401'">860401 - Clothing</xsl:if> 
<xsl:if test="SEO_code  ='860402'">860402 - Cotton Ginning</xsl:if> 
<xsl:if test="SEO_code  ='860403'">860403 - Natural Fibres, Yarns and Fabrics</xsl:if> 
<xsl:if test="SEO_code  ='860404'">860404 - Non-Fabric Textiles (e.g. Felt)</xsl:if> 
<xsl:if test="SEO_code  ='860405'">860405 - Processed Skins, Leather and Leather Products</xsl:if> 
<xsl:if test="SEO_code  ='860406'">860406 - Synthetic Fibres, Yarns and Fabrics</xsl:if> 
<xsl:if test="SEO_code  ='860407'">860407 - Wool Scouring and Top Making</xsl:if> 
<xsl:if test="SEO_code  ='860499'">860499 - Leather Products, Fibre Processing and Textiles not elsewhere classified</xsl:if> 
<xsl:if test="SEO_code  ='860501'">860501 - Paper Products (incl. Coated Paper)</xsl:if> 
<xsl:if test="SEO_code  ='860502'">860502 - Printing and Publishing Processes</xsl:if> 
<xsl:if test="SEO_code  ='860503'">860503 - Pulp and Paper</xsl:if> 
<xsl:if test="SEO_code  ='860504'">860504 - Reconstituted Timber Products (e.g. Chipboard, Particleboard)</xsl:if> 
<xsl:if test="SEO_code  ='860505'">860505 - Wood Sawing and Veneer</xsl:if> 
<xsl:if test="SEO_code  ='860599'">860599 - Wood, Wood Products and Paper not elsewhere classified</xsl:if> 
<xsl:if test="SEO_code  ='860601'">860601 - Industrial Gases</xsl:if> 
<xsl:if test="SEO_code  ='860602'">860602 - Inorganic Industrial Chemicals</xsl:if> 
<xsl:if test="SEO_code  ='860603'">860603 - Lubricants</xsl:if> 
<xsl:if test="SEO_code  ='860604'">860604 - Organic Industrial Chemicals (excl. Resins, Rubber and Plastics)</xsl:if> 
<xsl:if test="SEO_code  ='860605'">860605 - Paints</xsl:if> 
<xsl:if test="SEO_code  ='860606'">860606 - Plastics in Primary Forms</xsl:if> 
<xsl:if test="SEO_code  ='860607'">860607 - Plastic Products (incl. Construction Materials)</xsl:if> 
<xsl:if test="SEO_code  ='860608'">860608 - Rubber and Synthetic Resins</xsl:if> 
<xsl:if test="SEO_code  ='860609'">860609 - Soaps and Cosmetics</xsl:if> 
<xsl:if test="SEO_code  ='860699'">860699 - Industrial Chemicals and Related Products not elsewhere classified</xsl:if> 
<xsl:if test="SEO_code  ='860701'">860701 - Animal Protection Chemicals</xsl:if> 
<xsl:if test="SEO_code  ='860702'">860702 - Chemical Fertilisers</xsl:if> 
<xsl:if test="SEO_code  ='860703'">860703 - Crop Protection Chemicals</xsl:if> 
<xsl:if test="SEO_code  ='860799'">860799 - Agricultural Chemicals not elsewhere classified</xsl:if> 
<xsl:if test="SEO_code  ='860801'">860801 - Human Biological Preventatives (e.g. Vaccines)</xsl:if> 
<xsl:if test="SEO_code  ='860802'">860802 - Human Diagnostics</xsl:if> 
<xsl:if test="SEO_code  ='860803'">860803 - Human Pharmaceutical Treatments (e.g. Antibiotics)</xsl:if> 
<xsl:if test="SEO_code  ='860899'">860899 - Human Pharmaceutical Products not elsewhere classified</xsl:if> 
<xsl:if test="SEO_code  ='860901'">860901 - Veterinary Biological Preventatives (e.g. Vaccines)</xsl:if> 
<xsl:if test="SEO_code  ='860902'">860902 - Veterinary Diagnostics</xsl:if> 
<xsl:if test="SEO_code  ='860903'">860903 - Veterinary Pharmaceutical Treatments (e.g. Antibiotics)</xsl:if> 
<xsl:if test="SEO_code  ='860999'">860999 - Veterinary Pharmaceutical Products not elsewhere classified</xsl:if> 
<xsl:if test="SEO_code  ='861001'">861001 - Cement and Concrete Materials</xsl:if> 
<xsl:if test="SEO_code  ='861002'">861002 - Ceramics</xsl:if> 
<xsl:if test="SEO_code  ='861003'">861003 - Clay Products</xsl:if> 
<xsl:if test="SEO_code  ='861004'">861004 - Plaster and Plaster Products</xsl:if> 
<xsl:if test="SEO_code  ='861005'">861005 - Structural Glass and Glass Products</xsl:if> 
<xsl:if test="SEO_code  ='861099'">861099 - Ceramics, Glass and Industrial Mineral Products not elsewhere classified</xsl:if> 
<xsl:if test="SEO_code  ='861101'">861101 - Basic Aluminium Products</xsl:if> 
<xsl:if test="SEO_code  ='861102'">861102 - Basic Copper Products</xsl:if> 
<xsl:if test="SEO_code  ='861103'">861103 - Basic Iron and Steel Products</xsl:if> 
<xsl:if test="SEO_code  ='861104'">861104 - Basic Precious Metal Products</xsl:if> 
<xsl:if test="SEO_code  ='861105'">861105 - Basic Zinc Products</xsl:if> 
<xsl:if test="SEO_code  ='861199'">861199 - Basic Metal Products not elsewhere classified</xsl:if> 
<xsl:if test="SEO_code  ='861201'">861201 - Coated Metal and Metal-Coated Products</xsl:if> 
<xsl:if test="SEO_code  ='861202'">861202 - Machined Metal Products</xsl:if> 
<xsl:if test="SEO_code  ='861203'">861203 - Metal Castings</xsl:if> 
<xsl:if test="SEO_code  ='861204'">861204 - Semi-Finished Metal Products</xsl:if> 
<xsl:if test="SEO_code  ='861205'">861205 - Sheet Metal Products</xsl:if> 
<xsl:if test="SEO_code  ='861206'">861206 - Structural Metal Products</xsl:if> 
<xsl:if test="SEO_code  ='861299'">861299 - Fabricated Metal Products not elsewhere classified</xsl:if> 
<xsl:if test="SEO_code  ='861301'">861301 - Aerospace Equipment</xsl:if> 
<xsl:if test="SEO_code  ='861302'">861302 - Automotive Equipment</xsl:if> 
<xsl:if test="SEO_code  ='861303'">861303 - Nautical Equipment (excl. Yachts)</xsl:if> 
<xsl:if test="SEO_code  ='861304'">861304 - Rail Equipment</xsl:if> 
<xsl:if test="SEO_code  ='861305'">861305 - Yachts</xsl:if> 
<xsl:if test="SEO_code  ='861399'">861399 - Transport Equipment not elsewhere classified</xsl:if> 
<xsl:if test="SEO_code  ='861401'">861401 - Agricultural Machinery and Equipment</xsl:if> 
<xsl:if test="SEO_code  ='861402'">861402 - Appliances and Electrical Machinery and Equipment</xsl:if> 
<xsl:if test="SEO_code  ='861403'">861403 - Industrial Machinery and Equipment</xsl:if> 
<xsl:if test="SEO_code  ='861404'">861404 - Mining Machinery and Equipment</xsl:if> 
<xsl:if test="SEO_code  ='861499'">861499 - Machinery and Equipment not elsewhere classified</xsl:if> 
<xsl:if test="SEO_code  ='861501'">861501 - Industrial Instruments</xsl:if> 
<xsl:if test="SEO_code  ='861502'">861502 - Medical Instruments</xsl:if> 
<xsl:if test="SEO_code  ='861503'">861503 - Scientific Instruments</xsl:if> 
<xsl:if test="SEO_code  ='861599'">861599 - Instrumentation not elsewhere classified</xsl:if> 
<xsl:if test="SEO_code  ='861601'">861601 - Computer and Electronic Office Equipment</xsl:if> 
<xsl:if test="SEO_code  ='861602'">861602 - Consumer Electronic Equipment (excl. Communication Equipment)</xsl:if> 
<xsl:if test="SEO_code  ='861603'">861603 - Integrated Circuits and Devices</xsl:if> 
<xsl:if test="SEO_code  ='861604'">861604 - Integrated Systems</xsl:if> 
<xsl:if test="SEO_code  ='861605'">861605 - Processor Modules</xsl:if> 
<xsl:if test="SEO_code  ='861606'">861606 - Satellite Navigation Equipment</xsl:if> 
<xsl:if test="SEO_code  ='861699'">861699 - Computer Hardware and Electronic Equipment not elsewhere classified</xsl:if> 
<xsl:if test="SEO_code  ='861701'">861701 - Network Infrastructure Equipment</xsl:if> 
<xsl:if test="SEO_code  ='861702'">861702 - Telemetry Equipment</xsl:if> 
<xsl:if test="SEO_code  ='861703'">861703 - Voice and Data Equipment</xsl:if> 
<xsl:if test="SEO_code  ='861799'">861799 - Communication Equipment not elsewhere classified</xsl:if> 
<xsl:if test="SEO_code  ='869801'">869801 - Management of Gaseous Waste from Manufacturing Activities (excl. Greenhouse Gases)</xsl:if> 
<xsl:if test="SEO_code  ='869802'">869802 - Management of Greenhouse Gas Emissions from Manufacturing Activities</xsl:if> 
<xsl:if test="SEO_code  ='869803'">869803 - Management of Liquid Waste from Manufacturing Activities (excl. Water)</xsl:if> 
<xsl:if test="SEO_code  ='869804'">869804 - Management of Solid Waste from Manufacturing Activities</xsl:if> 
<xsl:if test="SEO_code  ='869805'">869805 - Management of Water Consumption by Manufacturing Activities</xsl:if> 
<xsl:if test="SEO_code  ='869899'">869899 - Environmentally Sustainable Manufacturing not elsewhere classified</xsl:if> 
<xsl:if test="SEO_code  ='869901'">869901 - Furniture</xsl:if> 
<xsl:if test="SEO_code  ='869999'">869999 - Manufacturing not elsewhere classified</xsl:if> 
<xsl:if test="SEO_code  ='870101'">870101 - Civil Construction Planning</xsl:if> 
<xsl:if test="SEO_code  ='870102'">870102 - Commercial Construction Planning</xsl:if> 
<xsl:if test="SEO_code  ='870103'">870103 - Regional Planning</xsl:if> 
<xsl:if test="SEO_code  ='870104'">870104 - Residential Construction Planning</xsl:if> 
<xsl:if test="SEO_code  ='870105'">870105 - Urban Planning</xsl:if> 
<xsl:if test="SEO_code  ='870199'">870199 - Construction Planning not elsewhere classified</xsl:if> 
<xsl:if test="SEO_code  ='870201'">870201 - Civil Construction Design</xsl:if> 
<xsl:if test="SEO_code  ='870202'">870202 - Commercial Construction Design</xsl:if> 
<xsl:if test="SEO_code  ='870203'">870203 - Industrial Construction Design</xsl:if> 
<xsl:if test="SEO_code  ='870204'">870204 - Residential Construction Design</xsl:if> 
<xsl:if test="SEO_code  ='870299'">870299 - Construction Design not elsewhere classified</xsl:if> 
<xsl:if test="SEO_code  ='870301'">870301 - Cement and Concrete Materials</xsl:if> 
<xsl:if test="SEO_code  ='870302'">870302 - Metals (e.g. Composites, Coatings, Bonding)</xsl:if> 
<xsl:if test="SEO_code  ='870303'">870303 - Polymeric Materials (e.g. Paints)</xsl:if> 
<xsl:if test="SEO_code  ='870304'">870304 - Stone, Ceramics and Clay Materials</xsl:if> 
<xsl:if test="SEO_code  ='870305'">870305 - Timber Materials</xsl:if> 
<xsl:if test="SEO_code  ='870399'">870399 - Construction Materials Performance and Processes not elsewhere classified</xsl:if> 
<xsl:if test="SEO_code  ='870401'">870401 - Civil Construction Processes</xsl:if> 
<xsl:if test="SEO_code  ='870402'">870402 - Commercial Construction Processes</xsl:if> 
<xsl:if test="SEO_code  ='870403'">870403 - Industrial Construction Processes</xsl:if> 
<xsl:if test="SEO_code  ='870404'">870404 - Residential Construction Processes</xsl:if> 
<xsl:if test="SEO_code  ='870499'">870499 - Construction Processes not elsewhere classified</xsl:if> 
<xsl:if test="SEO_code  ='870501'">870501 - Civil Building Management and Services</xsl:if> 
<xsl:if test="SEO_code  ='870502'">870502 - Commercial Building Management and Services</xsl:if> 
<xsl:if test="SEO_code  ='870503'">870503 - Residential Building Management and Services</xsl:if> 
<xsl:if test="SEO_code  ='870599'">870599 - Building Management and Services not elsewhere classified</xsl:if> 
<xsl:if test="SEO_code  ='879801'">879801 - Management of Gaseous Waste from Construction Activities (excl. Greenhouse Gases)</xsl:if> 
<xsl:if test="SEO_code  ='879802'">879802 - Management of Greenhouse Gas Emissions from Construction Activities</xsl:if> 
<xsl:if test="SEO_code  ='879803'">879803 - Management of Liquid Waste from Construction Activities (excl. Water)</xsl:if> 
<xsl:if test="SEO_code  ='879804'">879804 - Management of Solid Waste from Construction Activities</xsl:if> 
<xsl:if test="SEO_code  ='879805'">879805 - Management of Water Consumption by Construction Activities</xsl:if> 
<xsl:if test="SEO_code  ='879899'">879899 - Environmentally Sustainable Construction not elsewhere classified</xsl:if> 
<xsl:if test="SEO_code  ='879999'">879999 - Construction not elsewhere classified</xsl:if> 
<xsl:if test="SEO_code  ='880101'">880101 - Rail Freight</xsl:if> 
<xsl:if test="SEO_code  ='880102'">880102 - Rail Infrastructure and Networks</xsl:if> 
<xsl:if test="SEO_code  ='880103'">880103 - Rail Passenger Movements</xsl:if> 
<xsl:if test="SEO_code  ='880104'">880104 - Rail Safety</xsl:if> 
<xsl:if test="SEO_code  ='880105'">880105 - Road Freight</xsl:if> 
<xsl:if test="SEO_code  ='880106'">880106 - Road Infrastructure and Networks</xsl:if> 
<xsl:if test="SEO_code  ='880107'">880107 - Road Passenger Movements (excl. Public Transport)</xsl:if> 
<xsl:if test="SEO_code  ='880108'">880108 - Road Public Transport</xsl:if> 
<xsl:if test="SEO_code  ='880109'">880109 - Road Safety</xsl:if> 
<xsl:if test="SEO_code  ='880199'">880199 - Ground Transport not elsewhere classified</xsl:if> 
<xsl:if test="SEO_code  ='880201'">880201 - Coastal Sea Freight Transport</xsl:if> 
<xsl:if test="SEO_code  ='880202'">880202 - International Sea Freight Transport (excl. Live Animal Transport)</xsl:if> 
<xsl:if test="SEO_code  ='880203'">880203 - International Sea Transport of Live Animals</xsl:if> 
<xsl:if test="SEO_code  ='880204'">880204 - Passenger Water Transport</xsl:if> 
<xsl:if test="SEO_code  ='880205'">880205 - Port Infrastructure and Management</xsl:if> 
<xsl:if test="SEO_code  ='880206'">880206 - Water Safety</xsl:if> 
<xsl:if test="SEO_code  ='880299'">880299 - Water Transport not elsewhere classified</xsl:if> 
<xsl:if test="SEO_code  ='880301'">880301 - Air Freight</xsl:if> 
<xsl:if test="SEO_code  ='880302'">880302 - Air Passenger Transport</xsl:if> 
<xsl:if test="SEO_code  ='880303'">880303 - Air Safety</xsl:if> 
<xsl:if test="SEO_code  ='880304'">880304 - Air Terminal Infrastructure and Management</xsl:if> 
<xsl:if test="SEO_code  ='880305'">880305 - Space Transport</xsl:if> 
<xsl:if test="SEO_code  ='880399'">880399 - Aerospace Transport not elsewhere classified</xsl:if> 
<xsl:if test="SEO_code  ='889801'">889801 - Management of Gaseous Waste from Transport Activities (excl. Greenhouse Gases)</xsl:if> 
<xsl:if test="SEO_code  ='889802'">889802 - Management of Greenhouse Gas Emissions from Transport Activities</xsl:if> 
<xsl:if test="SEO_code  ='889803'">889803 - Management of Liquid Waste from Transport Activities (excl. Water)</xsl:if> 
<xsl:if test="SEO_code  ='889804'">889804 - Management of Noise and Vibration from TTransport Activities</xsl:if> 
<xsl:if test="SEO_code  ='889805'">889805 - Management of Solid Waste from Transport Activities</xsl:if> 
<xsl:if test="SEO_code  ='889806'">889806 - Management of Water Consumption by Transport Activities</xsl:if> 
<xsl:if test="SEO_code  ='889899'">889899 - Environmentally Sustainable Transport not elsewhere classified</xsl:if> 
<xsl:if test="SEO_code  ='889901'">889901 - Intermodal Materials Handling</xsl:if> 
<xsl:if test="SEO_code  ='889902'">889902 - Multimodal Transport</xsl:if> 
<xsl:if test="SEO_code  ='889903'">889903 - Pipeline Transport</xsl:if> 
<xsl:if test="SEO_code  ='889904'">889904 - Postal and Package Services (incl. Courier Services</xsl:if> 
<xsl:if test="SEO_code  ='889999'">889999 - Transport not elsewhere classified</xsl:if> 
<xsl:if test="SEO_code  ='890101'">890101 - Fixed Line Data Networks and Services</xsl:if> 
<xsl:if test="SEO_code  ='890102'">890102 - Fixed Line Telephone Networks and Services</xsl:if> 
<xsl:if test="SEO_code  ='890103'">890103 - Mobile Data Networks and Services</xsl:if> 
<xsl:if test="SEO_code  ='890104'">890104 - Mobile Telephone Networks and Services</xsl:if> 
<xsl:if test="SEO_code  ='890105'">890105 - Satellite Communication Networks and Services</xsl:if> 
<xsl:if test="SEO_code  ='890106'">890106 - Videoconference Services</xsl:if> 
<xsl:if test="SEO_code  ='890199'">890199 - Communication Networks and Services not elsewhere classified</xsl:if> 
<xsl:if test="SEO_code  ='890201'">890201 - Application Software Packages (excl. Computer Games)</xsl:if> 
<xsl:if test="SEO_code  ='890202'">890202 - Application Tools and System Utilities</xsl:if> 
<xsl:if test="SEO_code  ='890203'">890203 - Computer Gaming Software</xsl:if> 
<xsl:if test="SEO_code  ='890204'">890204 - Computer Time Leasing, Sharing and Renting Services</xsl:if> 
<xsl:if test="SEO_code  ='890205'">890205 - Information Processing Services (incl. Data Entry and Capture)</xsl:if> 
<xsl:if test="SEO_code  ='890206'">890206 - Internet Hosting Services (incl. Application Hosting Services)</xsl:if> 
<xsl:if test="SEO_code  ='890299'">890299 - Computer Software and Services not elsewhere classified</xsl:if> 
<xsl:if test="SEO_code  ='890301'">890301 - Electronic Information Storage and Retrieval Services</xsl:if> 
<xsl:if test="SEO_code  ='890302'">890302 - Library and Archival Services</xsl:if> 
<xsl:if test="SEO_code  ='890303'">890303 - News Collection Services</xsl:if> 
<xsl:if test="SEO_code  ='890399'">890399 - Information Services not elsewhere classified</xsl:if> 
<xsl:if test="SEO_code  ='890401'">890401 - Animation and Computer Generated Imagery Services</xsl:if> 
<xsl:if test="SEO_code  ='890402'">890402 - Film and Video Services (excl. Animation and Computer Generated Imagery)</xsl:if> 
<xsl:if test="SEO_code  ='890403'">890403 - Internet Broadcasting</xsl:if> 
<xsl:if test="SEO_code  ='890404'">890404 - Publishing and Print Services (incl. Internet Publishing)</xsl:if> 
<xsl:if test="SEO_code  ='890405'">890405 - Radio and Television Broadcasting</xsl:if> 
<xsl:if test="SEO_code  ='890499'">890499 - Media Services not elsewhere classified</xsl:if> 
<xsl:if test="SEO_code  ='899801'">899801 - Management of Greenhouse Gas Emissions from Information and Communication Services</xsl:if> 
<xsl:if test="SEO_code  ='899802'">899802 - Management of Solid Waste from Information and Communication Services</xsl:if> 
<xsl:if test="SEO_code  ='899803'">899803 - Management of Water Consumption by Information and Communication Services</xsl:if> 
<xsl:if test="SEO_code  ='899899'">899899 - Environmentally Sustainable Information and Communication Services not elsewhere classified</xsl:if> 
<xsl:if test="SEO_code  ='899999'">899999 - Information and Communication Services not elsewhere classified</xsl:if> 
<xsl:if test="SEO_code  ='900101'">900101 - Finance Services</xsl:if> 
<xsl:if test="SEO_code  ='900102'">900102 - Investment Services (excl. Superannuation)</xsl:if> 
<xsl:if test="SEO_code  ='900103'">900103 - Superannuation and Insurance Services</xsl:if> 
<xsl:if test="SEO_code  ='900199'">900199 - Financial Services not elsewhere classified</xsl:if> 
<xsl:if test="SEO_code  ='900201'">900201 - Administration and Business Support Services</xsl:if> 
<xsl:if test="SEO_code  ='900202'">900202 - Professional, Scientific and Technical Services</xsl:if> 
<xsl:if test="SEO_code  ='900203'">900203 - Property Services (incl. Security)</xsl:if> 
<xsl:if test="SEO_code  ='900204'">900204 - Wholesale and Retail Trade</xsl:if> 
<xsl:if test="SEO_code  ='900299'">900299 - Property, Business Support Services and Trade not elsewhere classified</xsl:if> 
<xsl:if test="SEO_code  ='900301'">900301 - Economic Issues in Tourism</xsl:if> 
<xsl:if test="SEO_code  ='900302'">900302 - Socio-Cultural Issues in Tourism</xsl:if> 
<xsl:if test="SEO_code  ='900303'">900303 - Tourism Infrastructure Development</xsl:if> 
<xsl:if test="SEO_code  ='900399'">900399 - Tourism not elsewhere classified</xsl:if> 
<xsl:if test="SEO_code  ='900401'">900401 - Waste Management Services</xsl:if> 
<xsl:if test="SEO_code  ='900402'">900402 - Waste Recycling Services</xsl:if> 
<xsl:if test="SEO_code  ='900403'">900403 - Water Recycling Services (incl. Sewage and Greywater)</xsl:if> 
<xsl:if test="SEO_code  ='900404'">900404 - Water Services and Utilities</xsl:if> 
<xsl:if test="SEO_code  ='900499'">900499 - Water and Waste Services not elsewhere classified</xsl:if> 
<xsl:if test="SEO_code  ='909801'">909801 - Management of Gaseous Waste from Commercial Services and Tourism (excl. Greenhouse Gases)</xsl:if> 
<xsl:if test="SEO_code  ='909802'">909802 - Management of Greenhouse Gas Emissions from Commercial Services and Tourism</xsl:if> 
<xsl:if test="SEO_code  ='909803'">909803 - Management of Liquid Waste from Commercial Services and Tourism (excl. Water)</xsl:if> 
<xsl:if test="SEO_code  ='909804'">909804 - Management of Solid Waste from Commercial Services and Tourism</xsl:if> 
<xsl:if test="SEO_code  ='909805'">909805 - Management of Water Consumption by Commercial Services and Tourism</xsl:if> 
<xsl:if test="SEO_code  ='909899'">909899 - Environmentally Sustainable Commercial Services and Tourism not elsewhere classified</xsl:if> 
<xsl:if test="SEO_code  ='909901'">909901 - Hospitality Services</xsl:if> 
<xsl:if test="SEO_code  ='909902'">909902 - Recreational Services</xsl:if> 
<xsl:if test="SEO_code  ='909999'">909999 - Commercial Services and Tourism not elsewhere classified</xsl:if> 
<xsl:if test="SEO_code  ='910101'">910101 - Balance of Payments</xsl:if> 
<xsl:if test="SEO_code  ='910102'">910102 - Demography</xsl:if> 
<xsl:if test="SEO_code  ='910103'">910103 - Economic Growth</xsl:if> 
<xsl:if test="SEO_code  ='910104'">910104 - Exchange Rates</xsl:if> 
<xsl:if test="SEO_code  ='910105'">910105 - Fiscal Policy</xsl:if> 
<xsl:if test="SEO_code  ='910106'">910106 - Income Distribution</xsl:if> 
<xsl:if test="SEO_code  ='910107'">910107 - Macro Labour Market Issues</xsl:if> 
<xsl:if test="SEO_code  ='910108'">910108 - Monetary Policy</xsl:if> 
<xsl:if test="SEO_code  ='910109'">910109 - Savings and Investments</xsl:if> 
<xsl:if test="SEO_code  ='910110'">910110 - Taxation</xsl:if> 
<xsl:if test="SEO_code  ='910199'">910199 - Macroeconomics not elsewhere classified</xsl:if> 
<xsl:if test="SEO_code  ='910201'">910201 - Consumption</xsl:if> 
<xsl:if test="SEO_code  ='910202'">910202 - Human Capital Issues</xsl:if> 
<xsl:if test="SEO_code  ='910203'">910203 - Industrial Organisations</xsl:if> 
<xsl:if test="SEO_code  ='910204'">910204 - Industry Costs and Structure</xsl:if> 
<xsl:if test="SEO_code  ='910205'">910205 - Industry Policy</xsl:if> 
<xsl:if test="SEO_code  ='910206'">910206 - Market-Based Mechanisms</xsl:if> 
<xsl:if test="SEO_code  ='910207'">910207 - Microeconomic Effects of Taxation</xsl:if> 
<xsl:if test="SEO_code  ='910208'">910208 - Micro Labour Market Issues</xsl:if> 
<xsl:if test="SEO_code  ='910209'">910209 - Preference, Behaviour and Welfare</xsl:if> 
<xsl:if test="SEO_code  ='910210'">910210 - Production</xsl:if> 
<xsl:if test="SEO_code  ='910211'">910211 - Supply and Demand</xsl:if> 
<xsl:if test="SEO_code  ='910299'">910299 - Microeconomics not elsewhere classified</xsl:if> 
<xsl:if test="SEO_code  ='910301'">910301 - International Agreements on Trade</xsl:if> 
<xsl:if test="SEO_code  ='910302'">910302 - Trade Assistance and Protection</xsl:if> 
<xsl:if test="SEO_code  ='910303'">910303 - Trade Policy</xsl:if> 
<xsl:if test="SEO_code  ='910399'">910399 - International Trade not elsewhere classified</xsl:if> 
<xsl:if test="SEO_code  ='910401'">910401 - Industrial Relations</xsl:if> 
<xsl:if test="SEO_code  ='910402'">910402 - Management</xsl:if> 
<xsl:if test="SEO_code  ='910403'">910403 - Marketing</xsl:if> 
<xsl:if test="SEO_code  ='910404'">910404 - Productivity (excl. Public Sector)</xsl:if> 
<xsl:if test="SEO_code  ='910405'">910405 - Public Sector Productivity</xsl:if> 
<xsl:if test="SEO_code  ='910406'">910406 - Technological and Organisational Innovation</xsl:if> 
<xsl:if test="SEO_code  ='910499'">910499 - Management and Productivity not elsewhere classified</xsl:if> 
<xsl:if test="SEO_code  ='910501'">910501 - Agricultural and Environmental Standards</xsl:if> 
<xsl:if test="SEO_code  ='910502'">910502 - Defence Standards and Calibrations</xsl:if> 
<xsl:if test="SEO_code  ='910503'">910503 - Manufacturing Standards and Calibrations</xsl:if> 
<xsl:if test="SEO_code  ='910504'">910504 - Service Industries Standards and Calibrations</xsl:if> 
<xsl:if test="SEO_code  ='910599'">910599 - Measurement Standards and Calibration Services not elsewhere classified</xsl:if> 
<xsl:if test="SEO_code  ='919901'">919901 - Carbon and Emissions Trading</xsl:if> 
<xsl:if test="SEO_code  ='919902'">919902 - Ecological Economics</xsl:if> 
<xsl:if test="SEO_code  ='919999'">919999 - Economic Framework not elsewhere classified</xsl:if> 
<xsl:if test="SEO_code  ='920101'">920101 - Blood Disorders</xsl:if> 
<xsl:if test="SEO_code  ='920102'">920102 - Cancer and Related Disorders</xsl:if> 
<xsl:if test="SEO_code  ='920103'">920103 - Cardiovascular System and Diseases</xsl:if> 
<xsl:if test="SEO_code  ='920104'">920104 - Diabetes</xsl:if> 
<xsl:if test="SEO_code  ='920105'">920105 - Digestive System Disorders</xsl:if> 
<xsl:if test="SEO_code  ='920106'">920106 - Endocrine Organs and Diseases (excl. Diabetes)</xsl:if> 
<xsl:if test="SEO_code  ='920107'">920107 - Hearing, Vision, Speech and Their Disorders</xsl:if> 
<xsl:if test="SEO_code  ='920108'">920108 - Immune System and Allergy</xsl:if> 
<xsl:if test="SEO_code  ='920109'">920109 - Infectious Diseases</xsl:if> 
<xsl:if test="SEO_code  ='920110'">920110 - Inherited Diseases (incl. Gene Therapy)</xsl:if> 
<xsl:if test="SEO_code  ='920111'">920111 - Nervous System and Disorders</xsl:if> 
<xsl:if test="SEO_code  ='920112'">920112 - Neurodegenerative Disorders Related to Ageing</xsl:if> 
<xsl:if test="SEO_code  ='920113'">920113 - Oro-Dental Disorders</xsl:if> 
<xsl:if test="SEO_code  ='920114'">920114 - Reproductive System and Disorders</xsl:if> 
<xsl:if test="SEO_code  ='920115'">920115 - Respiratory System and Diseases (incl. Asthma)</xsl:if> 
<xsl:if test="SEO_code  ='920116'">920116 - Skeletal System and Disorders (incl. Arthritis)</xsl:if> 
<xsl:if test="SEO_code  ='920117'">920117 - Skin and Related Disorders</xsl:if> 
<xsl:if test="SEO_code  ='920118'">920118 - Surgical Methods and Procedures</xsl:if> 
<xsl:if test="SEO_code  ='920119'">920119 - Urogenital System and Disorders</xsl:if> 
<xsl:if test="SEO_code  ='920120'">920120 - Zoonoses</xsl:if> 
<xsl:if test="SEO_code  ='920199'">920199 - Clinical Health (Organs, Diseases and Abnormal Conditions) not elsewhere classified</xsl:if> 
<xsl:if test="SEO_code  ='920201'">920201 - Allied Health Therapies (excl. Mental Health Services)</xsl:if> 
<xsl:if test="SEO_code  ='920202'">920202 - Carer Health</xsl:if> 
<xsl:if test="SEO_code  ='920203'">920203 - Diagnostic Methods</xsl:if> 
<xsl:if test="SEO_code  ='920204'">920204 - Evaluation of Health Outcomes</xsl:if> 
<xsl:if test="SEO_code  ='920205'">920205 - Health Education and Promotion</xsl:if> 
<xsl:if test="SEO_code  ='920206'">920206 - Health Inequalities</xsl:if> 
<xsl:if test="SEO_code  ='920207'">920207 - Health Policy Economic Outcomes</xsl:if> 
<xsl:if test="SEO_code  ='920208'">920208 - Health Policy Evaluation</xsl:if> 
<xsl:if test="SEO_code  ='920209'">920209 - Mental Health Services</xsl:if> 
<xsl:if test="SEO_code  ='920210'">920210 - Nursing</xsl:if> 
<xsl:if test="SEO_code  ='920211'">920211 - Palliative Care</xsl:if> 
<xsl:if test="SEO_code  ='920299'">920299 - Health and Support Services not elsewhere classified</xsl:if> 
<xsl:if test="SEO_code  ='920301'">920301 - Aboriginal and Torres Strait Islander Health - Determinants of Health</xsl:if> 
<xsl:if test="SEO_code  ='920302'">920302 - Aboriginal and Torres Strait Islander Health - Health Status and Outcomes</xsl:if> 
<xsl:if test="SEO_code  ='920303'">920303 - Aboriginal and Torres Strait Islander Health - Health System Performance (incl. Effectiveness of Interventions)</xsl:if> 
<xsl:if test="SEO_code  ='920304'">920304 - Maori Health - Determinants of Health</xsl:if> 
<xsl:if test="SEO_code  ='920305'">920305 - Maori Health - Health Status and Outcomes</xsl:if> 
<xsl:if test="SEO_code  ='920306'">920306 - Maori Health - Health System Performance (incl. Effectiveness of Interventions)</xsl:if> 
<xsl:if test="SEO_code  ='920307'">920307 - Pacific Peoples Health - Health Status and Outcomes</xsl:if> 
<xsl:if test="SEO_code  ='920308'">920308 - Pacific Peoples Health - Determinants of Health</xsl:if> 
<xsl:if test="SEO_code  ='920309'">920309 - Pacific Peoples Health - Health System Performance (incl. Effectiveness of Interventions)</xsl:if> 
<xsl:if test="SEO_code  ='920399'">920399 - Indigenous Health not elsewhere classified</xsl:if> 
<xsl:if test="SEO_code  ='920401'">920401 - Behaviour and Health</xsl:if> 
<xsl:if test="SEO_code  ='920402'">920402 - Dental Health</xsl:if> 
<xsl:if test="SEO_code  ='920403'">920403 - Disability and Functional Capacity</xsl:if> 
<xsl:if test="SEO_code  ='920404'">920404 - Disease Distribution and Transmission (incl. Surveillance and Response)</xsl:if> 
<xsl:if test="SEO_code  ='920405'">920405 - Environmental Health</xsl:if> 
<xsl:if test="SEO_code  ='920406'">920406 - Food Safety</xsl:if> 
<xsl:if test="SEO_code  ='920407'">920407 - Health Protection and/or Disaster Response</xsl:if> 
<xsl:if test="SEO_code  ='920408'">920408 - Health Status (e.g. Indicators of Well-Being)</xsl:if> 
<xsl:if test="SEO_code  ='920409'">920409 - Injury Control</xsl:if> 
<xsl:if test="SEO_code  ='920410'">920410 - Mental Health</xsl:if> 
<xsl:if test="SEO_code  ='920411'">920411 - Nutrition</xsl:if> 
<xsl:if test="SEO_code  ='920412'">920412 - Preventive Medicine</xsl:if> 
<xsl:if test="SEO_code  ='920413'">920413 - Social Structure and Health</xsl:if> 
<xsl:if test="SEO_code  ='920414'">920414 - Substance Abuse</xsl:if> 
<xsl:if test="SEO_code  ='920499'">920499 - Public Health (excl. Specific Population Health) not elsewhere classified</xsl:if> 
<xsl:if test="SEO_code  ='920501'">920501 - Child Health</xsl:if> 
<xsl:if test="SEO_code  ='920502'">920502 - Health Related to Ageing</xsl:if> 
<xsl:if test="SEO_code  ='920503'">920503 - Health Related to Specific Ethnic Groups</xsl:if> 
<xsl:if test="SEO_code  ='920504'">920504 - Mens Health</xsl:if> 
<xsl:if test="SEO_code  ='920505'">920505 - Occupational Health</xsl:if> 
<xsl:if test="SEO_code  ='920506'">920506 - Rural Health</xsl:if> 
<xsl:if test="SEO_code  ='920507'">920507 - Womens Health</xsl:if> 
<xsl:if test="SEO_code  ='920599'">920599 - Specific Population Health (excl. Indigenous Health) not elsewhere classified</xsl:if> 
<xsl:if test="SEO_code  ='929999'">929999 - Health not elsewhere classified</xsl:if> 
<xsl:if test="SEO_code  ='930101'">930101 - Learner and Learning Achievement</xsl:if> 
<xsl:if test="SEO_code  ='930102'">930102 - Learner and Learning Processes</xsl:if> 
<xsl:if test="SEO_code  ='930103'">930103 - Learner Development</xsl:if> 
<xsl:if test="SEO_code  ='930104'">930104 - Moral and Social Development (incl. Affect)</xsl:if> 
<xsl:if test="SEO_code  ='930199'">930199 - Learner and Learning not elsewhere classified</xsl:if> 
<xsl:if test="SEO_code  ='930201'">930201 - Pedagogy</xsl:if> 
<xsl:if test="SEO_code  ='930202'">930202 - Teacher and Instructor Development</xsl:if> 
<xsl:if test="SEO_code  ='930203'">930203 - Teaching and Instruction Technologies</xsl:if> 
<xsl:if test="SEO_code  ='930299'">930299 - Teaching and Instruction not elsewhere classified</xsl:if> 
<xsl:if test="SEO_code  ='930301'">930301 - Assessment and Evaluation of Curriculum</xsl:if> 
<xsl:if test="SEO_code  ='930302'">930302 - Syllabus and Curriculum Development </xsl:if> 
<xsl:if test="SEO_code  ='930399'">930399 - Curriculum not elsewhere classified</xsl:if> 
<xsl:if test="SEO_code  ='930401'">930401 - Management and Leadership of Schools/Institutions</xsl:if> 
<xsl:if test="SEO_code  ='930402'">930402 - School/Institution Community and Environment</xsl:if> 
<xsl:if test="SEO_code  ='930403'">930403 - School/Institution Policies and Development</xsl:if> 
<xsl:if test="SEO_code  ='930499'">930499 - School/Institution not elsewhere classified</xsl:if> 
<xsl:if test="SEO_code  ='930501'">930501 - Education and Training Systems Policies and Development</xsl:if> 
<xsl:if test="SEO_code  ='930502'">930502 - Management of Education and Training Systems</xsl:if> 
<xsl:if test="SEO_code  ='930503'">930503 - Resourcing of Education and Training Systems</xsl:if> 
<xsl:if test="SEO_code  ='930599'">930599 - Education and Training Systems not elsewhere classified</xsl:if> 
<xsl:if test="SEO_code  ='939901'">939901 - Aboriginal and Torres Strait Islander Education</xsl:if> 
<xsl:if test="SEO_code  ='939902'">939902 - Education and Training Theory and Methodology</xsl:if> 
<xsl:if test="SEO_code  ='939903'">939903 - Equity and Access to Education</xsl:if> 
<xsl:if test="SEO_code  ='939904'">939904 - Gender Aspects of Education</xsl:if> 
<xsl:if test="SEO_code  ='939905'">939905 - Maori Education</xsl:if> 
<xsl:if test="SEO_code  ='939906'">939906 - Pacific Peoples Education</xsl:if> 
<xsl:if test="SEO_code  ='939907'">939907 - Special Needs Education</xsl:if> 
<xsl:if test="SEO_code  ='939908'">939908 - Workforce Transition and Employment</xsl:if> 
<xsl:if test="SEO_code  ='939999'">939999 - Education and Training not elsewhere classified</xsl:if> 
<xsl:if test="SEO_code  ='940101'">940101 - Ability and Disability</xsl:if> 
<xsl:if test="SEO_code  ='940102'">940102 - Aboriginal and Torres Strait Islander Development and Welfare</xsl:if> 
<xsl:if test="SEO_code  ='940103'">940103 - Ageing and Older People</xsl:if> 
<xsl:if test="SEO_code  ='940104'">940104 - Carers Development and Welfare</xsl:if> 
<xsl:if test="SEO_code  ='940105'">940105 - Childrens/Youth Services and Childcare</xsl:if> 
<xsl:if test="SEO_code  ='940106'">940106 - Citizenship and National Identity</xsl:if> 
<xsl:if test="SEO_code  ='940107'">940107 - Comparative Structure and Development of Community Services</xsl:if> 
<xsl:if test="SEO_code  ='940108'">940108 - Distribution of Income and Wealth</xsl:if> 
<xsl:if test="SEO_code  ='940109'">940109 - Employment Services</xsl:if> 
<xsl:if test="SEO_code  ='940110'">940110 - Environmental Services</xsl:if> 
<xsl:if test="SEO_code  ='940111'">940111 - Ethnicity, Multiculturalism and Migrant Development and Welfare</xsl:if> 
<xsl:if test="SEO_code  ='940112'">940112 - Families and Family Services</xsl:if> 
<xsl:if test="SEO_code  ='940113'">940113 - Gender and Sexualities</xsl:if> 
<xsl:if test="SEO_code  ='940114'">940114 - Maori Development and Welfare</xsl:if> 
<xsl:if test="SEO_code  ='940115'">940115 - Pacific Peoples Development and Welfare</xsl:if> 
<xsl:if test="SEO_code  ='940116'">940116 - Social Class and Inequalities</xsl:if> 
<xsl:if test="SEO_code  ='940117'">940117 - Structure, Delivery and Financing of Community Services</xsl:if> 
<xsl:if test="SEO_code  ='940199'">940199 - Community Service (excl. Work) not elsewhere classified</xsl:if> 
<xsl:if test="SEO_code  ='940201'">940201 - Civics and Citizenship</xsl:if> 
<xsl:if test="SEO_code  ='940202'">940202 - Electoral Systems</xsl:if> 
<xsl:if test="SEO_code  ='940203'">940203 - Political Systems</xsl:if> 
<xsl:if test="SEO_code  ='940204'">940204 - Public Services Policy Advice and Analysis</xsl:if> 
<xsl:if test="SEO_code  ='940299'">940299 - Government and Politics not elsewhere classified</xsl:if> 
<xsl:if test="SEO_code  ='940301'">940301 - Defence and Security Policy</xsl:if> 
<xsl:if test="SEO_code  ='940302'">940302 - International Aid and Development</xsl:if> 
<xsl:if test="SEO_code  ='940303'">940303 - International Organisations</xsl:if> 
<xsl:if test="SEO_code  ='940304'">940304 - International Political Economy (excl. International Trade)</xsl:if> 
<xsl:if test="SEO_code  ='940399'">940399 - International Relations not elsewhere classified</xsl:if> 
<xsl:if test="SEO_code  ='940401'">940401 - Civil Justice</xsl:if> 
<xsl:if test="SEO_code  ='940402'">940402 - Crime Prevention</xsl:if> 
<xsl:if test="SEO_code  ='940403'">940403 - Criminal Justice</xsl:if> 
<xsl:if test="SEO_code  ='940404'">940404 - Law Enforcement</xsl:if> 
<xsl:if test="SEO_code  ='940405'">940405 - Law Reform</xsl:if> 
<xsl:if test="SEO_code  ='940406'">940406 - Legal Processes</xsl:if> 
<xsl:if test="SEO_code  ='940407'">940407 - Legislation, Civil and Criminal Codes</xsl:if> 
<xsl:if test="SEO_code  ='940408'">940408 - Rehabilitation and Correctional Services</xsl:if> 
<xsl:if test="SEO_code  ='940499'">940499 - Justice and the Law not elsewhere classified</xsl:if> 
<xsl:if test="SEO_code  ='940501'">940501 - Employment Patterns and Change</xsl:if> 
<xsl:if test="SEO_code  ='940502'">940502 - Professions and Professionalisation</xsl:if> 
<xsl:if test="SEO_code  ='940503'">940503 - Time Use, Unpaid Work and Volunteering</xsl:if> 
<xsl:if test="SEO_code  ='940504'">940504 - Work and Family Responsibilities</xsl:if> 
<xsl:if test="SEO_code  ='940505'">940505 - Workplace Safety</xsl:if> 
<xsl:if test="SEO_code  ='940599'">940599 - Work and Institutional Development not elsewhere classified</xsl:if> 
<xsl:if test="SEO_code  ='949999'">949999 - Law, Politics and Community Services not elsewhere classified</xsl:if> 
<xsl:if test="SEO_code  ='950101'">950101 - Music</xsl:if> 
<xsl:if test="SEO_code  ='950102'">950102 - Organised Sports</xsl:if> 
<xsl:if test="SEO_code  ='950103'">950103 - Recreation</xsl:if> 
<xsl:if test="SEO_code  ='950104'">950104 - The Creative Arts (incl. Graphics and Craft)</xsl:if> 
<xsl:if test="SEO_code  ='950105'">950105 - The Performing Arts (incl. Theatre and Dance)</xsl:if> 
<xsl:if test="SEO_code  ='950199'">950199 - Arts and Leisure not elsewhere classified</xsl:if> 
<xsl:if test="SEO_code  ='950201'">950201 - Communication Across Languages and Culture</xsl:if> 
<xsl:if test="SEO_code  ='950202'">950202 - Languages and Literacy</xsl:if> 
<xsl:if test="SEO_code  ='950203'">950203 - Languages and Literature</xsl:if> 
<xsl:if test="SEO_code  ='950204'">950204 - The Media</xsl:if> 
<xsl:if test="SEO_code  ='950205'">950205 - Visual Communication</xsl:if> 
<xsl:if test="SEO_code  ='950299'">950299 - Communication not elsewhere classified</xsl:if> 
<xsl:if test="SEO_code  ='950301'">950301 - Ahuatanga Maori (Maori Tradition)</xsl:if> 
<xsl:if test="SEO_code  ='950302'">950302 - Conserving Aboriginal and Torres Strait Islander Heritage</xsl:if> 
<xsl:if test="SEO_code  ='950303'">950303 - Conserving Collections and Movable Cultural Heritage</xsl:if> 
<xsl:if test="SEO_code  ='950304'">950304 - Conserving Intangible Cultural Heritage</xsl:if> 
<xsl:if test="SEO_code  ='950305'">950305 - Conserving Natural Heritage</xsl:if> 
<xsl:if test="SEO_code  ='950306'">950306 - Conserving Pacific Peoples Heritage</xsl:if> 
<xsl:if test="SEO_code  ='950307'">950307 - Conserving the Historic Environment</xsl:if> 
<xsl:if test="SEO_code  ='950308'">950308 - Matauranga Maori (Maori Knowledge)</xsl:if> 
<xsl:if test="SEO_code  ='950309'">950309 - Taonga (Maori Artefacts)</xsl:if> 
<xsl:if test="SEO_code  ='950310'">950310 - Tikanga Maori (Maori Customary Practices)</xsl:if> 
<xsl:if test="SEO_code  ='950311'">950311 - Wahi Taonga (Maori Places of Significance)</xsl:if> 
<xsl:if test="SEO_code  ='950399'">950399 - Heritage not elsewhere classified</xsl:if> 
<xsl:if test="SEO_code  ='950401'">950401 - Bioethics</xsl:if> 
<xsl:if test="SEO_code  ='950402'">950402 - Business Ethics</xsl:if> 
<xsl:if test="SEO_code  ='950403'">950403 - Environmental Ethics</xsl:if> 
<xsl:if test="SEO_code  ='950404'">950404 - Religion and Society</xsl:if> 
<xsl:if test="SEO_code  ='950405'">950405 - Religious Structures and Ritual</xsl:if> 
<xsl:if test="SEO_code  ='950406'">950406 - Religious Traditions (excl. Structures and Rituals)</xsl:if> 
<xsl:if test="SEO_code  ='950407'">950407 - Social Ethics</xsl:if> 
<xsl:if test="SEO_code  ='950408'">950408 - Technological Ethics</xsl:if> 
<xsl:if test="SEO_code  ='950409'">950409 - Workplace and Organisational Ethics</xsl:if> 
<xsl:if test="SEO_code  ='950499'">950499 - Religion and Ethics not elsewhere classified</xsl:if> 
<xsl:if test="SEO_code  ='950501'">950501 - Understanding Africas Past</xsl:if> 
<xsl:if test="SEO_code  ='950502'">950502 - Understanding Asias Past</xsl:if> 
<xsl:if test="SEO_code  ='950503'">950503 - Understanding Australias Past</xsl:if> 
<xsl:if test="SEO_code  ='950504'">950504 - Understanding Europes Past</xsl:if> 
<xsl:if test="SEO_code  ='950505'">950505 - Understanding New Zealands Past</xsl:if> 
<xsl:if test="SEO_code  ='950506'">950506 - Understanding the Past of the Americas</xsl:if> 
<xsl:if test="SEO_code  ='950599'">950599 - Understanding Past Societies not elsewhere classified</xsl:if> 
<xsl:if test="SEO_code  ='959999'">959999 - Cultural Understanding not elsewhere classified</xsl:if> 
<xsl:if test="SEO_code  ='960101'">960101 - Antarctic and Sub-Antarctic Air Quality</xsl:if> 
<xsl:if test="SEO_code  ='960102'">960102 - Coastal and Estuarine Air Quality</xsl:if> 
<xsl:if test="SEO_code  ='960103'">960103 - Farmland, Arable Cropland and Permanent Cropland Air Quality</xsl:if> 
<xsl:if test="SEO_code  ='960104'">960104 - Marine Air Quality</xsl:if> 
<xsl:if test="SEO_code  ='960105'">960105 - Mining Air Quality</xsl:if> 
<xsl:if test="SEO_code  ='960106'">960106 - Urban and Industrial Air Quality</xsl:if> 
<xsl:if test="SEO_code  ='960199'">960199 - Air Quality not elsewhere classified</xsl:if> 
<xsl:if test="SEO_code  ='960201'">960201 - Atmospheric Composition (incl. Greenhouse Gas Inventory)</xsl:if> 
<xsl:if test="SEO_code  ='960202'">960202 - Atmospheric Processes and Dynamics</xsl:if> 
<xsl:if test="SEO_code  ='960203'">960203 - Weather</xsl:if> 
<xsl:if test="SEO_code  ='960299'">960299 - Atmosphere and Weather not elsewhere classified</xsl:if> 
<xsl:if test="SEO_code  ='960301'">960301 - Climate Change Adaptation Measures</xsl:if> 
<xsl:if test="SEO_code  ='960302'">960302 - Climate Change Mitigation Strategies</xsl:if> 
<xsl:if test="SEO_code  ='960303'">960303 - Climate Change Models</xsl:if> 
<xsl:if test="SEO_code  ='960304'">960304 - Climate Variability (excl. Social Impacts)</xsl:if> 
<xsl:if test="SEO_code  ='960305'">960305 - Ecosystem Adaptation to Climate Change</xsl:if> 
<xsl:if test="SEO_code  ='960306'">960306 - Effects of Climate Change and Variability on Antarctic and Sub-Antarctic Environments (excl. Social Impacts)</xsl:if> 
<xsl:if test="SEO_code  ='960307'">960307 - Effects of Climate Change and Variability on Australia (excl. Social Impacts)</xsl:if> 
<xsl:if test="SEO_code  ='960308'">960308 - Effects of Climate Change and Variability on New Zealand (excl. Social Impacts)</xsl:if> 
<xsl:if test="SEO_code  ='960309'">960309 - Effects of Climate Change and Variability on the South Pacific (excl. Australia and New Zealand) (excl. Social Impacts)</xsl:if> 
<xsl:if test="SEO_code  ='960310'">960310 - Global Effects of Climate Change and Variability (excl. Australia, New Zealand, Antarctica and the South Pacific) (excl. Social Impacts)</xsl:if> 
<xsl:if test="SEO_code  ='960311'">960311 - Social Impacts of Climate Change and Variability</xsl:if> 
<xsl:if test="SEO_code  ='960399'">960399 - Climate and Climate Change not elsewhere classified</xsl:if> 
<xsl:if test="SEO_code  ='960401'">960401 - Border Biosecurity (incl. Quarantine and Inspection)</xsl:if> 
<xsl:if test="SEO_code  ='960402'">960402 - Control of Animal Pests, Diseases and Exotic Species in Coastal and Estuarine Environments</xsl:if> 
<xsl:if test="SEO_code  ='960403'">960403 - Control of Animal Pests, Diseases and Exotic Species in Farmland, Arable Cropland and Permanent Cropland Environments</xsl:if> 
<xsl:if test="SEO_code  ='960404'">960404 - Control of Animal Pests, Diseases and Exotic Species in Forest and Woodlands Environments</xsl:if> 
<xsl:if test="SEO_code  ='960405'">960405 - Control of Pests, Diseases and Exotic Species at Regional or Larger Scales</xsl:if> 
<xsl:if test="SEO_code  ='960406'">960406 - Control of Pests, Diseases and Exotic Species in Fresh, Ground and Surface Water Environments</xsl:if> 
<xsl:if test="SEO_code  ='960407'">960407 - Control of Pests, Diseases and Exotic Species in Marine Environments</xsl:if> 
<xsl:if test="SEO_code  ='960408'">960408 - Control of Pests, Diseases and Exotic Species in Mining Environments</xsl:if> 
<xsl:if test="SEO_code  ='960409'">960409 - Control of Pests, Diseases and Exotic Species in Mountain and High Country Environments</xsl:if> 
<xsl:if test="SEO_code  ='960410'">960410 - Control of Pests, Diseases and Exotic Species in Sparseland, Permanent Grassland and Arid Zone Environments</xsl:if> 
<xsl:if test="SEO_code  ='960411'">960411 - Control of Pests, Diseases and Exotic Species in Urban and Industrial Environments</xsl:if> 
<xsl:if test="SEO_code  ='960412'">960412 - Control of Plant Pests, Diseases and Exotic Species in Coastal and Estuarine Environments</xsl:if> 
<xsl:if test="SEO_code  ='960413'">960413 - Control of Plant Pests, Diseases and Exotic Species in Farmland, Arable Cropland and Permanent Cropland Environments</xsl:if> 
<xsl:if test="SEO_code  ='960414'">960414 - Control of Plant Pests, Diseases and Exotic Species in Forest and Woodlands Environments</xsl:if> 
<xsl:if test="SEO_code  ='960415'">960415 - Pre-Border Biosecurity</xsl:if> 
<xsl:if test="SEO_code  ='960499'">960499 - Control of Pests, Diseases and Exotic Species not elsewhere classified</xsl:if> 
<xsl:if test="SEO_code  ='960501'">960501 - Ecosystem Assessment and Management at Regional or Larger Scales</xsl:if> 
<xsl:if test="SEO_code  ='960502'">960502 - Ecosystem Assessment and Management of Antarctic and Sub-Antarctic Environments</xsl:if> 
<xsl:if test="SEO_code  ='960503'">960503 - Ecosystem Assessment and Management of Coastal and Estuarine Environments</xsl:if> 
<xsl:if test="SEO_code  ='960504'">960504 - Ecosystem Assessment and Management of Farmland, Arable Cropland and Permanent Cropland Environments</xsl:if> 
<xsl:if test="SEO_code  ='960505'">960505 - Ecosystem Assessment and Management of Forest and Woodlands Environments</xsl:if> 
<xsl:if test="SEO_code  ='960506'">960506 - Ecosystem Assessment and Management of Fresh, Ground and Surface Water Environments</xsl:if> 
<xsl:if test="SEO_code  ='960507'">960507 - Ecosystem Assessment and Management of Marine Environments</xsl:if> 
<xsl:if test="SEO_code  ='960508'">960508 - Ecosystem Assessment and Management of Mining Environments</xsl:if> 
<xsl:if test="SEO_code  ='960509'">960509 - Ecosystem Assessment and Management of MMountain and High Country Environments</xsl:if> 
<xsl:if test="SEO_code  ='960510'">960510 - Ecosystem Assessment and Management of Sparseland, Permanent Grassland and Arid Zone Environments</xsl:if> 
<xsl:if test="SEO_code  ='960511'">960511 - Ecosystem Assessment and Management of Urban and Industrial Environments</xsl:if> 
<xsl:if test="SEO_code  ='960599'">960599 - Ecosystem Assessment and Management not elsewhere classified</xsl:if> 
<xsl:if test="SEO_code  ='960601'">960601 - Economic Incentives for Environmental Protection</xsl:if> 
<xsl:if test="SEO_code  ='960602'">960602 - Eco-Verification (excl. Environmental Lifecycle Assessment)</xsl:if> 
<xsl:if test="SEO_code  ='960603'">960603 - Environmental Lifecycle Assessment</xsl:if> 
<xsl:if test="SEO_code  ='960604'">960604 - Environmental Management Systems</xsl:if> 
<xsl:if test="SEO_code  ='960605'">960605 - Institutional Arrangements for Environmental Protection</xsl:if> 
<xsl:if test="SEO_code  ='960606'">960606 - Rights to Environmental and Natural Resources (excl. Water Allocation)</xsl:if> 
<xsl:if test="SEO_code  ='960607'">960607 - Rural Land Evaluation</xsl:if> 
<xsl:if test="SEO_code  ='960608'">960608 - Rural Water Evaluation (incl. Water Quality)</xsl:if> 
<xsl:if test="SEO_code  ='960609'">960609 - Sustainability Indicators</xsl:if> 
<xsl:if test="SEO_code  ='960610'">960610 - Urban Land Evaluation</xsl:if> 
<xsl:if test="SEO_code  ='960611'">960611 - Urban Water Evaluation (incl. Water Quality)</xsl:if> 
<xsl:if test="SEO_code  ='960699'">960699 - Environmental and Natural Resource Evaluation not elsewhere classified</xsl:if> 
<xsl:if test="SEO_code  ='960701'">960701 - Coastal and Marine Management Policy</xsl:if> 
<xsl:if test="SEO_code  ='960702'">960702 - Consumption Patterns, Population Issues and the Environment</xsl:if> 
<xsl:if test="SEO_code  ='960703'">960703 - Environmental Education and Awareness</xsl:if> 
<xsl:if test="SEO_code  ='960704'">960704 - Land Stewardship</xsl:if> 
<xsl:if test="SEO_code  ='960705'">960705 - Rural Land Policy</xsl:if> 
<xsl:if test="SEO_code  ='960706'">960706 - Rural Water Policy</xsl:if> 
<xsl:if test="SEO_code  ='960707'">960707 - Trade and Environment</xsl:if> 
<xsl:if test="SEO_code  ='960708'">960708 - Urban Land Policy</xsl:if> 
<xsl:if test="SEO_code  ='960709'">960709 - Urban Water Policy</xsl:if> 
<xsl:if test="SEO_code  ='960799'">960799 - Environmental Policy, Legislation and Standards not elsewhere classified</xsl:if> 
<xsl:if test="SEO_code  ='960801'">960801 - Antarctic and Sub-Antarctic Flora, Fauna and Biodiversity</xsl:if> 
<xsl:if test="SEO_code  ='960802'">960802 - Coastal and Estuarine Flora, Fauna and Biodiversity</xsl:if> 
<xsl:if test="SEO_code  ='960803'">960803 - Documentation of Undescribed Flora and Fauna</xsl:if> 
<xsl:if test="SEO_code  ='960804'">960804 - Farmland, Arable Cropland and Permanent Cropland Flora, Fauna and Biodiversity</xsl:if> 
<xsl:if test="SEO_code  ='960805'">960805 - Flora, Fauna and Biodiversity at Regional or Larger Scales</xsl:if> 
<xsl:if test="SEO_code  ='960806'">960806 - Forest and Woodlands Flora, Fauna and Biodiversity</xsl:if> 
<xsl:if test="SEO_code  ='960807'">960807 - Fresh, Ground and Surface Water Flora, Fauna and Biodiversity</xsl:if> 
<xsl:if test="SEO_code  ='960808'">960808 - Marine Flora, Fauna and Biodiversity</xsl:if> 
<xsl:if test="SEO_code  ='960809'">960809 - Mining Flora, Fauna and Biodiversity</xsl:if> 
<xsl:if test="SEO_code  ='960810'">960810 - Mountain and High Country Flora, Fauna and Biodiversity</xsl:if> 
<xsl:if test="SEO_code  ='960811'">960811 - Sparseland, Permanent Grassland and Arid Zone Flora, Fauna and Biodiversity</xsl:if> 
<xsl:if test="SEO_code  ='960812'">960812 - Urban and Industrial Flora, Fauna and Biodiversity</xsl:if> 
<xsl:if test="SEO_code  ='960899'">960899 - Flora, Fauna and Biodiversity of environments not elsewhere classified</xsl:if> 
<xsl:if test="SEO_code  ='960901'">960901 - Antarctic and Sub-Antarctic Land and Water Management</xsl:if> 
<xsl:if test="SEO_code  ='960902'">960902 - Coastal and Estuarine Land Management</xsl:if> 
<xsl:if test="SEO_code  ='960903'">960903 - Coastal and Estuarine Water Management</xsl:if> 
<xsl:if test="SEO_code  ='960904'">960904 - Farmland, Arable Cropland and Permanent Cropland Land Management</xsl:if> 
<xsl:if test="SEO_code  ='960905'">960905 - Farmland, Arable Cropland and Permanent Cropland Water Management</xsl:if> 
<xsl:if test="SEO_code  ='960906'">960906 - Forest and Woodlands Land Management</xsl:if> 
<xsl:if test="SEO_code  ='960907'">960907 - Forest and Woodlands Water Management</xsl:if> 
<xsl:if test="SEO_code  ='960908'">960908 - Mining Land and Water Management</xsl:if> 
<xsl:if test="SEO_code  ='960909'">960909 - Mountain and High Country Land and Water Management</xsl:if> 
<xsl:if test="SEO_code  ='960910'">960910 - Sparseland, Permanent Grassland and Arid Zone Land and Water Management</xsl:if> 
<xsl:if test="SEO_code  ='960911'">960911 - Urban and Industrial Land Management</xsl:if> 
<xsl:if test="SEO_code  ='960912'">960912 - Urban and Industrial Water Management</xsl:if> 
<xsl:if test="SEO_code  ='960913'">960913 - Water Allocation and Quantification</xsl:if> 
<xsl:if test="SEO_code  ='960999'">960999 - Land and Water Management of environments not elsewhere classified</xsl:if> 
<xsl:if test="SEO_code  ='961001'">961001 - Natural Hazards in Antarctic and Sub-Antarctic Environments</xsl:if> 
<xsl:if test="SEO_code  ='961002'">961002 - Natural Hazards in Coastal and Estuarine Environments</xsl:if> 
<xsl:if test="SEO_code  ='961003'">961003 - Natural Hazards in Farmland, Arable Cropland and Permanent Cropland Environments</xsl:if> 
<xsl:if test="SEO_code  ='961004'">961004 - Natural Hazards in Forest and Woodlands Environments</xsl:if> 
<xsl:if test="SEO_code  ='961005'">961005 - Natural Hazards in Fresh, Ground and Surface Water Environments</xsl:if> 
<xsl:if test="SEO_code  ='961006'">961006 - Natural Hazards in Marine Environments</xsl:if> 
<xsl:if test="SEO_code  ='961007'">961007 - Natural Hazards in Mining Environments</xsl:if> 
<xsl:if test="SEO_code  ='961008'">961008 - Natural Hazards in Mountain and High Country Environments</xsl:if> 
<xsl:if test="SEO_code  ='961009'">961009 - Natural Hazards in Sparseland, Permanent Grassland and Arid Zone Environments</xsl:if> 
<xsl:if test="SEO_code  ='961010'">961010 - Natural Hazards in Urban and Industrial Environments</xsl:if> 
<xsl:if test="SEO_code  ='961099'">961099 - Natural Hazards not elsewhere classified</xsl:if> 
<xsl:if test="SEO_code  ='961101'">961101 - Physical and Chemical Conditions of Water for Urban and Industrial Use</xsl:if> 
<xsl:if test="SEO_code  ='961102'">961102 - Physical and Chemical Conditions of Water in Coastal and Estuarine Environments</xsl:if> 
<xsl:if test="SEO_code  ='961103'">961103 - Physical and Chemical Conditions of Water in Fresh, Ground and Surface Water Environments (excl. Urban and Industrial Use)</xsl:if> 
<xsl:if test="SEO_code  ='961104'">961104 - Physical and Chemical Conditions of Water in Marine Environments</xsl:if> 
<xsl:if test="SEO_code  ='961199'">961199 - Physical and Chemical Conditions of Water not elsewhere classified</xsl:if> 
<xsl:if test="SEO_code  ='961201'">961201 - Rehabilitation of Degraded Coastal and Estuarine Environments</xsl:if> 
<xsl:if test="SEO_code  ='961202'">961202 - Rehabilitation of Degraded Farmland, Arable Cropland and Permanent Cropland Environments</xsl:if> 
<xsl:if test="SEO_code  ='961203'">961203 - Rehabilitation of Degraded Forest and Woodlands Environments</xsl:if> 
<xsl:if test="SEO_code  ='961204'">961204 - Rehabilitation of Degraded Fresh, Ground and Surface Water Environments</xsl:if> 
<xsl:if test="SEO_code  ='961205'">961205 - Rehabilitation of Degraded Mining Environments</xsl:if> 
<xsl:if test="SEO_code  ='961206'">961206 - Rehabilitation of Degraded Mountain and High Country Environments</xsl:if> 
<xsl:if test="SEO_code  ='961207'">961207 - Rehabilitation of Degraded Sparseland, Permanent Grassland and Arid Zone Environments</xsl:if> 
<xsl:if test="SEO_code  ='961208'">961208 - Rehabilitation of Degraded Urban and Industrial Environments</xsl:if> 
<xsl:if test="SEO_code  ='961299'">961299 - Rehabilitation of Degraded Environments not elsewhere classified</xsl:if> 
<xsl:if test="SEO_code  ='961301'">961301 - Protected Conservation Areas in Antarctic and Sub-Antarctic Environments</xsl:if> 
<xsl:if test="SEO_code  ='961302'">961302 - Protected Conservation Areas in Fresh, Ground and Surface Water Environments</xsl:if> 
<xsl:if test="SEO_code  ='961303'">961303 - Protected Conservation Areas in Marine Environments</xsl:if> 
<xsl:if test="SEO_code  ='961304'">961304 - Remnant Vegetation and Protected Conservation Areas in Coastal and Estuarine Environments</xsl:if> 
<xsl:if test="SEO_code  ='961305'">961305 - Remnant Vegetation and Protected Conservation Areas in Farmland, Arable Cropland and Permanent Cropland Environments</xsl:if> 
<xsl:if test="SEO_code  ='961306'">961306 - Remnant Vegetation and Protected Conservation Areas in Forest and Woodlands Environments</xsl:if> 
<xsl:if test="SEO_code  ='961307'">961307 - Remnant Vegetation and Protected Conservation Areas in Mountain and High Country Environments</xsl:if> 
<xsl:if test="SEO_code  ='961308'">961308 - Remnant Vegetation and Protected Conservation Areas at Regional or Larger Scales</xsl:if> 
<xsl:if test="SEO_code  ='961309'">961309 - Remnant Vegetation and Protected Conservation Areas in Sparseland, Permanent Grassland and Arid Zone Environments</xsl:if> 
<xsl:if test="SEO_code  ='961310'">961310 - Remnant Vegetation and Protected Conservation Areas in Urban and Industrial Environments</xsl:if> 
<xsl:if test="SEO_code  ='961399'">961399 - Remnant Vegetation and Protected Conservation Areas not elsewhere classified</xsl:if> 
<xsl:if test="SEO_code  ='961401'">961401 - Coastal and Estuarine Soils</xsl:if> 
<xsl:if test="SEO_code  ='961402'">961402 - Farmland, Arable Cropland and Permanent Cropland Soils</xsl:if> 
<xsl:if test="SEO_code  ='961403'">961403 - Forest and Woodlands Soils</xsl:if> 
<xsl:if test="SEO_code  ='961404'">961404 - Mining Soils</xsl:if> 
<xsl:if test="SEO_code  ='961405'">961405 - Mountain and High Country Soils</xsl:if> 
<xsl:if test="SEO_code  ='961406'">961406 - Sparseland, Permanent Grassland and Arid Zone Soils</xsl:if> 
<xsl:if test="SEO_code  ='961407'">961407 - Urban and Industrial Soils</xsl:if> 
<xsl:if test="SEO_code  ='961499'">961499 - Soils not elsewhere classified</xsl:if> 
<xsl:if test="SEO_code  ='969901'">969901 - Antarctic and Sub-Antarctic Oceanography</xsl:if> 
<xsl:if test="SEO_code  ='969902'">969902 - Marine Oceanic Processes (excl. climate related)</xsl:if> 
<xsl:if test="SEO_code  ='969999'">969999 - Environment not elsewhere classified</xsl:if> 
<xsl:if test="SEO_code  ='970101'">970101 - Expanding Knowledge in the Mathematical Sciences</xsl:if> 
<xsl:if test="SEO_code  ='970102'">970102 - Expanding Knowledge in the Physical Sciences</xsl:if> 
<xsl:if test="SEO_code  ='970103'">970103 - Expanding Knowledge in the Chemical Sciences</xsl:if> 
<xsl:if test="SEO_code  ='970104'">970104 - Expanding Knowledge in the Earth Sciences</xsl:if> 
<xsl:if test="SEO_code  ='970105'">970105 - Expanding Knowledge in the Environmental Sciences</xsl:if> 
<xsl:if test="SEO_code  ='970106'">970106 - Expanding Knowledge in the Biological Sciences</xsl:if> 
<xsl:if test="SEO_code  ='970107'">970107 - Expanding Knowledge in the Agricultural and Veterinary Sciences</xsl:if> 
<xsl:if test="SEO_code  ='970108'">970108 - Expanding Knowledge in the Information and Computing Sciences</xsl:if> 
<xsl:if test="SEO_code  ='970109'">970109 - Expanding Knowledge in Engineering</xsl:if> 
<xsl:if test="SEO_code  ='970110'">970110 - Expanding Knowledge in Technology</xsl:if> 
<xsl:if test="SEO_code  ='970111'">970111 - Expanding Knowledge in the Medical and Health Sciences</xsl:if> 
<xsl:if test="SEO_code  ='970112'">970112 - Expanding Knowledge in Built Environment and Design</xsl:if> 
<xsl:if test="SEO_code  ='970113'">970113 - Expanding Knowledge in Education</xsl:if> 
<xsl:if test="SEO_code  ='970114'">970114 - Expanding Knowledge in Economics</xsl:if> 
<xsl:if test="SEO_code  ='970115'">970115 - Expanding Knowledge in Commerce, Management, Tourism and Sciences</xsl:if> 
<xsl:if test="SEO_code  ='970116'">970116 - Expanding Knowledge through Studies of Human Society</xsl:if> 
<xsl:if test="SEO_code  ='970117'">970117 - Expanding Knowledge in Psychology and Cognitive Sciences</xsl:if> 
<xsl:if test="SEO_code  ='970118'">970118 - Expanding Knowledge in Law and Legal Studies</xsl:if> 
<xsl:if test="SEO_code  ='970119'">970119 - Expanding Knowledge through Studies of the Creative Arts and Writing</xsl:if> 
<xsl:if test="SEO_code  ='970120'">970120 - Expanding Knowledge in Languages, Communication and Culture</xsl:if> 
<xsl:if test="SEO_code  ='970121'">970121 - Expanding Knowledge in History and Archaeology</xsl:if> 
<xsl:if test="SEO_code  ='970122'">970122 - Expanding Knowledge in Philosophy and Religious Studies</xsl:if> 
 </note> 
     </xsl:when>
      </xsl:choose>    

  <!-- Year - see individual Publish Year -->
    
    <!-- Creators -->
    <xsl:choose>
      <xsl:when test="creator_last_name">
<name type="personal">
     <xsl:attribute name="ID"> <xsl:apply-templates select="creator_ORS_id"/></xsl:attribute>
<namePart>
     <xsl:apply-templates select="creator_last_name"/>, <xsl:apply-templates select= "creator_first_name"/>
</namePart>
    <xsl:choose>
      <xsl:when test="creator_cited_name">
<namePart type="cited">
     <xsl:apply-templates select="creator_cited_name"/>
</namePart>
      </xsl:when>
    </xsl:choose>
        <role>
           <roleTerm authority="marcrelator" type="text">Author</roleTerm>
        </role>
    
    <xsl:choose>
        <xsl:when test="creator_school_name = ''">
          <affiliation><xsl:apply-templates select="creator_institution"/></affiliation>
         <!--> <xsl:if test="creator_affiliation  ='Staff'"><affiliation>University of Western Sydney</affiliation></xsl:if>
          <xsl:if test="creator_affiliation  ='Student'"><affiliation>University of Western Sydney</affiliation></xsl:if>
          <xsl:if test="creator_affiliation  ='Student - Non HDR'"><affiliation>University of Western Sydney</affiliation></xsl:if>
          <xsl:if test="creator_affiliation  ='Adjunct'"><affiliation>University of Western Sydney</affiliation></xsl:if>
          <xsl:if test="creator_affiliation  ='Emeritus'"><affiliation>University of Western Sydney</affiliation></xsl:if>
          <xsl:if test="creator_affiliation  ='Visiting Fellow'"><affiliation>University of Western Sydney</affiliation></xsl:if>
          <xsl:if test="creator_affiliation  ='External'"><affiliation>non UWS</affiliation></xsl:if>
          <xsl:if test="creator_affiliation  ='Pre-UWS'"><affiliation>non UWS</affiliation></xsl:if>   -->
        </xsl:when>
        <xsl:otherwise>
          <affiliation><xsl:apply-templates select="creator_school_name"/></affiliation>							
	      </xsl:otherwise>
    </xsl:choose> 
    
<!-- Need to write an if statement to not print affiliation if external -->
<!-- <xsl:if test="creator_affiliation  ='Staff'"><affiliation>University of Western Sydney</affiliation></xsl:if>
<xsl:if test="creator_affiliation  ='Student'"><affiliation>University of Western Sydney</affiliation></xsl:if>
<xsl:if test="creator_affiliation  ='Student - Non HDR'"><affiliation>University of Western Sydney</affiliation></xsl:if>
<xsl:if test="creator_affiliation  ='Adjunct'"><affiliation>University of Western Sydney</affiliation></xsl:if>
<xsl:if test="creator_affiliation  ='Emeritus'"><affiliation>University of Western Sydney</affiliation></xsl:if>
<xsl:if test="creator_affiliation  ='Visiting Fellow'"><affiliation>University of Western Sydney</affiliation></xsl:if> -->
<!-- <xsl:if test="creator_affiliation  ='External'"><affiliation>External</affiliation></xsl:if> -->
<!-- <xsl:if test="creator_affiliation  ='External'"><affiliation>non UWS</affiliation></xsl:if> -->
<!-- <xsl:if test="creator_affiliation  ='Pre-UWS'"><affiliation>Pre-UWS</affiliation></xsl:if> -->
<!-- <xsl:if test="creator_affiliation  ='Pre-UWS'"><affiliation>non UWS</affiliation></xsl:if> -->
<!-- <xsl:if test="not(creator_affiliation  ='')">
<note type="affiliation_status"><xsl:apply-templates select="creator_affiliation"/></note> 
</xsl:if>  
<xsl:if test="not(creator_school_name  ='')">
<note type="school_code"><xsl:apply-templates select="creator_school_name"/></note> 
</xsl:if> -->
<note type="author_order">1</note> 
           </name>
      </xsl:when>
    </xsl:choose>
    
    <!-- Other Creators -->
    <xsl:apply-templates select="*[starts-with(local-name(),'creator_last_name_')]"/>
    
    <!-- Keywords -->
    <xsl:choose>
      <xsl:when test="keyword">
<subject>
<topic>
	          <xsl:apply-templates select="keyword"/>
</topic> 
  </subject>
      </xsl:when>
    </xsl:choose>
    
    <!-- Other Keywords -->
    <xsl:apply-templates select="*[starts-with(local-name(),'keyword_')]"/>
    
    <!-- DOI -->
    <xsl:choose>
      <xsl:when test="doi">
<identifier type="doi">doi:<xsl:apply-templates select="doi"/></identifier>
      </xsl:when>
    </xsl:choose>
    
     <!-- Valet ID -->
    <xsl:choose>
      <xsl:when test="session">         
    <identifier type="session"><xsl:apply-templates select="session"/></identifier>
       </xsl:when>
    </xsl:choose>  
    
          <!-- PUB_UID -->
    <xsl:choose>
      <xsl:when test="PUB_UID">         
    <identifier type="pub_uid"><xsl:apply-templates select="PUB_UID"/></identifier>
       </xsl:when>
    </xsl:choose> 
    
      <!-- Record Info -->
    <xsl:choose>
      <xsl:when test="SubmissionDate">         
		<recordInfo>
			<recordCreationDate encoding="marc"><xsl:apply-templates select="SubmissionDate"/></recordCreationDate>
			<recordContentSource authority="submitter"><xsl:apply-templates select="submitter_id"/></recordContentSource>
			<recordOrigin>Converted from ValetXML to MODS version 3.4 using valet_to_mods.xsl</recordOrigin>
		</recordInfo>
       </xsl:when>
    </xsl:choose> 

    <!-- Faculty/School (or research_unit) -->
   <!-- <xsl:choose>
      <xsl:when test="faculty">
            <marc:datafield tag="710" ind1="" ind2="">
	     <marc:subfield code="a">Monash University</marc:subfield>
	     <marc:subfield code="b">
	        <xsl:apply-templates select="faculty"/>
	     </marc:subfield>
	     <marc:subfield code="c">
	        <xsl:apply-templates select="research_unit"/>
	     </marc:subfield>
            </marc:datafield>
      </xsl:when>
    </xsl:choose>   -->
    
    <!-- Other Faculty/School(s) -->
 <!--   <xsl:apply-templates select="*[starts-with(local-name(),'faculty_')]"/>   -->

    <!-- Subjects -->
    <!-- NEED TO SPLIT 'subject' by \r -->
 <!--   <xsl:choose>
      <xsl:when test="subject">
        <xsl:call-template name="splitString">
           <xsl:with-param name="string1" select="subject"/>
        </xsl:call-template>
      </xsl:when>
    </xsl:choose>    -->
    
        <!-- Resource Type -->
    <xsl:choose>
      <xsl:when test="resource_type">

	    <xsl:variable name="rtype" select="resource_type"/>
	    <!-- NEED TO ADD CALL TO RESOURCE SPECIFIC TEMPLATES -->
	    <xsl:if test="$rtype = 'Book'">
  	    	<xsl:call-template name="book"/>
	    </xsl:if>
	    <xsl:if test="$rtype = 'Book O'">
  	    	<xsl:call-template name="book_o"/>
	    </xsl:if>
	    <xsl:if test="$rtype = 'Book Chapter'">
  	    	<xsl:call-template name="book_chapter"/>
	    </xsl:if>
	    <xsl:if test="$rtype = 'Book Chapter O'">
  	    	<xsl:call-template name="book_chapter_o"/>
	    </xsl:if>
	    <xsl:if test="$rtype = 'Conference Paper'">
  	    	<xsl:call-template name="conference_paper"/>
	    </xsl:if>
	    <xsl:if test="$rtype = 'Conference Paper O'">
  	    	<xsl:call-template name="conference_paper_o"/>
	    </xsl:if>
	    <xsl:if test="$rtype = 'Journal Article'">
  	    	<xsl:call-template name="journal_article"/>
	    </xsl:if>
	    <xsl:if test="$rtype = 'Journal Article O'">
  	    	<xsl:call-template name="journal_article_o"/>
	    </xsl:if>
	    <xsl:if test="$rtype = 'Creative Works - Exhibition'">
  	    	<xsl:call-template name="exhibition"/>
	    </xsl:if>
	    <xsl:if test="$rtype = 'Creative Works - Published Work'">
  	    	<xsl:call-template name="published_work"/>
	    </xsl:if>
	    <xsl:if test="$rtype = 'Creative Works - Recorded Work'">
  	    	<xsl:call-template name="recorded_work"/>
	    </xsl:if>
	   <xsl:if test="$rtype = 'Research Report'">
  	    	<xsl:call-template name="research_report"/>
	    </xsl:if> 
	    <!-- <xsl:if test="$rtype = 'Thesis'">
  	    	<xsl:call-template name="thesis"/>
	    </xsl:if>
	    <xsl:if test="$rtype = 'Working Paper'">
  	    	<xsl:call-template name="working_paper"/>
	    </xsl:if> -->
      </xsl:when>
    </xsl:choose>
    
  </xsl:template>

  <!-- ................................Book Template..............................................-->

  <xsl:template name="book">
  
    <!-- Resource type - Book -->  
<genre authority="local">book</genre>
          
    <!-- Book title -->
    <xsl:choose>
      <xsl:when test="title">
        <titleInfo>
          <title>
           	<xsl:apply-templates select="title"/>
          </title>
        </titleInfo>
      </xsl:when>
    </xsl:choose>

    <!-- Book English title -->
    <xsl:choose>
      <xsl:when test="book_english_title">        
        <titleInfo type="alternative">
          <title>
           	<xsl:apply-templates select="book_english_title"/>
          </title>
        </titleInfo>
      </xsl:when>
    </xsl:choose>        

    <!-- Book language -->    
        <xsl:choose>
      <xsl:when test="language">
        <language>
          <languageTerm authority="iso639-2b" type="code">
           <!--	<xsl:apply-templates select="language"/> -->
            <xsl:if test="language  ='EN'">eng</xsl:if>
            <xsl:if test="language  ='ES'">spa</xsl:if>
            <xsl:if test="language  ='AF'">afr</xsl:if>
            <xsl:if test="language  ='FR'">fre</xsl:if>
            <xsl:if test="language  ='DE'">ger</xsl:if>
            <xsl:if test="language  ='RU'">rus</xsl:if>
            <xsl:if test="language  ='MA'">chi</xsl:if>
            <xsl:if test="language  ='ET'">eng</xsl:if>
            <xsl:if test="language  ='SC'">hrv</xsl:if>
            <xsl:if test="language  ='SE'">swe</xsl:if>
            <xsl:if test="language  ='PO'">por</xsl:if>
          </languageTerm>
        </language>
      </xsl:when>
    </xsl:choose> 
    
    <!-- Book Edition  moved to origin info-->
<!--    <xsl:choose>
      <xsl:when test="book_edition">
        <edition>
	        <xsl:apply-templates select="book_edition"/>
        </edition>
      </xsl:when>
    </xsl:choose>   -->

    <!-- Book ISBN -->
    <xsl:choose>
      <xsl:when test="book_isbn">
        <identifier type="isbn">
	        <xsl:apply-templates select="book_isbn"/>
        </identifier>
      </xsl:when>
    </xsl:choose>
    
        <!-- Book ISBN E-->
    <xsl:choose>
      <xsl:when test="book_isbn_e">
        <identifier type="isbn_e">    
	        <xsl:comment> Electronic ISBN </xsl:comment>
	        <xsl:apply-templates select="book_isbn_e"/>
        </identifier>
      </xsl:when>
    </xsl:choose>
 
    <!-- Book Publisher, Place Published, Publish Year -->
    <xsl:choose>
      <xsl:when test="year">
		    <originInfo>
			    <place>
				    <placeTerm type="text">
	            <xsl:apply-templates select="book_place_published"/>
            </placeTerm>
          </place>
          <publisher>
	          <xsl:apply-templates select="book_publisher"/>
          </publisher>
          <dateIssued>
	          <xsl:apply-templates select="year"/>
          </dateIssued>
          <xsl:choose>
             <xsl:when test="book_edition">
               <edition>
	                 <xsl:apply-templates select="book_edition"/>
              </edition>
            </xsl:when>
         </xsl:choose>
        </originInfo>
      </xsl:when>
    </xsl:choose>
    
     <!-- Book Total Pages -->
    <xsl:choose>
      <xsl:when test="book_total_pages">
		    <physicalDescription>
			  <form authority="marcform">print</form>
			    <extent>
			      <xsl:apply-templates select="book_total_pages"/>
          </extent>
		    </physicalDescription>
      </xsl:when>
    </xsl:choose>
    
    <!-- Book URL -->
    <xsl:choose>
      <xsl:when test="book_url">
		    <location>
	        <url displayLabel="electronic resource" usage="primary display">
	          <xsl:apply-templates select="book_url"/>
          </url>
		    </location>
      </xsl:when>
    </xsl:choose> 
    
    <!-- Book Abstract -->
    <xsl:choose>
      <xsl:when test="book_abstract">
        <abstract>
	        <xsl:apply-templates select="book_abstract"/>
        </abstract>
      </xsl:when>
    </xsl:choose>

    <!-- Book Rights -->
    <xsl:choose>
      <xsl:when test="book_rights">
		    <accessCondition type="useAndReproduction">
	        <xsl:apply-templates select="book_rights"/>
		    </accessCondition>
      </xsl:when>
    </xsl:choose>

  </xsl:template>
  
  <!-- ................................Book O Template..............................................-->

  <xsl:template name="book_o">
  
    <!-- Resource type - Book O -->  
<genre authority="local">book</genre>
          
    <!-- Book O title -->
    <xsl:choose>
      <xsl:when test="book_o_title">
        <titleInfo>
          <title>
           	<xsl:apply-templates select="book_o_title"/>
          </title>
        </titleInfo>
      </xsl:when>
    </xsl:choose>

    <!-- Book O English title -->
    <xsl:choose>
      <xsl:when test="book_o_english_title">        
        <titleInfo type="alternative">
          <title>
           	<xsl:apply-templates select="book_o_english_title"/>
          </title>
        </titleInfo>
      </xsl:when>
    </xsl:choose>        

    <!-- Book O language -->    
        <xsl:choose>
      <xsl:when test="book_o_language">
        <language>
          <languageTerm authority="iso639-2b" type="code">
           	<xsl:apply-templates select="book_o_language"/>
          </languageTerm>
        </language>
      </xsl:when>
    </xsl:choose> 
    
    <!-- Book O Edition  moved to origin info-->
<!--    <xsl:choose>
      <xsl:when test="book_o_edition">
        <edition>
	        <xsl:apply-templates select="book_o_edition"/>
        </edition>
      </xsl:when>
    </xsl:choose>   -->

    <!-- Book O ISBN -->
    <xsl:choose>
      <xsl:when test="book_o_isbn">
        <identifier type="isbn">
	        <xsl:apply-templates select="book_o_isbn"/>
        </identifier>
      </xsl:when>
    </xsl:choose>
    
        <!-- Book O ISBN E-->
    <xsl:choose>
      <xsl:when test="book_o_isbn_e">
        <identifier type="isbn_e">    
	        <xsl:comment> Electronic ISBN </xsl:comment>
	        <xsl:apply-templates select="book_o_isbn_e"/>
        </identifier>
      </xsl:when>
    </xsl:choose>
 
    <!-- Book O Publisher, Place Published, Publish Year -->
    <xsl:choose>
      <xsl:when test="year">
		    <originInfo>
			    <place>
				    <placeTerm type="text">
	            <xsl:apply-templates select="book_o_place_published"/>
            </placeTerm>
          </place>
          <publisher>
	          <xsl:apply-templates select="book_o_publisher"/>
          </publisher>
          <dateIssued>
	          <xsl:apply-templates select="year"/>
          </dateIssued>
          <xsl:choose>
             <xsl:when test="book_o_edition">
               <edition>
	                 <xsl:apply-templates select="book_o_edition"/>
              </edition>
            </xsl:when>
         </xsl:choose>
        </originInfo>
      </xsl:when>
    </xsl:choose>
    
     <!-- Book O Total Pages -->
    <xsl:choose>
      <xsl:when test="book_o_total_pages">
		    <physicalDescription>
			  <form authority="marcform">print</form>
			    <extent>
			      <xsl:apply-templates select="book_o_total_pages"/>
          </extent>
		    </physicalDescription>
      </xsl:when>
    </xsl:choose>
    
    <!-- Book O URL -->
    <xsl:choose>
      <xsl:when test="book_o_url">
		    <location>
	        <url displayLabel="electronic resource" usage="primary display">
	          <xsl:apply-templates select="book_o_url"/>
          </url>
		    </location>
      </xsl:when>
    </xsl:choose> 
    
    <!-- Book O Abstract -->
    <xsl:choose>
      <xsl:when test="book_o_abstract">
        <abstract>
	        <xsl:apply-templates select="book_o_abstract"/>
        </abstract>
      </xsl:when>
    </xsl:choose>

    <!-- Book O Rights -->
    <xsl:choose>
      <xsl:when test="book_o_rights">
		    <accessCondition type="useAndReproduction">
	        <xsl:apply-templates select="book_o_rights"/>
		    </accessCondition>
      </xsl:when>
    </xsl:choose>

  </xsl:template>

  <!-- ................................Book Chapter Template...........................................-->

  <xsl:template name="book_chapter">
  
    <!-- Resource type - Book Chapter -->  
<genre authority="local">book chapter</genre>

  <!-- ................................Chapter ...........................................-->
          
    <!-- Chapter title -->
    <xsl:choose>
      <xsl:when test="title">
        <titleInfo>
          <title>
           	<xsl:apply-templates select="title"/>
          </title>
        </titleInfo>
      </xsl:when>
    </xsl:choose>
    
    <!-- Chapter English title -->
    <xsl:choose>
      <xsl:when test="chapter_english_title">
        <titleInfo type="alternative">
          <title>
           	<xsl:apply-templates select="chapter_english_title"/>
          </title>
        </titleInfo>
      </xsl:when>
    </xsl:choose>
    
    <!-- Chapter language -->    
        <xsl:choose>
      <xsl:when test="language">
        <language>
          <languageTerm authority="iso639-2b" type="code">
           <!--	<xsl:apply-templates select="language"/> -->
            <xsl:if test="language  ='EN'">eng</xsl:if>
            <xsl:if test="language  ='ES'">spa</xsl:if>
            <xsl:if test="language  ='AF'">afr</xsl:if>
            <xsl:if test="language  ='FR'">fre</xsl:if>
            <xsl:if test="language  ='DE'">ger</xsl:if>
            <xsl:if test="language  ='RU'">rus</xsl:if>
            <xsl:if test="language  ='MA'">chi</xsl:if>
            <xsl:if test="language  ='ET'">eng</xsl:if>
            <xsl:if test="language  ='SC'">hrv</xsl:if>
            <xsl:if test="language  ='SE'">swe</xsl:if>
            <xsl:if test="language  ='PO'">por</xsl:if>
          </languageTerm>
        </language>
      </xsl:when>
    </xsl:choose>
    
    <!-- Chapter Start, End Page, see Chapter Book Title / Details below -->    
  <!--      <xsl:choose>
      <xsl:when test="chapter_page_from">
            <marc:datafield tag="787" ind1="" ind2="">
	     <marc:subfield code="g">pp:<xsl:apply-templates select="chapter_page_from"/>-<xsl:apply-templates select="chapter_page_to"/></marc:subfield>
            </marc:datafield>
      </xsl:when>
    </xsl:choose>  -->
    
    <!-- Chapter total pages -->    
        <xsl:choose>
      <xsl:when test="chapter_total_pages">
		    <physicalDescription>
			    <form authority="marcform">print</form>
			    <extent>
           	<xsl:apply-templates select="chapter_total_pages"/>
          </extent>
		    </physicalDescription>
      </xsl:when>
    </xsl:choose>
    
    <!-- Chapter URL -->    
        <xsl:choose>
      <xsl:when test="chapter_url">
		    <location>
	        <url displayLabel="electronic resource" usage="primary display">
           	<xsl:apply-templates select="chapter_url"/>
          </url>
		    </location>
      </xsl:when>
    </xsl:choose>
    
    <!-- Chapter Abstract -->
    <xsl:choose>
      <xsl:when test="chapter_abstract">
        <abstract>
	        <xsl:apply-templates select="chapter_abstract"/>
        </abstract>
      </xsl:when>
    </xsl:choose>
    
    <!-- Chapter Scopus ID -->
<!--    <xsl:choose>
      <xsl:when test="chapter_scopus_id">
<identifier type="scopus">
	        <xsl:apply-templates select="chapter_scopus_id"/>
</identifier>
      </xsl:when>
    </xsl:choose>  -->  
    
    
    <!-- Chapter Rights -->
    <xsl:choose>
      <xsl:when test="chapter_rights">
		    <accessCondition type="useAndReproduction">
	           <xsl:apply-templates select="chapter_rights"/>
            </accessCondition>
      </xsl:when>
    </xsl:choose>
    
  <!-- ............................. Book (Chapter is in)  ................................-->
  

    <!-- Chapter Book Title / Details -->
   <xsl:choose>
      <xsl:when test="chapter_book_title">
         <relatedItem type="host">
            <titleInfo>
               <title>
	              <xsl:apply-templates select="chapter_book_title"/>
               </title>
            </titleInfo>
			<xsl:choose>
               <xsl:when test="chapter_book_isbn">
                  <identifier type="isbn">
	                 <xsl:apply-templates select="chapter_book_isbn"/>
                  </identifier>
               </xsl:when>
            </xsl:choose>
            <xsl:choose>
               <xsl:when test="chapter_book_isbn_e">
                  <identifier type="isbn_e">
	                 <xsl:apply-templates select="chapter_book_isbn_e"/>
                  </identifier>
               </xsl:when>
            </xsl:choose>
            
    <!-- Chapter Book Publisher, Place Published, Publish Year -->
    <xsl:choose>
      <xsl:when test="year">
		<originInfo>
			<place>
				<placeTerm type="text">
	        <xsl:apply-templates select="chapter_book_place_published"/>
</placeTerm>
</place>
<publisher>
	        <xsl:apply-templates select="chapter_book_publisher"/>
</publisher>
<dateIssued>
	        <xsl:apply-templates select="year"/>
</dateIssued>
    <xsl:choose>
      <xsl:when test="chapter_book_edition">
        <edition>
	        <xsl:apply-templates select="chapter_book_edition"/>
        </edition>
      </xsl:when>
    </xsl:choose>
</originInfo>
      </xsl:when>
    </xsl:choose>                 
        
        <part>
           <extent unit="page">
              <start><xsl:apply-templates select="chapter_page_from"/></start>
              <end><xsl:apply-templates select="chapter_page_to"/></end>
           </extent>
           <!--  <text>p. <xsl:apply-templates select="chapter_page_from"/>-<xsl:apply-templates select="chapter_page_to"/>
				  </text> -->
        </part> 
        
            <!--....Chapter Book Editors....-->
    <xsl:choose>
      <xsl:when test="chapter_book_editors">
		<name type="personal">
			<namePart>
	        <xsl:apply-templates select="chapter_book_editors"/>
            </namePart>
			<role>
                <roleTerm authority="marcrelator" type="text">Editor</roleTerm>
            </role>
		</name>
      </xsl:when>
    </xsl:choose> 

    <!--....Other Chapter Book Editors....-->
    <xsl:apply-templates select="*[starts-with(local-name(),'chapter_book_editors_')]"/>  
        
        </relatedItem>
     </xsl:when>
  </xsl:choose>
     
     
    <!-- Chapter Book Edition -->
<!--                  XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX These next few should be in relatedItem/part above XXXXXXXXXXXXXXXXXXXXXXXXXXX -->    
 <!--   <xsl:choose>
      <xsl:when test="chapter_book_edition">
        <edition>
	        <xsl:apply-templates select="chapter_book_edition"/>
        </edition>
      </xsl:when>
    </xsl:choose> -->
     
    <!-- Chapter Book ISBN -->
 <!--   <xsl:choose>
      <xsl:when test="chapter_book_isbn">
        <identifier type="isbn">
	        <xsl:apply-templates select="chapter_book_isbn"/>
        </identifier>
      </xsl:when>
    </xsl:choose> -->
    
    
    <!-- Chapter Book ISBN-E -->
  <!--  <xsl:choose>
      <xsl:when test="chapter_book_isbn_e">
        <identifier type="isbn_e">
	        <xsl:apply-templates select="chapter_book_isbn_e"/>
        </identifier>
      </xsl:when>
    </xsl:choose>  -->

  </xsl:template>
  
    <!-- Multiple Chapter Book Editors -->
  <xsl:template match="*[starts-with(local-name(),'chapter_book_editors_')]">
	<xsl:variable name="num" select="substring-after(name(),'chapter_book_editors_')"/>
	<xsl:variable name="chapter_book_editors" select="concat('chapter_book_editors_',$num)"/>
		<name type="personal">
			<namePart>
	<xsl:value-of select="."/>
            </namePart>
        <role>
           <roleTerm authority="marcrelator" type="text">Editor</roleTerm>
        </role>
	</name>	
  </xsl:template>
  
    <!-- ................................Book Chapter O Template...........................................-->

  <xsl:template name="book_chapter_o">
  
    <!-- Resource type - Book Chapter O -->  
<genre authority="local">book chapter</genre>

  <!-- ................................Chapter O ...........................................-->
          
    <!-- Chapter O title -->
    <xsl:choose>
      <xsl:when test="chapter_o_title">
        <titleInfo>
          <title>
           	<xsl:apply-templates select="chapter_o_title"/>
          </title>
        </titleInfo>
      </xsl:when>
    </xsl:choose>
    
    <!-- Chapter O English title -->
    <xsl:choose>
      <xsl:when test="chapter_o_english_title">
        <titleInfo type="alternative">
          <title>
           	<xsl:apply-templates select="chapter_o_english_title"/>
          </title>
        </titleInfo>
      </xsl:when>
    </xsl:choose>
    
    <!-- Chapter O language -->    
        <xsl:choose>
      <xsl:when test="chapter_o_language">
        <language>
          <languageTerm authority="iso639-2b" type="code">
           	<xsl:apply-templates select="chapter_o_language"/>
          </languageTerm>
        </language>
      </xsl:when>
    </xsl:choose>
    
    <!-- Chapter O Start, End Page, see Chapter Book O Title / Details below -->    
  <!--      <xsl:choose>
      <xsl:when test="chapter_o_page_from">
            <marc:datafield tag="787" ind1="" ind2="">
	     <marc:subfield code="g">pp:<xsl:apply-templates select="chapter_o_page_from"/>-<xsl:apply-templates select="chapter_page_to"/></marc:subfield>
            </marc:datafield>
      </xsl:when>
    </xsl:choose>  -->
    
    <!-- Chapter O total pages -->    
        <xsl:choose>
      <xsl:when test="chapter_o_total_pages">
		    <physicalDescription>
			    <form authority="marcform">print</form>
			    <extent>
           	<xsl:apply-templates select="chapter_o_total_pages"/>
          </extent>
		    </physicalDescription>
      </xsl:when>
    </xsl:choose>
    
    <!-- Chapter O URL -->    
        <xsl:choose>
      <xsl:when test="chapter_o_url">
		    <location>
	        <url displayLabel="electronic resource" usage="primary display">
           	<xsl:apply-templates select="chapter_o_url"/>
          </url>
		    </location>
      </xsl:when>
    </xsl:choose>
    
    <!-- Chapter O Abstract -->
    <xsl:choose>
      <xsl:when test="chapter_o_abstract">
        <abstract>
	        <xsl:apply-templates select="chapter_o_abstract"/>
        </abstract>
      </xsl:when>
    </xsl:choose>
    
    <!-- Chapter O Scopus ID -->
<!--    <xsl:choose>
      <xsl:when test="chapter_o_scopus_id">
<identifier type="scopus">
	        <xsl:apply-templates select="chapter_o_scopus_id"/>
</identifier>
      </xsl:when>
    </xsl:choose>  -->  
    
    
    <!-- Chapter O Rights -->
    <xsl:choose>
      <xsl:when test="chapter_o_rights">
		    <accessCondition type="useAndReproduction">
	           <xsl:apply-templates select="chapter_o_rights"/>
            </accessCondition>
      </xsl:when>
    </xsl:choose>
    
  <!-- ............................. Book (Chapter O is in)  ................................-->
  

    <!-- Chapter Book O Title / Details -->
   <xsl:choose>
      <xsl:when test="chapter_book_o_title">
         <relatedItem type="host">
            <titleInfo>
               <title>
	              <xsl:apply-templates select="chapter_book_o_title"/>
               </title>
            </titleInfo>
			<xsl:choose>
               <xsl:when test="chapter_book_o_isbn">
                  <identifier type="isbn">
	                 <xsl:apply-templates select="chapter_book_o_isbn"/>
                  </identifier>
               </xsl:when>
            </xsl:choose>
            <xsl:choose>
               <xsl:when test="chapter_book_o_isbn_e">
                  <identifier type="isbn_e">
	                 <xsl:apply-templates select="chapter_book_o_isbn_e"/>
                  </identifier>
               </xsl:when>
            </xsl:choose>
            
  <!-- Chapter Book O Publisher, Place Published, Publish Year -->
    <xsl:choose>
      <xsl:when test="year">
		<originInfo>
			<place>
				<placeTerm type="text">
	        <xsl:apply-templates select="chapter_book_o_place_published"/>
</placeTerm>
</place>
<publisher>
	        <xsl:apply-templates select="chapter_book_o_publisher"/>
</publisher>
<dateIssued>
	        <xsl:apply-templates select="year"/>
</dateIssued>
    <xsl:choose>
      <xsl:when test="chapter_book_o_edition">
        <edition>
	        <xsl:apply-templates select="chapter_book_o_edition"/>
        </edition>
      </xsl:when>
    </xsl:choose>
</originInfo>
      </xsl:when>
    </xsl:choose>             
        
        <part>
           <extent unit="page">
              <start><xsl:apply-templates select="chapter_o_page_from"/></start>
              <end><xsl:apply-templates select="chapter_o_page_to"/></end>
           </extent>
           <!--  <text>p. <xsl:apply-templates select="chapter_o_page_from"/>-<xsl:apply-templates select="chapter_o_page_to"/>
				  </text> -->
        </part>
        
    <!--....Chapter Book O Editors....-->
    <xsl:choose>
      <xsl:when test="chapter_book_o_editors">
		<name type="personal">
			<namePart>
	        <xsl:apply-templates select="chapter_book_o_editors"/>
            </namePart>
			<role>
                <roleTerm authority="marcrelator" type="text">Editor</roleTerm>
            </role>
		</name>
      </xsl:when>
    </xsl:choose> 

    <!--....Other Chapter Book O Editors....-->
    <xsl:apply-templates select="*[starts-with(local-name(),'chapter_book_o_editors_')]"/>
        
       </relatedItem>
     </xsl:when>
  </xsl:choose>
       
     
    <!-- Chapter Book O Edition -->
<!--                  XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX These next few should be in relatedItem/part above XXXXXXXXXXXXXXXXXXXXXXXXXXX -->    
 <!--   <xsl:choose>
      <xsl:when test="chapter_book_o_edition">
        <edition>
	        <xsl:apply-templates select="chapter_book_o_edition"/>
        </edition>
      </xsl:when>
    </xsl:choose> -->
     
    <!-- Chapter Book O ISBN -->
 <!--   <xsl:choose>
      <xsl:when test="chapter_book_o_isbn">
        <identifier type="isbn">
	        <xsl:apply-templates select="chapter_book_o_isbn"/>
        </identifier>
      </xsl:when>
    </xsl:choose> -->
    
    
    <!-- Chapter Book O ISBN-E -->
 <!--   <xsl:choose>
      <xsl:when test="chapter_book_o_isbn_e">
        <identifier type="isbn_e">
	        <xsl:apply-templates select="chapter_book_o_isbn_e"/>
        </identifier>
      </xsl:when>
    </xsl:choose>  -->

   
  </xsl:template>
  
    <!-- Multiple Chapter Book O Editors -->
  <xsl:template match="*[starts-with(local-name(),'chapter_book_o_editors_')]">
	<xsl:variable name="num" select="substring-after(name(),'chapter_book_o_editors_')"/>
	<xsl:variable name="chapter_book_o_editors" select="concat('chapter_book_o_editors_',$num)"/>
		<name type="personal">
			<namePart>
	<xsl:value-of select="."/>
            </namePart>
        <role>
           <roleTerm authority="marcrelator" type="text">Editor</roleTerm>
        </role>
	</name>	
  </xsl:template>

  <!-- ................................Conference Paper Template..........................................-->

  <xsl:template name="conference_paper">
  
    <!-- Resource type - Conference Paper -->  
<genre authority="local">conference paper</genre>

  <!-- ................................ Conference Paper .......................................-->          

    <!-- Conference Paper Title -->
    <xsl:choose>
      <xsl:when test="title">
        <titleInfo>
          <title>
           	<xsl:apply-templates select="title"/>
	        </title>
        </titleInfo>
      </xsl:when>
    </xsl:choose>
    
    <!-- Conference Paper English title -->
    <xsl:choose>
      <xsl:when test="conference_paper_english_title">
        <titleInfo type="alternative">
          <title>
           	<xsl:apply-templates select="conference_paper_english_title"/>
	        </title>
        </titleInfo>
      </xsl:when>
    </xsl:choose> 
    
    <!-- Conference Paper Language -->    
        <xsl:choose>
      <xsl:when test="language">
        <language>
          <languageTerm authority="iso639-2b" type="code">
           <!--	<xsl:apply-templates select="language"/> -->
            <xsl:if test="language  ='EN'">eng</xsl:if>
            <xsl:if test="language  ='ES'">spa</xsl:if>
            <xsl:if test="language  ='AF'">afr</xsl:if>
            <xsl:if test="language  ='FR'">fre</xsl:if>
            <xsl:if test="language  ='DE'">ger</xsl:if>
            <xsl:if test="language  ='RU'">rus</xsl:if>
            <xsl:if test="language  ='MA'">chi</xsl:if>
            <xsl:if test="language  ='ET'">eng</xsl:if>
            <xsl:if test="language  ='SC'">hrv</xsl:if>
            <xsl:if test="language  ='SE'">swe</xsl:if>
            <xsl:if test="language  ='PO'">por</xsl:if>
          </languageTerm>
        </language>
      </xsl:when>
    </xsl:choose>
    
     <!-- Conference Paper Total Pages -->    
        <xsl:choose>
      <xsl:when test="conference_paper_total_pages">
		    <physicalDescription>
			    <form authority="marcform">print</form>
			    <extent>
                   <xsl:apply-templates select="conference_paper_total_pages"/>
           <!--	pp:<xsl:apply-templates select="conference_page_from"/>-<xsl:apply-templates select="conference_page_to"/> -->
                </extent>
		    </physicalDescription>
      </xsl:when>
    </xsl:choose>
    
    <!-- Conference Paper URL -->    
        <xsl:choose>
      <xsl:when test="conference_url">
		    <location>
	        <url displayLabel="electronic resource" usage="primary display">
           	<xsl:apply-templates select="conference_url"/>
          </url>
		    </location>
      </xsl:when>
    </xsl:choose>
    
    <!-- Conference Paper Abstract -->
    <xsl:choose>
      <xsl:when test="conference_paper_abstract">
        <abstract>
	        <xsl:apply-templates select="conference_paper_abstract"/>
        </abstract>
      </xsl:when>
    </xsl:choose>
    
    <!-- Conference Paper Scopus ID -->
<!--    <xsl:choose>
      <xsl:when test="conference_paper_scopus_id">
<identifier type="scopus">
	        <xsl:apply-templates select="conference_paper_scopus_id"/>
</identifier>
      </xsl:when>
    </xsl:choose>  -->  

  <!-- ................................ Conference  and Conference Proceedings  .......................................-->

    <!-- Conference Location / Dates / Proceedings Title / Name / Refereed -->
         <xsl:choose>
      <xsl:when test="conference_name">
		<relatedItem type="host">
			     <titleInfo>
			              <xsl:choose>
			        <xsl:when test="conference_proceedings_title">
				        <title>
	                         <xsl:apply-templates select="conference_proceedings_title"/>
                        </title>
                    </xsl:when>
                        </xsl:choose>
                 <!--   <partNumber>pp:<xsl:apply-templates select="conference_page_from"/>-<xsl:apply-templates select="conference_page_to"/>
 	                </partNumber> -->
 	           	 </titleInfo>
     <xsl:choose>
      <xsl:when test="conference_proceedings_isbn">
        <identifier type="isbn">
	        <xsl:apply-templates select="conference_proceedings_isbn"/>
        </identifier>
      </xsl:when>
    </xsl:choose>
     <xsl:choose>
      <xsl:when test="conference_proceedings_issn">
        <identifier type="issn">
	        <xsl:apply-templates select="conference_proceedings_issn"/>
        </identifier>
      </xsl:when>
    </xsl:choose>
    
    <!-- Conference Proceedings Publisher, Place Published, Date -->
    <xsl:choose>
      <xsl:when test="year">
		<originInfo>
			<place>
				<placeTerm type="text">
	        <xsl:apply-templates select="conference_proceedings_place_published"/>
        </placeTerm>
      </place>
      <publisher>
	        <xsl:apply-templates select="conference_proceedings_publisher"/>
      </publisher>
		  <dateOther type="conference_start_date">
		      <xsl:apply-templates select="conference_date"/>
		  </dateOther>
      <dateIssued>
	        <xsl:apply-templates select="year"/>
      </dateIssued>
    </originInfo>
      </xsl:when>
    </xsl:choose>    
    
		    <part>
		    <extent unit="page">
		       <start><xsl:apply-templates select="conference_page_from"/></start>
		       <end><xsl:apply-templates select="conference_page_to"/></end>
		    </extent> 
		    </part>    
    
    <!--....Conference Editors....-->
    <xsl:choose>
      <xsl:when test="conference_editors">
		<name type="personal">
			<namePart>
	        <xsl:apply-templates select="conference_editors"/>
            </namePart>
        <role>
           <roleTerm authority="marcrelator" type="text">Editor</roleTerm>
        </role>
		</name>
      </xsl:when>
    </xsl:choose> 

    <!--....Other Conference Editors....-->
    <xsl:apply-templates select="*[starts-with(local-name(),'conference_editors_')]"/>    
    
		</relatedItem>
      </xsl:when>
    </xsl:choose>    
    
		<name type="conference">
		    <namePart>    
           <xsl:apply-templates select="conference_name"/> 
        </namePart>
        <displayForm>
           <xsl:variable name="cdate" select="conference_date"/>
           <xsl:apply-templates select="conference_name"/> (<xsl:apply-templates select="conference_number"/> : <xsl:value-of select="substring($cdate,string-length($cdate)-3,4)"/> : <xsl:apply-templates select="conference_location"/>)
        </displayForm>
        <role>
           <roleTerm authority="marcrelator" type="text">Event place</roleTerm>
        </role>                 
		</name>


    <!-- Conference Proceedings ISBN -->
  <!--  <xsl:choose>
      <xsl:when test="conference_proceedings_isbn">
        <identifier type="isbn">
	        <xsl:apply-templates select="conference_proceedings_isbn"/>
        </identifier>
      </xsl:when>
    </xsl:choose> -->

    <!-- Conference Proceedings ISSN -->
  <!--  <xsl:choose>
      <xsl:when test="conference_proceedings_issn">
        <identifier type="issn">
	        <xsl:apply-templates select="conference_proceedings_issn"/>
        </identifier>
      </xsl:when>
    </xsl:choose> -->

  </xsl:template>
  
    <!-- Multiple Conference Editors -->
  <xsl:template match="*[starts-with(local-name(),'conference_editors_')]">
	<xsl:variable name="num" select="substring-after(name(),'conference_editors_')"/>
	<xsl:variable name="conference_editors" select="concat('conference_editors_',$num)"/>
		<name type="personal">
			<namePart>
	<xsl:value-of select="."/>
            </namePart>
        <role>
           <roleTerm authority="marcrelator" type="text">Editor</roleTerm>
        </role>
		</name>
  </xsl:template>
  
  <!-- ................................Conference Paper O Template..........................................-->

  <xsl:template name="conference_paper_o">
  
    <!-- Resource type - Conference Paper O -->  
<genre authority="local">conference paper</genre>

  <!-- ................................ Conference Paper O .......................................-->          

    <!-- Conference Paper O Title -->
    <xsl:choose>
      <xsl:when test="conference_paper_o_title">
        <titleInfo>
          <title>
           	<xsl:apply-templates select="conference_paper_o_title"/>
	        </title>
        </titleInfo>
      </xsl:when>
    </xsl:choose>
    
    <!-- Conference Paper O English title -->
    <xsl:choose>
      <xsl:when test="conference_paper_o_english_title">
        <titleInfo type="alternative">
          <title>
           	<xsl:apply-templates select="conference_paper_o_english_title"/>
	        </title>
        </titleInfo>
      </xsl:when>
    </xsl:choose> 
    
    <!-- Conference Paper O Language -->    
        <xsl:choose>
      <xsl:when test="conference_paper_o_language">
        <language>
          <languageTerm authority="iso639-2b" type="code">
           	<xsl:apply-templates select="conference_paper_o_language"/>
          </languageTerm>
        </language>
      </xsl:when>
    </xsl:choose>
    
     <!-- Conference Paper O Total Pages -->    
        <xsl:choose>
      <xsl:when test="conference_paper_o_total_pages">
		    <physicalDescription>
			    <form authority="marcform">print</form>
			    <extent>
                   <xsl:apply-templates select="conference_paper_o_total_pages"/>
           <!--	pp:<xsl:apply-templates select="conference_o_page_from"/>-<xsl:apply-templates select="conference_o_page_to"/> -->
                </extent>
		    </physicalDescription>  
      </xsl:when>
    </xsl:choose>
    
    <!-- Conference Paper O URL -->    
        <xsl:choose>
      <xsl:when test="conference_o_url">
		    <location>
	        <url displayLabel="electronic resource" usage="primary display">
           	<xsl:apply-templates select="conference_o_url"/>
          </url>
		    </location>
      </xsl:when>
    </xsl:choose>
    
    <!-- Conference Paper O Abstract -->
    <xsl:choose>
      <xsl:when test="conference_paper_o_abstract">
        <abstract>
	        <xsl:apply-templates select="conference_paper_o_abstract"/>
        </abstract>
      </xsl:when>
    </xsl:choose>
    
    <!-- Conference Paper O Scopus ID -->
    <xsl:choose>
      <xsl:when test="conference_paper_o_scopus_id">
<identifier type="scopus">
	        <xsl:apply-templates select="conference_paper_o_scopus_id"/>
</identifier>
      </xsl:when>
    </xsl:choose>    

  <!-- ................................ Conference O  and Conference Proceedings O  .......................................-->

    <!-- Conference O Location / Dates / Proceedings O Title / Name / Refereed -->
         <xsl:choose>
      <xsl:when test="conference_o_name">
		<relatedItem type="host">
			     <titleInfo>
			              <xsl:choose>
			        <xsl:when test="conference_proceedings_o_title">
				        <title>
	                         <xsl:apply-templates select="conference_proceedings_o_title"/>
                        </title>
                    </xsl:when>
                        </xsl:choose>
                  <!--  <partNumber>pp:<xsl:apply-templates select="conference_o_page_from"/>-<xsl:apply-templates select="conference_o_page_to"/>
 	                </partNumber>  -->
 	           	 </titleInfo>
     <xsl:choose>
      <xsl:when test="conference_proceedings_o_isbn">
        <identifier type="isbn">
	        <xsl:apply-templates select="conference_proceedings_o_isbn"/>
        </identifier>
      </xsl:when>
    </xsl:choose>
     <xsl:choose>
      <xsl:when test="conference_proceedings_o_issn">
        <identifier type="issn">
	        <xsl:apply-templates select="conference_proceedings_o_issn"/>
        </identifier>
      </xsl:when>
    </xsl:choose>
    
    <!-- Conference Proceedings O Publisher, Place Published, Date -->
    <xsl:choose>
      <xsl:when test="year">
		<originInfo>
			<place>
				<placeTerm type="text">
	        <xsl:apply-templates select="conference_proceedings_o_place_published"/>
        </placeTerm>
      </place>
      <publisher>
	        <xsl:apply-templates select="conference_proceedings_o_publisher"/>
      </publisher>
		  <dateOther type="conference_start_date">
		      <xsl:apply-templates select="conference_o_date"/>
		  </dateOther>
      <dateIssued>
	        <xsl:apply-templates select="year"/>
      </dateIssued>
    </originInfo>
      </xsl:when>
    </xsl:choose>
    
		    <part>
		    <extent unit="page">
		       <start><xsl:apply-templates select="conference_o_page_from"/></start>
		       <end><xsl:apply-templates select="conference_o_page_to"/></end>
		    </extent> 
		    </part> 
        
    <!--....Conference O Editors....-->
    <xsl:choose>
      <xsl:when test="conference_o_editors">
		<name type="personal">
			<namePart>
	        <xsl:apply-templates select="conference_o_editors"/>
            </namePart>
        <role>
           <roleTerm authority="marcrelator" type="text">Editor</roleTerm>
        </role>
		</name>
      </xsl:when>
    </xsl:choose> 

    <!--....Other Conference O Editors....-->
    <xsl:apply-templates select="*[starts-with(local-name(),'conference_o_editors_')]"/>           
    
		</relatedItem>
		<name type="conference">
			     <namePart>    
           <xsl:apply-templates select="conference_o_name"/> 
        </namePart>
        <displayForm>
           <xsl:variable name="cdate" select="conference_o_date"/>
           <xsl:apply-templates select="conference_o_name"/> (<xsl:apply-templates select="conference_o_number"/> : <xsl:value-of select="substring($cdate,string-length($cdate)-3,4)"/> : <xsl:apply-templates select="conference_o_location"/>)
        </displayForm>
		</name>
      </xsl:when>
    </xsl:choose>

    <!-- Conference Proceedings O ISBN -->
  <!--  <xsl:choose>
      <xsl:when test="conference_proceedings_o_isbn">
        <identifier type="isbn">
	        <xsl:apply-templates select="conference_proceedings_o_isbn"/>
        </identifier>
      </xsl:when>
    </xsl:choose> -->

    <!-- Conference Proceedings O ISSN -->
   <!-- <xsl:choose>
      <xsl:when test="conference_proceedings_o_issn">
        <identifier type="issn">
	        <xsl:apply-templates select="conference_proceedings_o_issn"/>
        </identifier>
      </xsl:when>
    </xsl:choose> -->

  </xsl:template>
  
    <!-- Multiple Conference O Editors -->
  <xsl:template match="*[starts-with(local-name(),'conference_o_editors_')]">
	<xsl:variable name="num" select="substring-after(name(),'conference_o_editors_')"/>
	<xsl:variable name="conference_o_editors" select="concat('conference_o_editors_',$num)"/>
		<name type="personal">
			<namePart>
	<xsl:value-of select="."/>
            </namePart>
        <role>
           <roleTerm authority="marcrelator" type="text">Editor</roleTerm>
        </role>
		</name>
  </xsl:template>


  <!-- ................................Journal Article Template....................................-->

  <xsl:template name="journal_article">

    <!-- Resource type - Journal Article --> 
<genre authority="local">journal article</genre>

  <!-- ................................Journal Article..............................................-->
          
    <!-- Journal Article Title -->
    <xsl:choose>
      <xsl:when test="title">
        <titleInfo>
          <title>
            	<xsl:apply-templates select="title"/>
	        </title>
        </titleInfo>
      </xsl:when>
    </xsl:choose>

    <!-- Journal Article English Title -->
    <xsl:choose>
      <xsl:when test="english_title">
        <titleInfo type="alternative">
          <title>
           	<xsl:apply-templates select="english_title"/>
	        </title>
        </titleInfo>
      </xsl:when>
    </xsl:choose>    
    
    <!--  Journal Article Language -->    
    <xsl:choose>
      <xsl:when test="language">
        <language>
          <languageTerm authority="iso639-2b" type="code">
           <!--	<xsl:apply-templates select="language"/> -->
            <xsl:if test="language  ='EN'">eng</xsl:if>
            <xsl:if test="language  ='ES'">spa</xsl:if>
            <xsl:if test="language  ='AF'">afr</xsl:if>
            <xsl:if test="language  ='FR'">fre</xsl:if>
            <xsl:if test="language  ='DE'">ger</xsl:if>
            <xsl:if test="language  ='RU'">rus</xsl:if>
            <xsl:if test="language  ='MA'">chi</xsl:if>
            <xsl:if test="language  ='ET'">eng</xsl:if>
            <xsl:if test="language  ='SC'">hrv</xsl:if>
            <xsl:if test="language  ='SE'">swe</xsl:if>
            <xsl:if test="language  ='PO'">por</xsl:if>
          </languageTerm>
        </language>
      </xsl:when>
    </xsl:choose>
    
    <!-- Journal Article Total Pages -->
  <!--  <xsl:variable name="first" select="journal_page_from"/> 
    <xsl:variable name="second" select="journal_page_to"/> --> 
		<physicalDescription>
			<form authority="marcform">print</form>
			<extent>
			<!-- Maybe it would be safer to use journal_article_total_pages, instead of the line below -->
	  <!-- <xsl:value-of select="number($second) - number($first) +1" /> -->
	  <xsl:apply-templates select="journal_total_pages"/>
</extent>
		</physicalDescription>
    
    <!-- Journal Article Abstract -->
    <xsl:choose>
      <xsl:when test="journal_article_abstract">
            <abstract>
	        <xsl:apply-templates select="journal_article_abstract"/>
            </abstract>
      </xsl:when>
    </xsl:choose>
		
    <!-- Journal Article URL -->
    <xsl:choose>
      <xsl:when test="journal_article_url">
		<location>
			<url displayLabel="electronic resource" usage="primary display">
	        <xsl:apply-templates select="journal_article_url"/>
            </url>
		</location>
      </xsl:when>
    </xsl:choose>  
     
<!-- recordCreationDate from submit date -->  

  <!-- Journal Article Peer reviewed? -->  
    
    <!-- Journal Article Scopus ID -->
    <xsl:choose>
      <xsl:when test="journal_article_scopus_id">
<identifier type="scopus">
	        <xsl:apply-templates select="journal_article_scopus_id"/>
</identifier>
      </xsl:when>
    </xsl:choose>
    
  <!-- ................................Journal Template (Article is in) ....................................-->    
    
    <!-- Journal Title / Refereed / Volume / Issue / Pages -->
    <xsl:choose>
      <xsl:when test="journal_title">
		<relatedItem type="host">
			<titleInfo>
				<title>
          <xsl:apply-templates select="journal_title"/>
        </title>
      </titleInfo>
<!--  XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX Work still required here XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX -->
	   <!--  <marc:subfield code="n">
	        <xsl:apply-templates select="journal_peer_reviewed"/>
	     </marc:subfield> -->
	     <identifier type="issn">
	        <xsl:apply-templates select="journal_issn"/>
         </identifier>
         <identifier type="issn_e">
	        <xsl:apply-templates select="journal_issn_e"/>
         </identifier>
         
    <!-- Journal Publisher, Place Published, Date -->
    <xsl:choose>
      <xsl:when test="year">
		<originInfo>
			<place>
				<placeTerm type="text">
	        <xsl:apply-templates select="journal_place_published"/>
</placeTerm>
</place>
<publisher>
	        <xsl:apply-templates select="journal_publisher"/>
</publisher>
<dateIssued>
	        <xsl:apply-templates select="year"/>
</dateIssued>
</originInfo>
      </xsl:when>
    </xsl:choose>         
        
        <part>
            <detail type="volume">
               <number><xsl:value-of select="journal_volume"/></number>
            </detail>
            <detail type="issue">
               <number><xsl:value-of select="journal_issue"/></number>
            </detail>
            <detail type="number">
               <number><xsl:value-of select="journal_number"/></number>
            </detail>
            <extent unit="page">
               <start><xsl:value-of select="journal_page_from"/></start>
               <end><xsl:value-of select="journal_page_to"/></end>
            </extent>
	        <!-- Maybe this line below should be replaced with journal_article_citation_details -->
		   <text>
		   <xsl:value-of select="journal_article_citation_details"/>			
		   </text>
		</part>
    
      <!-- Journal Editors -->
    <xsl:choose>
      <xsl:when test="journal_editors">
		<name type="personal">
			<namePart>
            <xsl:apply-templates select="journal_editors"/>
            </namePart>
        <role>
           <roleTerm authority="marcrelator" type="text">Editor</roleTerm>
        </role>
		</name>
      </xsl:when>
    </xsl:choose>      

      <!--Other Journal Editors -->
    <xsl:apply-templates select="*[starts-with(local-name(),'journal_editors_')]"/>
    
    </relatedItem>
      </xsl:when>
    </xsl:choose>

    <!-- Journal ISSN -->
   <!-- <xsl:choose>
      <xsl:when test="journal_issn">
<identifier type="issn">
	        <xsl:apply-templates select="journal_issn"/>
</identifier>
      </xsl:when>
    </xsl:choose> -->
    
    <!-- Journal ISSN-E? -->
 <!--   <xsl:choose>
      <xsl:when test="journal_issn_e">
<identifier type="issn_e">
	        <xsl:apply-templates select="journal_issn_e"/>
</identifier>
      </xsl:when>
    </xsl:choose>  --> 
 
  </xsl:template>
  
    <!-- Multiple Journal Editors -->
  <xsl:template match="*[starts-with(local-name(),'journal_editors_')]">
	<xsl:variable name="num" select="substring-after(name(),'journal_editors_')"/>
	<xsl:variable name="journal_editors" select="concat('journal_editors_',$num)"/>
		<name type="personal">
			<namePart>
	<xsl:value-of select="."/>
            </namePart>
        <role>
           <roleTerm authority="marcrelator" type="text">Editor</roleTerm>
        </role>
		</name>
  </xsl:template>
  
  <!-- ................................Journal Article O Template....................................-->

  <xsl:template name="journal_article_o">

    <!-- Resource type - Journal Article O --> 
<genre authority="local">journal article</genre>

  <!-- ................................Journal Article O..............................................-->
          
    <!-- Journal Article O Title -->
    <xsl:choose>
      <xsl:when test="journal_article_o_title">
        <titleInfo>
          <title>
            	<xsl:apply-templates select="journal_article_o_title"/>
	        </title>
        </titleInfo>
      </xsl:when>
    </xsl:choose>

    <!-- Journal Article O English Title -->
    <xsl:choose>
      <xsl:when test="english_title">
        <titleInfo type="alternative">
          <title>
           	<xsl:apply-templates select="english_title"/>
	        </title>
        </titleInfo>
      </xsl:when>
    </xsl:choose>    
    
    <!--  Journal Article O Language -->    
    <xsl:choose>
      <xsl:when test="journal_article_o_language">
        <language>
          <languageTerm authority="iso639-2b" type="code">
           	<xsl:apply-templates select="journal_article_o_language"/>
          </languageTerm>
        </language>
      </xsl:when>
    </xsl:choose>
    
    <!-- Journal Article O Total Pages -->
   <!-- <xsl:variable name="first" select="journal_o_page_from"/> 
    <xsl:variable name="second" select="journal_o_page_to"/> -->
		<physicalDescription>
			<form authority="marcform">print</form>
			<extent>
			<!-- Maybe it would be safer to use journal_article_total_pages, instead of the line below -->
	  <!-- <xsl:value-of select="number($second) - number($first) +1" /> -->
	  <xsl:apply-templates select="journal_o_total_pages"/>
</extent>
		</physicalDescription>
    
    <!-- Journal Article O Abstract -->
    <xsl:choose>
      <xsl:when test="journal_article_o_abstract">
            <abstract>
	        <xsl:apply-templates select="journal_article_o_abstract"/>
            </abstract>
      </xsl:when>
    </xsl:choose>
		
    <!-- Journal Article O URL -->
    <xsl:choose>
      <xsl:when test="journal_article_o_url">
		<location>
			<url displayLabel="electronic resource" usage="primary display">
	        <xsl:apply-templates select="journal_article_o_url"/>
            </url>
		</location>
      </xsl:when>
    </xsl:choose>  
     
<!-- recordCreationDate from submit date -->  

  <!-- Journal Article O Peer reviewed? -->  
    
    <!-- Journal Article O Scopus ID -->
    <xsl:choose>
      <xsl:when test="journal_article_o_scopus_id">
<identifier type="scopus">
	        <xsl:apply-templates select="journal_article_o_scopus_id"/>
</identifier>
      </xsl:when>
    </xsl:choose>
    
  <!-- ................................Journal O Template (Article is in) ....................................-->    
    
    <!-- Journal O Title / Refereed / Volume / Issue / Pages -->
    <xsl:choose>
      <xsl:when test="journal_o_title">
		<relatedItem type="host">
			<titleInfo>
				<title>
          <xsl:apply-templates select="journal_o_title"/>
        </title>
      </titleInfo>
<!--  XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX Work still required here XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX -->
	   <!--  <marc:subfield code="n">
	        <xsl:apply-templates select="journal_o_peer_reviewed"/>
	     </marc:subfield> -->
	     <identifier type="issn">
	        <xsl:apply-templates select="journal_o_issn"/>
         </identifier>
         <identifier type="issn_e">
	        <xsl:apply-templates select="journal_o_issn_e"/>
         </identifier>
         
    <!-- Journal O Publisher, Place Published, Date -->
    <xsl:choose>
      <xsl:when test="year">
		<originInfo>
			<place>
				<placeTerm type="text">
	        <xsl:apply-templates select="journal_o_place_published"/>
</placeTerm>
</place>
<publisher>
	        <xsl:apply-templates select="journal_o_publisher"/>
</publisher>
<dateIssued>
	        <xsl:apply-templates select="year"/>
</dateIssued>
</originInfo>
      </xsl:when>
    </xsl:choose>         

        <part>
            <detail type="volume">
               <number><xsl:value-of select="journal_o_volume"/></number>
            </detail>
            <detail type="issue">
               <number><xsl:value-of select="journal_o_issue"/></number>
            </detail>
            <detail type="number">
               <number><xsl:value-of select="journal_o_number"/></number>
            </detail>
            <extent unit="page">
               <start><xsl:value-of select="journal_o_page_from"/></start>
               <end><xsl:value-of select="journal_o_page_to"/></end>
            </extent>
	        <!-- Maybe this line below should be replaced with journal_article_citation_details -->
		   <text>
		   <xsl:value-of select="journal_article_o_citation_details"/>			
		   </text>
		</part>
    
      <!-- Journal O Editors -->
    <xsl:choose>
      <xsl:when test="journal_o_editors">
		<name type="personal">
			<namePart>
            <xsl:apply-templates select="journal_o_editors"/>
            </namePart>
        <role>
           <roleTerm authority="marcrelator" type="text">Editor</roleTerm>
        </role>
		</name>
      </xsl:when>
    </xsl:choose>      

      <!--Other Journal O Editors -->
    <xsl:apply-templates select="*[starts-with(local-name(),'journal_o_editors_')]"/>    
    
        </relatedItem>    
      </xsl:when>
    </xsl:choose>



    <!-- Journal O ISSN -->
  <!--  <xsl:choose>
      <xsl:when test="journal_o_issn">
<identifier type="issn">
	        <xsl:apply-templates select="journal_o_issn"/>
</identifier>
      </xsl:when>
    </xsl:choose> -->
    
    <!-- Journal O ISSN-E? -->
  <!--  <xsl:choose>
      <xsl:when test="journal_o_issn_e">
<identifier type="issn_e">
	        <xsl:apply-templates select="journal_o_issn_e"/>
</identifier>
      </xsl:when>
    </xsl:choose>   -->
 
  </xsl:template>
  
    <!-- Multiple Journal O Editors -->
  <xsl:template match="*[starts-with(local-name(),'journal_o_editors_')]">
	<xsl:variable name="num" select="substring-after(name(),'journal_o_editors_')"/>
	<xsl:variable name="journal_o_editors" select="concat('journal_o_editors_',$num)"/>
		<name type="personal">
			<namePart>
	<xsl:value-of select="."/>
            </namePart>
        <role>
           <roleTerm authority="marcrelator" type="text">Editor</roleTerm>
        </role>
		</name>
  </xsl:template>  
  
  
  <!-- ................................Creative Works - Exhibition Template......................................................-->

 
  <xsl:template name="exhibition">
  
    <!-- Resource type - Creative Works - Exhibition --> 
<genre authority="local">creative works - exhibition</genre>
          
    <!-- Creative Works - Exhibition Title -->
    <xsl:choose>
      <xsl:when test="exhibition_title">
        <titleInfo>
          <title>
           	<xsl:apply-templates select="exhibition_title"/> 
	        </title>
        </titleInfo>
      </xsl:when>
    </xsl:choose>  
    
    <!-- Creative Works - Exhibition English Title -->
    <xsl:choose>
      <xsl:when test="exhibition_english_title">
        <titleInfo type="alternative">
          <title>
           	<xsl:apply-templates select="exhibition_english_title"/> 
	        </title>
        </titleInfo>
      </xsl:when>
    </xsl:choose>  
    
    <!-- Creative Works - Exhibition Language -->    
        <xsl:choose>
      <xsl:when test="exhibition_language">
        <language>
          <languageTerm authority="iso639-2b" type="code">
           	<xsl:apply-templates select="exhibition_language"/> 
          </languageTerm>
        </language>
      </xsl:when>
    </xsl:choose> 
    
    
    <!-- Creative Works - Exhibition Location / Dates / Holding Exhibition Title  -->
        <xsl:choose>
      <xsl:when test="holding_exhibition_title">
		<relatedItem type="host">
			     <titleInfo>
				        <title>
				             <xsl:apply-templates select="holding_exhibition_title"/> (<xsl:apply-templates select="exhibition_date"/> : <xsl:apply-templates select="exhibition_location"/>)
                        </title>

 	           	 </titleInfo> 
                 <note type="exhibition_total_items"><xsl:apply-templates select="exhibition_total_number_items"/></note>
		</relatedItem>
          </xsl:when>
    </xsl:choose>    
    
    <!-- Creative Works - Exhibition Abstract -->
    <xsl:choose>
      <xsl:when test="exhibition_abstract">
            <abstract>
	            <xsl:apply-templates select="exhibition_abstract"/> 
            </abstract>
      </xsl:when>
    </xsl:choose>
    
    <!-- Creative Works - Exhibition Type of Work Description -->

            <physicalDescription>
             <xsl:choose>
              <xsl:when test="exhibition_type_of_work_description">
                <form>
                   <xsl:apply-templates select="exhibition_type_of_work_description"/>
                </form>
              </xsl:when>
             </xsl:choose>   
             <extent unit="number">
	             <xsl:apply-templates select="exhibition_number_items_contributed"/>
             </extent> 
            </physicalDescription> 
    
    <!-- Creative Works - Exhibition Place Published, Date -->
    <xsl:choose>
      <xsl:when test="year">
		<originInfo>
			<place>
				<placeTerm type="text">
	        <xsl:apply-templates select="exhibition_place_published"/> 
</placeTerm>
</place>
		 <publisher>
	        <xsl:apply-templates select="exhibition_advertised_place"/>
          </publisher>
		  <dateOther type="advertisedDate">
		      <xsl:apply-templates select="exhibition_advertised_date"/>
		  </dateOther>
<dateIssued>
	        <xsl:apply-templates select="year"/> 
</dateIssued>
</originInfo>
      </xsl:when>
    </xsl:choose> 
    
  </xsl:template>
  
  <!-- ................................Creative Works - Published Work......................................................-->
  
  <xsl:template name="published_work">
  
    <!-- Resource type - Creative Works - Published Work -->  
<genre authority="local">creative works - published work</genre>
          
    <!-- Creative Works -Published Work Title -->
    <xsl:choose>
      <xsl:when test="published_work_title">
        <titleInfo>
          <title>
           	<xsl:apply-templates select="published_work_title"/> 
	        </title>
        </titleInfo>
      </xsl:when>
    </xsl:choose> 
    
    <!-- Creative Works - Published Work English Title -->
    <xsl:choose>
      <xsl:when test="published_work_english_title">
        <titleInfo type="alternative">
          <title>
           	<xsl:apply-templates select="published_work_english_title"/> 
	        </title>
        </titleInfo>
      </xsl:when>
    </xsl:choose>  
    
    <!-- Creative Works - Published Work Language -->    
        <xsl:choose>
      <xsl:when test="published_work_language">
        <language>
          <languageTerm authority="iso639-2b" type="code">
           	<xsl:apply-templates select="published_work_language"/> 
          </languageTerm>
        </language>
      </xsl:when>
    </xsl:choose> 
    
    <!-- Creative Works - Published Work Publisher, Place Published, Publish Year -->
    <xsl:choose>
      <xsl:when test="year">
		    <originInfo>
			    <place>
				    <placeTerm type="text">
	            <xsl:apply-templates select="published_work_place_published"/> 
            </placeTerm>
          </place>
                  <publisher>
	         <xsl:apply-templates select="published_work_publisher"/> 
	                   </publisher>
         <dateIssued>
         <xsl:apply-templates select="year"/> 
                           </dateIssued> 
    <xsl:choose>
      <xsl:when test="published_work_edition">
        <edition>
	        <xsl:apply-templates select="published_work_edition"/> 
        </edition>
      </xsl:when>
    </xsl:choose> 
        </originInfo>
      </xsl:when>
    </xsl:choose> 
    
    <!-- Creative Works - Published Work ISBN -->
    <xsl:choose>
      <xsl:when test="published_work_isbn">
        <identifier type="isbn">
	        <xsl:apply-templates select="published_work_isbn"/> 
	      </identifier>
      </xsl:when>
    </xsl:choose>
    
   
    <!-- Creative Works - Published Work URL -->
    <xsl:choose>
      <xsl:when test="published_work_url">
		    <location>
	        <url displayLabel="electronic resource" usage="primary display">
	          <xsl:apply-templates select="published_work_url"/> 
          </url>
		    </location> 
      </xsl:when>
    </xsl:choose> 
    
    <!-- Creative Works - Published Work Abstract -->
    <xsl:choose>
      <xsl:when test="published_work_abstract">
        <abstract>
	        <xsl:apply-templates select="published_work_abstract"/> 
        </abstract>
      </xsl:when>
    </xsl:choose>
    
    <!-- Creative Works - Published Work Type of Work Description -->

            <physicalDescription>
             <xsl:choose>
              <xsl:when test="published_work_type_of_work_description">
                <form>
                   <xsl:apply-templates select="published_work_type_of_work_description"/>
                </form>
              </xsl:when>
             </xsl:choose> 
            </physicalDescription>    
    
    <!-- Creative Works - Published Work Holding Title / Details -->
  <!--  <xsl:choose>
      <xsl:when test="published_work_publisher">
		    <relatedItem type="host">
			    <titleInfo>
            <title>
	            <xsl:apply-templates select="published_work_holding_title"/> 
				    </title>
          </titleInfo> 
        </relatedItem>
        </xsl:when>
    </xsl:choose> -->

        <part>
           <extent unit="page">
              <start><xsl:apply-templates select="published_work_page_from"/></start>
              <end><xsl:apply-templates select="published_work_page_to"/></end>
           </extent>
        </part> 

    
    <!-- Creative Works - Published Work Rights -->
 <!--   <xsl:choose>
      <xsl:when test="published_work_rights">
		    <accessCondition type="useAndReproduction">
	        <xsl:apply-templates select="published_work_rights"/>
		    </accessCondition>
      </xsl:when>
    </xsl:choose> -->
  
      <!-- Creative Works - Published Work Editors -->
 <!--   <xsl:choose>
      <xsl:when test="published_work_editors">
		<name type="personal">
			<namePart>
            <xsl:apply-templates select="published_work_editors"/>
            </namePart>
			<role>
				<roleTerm type="text">Editor</roleTerm>
			</role>
		</name>
      </xsl:when>
    </xsl:choose>     --> 

      <!--Other Creative Works - Published Work Editors -->
  <!--  <xsl:apply-templates select="*[starts-with(local-name(),'published_work_editors_')]"/> -->
   
  </xsl:template>
  
    <!-- Multiple Creative Works - Published Work Editors -->
<!--  <xsl:template match="*[starts-with(local-name(),'published_work_editors_')]">
	<xsl:variable name="num" select="substring-after(name(),'published_work_editors_')"/>
	<xsl:variable name="published_work_editors" select="concat('published_work_editors_',$num)"/>
		<name type="personal">
			<namePart>
	<xsl:value-of select="."/>
            </namePart>
			<role>
				<roleTerm type="text">Editor</roleTerm>
			</role>
		</name>
  </xsl:template>  -->
  
  <!-- ................................Creative Works - Recorded Work......................................................-->
  
  <xsl:template name="recorded_work">
  
    <!-- Resource type - Creative Works - Recorded Work -->  
<genre authority="local">creative works - recorded work</genre>
          
    <!-- Creative Works - Recorded Work Title -->
   <xsl:choose>
      <xsl:when test="recorded_work_title">
         <titleInfo>
          <title>
        	<xsl:apply-templates select="recorded_work_title"/> 
	        </title>
        </titleInfo>
      </xsl:when>
    </xsl:choose>
    
    <!-- Creative Works -  Recorded Work English Title -->
    <xsl:choose>
      <xsl:when test="recorded_work_english_title">
        <titleInfo type="alternative">
          <title>
           	<xsl:apply-templates select="recorded_work_english_title"/> 
	        </title>
        </titleInfo>
      </xsl:when>
    </xsl:choose> 
    
    <!-- Creative Works -  Recorded Work Language -->    
      <xsl:choose>
      <xsl:when test="recorded_work_language">
        <language>
          <languageTerm authority="iso639-2b" type="code">
             	<xsl:apply-templates select="recorded_work_language"/>
          </languageTerm>
        </language>
      </xsl:when>
    </xsl:choose>
    
    <!-- Creative Works - Recorded Work Distributor Code -->
    <xsl:choose>
      <xsl:when test="recorded_work_distributor_code">
        <identifier type="distributor_code">
	        <xsl:apply-templates select="recorded_work_distributor_code"/> 
	      </identifier>
      </xsl:when>
    </xsl:choose>
    
     <!-- Creative Works -  Recorded Work Place Published, Date -->
    <xsl:choose>
      <xsl:when test="year">
		<originInfo>
			<place>
				<placeTerm type="text">
	        <xsl:apply-templates select="recorded_work_place_published"/> 
</placeTerm>
</place>
                  <publisher>
	         <xsl:apply-templates select="recorded_work_commercial_distributor"/> 
	                   </publisher>
<dateIssued>
	        <xsl:apply-templates select="year"/> 
</dateIssued>
<dateCreated>
	        <xsl:apply-templates select="recorded_work_date_of_recording"/> 
</dateCreated>
<dateOther type="releaseDate">
	        <xsl:apply-templates select="recorded_work_release_date"/> 
</dateOther>
</originInfo>
           </xsl:when>
    </xsl:choose> 
    
    
     <!-- Creative Works - Recorded Work Distribution Medium, Type of Work Description, Total Seconds -->
      <physicalDescription>
         <form>
            <xsl:apply-templates select="recorded_work_type_of_work_description"/>
         </form>
         <form type="distribution medium">
            <xsl:apply-templates select="recorded_work_distribution_medium"/>         
         </form>
           <extent unit="seconds">
              <xsl:apply-templates select="recorded_work_total_seconds"/>
           </extent>
        </physicalDescription> 
 
    
    <!-- Creative Works - Recorded Work Abstract -->
    <xsl:choose>
      <xsl:when test="recorded_work_abstract">
        <abstract>
	        <xsl:apply-templates select="recorded_work_abstract"/> 
        </abstract>
      </xsl:when>
    </xsl:choose> 
    
    <!-- Creative Works - Recorded Work Rights -->
 <!--   <xsl:choose>
      <xsl:when test="recorded_work_rights">
		    <accessCondition type="useAndReproduction">
	        <xsl:apply-templates select="recorded_work_rights"/>
		    </accessCondition>
      </xsl:when>
    </xsl:choose> -->
  
  </xsl:template>  

  
  <!-- ................................RESEARCH REPORT......................................................-->
  
  <xsl:template name="research_report">

 <!-- Resource type - Research Report -->  
<genre authority="local">research report</genre>
          
    <!-- Research Report title -->
    <xsl:choose>
      <xsl:when test="research_report_title">
        <titleInfo>
          <title>
           	<xsl:apply-templates select="research_report_title"/>
          </title>
        </titleInfo>
      </xsl:when>
    </xsl:choose>

    <!-- Research Report English title -->
    <xsl:choose>
      <xsl:when test="research_report_english_title">        
        <titleInfo type="alternative">
          <title>
           	<xsl:apply-templates select="research_report_english_title"/>
          </title>
        </titleInfo>
      </xsl:when>
    </xsl:choose>        

    <!-- Research Report language -->    
        <xsl:choose>
      <xsl:when test="research_report_language">
        <language>
          <languageTerm authority="iso639-2b" type="code">
           	<xsl:apply-templates select="research_report_language"/>
          </languageTerm>
        </language>
      </xsl:when>
    </xsl:choose> 
    
    <!-- Research Report Edition  moved to origin info-->
<!--    <xsl:choose>
      <xsl:when test="research_report_edition">
        <edition>
	        <xsl:apply-templates select="research_report_edition"/>
        </edition>
      </xsl:when>
    </xsl:choose>   -->

    <!-- Research Report ISBN -->
    <xsl:choose>
      <xsl:when test="research_report_isbn">
        <identifier type="isbn">
	        <xsl:apply-templates select="research_report_isbn"/>
        </identifier>
      </xsl:when>
    </xsl:choose>
    
        <!--Research Report ISBN E-->
    <xsl:choose>
      <xsl:when test="research_report_isbn_e">
        <identifier type="isbn_e">    
	        <xsl:comment> Electronic ISBN </xsl:comment>
	        <xsl:apply-templates select="research_report_isbn_e"/>
        </identifier>
      </xsl:when>
    </xsl:choose>
 
    <!-- Research Report Publisher, Place Published, Publish Year -->
    <xsl:choose>
      <xsl:when test="year">
		    <originInfo>
			    <place>
				    <placeTerm type="text">
	            <xsl:apply-templates select="research_report_place_published"/>
            </placeTerm>
          </place>
          <publisher>
	          <xsl:apply-templates select="research_report_publisher"/>
          </publisher>
          <dateIssued>
	          <xsl:apply-templates select="year"/>
          </dateIssued>
          <xsl:choose>
             <xsl:when test="research_report_edition">
               <edition>
	                 <xsl:apply-templates select="research_report_edition"/>
              </edition>
            </xsl:when>
         </xsl:choose>
        </originInfo>
      </xsl:when>
    </xsl:choose>
    
     <!-- Research Report Total Pages -->
    <xsl:choose>
      <xsl:when test="research_report_total_pages">
		    <physicalDescription>
			  <form authority="marcform">print</form>
			    <extent>
			      <xsl:apply-templates select="research_report_total_pages"/>
          </extent>
		    </physicalDescription>
      </xsl:when>
    </xsl:choose>
    
    <!-- Research Report URL -->
    <xsl:choose>
      <xsl:when test="research_report_url">
		    <location>
	        <url displayLabel="electronic resource" usage="primary display">
	          <xsl:apply-templates select="research_report_url"/>
          </url>
		    </location>
      </xsl:when>
    </xsl:choose> 
    
    <!-- Research Report Abstract -->
    <xsl:choose>
      <xsl:when test="research_report_abstract">
        <abstract>
	        <xsl:apply-templates select="research_report_abstract"/>
        </abstract>
      </xsl:when>
    </xsl:choose>

    <!-- Research Report Rights -->
    <xsl:choose>
      <xsl:when test="research_report_rights">
		    <accessCondition type="useAndReproduction">
	        <xsl:apply-templates select="research_report_rights"/>
		    </accessCondition>
      </xsl:when>
    </xsl:choose>
  
  </xsl:template>
  
  <!-- ................................Thesis Template......................................................-->

  <xsl:template name="thesis">
  
    <!-- Resource type - THESIS -->
 <!--         <marc:datafield tag="655" ind1="" ind2="7">
		         <marc:subfield code="a">THESIS</marc:subfield>
		         <marc:subfield code="2">local</marc:subfield>
          </marc:datafield> -->
          
    <!-- generic title -->
  <!--  <xsl:choose>
      <xsl:when test="title">
            <marc:datafield tag="245" ind1="1" ind2="0">
	     <marc:subfield code="a">
           	<xsl:apply-templates select="title"/>
	     </marc:subfield>
            </marc:datafield>
      </xsl:when>
    </xsl:choose> -->
    
    <!-- Book English title -->
 <!--   <xsl:choose>
      <xsl:when test="book_english_title">
            <marc:datafield tag="246" ind1="3" ind2="1">
	     <marc:subfield code="a">
           	<xsl:apply-templates select="book_english_title"/>
	     </marc:subfield>
            </marc:datafield>
      </xsl:when>
    </xsl:choose> -->
    
    <!-- language -->    
  <!--      <xsl:choose>
      <xsl:when test="language">
            <marc:datafield tag="546" ind1="" ind2="">
	     <marc:subfield code="a">
           	<xsl:apply-templates select="language"/>
	     </marc:subfield>
            </marc:datafield>
      </xsl:when>
    </xsl:choose> -->
  
    <!-- Supervisors -->
  <!--  <xsl:choose>
      <xsl:when test="thesis_supervisor_last_name">
            <marc:datafield tag="720">
	     <marc:subfield code="a">
	        <xsl:apply-templates select="thesis_supervisor_last_name"/>, <xsl:apply-templates select="thesis_supervisor_first_name"/>, <xsl:apply-templates select="thesis_supervisor_affiliation"/>
	     </marc:subfield>
            </marc:datafield>
      </xsl:when>
    </xsl:choose> -->
    
    <!-- Other Supervisors -->
 <!--   <xsl:apply-templates select="*[starts-with(local-name(),'thesis_supervisor_last_name_')]"/> -->


    
    <!-- Thesis Degree Program -->
<!--    <xsl:choose>
      <xsl:when test="thesis_degree">
            <marc:datafield tag="502" ind1="3">
	     <marc:subfield code="u">
	        <xsl:apply-templates select="thesis_degree"/>
	     </marc:subfield>
            </marc:datafield>
      </xsl:when>
    </xsl:choose> -->
    
    </xsl:template>

  <!-- ................................Working Paper Template...........................-->

  <xsl:template name="working_paper">
  
    <!-- Resource type - Working Paper -->
 <!--         <marc:datafield tag="655" ind1="" ind2="7">
		         <marc:subfield code="a">working paper</marc:subfield>
		         <marc:subfield code="2">local</marc:subfield>
          </marc:datafield> -->
          
    <!-- generic title -->
 <!--   <xsl:choose>
      <xsl:when test="title">
            <marc:datafield tag="245" ind1="1" ind2="0">
	     <marc:subfield code="a">
           	<xsl:apply-templates select="title"/>
	     </marc:subfield>
            </marc:datafield>
      </xsl:when>
    </xsl:choose> -->
    
    <!-- Book English title -->
  <!--  <xsl:choose>
      <xsl:when test="book_english_title">
            <marc:datafield tag="246" ind1="3" ind2="1">
	     <marc:subfield code="a">
           	<xsl:apply-templates select="book_english_title"/>
	     </marc:subfield>
            </marc:datafield>
      </xsl:when>
    </xsl:choose> -->
    
    <!-- language -->    
  <!--      <xsl:choose>
      <xsl:when test="language">
            <marc:datafield tag="546" ind1="" ind2="">
	     <marc:subfield code="a">
           	<xsl:apply-templates select="language"/>
	     </marc:subfield>
            </marc:datafield>
      </xsl:when>
    </xsl:choose> -->
  
    <!-- ISBN -->
  <!--  <xsl:choose>
      <xsl:when test="working_paper_isbn">
            <marc:datafield tag="020">
	      <marc:subfield code="a">
	        <xsl:apply-templates select="working_paper_isbn"/>
	      </marc:subfield>
            </marc:datafield>
      </xsl:when>
    </xsl:choose> -->

    <!-- ISSN -->
 <!--   <xsl:choose>
      <xsl:when test="working_paper_issn">
            <marc:datafield tag="022">
	      <marc:subfield code="a">
	        <xsl:apply-templates select="working_paper_issn"/>
	      </marc:subfield>
            </marc:datafield>
      </xsl:when>
    </xsl:choose> -->

    <!-- Title -->
  <!--  <xsl:choose>
      <xsl:when test="working_paper_title">
            <marc:datafield tag="830">
	      <marc:subfield code="a">
	        <xsl:apply-templates select="working_paper_title"/>
	      </marc:subfield>
	      <marc:subfield code="v">
	        <xsl:apply-templates select="working_paper_number"/>
	      </marc:subfield>
            </marc:datafield>
      </xsl:when>
    </xsl:choose> -->



  </xsl:template>
  
  <!-- ............................Multiple Stuff.......................................-->
  
     <!-- Multiple FOR -->
  <xsl:template match="*[starts-with(local-name(),'FOR_')]">
	<xsl:variable name="fornum" select="substring-after(name(),'FOR_')"/>
	<xsl:variable name="FOR" select="concat('FOR_',$fornum)"/>
<!--	<xsl:variable name="FOR_app" select="concat('FOR_apportionment_',$fornum)"/>  -->
<!-- <subject> 
<topic> -->
<note type='FOR_code'>
<!-- <xsl:attribute name="apportionment"> <xsl:apply-templates select="//*[local-name()=$FOR_app]"/></xsl:attribute>   -->
<note type="anzsrc_FOR_field_of_research_code">
<xsl:if test="//*[local-name()=$FOR] = '0101 - Pure Mathematics'">0101 - Pure Mathematics</xsl:if>
<xsl:if test="//*[local-name()=$FOR] = '0102 - Applied Mathematics'">0102 - Applied Mathematics</xsl:if>
<xsl:if test="//*[local-name()=$FOR] = '0103 - Numerical and Computational Mathematics'">0103 - Numerical and Computational Mathematics</xsl:if>
<xsl:if test="//*[local-name()=$FOR] = '0104 - Statistics'">0104 - Statistics</xsl:if>
<xsl:if test="//*[local-name()=$FOR] = '0105 - Mathematical Physics'">0105 - Mathematical Physics</xsl:if>
<xsl:if test="//*[local-name()=$FOR] = '0199 - Other Mathematical Sciences'">0199 - Other Mathematical Sciences</xsl:if>
<xsl:if test="//*[local-name()=$FOR] = '0201 - Astronomical and Space Sciences'">0201 - Astronomical and Space Sciences</xsl:if>
<xsl:if test="//*[local-name()=$FOR] = '0202 - Atomic, Molecular, Nuclear, Particle and Plasma Physics'">0202 - Atomic, Molecular, Nuclear, Particle and Plasma Physics</xsl:if>
<xsl:if test="//*[local-name()=$FOR] = '0203 - Classical Physics'">0203 - Classical Physics</xsl:if>
<xsl:if test="//*[local-name()=$FOR] = '0204 - Condensed Matter Physics'">0204 - Condensed Matter Physics</xsl:if>
<xsl:if test="//*[local-name()=$FOR] = '0205 - Optical Physics'">0205 - Optical Physics</xsl:if>
<xsl:if test="//*[local-name()=$FOR] = '0206 - Quantum Physics'">0206 - Quantum Physics</xsl:if>
<xsl:if test="//*[local-name()=$FOR] = '0299 - Other Physical Sciences'">0299 - Other Physical Sciences</xsl:if>
<xsl:if test="//*[local-name()=$FOR] = '0301 - Analytical Chemistry'">0301 - Analytical Chemistry</xsl:if>
<xsl:if test="//*[local-name()=$FOR] = '0302 - Inorganic Chemistry'">0302 - Inorganic Chemistry</xsl:if>
<xsl:if test="//*[local-name()=$FOR] = '0303 - Macromolecular and Materials Chemistry'">0303 - Macromolecular and Materials Chemistry</xsl:if>
<xsl:if test="//*[local-name()=$FOR] = '0304 - Medicinal and Biomolecular Chemistry'">0304 - Medicinal and Biomolecular Chemistry</xsl:if>
<xsl:if test="//*[local-name()=$FOR] = '0305 - Organic Chemistry'">0305 - Organic Chemistry</xsl:if>
<xsl:if test="//*[local-name()=$FOR] = '0306 - Physical Chemistry (incl. Structural)'">0306 - Physical Chemistry (incl. Structural)</xsl:if>
<xsl:if test="//*[local-name()=$FOR] = '0307 - Theoretical and Computational Chemistry'">0307 - Theoretical and Computational Chemistry</xsl:if>
<xsl:if test="//*[local-name()=$FOR] = '0399 - Other Chemical Sciences'">0399 - Other Chemical Sciences</xsl:if>
<xsl:if test="//*[local-name()=$FOR] = '0401 - Atmospheric Sciences'">0401 - Atmospheric Sciences</xsl:if>
<xsl:if test="//*[local-name()=$FOR] = '0402 - Geochemistry'">0402 - Geochemistry</xsl:if>
<xsl:if test="//*[local-name()=$FOR] = '0403 - Geology'">0403 - Geology</xsl:if>
<xsl:if test="//*[local-name()=$FOR] = '0404 - Geophysics'">0404 - Geophysics</xsl:if>
<xsl:if test="//*[local-name()=$FOR] = '0405 - Oceanography'">0405 - Oceanography</xsl:if>
<xsl:if test="//*[local-name()=$FOR] = '0406 - Physical Geography and Environmental Geoscience'">0406 - Physical Geography and Environmental Geoscience</xsl:if>
<xsl:if test="//*[local-name()=$FOR] = '0499 - Other Earth Sciences'">0499 - Other Earth Sciences</xsl:if>
<xsl:if test="//*[local-name()=$FOR] = '0501 - Ecological Applications'">0501 - Ecological Applications</xsl:if>
<xsl:if test="//*[local-name()=$FOR] = '0502 - Environmental Science and Management'">0502 - Environmental Science and Management</xsl:if>
<xsl:if test="//*[local-name()=$FOR] = '0503 - Soil Sciences'">0503 - Soil Sciences</xsl:if>
<xsl:if test="//*[local-name()=$FOR] = '0599 - Other Environmental Sciences'">0599 - Other Environmental Sciences</xsl:if>
<xsl:if test="//*[local-name()=$FOR] = '0601 - Biochemistry and Cell Biology'">0601 - Biochemistry and Cell Biology</xsl:if>
<xsl:if test="//*[local-name()=$FOR] = '0602 - Ecology'">0602 - Ecology</xsl:if>
<xsl:if test="//*[local-name()=$FOR] = '0603 - Evolutionary Biology'">0603 - Evolutionary Biology</xsl:if>
<xsl:if test="//*[local-name()=$FOR] = '0604 - Genetics'">0604 - Genetics</xsl:if>
<xsl:if test="//*[local-name()=$FOR] = '0605 - Microbiology'">0605 - Microbiology</xsl:if>
<xsl:if test="//*[local-name()=$FOR] = '0606 - Physiology'">0606 - Physiology</xsl:if>
<xsl:if test="//*[local-name()=$FOR] = '0607 - Plant Biology'">0607 - Plant Biology</xsl:if>
<xsl:if test="//*[local-name()=$FOR] = '0608 - Zoology'">0608 - Zoology</xsl:if>
<xsl:if test="//*[local-name()=$FOR] = '0699 - Other Biological Sciences'">0699 - Other Biological Sciences</xsl:if>
<xsl:if test="//*[local-name()=$FOR] = '0701 - Agriculture, Land and Farm Management'">0701 - Agriculture, Land and Farm Management</xsl:if>
<xsl:if test="//*[local-name()=$FOR] = '0702 - Animal Production'">0702 - Animal Production</xsl:if>
<xsl:if test="//*[local-name()=$FOR] = '0703 - Crop and Pasture Production'">0703 - Crop and Pasture Production</xsl:if>
<xsl:if test="//*[local-name()=$FOR] = '0704 - Fisheries Sciences'">0704 - Fisheries Sciences</xsl:if>
<xsl:if test="//*[local-name()=$FOR] = '0705 - Forestry Sciences'">0705 - Forestry Sciences</xsl:if>
<xsl:if test="//*[local-name()=$FOR] = '0706 - Horticultural Production'">0706 - Horticultural Production</xsl:if>
<xsl:if test="//*[local-name()=$FOR] = '0707 - Veterinary Sciences'">0707 - Veterinary Sciences</xsl:if>
<xsl:if test="//*[local-name()=$FOR] = '0799 - Other Agricultural and Veterinary Sciences'">0799 - Other Agricultural and Veterinary Sciences</xsl:if>
<xsl:if test="//*[local-name()=$FOR] = '0801 - Artificial Intelligence and Image Processing'">0801 - Artificial Intelligence and Image Processing</xsl:if>
<xsl:if test="//*[local-name()=$FOR] = '0802 - Computation Theory and Mathematics'">0802 - Computation Theory and Mathematics</xsl:if>
<xsl:if test="//*[local-name()=$FOR] = '0803 - Computer Software'">0803 - Computer Software</xsl:if>
<xsl:if test="//*[local-name()=$FOR] = '0804 - Data Format'">0804 - Data Format</xsl:if>
<xsl:if test="//*[local-name()=$FOR] = '0805 - Distributed Computing'">0805 - Distributed Computing</xsl:if>
<xsl:if test="//*[local-name()=$FOR] = '0806 - Information Systems'">0806 - Information Systems</xsl:if>
<xsl:if test="//*[local-name()=$FOR] = '0807 - Library and Information Studies'">0807 - Library and Information Studies</xsl:if>
<xsl:if test="//*[local-name()=$FOR] = '0899 - Other Information and Computing Sciences'">0899 - Other Information and Computing Sciences</xsl:if>
<xsl:if test="//*[local-name()=$FOR] = '0901 - Aerospace Engineering'">0901 - Aerospace Engineering</xsl:if>
<xsl:if test="//*[local-name()=$FOR] = '0902 - Automotive Engineering'">0902 - Automotive Engineering</xsl:if>
<xsl:if test="//*[local-name()=$FOR] = '0903 - Biomedical Engineering'">0903 - Biomedical Engineering</xsl:if>
<xsl:if test="//*[local-name()=$FOR] = '0904 - Chemical Engineering'">0904 - Chemical Engineering</xsl:if>
<xsl:if test="//*[local-name()=$FOR] = '0905 - Civil Engineering'">0905 - Civil Engineering</xsl:if>
<xsl:if test="//*[local-name()=$FOR] = '0906 - Electrical and Electronic Engineering'">0906 - Electrical and Electronic Engineering</xsl:if>
<xsl:if test="//*[local-name()=$FOR] = '0907 - Environmental Engineering'">0907 - Environmental Engineering</xsl:if>
<xsl:if test="//*[local-name()=$FOR] = '0908 - Food Sciences'">0908 - Food Sciences</xsl:if>
<xsl:if test="//*[local-name()=$FOR] = '0909 - Geomatic Engineering'">0909 - Geomatic Engineering</xsl:if>
<xsl:if test="//*[local-name()=$FOR] = '0910 - Manufacturing Engineering'">0910 - Manufacturing Engineering</xsl:if>
<xsl:if test="//*[local-name()=$FOR] = '0911 - Maritime Engineering'">0911 - Maritime Engineering</xsl:if>
<xsl:if test="//*[local-name()=$FOR] = '0912 - Materials Engineering'">0912 - Materials Engineering</xsl:if>
<xsl:if test="//*[local-name()=$FOR] = '0913 - Mechanical Engineering'">0913 - Mechanical Engineering</xsl:if>
<xsl:if test="//*[local-name()=$FOR] = '0914 - Resources Engineering and Extractive Metallurgy'">0914 - Resources Engineering and Extractive Metallurgy</xsl:if>
<xsl:if test="//*[local-name()=$FOR] = '0915 - Interdisciplinary Engineering'">0915 - Interdisciplinary Engineering</xsl:if>
<xsl:if test="//*[local-name()=$FOR] = '0999 - Other Engineering'">0999 - Other Engineering</xsl:if>
<xsl:if test="//*[local-name()=$FOR] = '1001 - Agricultural Biotechnology'">1001 - Agricultural Biotechnology</xsl:if>
<xsl:if test="//*[local-name()=$FOR] = '1002 - Environmental Biotechnology'">1002 - Environmental Biotechnology</xsl:if>
<xsl:if test="//*[local-name()=$FOR] = '1003 - Industrial Biotechnology'">1003 - Industrial Biotechnology</xsl:if>
<xsl:if test="//*[local-name()=$FOR] = '1004 - Medical Biotechnology'">1004 - Medical Biotechnology</xsl:if>
<xsl:if test="//*[local-name()=$FOR] = '1005 - Communications Technologies'">1005 - Communications Technologies</xsl:if>
<xsl:if test="//*[local-name()=$FOR] = '1006 - Computer Hardware'">1006 - Computer Hardware</xsl:if>
<xsl:if test="//*[local-name()=$FOR] = '1007 - Nanotechnology'">1007 - Nanotechnology</xsl:if>
<xsl:if test="//*[local-name()=$FOR] = '1099 - Other Technology'">1099 - Other Technology</xsl:if>
<xsl:if test="//*[local-name()=$FOR] = '1101 - Medical Biochemistry and Metabolomics'">1101 - Medical Biochemistry and Metabolomics</xsl:if>
<xsl:if test="//*[local-name()=$FOR] = '1102 - Cardiorespiratory Medicine and Haematology'">1102 - Cardiorespiratory Medicine and Haematology</xsl:if>
<xsl:if test="//*[local-name()=$FOR] = '1103 - Clinical Sciences'">1103 - Clinical Sciences</xsl:if>
<xsl:if test="//*[local-name()=$FOR] = '1104 - Complementary and Alternative Medicine'">1104 - Complementary and Alternative Medicine</xsl:if>
<xsl:if test="//*[local-name()=$FOR] = '1105 - Dentistry'">1105 - Dentistry</xsl:if>
<xsl:if test="//*[local-name()=$FOR] = '1106 - Human Movement and Sports Science'">1106 - Human Movement and Sports Science</xsl:if>
<xsl:if test="//*[local-name()=$FOR] = '1107 - Immunology'">1107 - Immunology</xsl:if>
<xsl:if test="//*[local-name()=$FOR] = '1108 - Medical Microbiology'">1108 - Medical Microbiology</xsl:if>
<xsl:if test="//*[local-name()=$FOR] = '1109 - Neurosciences'">1109 - Neurosciences</xsl:if>
<xsl:if test="//*[local-name()=$FOR] = '1110 - Nursing'">1110 - Nursing</xsl:if>
<xsl:if test="//*[local-name()=$FOR] = '1111 - Nutrition and Dietetics'">1111 - Nutrition and Dietetics</xsl:if>
<xsl:if test="//*[local-name()=$FOR] = '1112 - Oncology and Carcinogenesis'">1112 - Oncology and Carcinogenesis</xsl:if>
<xsl:if test="//*[local-name()=$FOR] = '1113 - Ophthalmology and Optometry'">1113 - Ophthalmology and Optometry</xsl:if>
<xsl:if test="//*[local-name()=$FOR] = '1114 - Paediatrics and Reproductive Medicine'">1114 - Paediatrics and Reproductive Medicine</xsl:if>
<xsl:if test="//*[local-name()=$FOR] = '1115 - Pharmacology and Pharmaceutical Sciences'">1115 - Pharmacology and Pharmaceutical Sciences</xsl:if>
<xsl:if test="//*[local-name()=$FOR] = '1116 - Medical Physiology'">1116 - Medical Physiology</xsl:if>
<xsl:if test="//*[local-name()=$FOR] = '1117 - Public Health and Health Services'">1117 - Public Health and Health Services</xsl:if>
<xsl:if test="//*[local-name()=$FOR] = '1199 - Other Medical and Health Sciences'">1199 - Other Medical and Health Sciences</xsl:if>
<xsl:if test="//*[local-name()=$FOR] = '1201 - Architecture'">1201 - Architecture</xsl:if>
<xsl:if test="//*[local-name()=$FOR] = '1202 - Building'">1202 - Building</xsl:if>
<xsl:if test="//*[local-name()=$FOR] = '1203 - Design Practice and Management'">1203 - Design Practice and Management</xsl:if>
<xsl:if test="//*[local-name()=$FOR] = '1204 - Engineering Design'">1204 - Engineering Design</xsl:if>
<xsl:if test="//*[local-name()=$FOR] = '1205 - Urban and Regional Planning'">1205 - Urban and Regional Planning</xsl:if>
<xsl:if test="//*[local-name()=$FOR] = '1299 - Other Built Environment and Design'">1299 - Other Built Environment and Design</xsl:if>
<xsl:if test="//*[local-name()=$FOR] = '1301 - Education Systems'">1301 - Education Systems</xsl:if>
<xsl:if test="//*[local-name()=$FOR] = '1302 - Curriculum and Pedagogy'">1302 - Curriculum and Pedagogy</xsl:if>
<xsl:if test="//*[local-name()=$FOR] = '1303 - Specialist Studies in Education'">1303 - Specialist Studies in Education</xsl:if>
<xsl:if test="//*[local-name()=$FOR] = '1399 - Other Education'">1399 - Other Education</xsl:if>
<xsl:if test="//*[local-name()=$FOR] = '1401 - Economic Theory'">1401 - Economic Theory</xsl:if>
<xsl:if test="//*[local-name()=$FOR] = '1402 - Applied Economics'">1402 - Applied Economics</xsl:if>
<xsl:if test="//*[local-name()=$FOR] = '1403 - Econometrics'">1403 - Econometrics</xsl:if>
<xsl:if test="//*[local-name()=$FOR] = '1499 - Other Economics'">1499 - Other Economics</xsl:if>
<xsl:if test="//*[local-name()=$FOR] = '1501 - Accounting, Auditing and Accountability'">1501 - Accounting, Auditing and Accountability</xsl:if>
<xsl:if test="//*[local-name()=$FOR] = '1502 - Banking, Finance and Investment'">1502 - Banking, Finance and Investment</xsl:if>
<xsl:if test="//*[local-name()=$FOR] = '1503 - Business and Management'">1503 - Business and Management</xsl:if>
<xsl:if test="//*[local-name()=$FOR] = '1504 - Commercial Services'">1504 - Commercial Services</xsl:if>
<xsl:if test="//*[local-name()=$FOR] = '1505 - Marketing'">1505 - Marketing</xsl:if>
<xsl:if test="//*[local-name()=$FOR] = '1506 - Tourism'">1506 - Tourism</xsl:if>
<xsl:if test="//*[local-name()=$FOR] = '1507 - Transportation and Freight Services'">1507 - Transportation and Freight Services</xsl:if>
<xsl:if test="//*[local-name()=$FOR] = '1599 - Other Commerce, Management, Tourism and Services'">1599 - Other Commerce, Management, Tourism and Services</xsl:if>
<xsl:if test="//*[local-name()=$FOR] = '1601 - Anthropology'">1601 - Anthropology</xsl:if>
<xsl:if test="//*[local-name()=$FOR] = '1602 - Criminology'">1602 - Criminology</xsl:if>
<xsl:if test="//*[local-name()=$FOR] = '1603 - Demography'">1603 - Demography</xsl:if>
<xsl:if test="//*[local-name()=$FOR] = '1604 - Human Geography'">1604 - Human Geography</xsl:if>
<xsl:if test="//*[local-name()=$FOR] = '1605 - Policy and Administration'">1605 - Policy and Administration</xsl:if>
<xsl:if test="//*[local-name()=$FOR] = '1606 - Political Science'">1606 - Political Science</xsl:if>
<xsl:if test="//*[local-name()=$FOR] = '1607 - Social Work'">1607 - Social Work</xsl:if>
<xsl:if test="//*[local-name()=$FOR] = '1608 - Sociology'">1608 - Sociology</xsl:if>
<xsl:if test="//*[local-name()=$FOR] = '1699 - Other Studies in Human Society'">1699 - Other Studies in Human Society</xsl:if>
<xsl:if test="//*[local-name()=$FOR] = '1701 - Psychology'">1701 - Psychology</xsl:if>
<xsl:if test="//*[local-name()=$FOR] = '1702 - Cognitive Sciences'">1702 - Cognitive Sciences</xsl:if>
<xsl:if test="//*[local-name()=$FOR] = '1799 - Other Psychology and Cognitive Sciences'">1799 - Other Psychology and Cognitive Sciences</xsl:if>
<xsl:if test="//*[local-name()=$FOR] = '1801 - Law'">1801 - Law</xsl:if>
<xsl:if test="//*[local-name()=$FOR] = '1802 - Maori Law'">1802 - Maori Law</xsl:if>
<xsl:if test="//*[local-name()=$FOR] = '1899 - Other Law and Legal Studies'">1899 - Other Law and Legal Studies</xsl:if>
<xsl:if test="//*[local-name()=$FOR] = '1901 - Art Theory and Criticism'">1901 - Art Theory and Criticism</xsl:if>
<xsl:if test="//*[local-name()=$FOR] = '1902 - Film, Television and Digital Media'">1902 - Film, Television and Digital Media</xsl:if>
<xsl:if test="//*[local-name()=$FOR] = '1903 - Journalism and Professional Writing'">1903 - Journalism and Professional Writing</xsl:if>
<xsl:if test="//*[local-name()=$FOR] = '1904 - Performing Arts and Creative Writing'">1904 - Performing Arts and Creative Writing</xsl:if>
<xsl:if test="//*[local-name()=$FOR] = '1905 - Visual Arts and Crafts'">1905 - Visual Arts and Crafts</xsl:if>
<xsl:if test="//*[local-name()=$FOR] = '1999 - Other Studies in Creative Arts and Writing'">1999 - Other Studies in Creative Arts and Writing</xsl:if>
<xsl:if test="//*[local-name()=$FOR] = '2001 - Communication and Media Studies'">2001 - Communication and Media Studies</xsl:if>
<xsl:if test="//*[local-name()=$FOR] = '2002 - Cultural Studies'">2002 - Cultural Studies</xsl:if>
<xsl:if test="//*[local-name()=$FOR] = '2003 - Language Studies'">2003 - Language Studies</xsl:if>
<xsl:if test="//*[local-name()=$FOR] = '2004 - Linguistics'">2004 - Linguistics</xsl:if>
<xsl:if test="//*[local-name()=$FOR] = '2005 - Literary Studies'">2005 - Literary Studies</xsl:if>
<xsl:if test="//*[local-name()=$FOR] = '2099 - Other Language, Communication and Culture'">2099 - Other Language, Communication and Culture</xsl:if>
<xsl:if test="//*[local-name()=$FOR] = '2101 - Archaeology'">2101 - Archaeology</xsl:if>
<xsl:if test="//*[local-name()=$FOR] = '2102 - Curatorial and Related Studies'">2102 - Curatorial and Related Studies</xsl:if>
<xsl:if test="//*[local-name()=$FOR] = '2103 - Historical Studies'">2103 - Historical Studies</xsl:if>
<xsl:if test="//*[local-name()=$FOR] = '2199 - Other History and Archaeology'">2199 - Other History and Archaeology</xsl:if>
<xsl:if test="//*[local-name()=$FOR] = '2201 - Applied Ethics'">2201 - Applied Ethics</xsl:if>
<xsl:if test="//*[local-name()=$FOR] = '2202 - History and Philosophy of Specific Fields'">2202 - History and Philosophy of Specific Fields</xsl:if>
<xsl:if test="//*[local-name()=$FOR] = '2203 - Philosophy'">2203 - Philosophy</xsl:if>
<xsl:if test="//*[local-name()=$FOR] = '2204 - Religion and Religious Studies'">2204 - Religion and Religious Studies</xsl:if>
<xsl:if test="//*[local-name()=$FOR] = '2299 - Other Philosophy and Religious Studies'">2299 - Other Philosophy and Religious Studies</xsl:if>
 </note> 
  </note>
  </xsl:template>

  <!-- Multiple Creators -->
<!--  <xsl:template match="*[starts-with(local-name(),'creator_last_name_')]">
	<xsl:variable name="num" select="substring-after(name(),'creator_last_name_')"/>
	<xsl:variable name="first_name" select="concat('creator_first_name_',$num)"/>
	<xsl:variable name="affiliation" select="concat('creator_affiliation_',$num)"/>
	<marc:datafield tag="700" ind1="1" ind2="">
	 <marc:subfield code="a">
	  <xsl:value-of select="."/>, <xsl:value-of select="//*[local-name()=$first_name]"/>
	 </marc:subfield>
	</marc:datafield>
	<marc:datafield tag="700" ind1="1" ind2="">	 
	 <marc:subfield code="u">
	  <xsl:value-of select="//*[local-name()=$affiliation]"/>
	 </marc:subfield>
	</marc:datafield>
  </xsl:template>    -->
  
  
  <!-- Multiple Creators -->
  <xsl:template match="*[starts-with(local-name(),'creator_last_name_')]">
	<xsl:variable name="num" select="substring-after(name(),'creator_last_name_')"/>
	<xsl:variable name="first_name" select="concat('creator_first_name_',$num)"/>
  	<xsl:variable name="cited_name" select="concat('creator_cited_name_',$num)"/>
	<!-- <xsl:variable name="affiliation" select="concat('creator_affiliation_',$num)"/> -->
	<xsl:variable name="institution" select="concat('creator_institution_',$num)"/>
	<xsl:variable name="school_name" select="concat('creator_school_name_',$num)"/>
<name type="personal">
<namePart>
	  <xsl:value-of select="."/>, <xsl:value-of select="//*[local-name()=$first_name]"/>
</namePart>
<namePart type="cited">
	  <xsl:value-of select="//*[local-name()=$cited_name]"/>
</namePart> 
        <role>
           <roleTerm authority="marcrelator" type="text">Author</roleTerm>
        </role>

<!-- Maybe we should leave out the specific affiliation relationship eg.Staff (Just print affiliation as University of Western Sydney - see below) --> 
<!-- Note this would also leave out the affiliation "External" --> 
<!--<affiliation>
      <xsl:apply-templates select="//*[local-name()=$affiliation]"/>
</affiliation> -->

<!-- <xsl:if test="//*[local-name()=$affiliation] ='Staff'"><affiliation>University of Western Sydney</affiliation></xsl:if>
<xsl:if test="//*[local-name()=$affiliation] = 'Student'"><affiliation>University of Western Sydney</affiliation></xsl:if>
<xsl:if test="//*[local-name()=$affiliation] ='Student - Non HDR'"><affiliation>University of Western Sydney</affiliation></xsl:if>
<xsl:if test="//*[local-name()=$affiliation] = 'Adjunct'"><affiliation>University of Western Sydney</affiliation></xsl:if>
<xsl:if test="//*[local-name()=$affiliation] = 'Emeritus'"><affiliation>University of Western Sydney</affiliation></xsl:if>
<xsl:if test="//*[local-name()=$affiliation] = 'Visiting Fellow'"><affiliation>University of Western Sydney</affiliation></xsl:if> -->
<!-- <xsl:if test="//*[local-name()=$affiliation] ='External'"><affiliation>External</affiliation></xsl:if> -->
<!-- <xsl:if test="//*[local-name()=$affiliation] ='External'"><affiliation></affiliation></xsl:if> -->
<!-- <xsl:if test="//*[local-name()=$affiliation] ='Pre-UWS'"><affiliation>Pre-UWS</affiliation></xsl:if> -->
<!-- <xsl:if test="//*[local-name()=$affiliation] ='Pre-UWS'"><affiliation></affiliation></xsl:if> -->	

    <xsl:choose>
        <xsl:when test="//*[local-name()=$school_name] = ''">
          <affiliation><xsl:apply-templates select="//*[local-name()=$institution]"/></affiliation>
         <!--> <xsl:if test="creator_affiliation  ='Staff'"><affiliation>University of Western Sydney</affiliation></xsl:if>
          <xsl:if test="creator_affiliation  ='Student'"><affiliation>University of Western Sydney</affiliation></xsl:if>
          <xsl:if test="creator_affiliation  ='Student - Non HDR'"><affiliation>University of Western Sydney</affiliation></xsl:if>
          <xsl:if test="creator_affiliation  ='Adjunct'"><affiliation>University of Western Sydney</affiliation></xsl:if>
          <xsl:if test="creator_affiliation  ='Emeritus'"><affiliation>University of Western Sydney</affiliation></xsl:if>
          <xsl:if test="creator_affiliation  ='Visiting Fellow'"><affiliation>University of Western Sydney</affiliation></xsl:if>
          <xsl:if test="creator_affiliation  ='External'"><affiliation>non UWS</affiliation></xsl:if>
          <xsl:if test="creator_affiliation  ='Pre-UWS'"><affiliation>non UWS</affiliation></xsl:if>   -->
        </xsl:when>
        <xsl:otherwise>
          <affiliation><xsl:apply-templates select="//*[local-name()=$school_name]"/></affiliation>							
	      </xsl:otherwise>
    </xsl:choose> 

<!-- <xsl:if test="//*[local-name()=$institution] ='University of Western Sydney'"><affiliation>University of Western Sydney</affiliation></xsl:if>
<xsl:if test="not(//*[local-name()=$institution] ='University of Western Sydney')"><affiliation>non UWS</affiliation></xsl:if> -->

<note type="author_order"><xsl:value-of select="$num + 1"/></note> 	
            </name>   
      </xsl:template> 
      
  <!-- Multiple Keywords -->
  <xsl:template match="*[starts-with(local-name(),'keyword_')]">
<subject>
<topic>
	        <xsl:value-of select="."/>
</topic>
</subject>
  </xsl:template>   
  
  <!-- Multiple Chapter Book Editors -->
<!--  <xsl:template match="*[starts-with(local-name(),'chapter_book_editors_')]">
	<marc:datafield tag="700" ind1="" ind2="">
	 <marc:subfield code="e">
	        <xsl:value-of select="."/>
	 </marc:subfield> 
	</marc:datafield>
  </xsl:template> -->    

  <!-- Multiple Faculty/School(s) -->
  <xsl:template match="*[starts-with(local-name(),'faculty_')]">
	<xsl:variable name="num" select="substring-after(name(),'creator_school_')"/>
	<xsl:variable name="school" select="concat('research_unit_',$num)"/>
	<marc:datafield tag="710" ind1="2" ind2="">
	 <marc:subfield code="a">
<xsl:value-of select="."/>, <xsl:value-of select="//*[local-name()=$school]"/>
   </marc:subfield>
	 <marc:subfield code="b">
	  <xsl:value-of select="."/>
	 </marc:subfield>
	 <marc:subfield code="b">
	  <xsl:value-of select="//*[local-name()=$school]"/>
	 </marc:subfield>
	</marc:datafield>
  </xsl:template>
  
  <!-- Multiple Supervisors -->
  <xsl:template match="*[starts-with(local-name(),'thesis_supervisor_last_name_')]">
	<xsl:variable name="num" select="substring-after(name(),'thesis_supervisor_last_name_')"/>
	<xsl:variable name="first_name" select="concat('thesis_supervisor_first_name_',$num)"/>
	<xsl:variable name="affiliation" select="concat('thesis_supervisor_affiliation_',$num)"/>
	<marc:datafield tag="720">
	 <marc:subfield code="a">
	  <xsl:value-of select="."/>, <xsl:value-of select="//*[local-name()=$first_name]"/>, <xsl:value-of select="//*[local-name()=$affiliation]"/>
	 </marc:subfield>
	</marc:datafield>
  </xsl:template>
  
  <xsl:template name="splitString">
    <xsl:param name="string1"/>
     <xsl:choose>
      <xsl:when test="contains($string1,'&#13;')">
       <xsl:variable name="beforeCR" select="substring-before($string1,'&#13;')"/>
	<marc:datafield tag="653" ind1="" ind2="">
	 <marc:subfield code="a"><xsl:value-of select="$beforeCR"/></marc:subfield>
	</marc:datafield>

	<xsl:variable name="afterCR" select="substring-after($string1,'&#13;')"/>
	<xsl:call-template name="splitString">
	   <xsl:with-param name="string1" select="$afterCR" />
	</xsl:call-template>
       </xsl:when>
       <xsl:otherwise>
	<marc:datafield tag="653" ind1="" ind2="">
	 <marc:subfield code="a"><xsl:value-of select="$string1"/></marc:subfield>
	</marc:datafield>
       </xsl:otherwise>
      </xsl:choose>
  </xsl:template>

</xsl:stylesheet>
