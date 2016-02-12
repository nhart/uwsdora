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

      <!-- FOR_code -->
      
      
      <xsl:choose>
       <xsl:when test="FOR_code">  
<note type='FOR_code'>
<xsl:attribute name="apportionment"> <xsl:apply-templates select="FOR_apportionment"/></xsl:attribute>
<note type="anzsrc_FOR_field_of_research_code">
<xsl:if test="FOR_code = '010101'">010101 - Algebra and Number Theory</xsl:if>
<xsl:if test="FOR_code = '010102'">010102 - Algebraic and Differential Geometry</xsl:if>
<xsl:if test="FOR_code = '010103'">010103 - Category Theory, K Theory, Homological Algebra</xsl:if>
<xsl:if test="FOR_code = '010104'">010104 - Combinatorics and Discrete Mathematics (excl. Physical Combinatorics)</xsl:if>
<xsl:if test="FOR_code = '010105'">010105 - Group Theory and Generalisations</xsl:if>
<xsl:if test="FOR_code = '010106'">010106 - Lie Groups, Harmonic and Fourier Analysis</xsl:if>
<xsl:if test="FOR_code = '010107'">010107 - Mathematical Logic, Set Theory, Lattices and Universal Algebra</xsl:if>
<xsl:if test="FOR_code = '010108'">010108 - Operator Algebras and Functional Analysis</xsl:if>
<xsl:if test="FOR_code = '010109'">010109 - Ordinary Differential Equations, Difference Equations and Dynamical Systems</xsl:if>
<xsl:if test="FOR_code = '010110'">010110 - Partial Differential Equations</xsl:if>
<xsl:if test="FOR_code = '010111'">010111 - Real and Complex Functions (incl. Several Variables)</xsl:if>
<xsl:if test="FOR_code = '010112'">010112 - Topology</xsl:if>
<xsl:if test="FOR_code = '010199'">010199 - Pure Mathematics not elsewhere classified</xsl:if>
<xsl:if test="FOR_code = '010201'">010201 - Approximation Theory and Asymptotic Methods</xsl:if>
<xsl:if test="FOR_code = '010202'">010202 - Biological Mathematics</xsl:if>
<xsl:if test="FOR_code = '010203'">010203 - Calculus of Variations, Systems Theory and Control Theory</xsl:if>
<xsl:if test="FOR_code = '010204'">010204 - Dynamical Systems in Applications</xsl:if>
<xsl:if test="FOR_code = '010205'">010205 - Financial Mathematics</xsl:if>
<xsl:if test="FOR_code = '010206'">010206 - Operations Research</xsl:if>
<xsl:if test="FOR_code = '010207'">010207 - Theoretical and Applied Mechanics</xsl:if>
<xsl:if test="FOR_code = '010299'">010299 - Applied Mathematics not elsewhere classified</xsl:if>
<xsl:if test="FOR_code = '010301'">010301 - Numerical Analysis</xsl:if>
<xsl:if test="FOR_code = '010302'">010302 - Numerical Solution of Differential and Integral Equations</xsl:if>
<xsl:if test="FOR_code = '010303'">010303 - Optimisation</xsl:if>
<xsl:if test="FOR_code = '010399'">010399 - Numerical and Computational Mathematics not elsewhere classified</xsl:if>
<xsl:if test="FOR_code = '010401'">010401 - Applied Statistics</xsl:if>
<xsl:if test="FOR_code = '010402'">010402 - Biostatistics</xsl:if>
<xsl:if test="FOR_code = '010403'">010403 - Forensic Statistics</xsl:if>
<xsl:if test="FOR_code = '010404'">010404 - Probability Theory</xsl:if>
<xsl:if test="FOR_code = '010405'">010405 - Statistical Theory</xsl:if>
<xsl:if test="FOR_code = '010406'">010406 - Stochastic Analysis and Modelling</xsl:if>
<xsl:if test="FOR_code = '010499'">010499 - Statistics not elsewhere classified</xsl:if>
<xsl:if test="FOR_code = '010501'">010501 - Algebraic Structures in Mathematical Physics</xsl:if>
<xsl:if test="FOR_code = '010502'">010502 - Integrable Systems (Classical and Quantum)</xsl:if>
<xsl:if test="FOR_code = '010503'">010503 - Mathematical Aspects of Classical Mechanics, Quantum Mechanics and Quantum Information Theory</xsl:if>
<xsl:if test="FOR_code = '010504'">010504 - Mathematical Aspects of General Relativity</xsl:if>
<xsl:if test="FOR_code = '010505'">010505 - Mathematical Aspects of Quantum and Conformal Field Theory, Quantum Gravity and String Theory</xsl:if>
<xsl:if test="FOR_code = '010506'">010506 - Statistical Mechanics, Physical Combinatorics and Mathematical Aspects of Condensed Matter</xsl:if>
<xsl:if test="FOR_code = '010599'">010599 - Mathematical Physics not elsewhere classified</xsl:if>
<xsl:if test="FOR_code = '019999'">019999 - Mathematical Sciences not elsewhere classified</xsl:if>
<xsl:if test="FOR_code = '020101'">020101 - Astrobiology</xsl:if>
<xsl:if test="FOR_code = '020102'">020102 - Astronomical and Space Instrumentation</xsl:if>
<xsl:if test="FOR_code = '020103'">020103 - Cosmology and Extragalactic Astronomy</xsl:if>
<xsl:if test="FOR_code = '020104'">020104 - Galactic Astronomy</xsl:if>
<xsl:if test="FOR_code = '020105'">020105 - General Relativity and Gravitational Waves</xsl:if>
<xsl:if test="FOR_code = '020106'">020106 - High Energy Astrophysics; Cosmic Rays</xsl:if>
<xsl:if test="FOR_code = '020107'">020107 - Mesospheric, Ionospheric and Magnetospheric Physics</xsl:if>
<xsl:if test="FOR_code = '020108'">020108 - Planetary Science (excl. Extraterrestrial Geology)</xsl:if>
<xsl:if test="FOR_code = '020109'">020109 - Space and Solar Physics</xsl:if>
<xsl:if test="FOR_code = '020110'">020110 - Stellar Astronomy and Planetary Systems</xsl:if>
<xsl:if test="FOR_code = '020199'">020199 - Astronomical and Space Sciences not elsewhere classified</xsl:if>
<xsl:if test="FOR_code = '020201'">020201 - Atomic and Molecular Physics</xsl:if>
<xsl:if test="FOR_code = '020202'">020202 - Nuclear Physics</xsl:if>
<xsl:if test="FOR_code = '020203'">020203 - Particle Physics</xsl:if>
<xsl:if test="FOR_code = '020204'">020204 - Plasma Physics; Fusion Plasmas; Electrical Discharges</xsl:if>
<xsl:if test="FOR_code = '020299'">020299 - Atomic, Molecular, Nuclear, Particle and Plasma Physics not elsewhere classified</xsl:if>
<xsl:if test="FOR_code = '020301'">020301 - Acoustics and Acoustical Devices; Waves</xsl:if>
<xsl:if test="FOR_code = '020302'">020302 - Electrostatics and Electrodynamics</xsl:if>
<xsl:if test="FOR_code = '020303'">020303 - Fluid Physics</xsl:if>
<xsl:if test="FOR_code = '020304'">020304 - Thermodynamics and Statistical Physics</xsl:if>
<xsl:if test="FOR_code = '020399'">020399 - Classical Physics not elsewhere classified</xsl:if>
<xsl:if test="FOR_code = '020401'">020401 - Condensed Matter Characterisation Technique Development</xsl:if>
<xsl:if test="FOR_code = '020402'">020402 - Condensed Matter Imaging</xsl:if>
<xsl:if test="FOR_code = '020403'">020403 - Condensed Matter Modelling and Density Functional Theory</xsl:if>
<xsl:if test="FOR_code = '020404'">020404 - Electronic and Magnetic Properties of Condensed Matter; Superconductivity</xsl:if>
<xsl:if test="FOR_code = '020405'">020405 - Soft Condensed Matter</xsl:if>
<xsl:if test="FOR_code = '020406'">020406 - Surfaces and Structural Properties of Condensed Matter</xsl:if>
<xsl:if test="FOR_code = '020499'">020499 - Condensed Matter Physics not elsewhere classified</xsl:if>
<xsl:if test="FOR_code = '020501'">020501 - Classical and Physical Optics</xsl:if>
<xsl:if test="FOR_code = '020502'">020502 - Lasers and Quantum Electronics</xsl:if>
<xsl:if test="FOR_code = '020503'">020503 - Nonlinear Optics and Spectroscopy</xsl:if>
<xsl:if test="FOR_code = '020504'">020504 - Photonics, Optoelectronics and Optical Communications</xsl:if>
<xsl:if test="FOR_code = '020599'">020599 - Optical Physics not elsewhere classified</xsl:if>
<xsl:if test="FOR_code = '020601'">020601 - Degenerate Quantum Gases and Atom Optics</xsl:if>
<xsl:if test="FOR_code = '020602'">020602 - Field Theory and String Theory</xsl:if>
<xsl:if test="FOR_code = '020603'">020603 - Quantum Information, Computation and Communication</xsl:if>
<xsl:if test="FOR_code = '020604'">020604 - Quantum Optics</xsl:if>
<xsl:if test="FOR_code = '020699'">020699 - Quantum Physics not elsewhere classified</xsl:if>
<xsl:if test="FOR_code = '029901'">029901 - Biological Physics</xsl:if>
<xsl:if test="FOR_code = '029902'">029902 - Complex Physical Systems</xsl:if>
<xsl:if test="FOR_code = '029903'">029903 - Medical Physics</xsl:if>
<xsl:if test="FOR_code = '029904'">029904 - Synchrotrons; Accelerators; Instruments and Techniques</xsl:if>
<xsl:if test="FOR_code = '029999'">029999 - Physical Sciences not elsewhere classified</xsl:if>
<xsl:if test="FOR_code = '030101'">030101 - Analytical Spectrometry</xsl:if>
<xsl:if test="FOR_code = '030102'">030102 - Electroanalytical Chemistry</xsl:if>
<xsl:if test="FOR_code = '030103'">030103 - Flow Analysis</xsl:if>
<xsl:if test="FOR_code = '030104'">030104 - Immunological and Bioassay Methods</xsl:if>
<xsl:if test="FOR_code = '030105'">030105 - Instrumental Methods (excl. Immunological and Bioassay Methods)</xsl:if>
<xsl:if test="FOR_code = '030106'">030106 - Quality Assurance, Chemometrics, Traceability and Metrological Chemistry</xsl:if>
<xsl:if test="FOR_code = '030107'">030107 - Sensor Technology (Chemical aspects)</xsl:if>
<xsl:if test="FOR_code = '030108'">030108 - Separation Science</xsl:if>
<xsl:if test="FOR_code = '030199'">030199 - Analytical Chemistry not elsewhere classified</xsl:if>
<xsl:if test="FOR_code = '030201'">030201 - Bioinorganic Chemistry</xsl:if>
<xsl:if test="FOR_code = '030202'">030202 - f-Block Chemistry</xsl:if>
<xsl:if test="FOR_code = '030203'">030203 - Inorganic Green Chemistry</xsl:if>
<xsl:if test="FOR_code = '030204'">030204 - Main Group Metal Chemistry</xsl:if>
<xsl:if test="FOR_code = '030205'">030205 - Non-metal Chemistry</xsl:if>
<xsl:if test="FOR_code = '030206'">030206 - Solid State Chemistry</xsl:if>
<xsl:if test="FOR_code = '030207'">030207 - Transition Metal Chemistry</xsl:if>
<xsl:if test="FOR_code = '030299'">030299 - Inorganic Chemistry not elsewhere classified</xsl:if>
<xsl:if test="FOR_code = '030301'">030301 - Chemical Characterisation of Materials</xsl:if>
<xsl:if test="FOR_code = '030302'">030302 - Nanochemistry and Supramolecular Chemistry</xsl:if>
<xsl:if test="FOR_code = '030303'">030303 - Optical Properties of Materials</xsl:if>
<xsl:if test="FOR_code = '030304'">030304 - Physical Chemistry of Materials</xsl:if>
<xsl:if test="FOR_code = '030305'">030305 - Polymerisation Mechanisms</xsl:if>
<xsl:if test="FOR_code = '030306'">030306 - Synthesis of Materials</xsl:if>
<xsl:if test="FOR_code = '030307'">030307 - Theory and Design of Materials</xsl:if>
<xsl:if test="FOR_code = '030399'">030399 - Macromolecular and Materials Chemistry not elsewhere classified</xsl:if>
<xsl:if test="FOR_code = '030401'">030401 - Biologically Active Molecules</xsl:if>
<xsl:if test="FOR_code = '030402'">030402 - Biomolecular Modelling and Design</xsl:if>
<xsl:if test="FOR_code = '030403'">030403 - Characterisation of Biological Macromolecules</xsl:if>
<xsl:if test="FOR_code = '030404'">030404 - Cheminformatics and Quantitative Structure-Activity Relationships</xsl:if>
<xsl:if test="FOR_code = '030405'">030405 - Molecular Medicine</xsl:if>
<xsl:if test="FOR_code = '030406'">030406 - Proteins and Peptides</xsl:if>
<xsl:if test="FOR_code = '030499'">030499 - Medicinal and Biomolecular Chemistry not elsewhere classified</xsl:if>
<xsl:if test="FOR_code = '030501'">030501 - Free Radical Chemistry</xsl:if>
<xsl:if test="FOR_code = '030502'">030502 - Natural Products Chemistry</xsl:if>
<xsl:if test="FOR_code = '030503'">030503 - Organic Chemical Synthesis</xsl:if>
<xsl:if test="FOR_code = '030504'">030504 - Organic Green Chemistry</xsl:if>
<xsl:if test="FOR_code = '030505'">030505 - Physical Organic Chemistry</xsl:if>
<xsl:if test="FOR_code = '030599'">030599 - Organic Chemistry not elsewhere classified</xsl:if>
<xsl:if test="FOR_code = '030601'">030601 - Catalysis and Mechanisms of Reactions</xsl:if>
<xsl:if test="FOR_code = '030602'">030602 - Chemical Thermodynamics and Energetics</xsl:if>
<xsl:if test="FOR_code = '030603'">030603 - Colloid and Surface Chemistry</xsl:if>
<xsl:if test="FOR_code = '030604'">030604 - Electrochemistry</xsl:if>
<xsl:if test="FOR_code = '030605'">030605 - Solution Chemistry</xsl:if>
<xsl:if test="FOR_code = '030606'">030606 - Structural Chemistry and Spectroscopy</xsl:if>
<xsl:if test="FOR_code = '030607'">030607 - Transport Properties and Non-Equilibrium Processes</xsl:if>
<xsl:if test="FOR_code = '030699'">030699 - Physical Chemistry not elsewhere classified</xsl:if>
<xsl:if test="FOR_code = '030701'">030701 - Quantum Chemistry</xsl:if>
<xsl:if test="FOR_code = '030702'">030702 - Radiation and Matter</xsl:if>
<xsl:if test="FOR_code = '030703'">030703 - Reaction Kinetics and Dynamics</xsl:if>
<xsl:if test="FOR_code = '030704'">030704 - Statistical Mechanics in Chemistry</xsl:if>
<xsl:if test="FOR_code = '030799'">030799 - Theoretical and Computational Chemistry not elsewhere classified</xsl:if>
<xsl:if test="FOR_code = '039901'">039901 - Environmental Chemistry (incl. Atmospheric Chemistry)</xsl:if>
<xsl:if test="FOR_code = '039902'">039902 - Forensic Chemistry</xsl:if>
<xsl:if test="FOR_code = '039903'">039903 - Industrial Chemistry</xsl:if>
<xsl:if test="FOR_code = '039904'">039904 - Organometallic Chemistry</xsl:if>
<xsl:if test="FOR_code = '039999'">039999 - Chemical Sciences not elsewhere classified</xsl:if>
<xsl:if test="FOR_code = '040101'">040101 - Atmospheric Aerosols</xsl:if>
<xsl:if test="FOR_code = '040102'">040102 - Atmospheric Dynamics</xsl:if>
<xsl:if test="FOR_code = '040103'">040103 - Atmospheric Radiation</xsl:if>
<xsl:if test="FOR_code = '040104'">040104 - Climate Change Processes</xsl:if>
<xsl:if test="FOR_code = '040105'">040105 - Climatology (excl. Climate Change Processes)</xsl:if>
<xsl:if test="FOR_code = '040106'">040106 - Cloud Physics</xsl:if>
<xsl:if test="FOR_code = '040107'">040107 - Meteorology</xsl:if>
<xsl:if test="FOR_code = '040108'">040108 - Tropospheric and Stratospheric Physics</xsl:if>
<xsl:if test="FOR_code = '040199'">040199 - Atmospheric Sciences not elsewhere classified</xsl:if>
<xsl:if test="FOR_code = '040201'">040201 - Exploration Geochemistry</xsl:if>
<xsl:if test="FOR_code = '040202'">040202 - Inorganic Geochemistry</xsl:if>
<xsl:if test="FOR_code = '040203'">040203 - Isotope Geochemistry</xsl:if>
<xsl:if test="FOR_code = '040204'">040204 - Organic Geochemistry</xsl:if>
<xsl:if test="FOR_code = '040299'">040299 - Geochemistry not elsewhere classified</xsl:if>
<xsl:if test="FOR_code = '040301'">040301 - Basin Analysis</xsl:if>
<xsl:if test="FOR_code = '040302'">040302 - Extraterrestrial Geology</xsl:if>
<xsl:if test="FOR_code = '040303'">040303 - Geochronology</xsl:if>
<xsl:if test="FOR_code = '040304'">040304 - Igneous and Metamorphic Petrology</xsl:if>
<xsl:if test="FOR_code = '040305'">040305 - Marine Geoscience</xsl:if>
<xsl:if test="FOR_code = '040306'">040306 - Mineralogy and Crystallography</xsl:if>
<xsl:if test="FOR_code = '040307'">040307 - Ore Deposit Petrology</xsl:if>
<xsl:if test="FOR_code = '040308'">040308 - Palaeontology (incl. Palynology)</xsl:if>
<xsl:if test="FOR_code = '040309'">040309 - Petroleum and Coal Geology</xsl:if>
<xsl:if test="FOR_code = '040310'">040310 - Sedimentology</xsl:if>
<xsl:if test="FOR_code = '040311'">040311 - Stratigraphy (incl. Biostratigraphy and Sequence Stratigraphy)</xsl:if>
<xsl:if test="FOR_code = '040312'">040312 - Structural Geology</xsl:if>
<xsl:if test="FOR_code = '040313'">040313 - Tectonics</xsl:if>
<xsl:if test="FOR_code = '040314'">040314 - Volcanology</xsl:if>
<xsl:if test="FOR_code = '040399'">040399 - Geology not elsewhere classified</xsl:if>
<xsl:if test="FOR_code = '040401'">040401 - Electrical and Electromagnetic Methods in Geophysics</xsl:if>
<xsl:if test="FOR_code = '040402'">040402 - Geodynamics</xsl:if>
<xsl:if test="FOR_code = '040403'">040403 - Geophysical Fluid Dynamics</xsl:if>
<xsl:if test="FOR_code = '040404'">040404 - Geothermics and Radiometrics</xsl:if>
<xsl:if test="FOR_code = '040405'">040405 - Gravimetrics</xsl:if>
<xsl:if test="FOR_code = '040406'">040406 - Magnetism and Palaeomagnetism</xsl:if>
<xsl:if test="FOR_code = '040407'">040407 - Seismology and Seismic Exploration</xsl:if>
<xsl:if test="FOR_code = '040499'">040499 - Geophysics not elsewhere classified</xsl:if>
<xsl:if test="FOR_code = '040501'">040501 - Biological Oceanography</xsl:if>
<xsl:if test="FOR_code = '040502'">040502 - Chemical Oceanography</xsl:if>
<xsl:if test="FOR_code = '040503'">040503 - Physical Oceanography</xsl:if>
<xsl:if test="FOR_code = '040599'">040599 - Oceanography not elsewhere classified</xsl:if>
<xsl:if test="FOR_code = '040601'">040601 - Geomorphology and Regolith and Landscape Evolution</xsl:if>
<xsl:if test="FOR_code = '040602'">040602 - Glaciology</xsl:if>
<xsl:if test="FOR_code = '040603'">040603 - Hydrogeology</xsl:if>
<xsl:if test="FOR_code = '040604'">040604 - Natural Hazards</xsl:if>
<xsl:if test="FOR_code = '040605'">040605 - Palaeoclimatology</xsl:if>
<xsl:if test="FOR_code = '040606'">040606 - Quaternary Environments</xsl:if>
<xsl:if test="FOR_code = '040607'">040607 - Surface Processes</xsl:if>
<xsl:if test="FOR_code = '040608'">040608 - Surfacewater Hydrology</xsl:if>
<xsl:if test="FOR_code = '040699'">040699 - Physical Geography and Environmental Geoscience not elsewhere classified</xsl:if>
<xsl:if test="FOR_code = '049999'">049999 - Earth Sciences not elsewhere classified</xsl:if>
<xsl:if test="FOR_code = '050101'">050101 - Ecological Impacts of Climate Change</xsl:if>
<xsl:if test="FOR_code = '050102'">050102 - Ecosystem Function</xsl:if>
<xsl:if test="FOR_code = '050103'">050103 - Invasive Species Ecology</xsl:if>
<xsl:if test="FOR_code = '050104'">050104 - Landscape Ecology</xsl:if>
<xsl:if test="FOR_code = '050199'">050199 - Ecological Applications not elsewhere classified</xsl:if>
<xsl:if test="FOR_code = '050201'">050201 - Aboriginal and Torres Strait Islander Environmental Knowledge</xsl:if>
<xsl:if test="FOR_code = '050202'">050202 - Conservation and Biodiversity</xsl:if>
<xsl:if test="FOR_code = '050203'">050203 - Environmental Education and Extension</xsl:if>
<xsl:if test="FOR_code = '050204'">050204 - Environmental Impact Assessment</xsl:if>
<xsl:if test="FOR_code = '050205'">050205 - Environmental Management</xsl:if>
<xsl:if test="FOR_code = '050206'">050206 - Environmental Monitoring</xsl:if>
<xsl:if test="FOR_code = '050207'">050207 - Environmental Rehabilitation (excl. Bioremediation)</xsl:if>
<xsl:if test="FOR_code = '050208'">050208 - Maori Environmental Knowledge</xsl:if>
<xsl:if test="FOR_code = '050209'">050209 - Natural Resource Management</xsl:if>
<xsl:if test="FOR_code = '050210'">050210 - Pacific Peoples Environmental Knowledge</xsl:if>
<xsl:if test="FOR_code = '050211'">050211 - Wildlife and Habitat Management</xsl:if>
<xsl:if test="FOR_code = '050299'">050299 - Environmental Science and Management not elsewhere classified</xsl:if>
<xsl:if test="FOR_code = '050301'">050301 - Carbon Sequestration Science</xsl:if>
<xsl:if test="FOR_code = '050302'">050302 - Land Capability and Soil Degradation</xsl:if>
<xsl:if test="FOR_code = '050303'">050303 - Soil Biology</xsl:if>
<xsl:if test="FOR_code = '050304'">050304 - Soil Chemistry (excl. Carbon Sequestration Science)</xsl:if>
<xsl:if test="FOR_code = '050305'">050305 - Soil Physics</xsl:if>
<xsl:if test="FOR_code = '050399'">050399 - Soil Sciences not elsewhere classified</xsl:if>
<xsl:if test="FOR_code = '059999'">059999 - Environmental Sciences not elsewhere classified</xsl:if>
<xsl:if test="FOR_code = '060101'">060101 - Analytical Biochemistry</xsl:if>
<xsl:if test="FOR_code = '060102'">060102 - Bioinformatics</xsl:if>
<xsl:if test="FOR_code = '060103'">060103 - Cell Development, Proliferation and Death</xsl:if>
<xsl:if test="FOR_code = '060104'">060104 - Cell Metabolism</xsl:if>
<xsl:if test="FOR_code = '060105'">060105 - Cell Neurochemistry</xsl:if>
<xsl:if test="FOR_code = '060106'">060106 - Cellular Interactions (incl. Adhesion, Matrix, Cell Wall)</xsl:if>
<xsl:if test="FOR_code = '060107'">060107 - Enzymes</xsl:if>
<xsl:if test="FOR_code = '060108'">060108 - Protein Trafficking</xsl:if>
<xsl:if test="FOR_code = '060109'">060109 - Proteomics and Intermolecular Interactions (excl. Medical Proteomics)</xsl:if>
<xsl:if test="FOR_code = '060110'">060110 - Receptors and Membrane Biology</xsl:if>
<xsl:if test="FOR_code = '060111'">060111 - Signal Transduction</xsl:if>
<xsl:if test="FOR_code = '060112'">060112 - Structural Biology (incl. Macromolecular Modelling)</xsl:if>
<xsl:if test="FOR_code = '060113'">060113 - Synthetic Biology</xsl:if>
<xsl:if test="FOR_code = '060114'">060114 - Systems Biology</xsl:if>
<xsl:if test="FOR_code = '060199'">060199 - Biochemistry and Cell Biology not elsewhere classified</xsl:if>
<xsl:if test="FOR_code = '060201'">060201 - Behavioural Ecology</xsl:if>
<xsl:if test="FOR_code = '060202'">060202 - Community Ecology</xsl:if>
<xsl:if test="FOR_code = '060203'">060203 - Ecological Physiology</xsl:if>
<xsl:if test="FOR_code = '060204'">060204 - Freshwater Ecology</xsl:if>
<xsl:if test="FOR_code = '060205'">060205 - Marine and Estuarine Ecology (incl. Marine Ichthyology)</xsl:if>
<xsl:if test="FOR_code = '060206'">060206 - Palaeoecology</xsl:if>
<xsl:if test="FOR_code = '060207'">060207 - Population Ecology</xsl:if>
<xsl:if test="FOR_code = '060208'">060208 - Terrestrial Ecology</xsl:if>
<xsl:if test="FOR_code = '060299'">060299 - Ecology not elsewhere classified</xsl:if>
<xsl:if test="FOR_code = '060301'">060301 - Animal Systematics and Taxonomy</xsl:if>
<xsl:if test="FOR_code = '060302'">060302 - Biogeography and Phylogeography</xsl:if>
<xsl:if test="FOR_code = '060303'">060303 - Biological Adaptation</xsl:if>
<xsl:if test="FOR_code = '060304'">060304 - Ethology and Sociobiology</xsl:if>
<xsl:if test="FOR_code = '060305'">060305 - Evolution of Developmental Systems</xsl:if>
<xsl:if test="FOR_code = '060306'">060306 - Evolutionary Impacts of Climate Change</xsl:if>
<xsl:if test="FOR_code = '060307'">060307 - Host-Parasite Interactions</xsl:if>
<xsl:if test="FOR_code = '060308'">060308 - Life Histories</xsl:if>
<xsl:if test="FOR_code = '060309'">060309 - Phylogeny and Comparative Analysis</xsl:if>
<xsl:if test="FOR_code = '060310'">060310 - Plant Systematics and Taxonomy</xsl:if>
<xsl:if test="FOR_code = '060311'">060311 - Speciation and Extinction</xsl:if>
<xsl:if test="FOR_code = '060399'">060399 - Evolutionary Biology not elsewhere classified</xsl:if>
<xsl:if test="FOR_code = '060401'">060401 - Anthropological Genetics</xsl:if>
<xsl:if test="FOR_code = '060402'">060402 - Cell and Nuclear Division</xsl:if>
<xsl:if test="FOR_code = '060403'">060403 - Developmental Genetics (incl. Sex Determination)</xsl:if>
<xsl:if test="FOR_code = '060404'">060404 - Epigenetics (incl. Genome Methylation and Epigenomics)</xsl:if>
<xsl:if test="FOR_code = '060405'">060405 - Gene Expression (incl. Microarray and other genome-wide approaches)</xsl:if>
<xsl:if test="FOR_code = '060406'">060406 - Genetic Immunology</xsl:if>
<xsl:if test="FOR_code = '060407'">060407 - Genome Structure and Regulation</xsl:if>
<xsl:if test="FOR_code = '060408'">060408 - Genomics</xsl:if>
<xsl:if test="FOR_code = '060409'">060409 - Molecular Evolution</xsl:if>
<xsl:if test="FOR_code = '060410'">060410 - Neurogenetics</xsl:if>
<xsl:if test="FOR_code = '060411'">060411 - Population, Ecological and Evolutionary Genetics</xsl:if>
<xsl:if test="FOR_code = '060412'">060412 - Quantitative Genetics (incl. Disease and Trait Mapping Genetics)</xsl:if>
<xsl:if test="FOR_code = '060499'">060499 - Genetics not elsewhere classified</xsl:if>
<xsl:if test="FOR_code = '060501'">060501 - Bacteriology</xsl:if>
<xsl:if test="FOR_code = '060502'">060502 - Infectious Agents</xsl:if>
<xsl:if test="FOR_code = '060503'">060503 - Microbial Genetics</xsl:if>
<xsl:if test="FOR_code = '060504'">060504 - Microbial Ecology</xsl:if>
<xsl:if test="FOR_code = '060505'">060505 - Mycology</xsl:if>
<xsl:if test="FOR_code = '060506'">060506 - Virology</xsl:if>
<xsl:if test="FOR_code = '060599'">060599 - Microbiology not elsewhere classified</xsl:if>
<xsl:if test="FOR_code = '060601'">060601 - Animal Physiology - Biophysics</xsl:if>
<xsl:if test="FOR_code = '060602'">060602 - Animal Physiology - Cell</xsl:if>
<xsl:if test="FOR_code = '060603'">060603 - Animal Physiology - Systems</xsl:if>
<xsl:if test="FOR_code = '060604'">060604 - Comparative Physiology</xsl:if>
<xsl:if test="FOR_code = '060699'">060699 - Physiology not elsewhere classified</xsl:if>
<xsl:if test="FOR_code = '060701'">060701 - Phycology (incl. Marine Grasses)</xsl:if>
<xsl:if test="FOR_code = '060702'">060702 - Plant Cell and Molecular Biology</xsl:if>
<xsl:if test="FOR_code = '060703'">060703 - Plant Developmental and Reproductive Biology</xsl:if>
<xsl:if test="FOR_code = '060704'">060704 - Plant Pathology</xsl:if>
<xsl:if test="FOR_code = '060705'">060705 - Plant Physiology</xsl:if>
<xsl:if test="FOR_code = '060799'">060799 - Plant Biology not elsewhere classified</xsl:if>
<xsl:if test="FOR_code = '060801'">060801 - Animal Behaviour</xsl:if>
<xsl:if test="FOR_code = '060802'">060802 - Animal Cell and Molecular Biology</xsl:if>
<xsl:if test="FOR_code = '060803'">060803 - Animal Developmental and Reproductive Biology</xsl:if>
<xsl:if test="FOR_code = '060804'">060804 - Animal Immunology</xsl:if>
<xsl:if test="FOR_code = '060805'">060805 - Animal Neurobiology</xsl:if>
<xsl:if test="FOR_code = '060806'">060806 - Animal Physiological Ecology</xsl:if>
<xsl:if test="FOR_code = '060807'">060807 - Animal Structure and Function</xsl:if>
<xsl:if test="FOR_code = '060808'">060808 - Invertebrate Biology</xsl:if>
<xsl:if test="FOR_code = '060809'">060809 - Vertebrate Biology</xsl:if>
<xsl:if test="FOR_code = '060899'">060899 - Zoology not elsewhere classified</xsl:if>
<xsl:if test="FOR_code = '069901'">069901 - Forensic Biology</xsl:if>
<xsl:if test="FOR_code = '069902'">069902 - Global Change Biology</xsl:if>
<xsl:if test="FOR_code = '069999'">069999 - Biological Sciences not elsewhere classified</xsl:if>
<xsl:if test="FOR_code = '070101'">070101 - Agricultural Land Management</xsl:if>
<xsl:if test="FOR_code = '070102'">070102 - Agricultural Land Planning</xsl:if>
<xsl:if test="FOR_code = '070103'">070103 - Agricultural Production Systems Simulation</xsl:if>
<xsl:if test="FOR_code = '070104'">070104 - Agricultural Spatial Analysis and Modelling</xsl:if>
<xsl:if test="FOR_code = '070105'">070105 - Agricultural Systems Analysis and Modelling</xsl:if>
<xsl:if test="FOR_code = '070106'">070106 - Farm Management, Rural Management and Agribusiness</xsl:if>
<xsl:if test="FOR_code = '070107'">070107 - Farming Systems Research</xsl:if>
<xsl:if test="FOR_code = '070108'">070108 - Sustainable Agricultural Development</xsl:if>
<xsl:if test="FOR_code = '070199'">070199 - Agriculture, Land and Farm Management not elsewhere classified</xsl:if>
<xsl:if test="FOR_code = '070201'">070201 - Animal Breeding</xsl:if>
<xsl:if test="FOR_code = '070202'">070202 - Animal Growth and Development</xsl:if>
<xsl:if test="FOR_code = '070203'">070203 - Animal Management</xsl:if>
<xsl:if test="FOR_code = '070204'">070204 - Animal Nutrition</xsl:if>
<xsl:if test="FOR_code = '070205'">070205 - Animal Protection (Pests and Pathogens)</xsl:if>
<xsl:if test="FOR_code = '070206'">070206 - Animal Reproduction</xsl:if>
<xsl:if test="FOR_code = '070207'">070207 - Humane Animal Treatment</xsl:if>
<xsl:if test="FOR_code = '070299'">070299 - Animal Production not elsewhere classified</xsl:if>
<xsl:if test="FOR_code = '070301'">070301 - Agro-ecosystem Function and Prediction</xsl:if>
<xsl:if test="FOR_code = '070302'">070302 - Agronomy</xsl:if>
<xsl:if test="FOR_code = '070303'">070303 - Crop and Pasture Biochemistry and Physiology</xsl:if>
<xsl:if test="FOR_code = '070304'">070304 - Crop and Pasture Biomass and Bioproducts</xsl:if>
<xsl:if test="FOR_code = '070305'">070305 - Crop and Pasture Improvement (Selection and Breeding)</xsl:if>
<xsl:if test="FOR_code = '070306'">070306 - Crop and Pasture Nutrition</xsl:if>
<xsl:if test="FOR_code = '070307'">070307 - Crop and Pasture Post Harvest Technologies (incl. Transportation and Storage)</xsl:if>
<xsl:if test="FOR_code = '070308'">070308 - Crop and Pasture Protection (Pests, Diseases and Weeds)</xsl:if>
<xsl:if test="FOR_code = '070399'">070399 - Crop and Pasture Production not elsewhere classified</xsl:if>
<xsl:if test="FOR_code = '070401'">070401 - Aquaculture</xsl:if>
<xsl:if test="FOR_code = '070402'">070402 - Aquatic Ecosystem Studies and Stock Assessment</xsl:if>
<xsl:if test="FOR_code = '070403'">070403 - Fisheries Management</xsl:if>
<xsl:if test="FOR_code = '070404'">070404 - Fish Pests and Diseases</xsl:if>
<xsl:if test="FOR_code = '070405'">070405 - Fish Physiology and Genetics</xsl:if>
<xsl:if test="FOR_code = '070406'">070406 - Post-Harvest Fisheries Technologies (incl. Transportation)</xsl:if>
<xsl:if test="FOR_code = '070499'">070499 - Fisheries Sciences not elsewhere classified</xsl:if>
<xsl:if test="FOR_code = '070501'">070501 - Agroforestry</xsl:if>
<xsl:if test="FOR_code = '070502'">070502 - Forestry Biomass and Bioproducts</xsl:if>
<xsl:if test="FOR_code = '070503'">070503 - Forestry Fire Management</xsl:if>
<xsl:if test="FOR_code = '070504'">070504 - Forestry Management and Environment</xsl:if>
<xsl:if test="FOR_code = '070505'">070505 - Forestry Pests, Health and Diseases</xsl:if>
<xsl:if test="FOR_code = '070506'">070506 - Forestry Product Quality Assessment</xsl:if>
<xsl:if test="FOR_code = '070507'">070507 - Tree Improvement (Selection and Breeding)</xsl:if>
<xsl:if test="FOR_code = '070508'">070508 - Tree Nutrition and Physiology</xsl:if>
<xsl:if test="FOR_code = '070509'">070509 - Wood Fibre Processing</xsl:if>
<xsl:if test="FOR_code = '070510'">070510 - Wood Processing</xsl:if>
<xsl:if test="FOR_code = '070599'">070599 - Forestry Sciences not elsewhere classified</xsl:if>
<xsl:if test="FOR_code = '070601'">070601 - Horticultural Crop Growth and Development</xsl:if>
<xsl:if test="FOR_code = '070602'">070602 - Horticultural Crop Improvement (Selection and Breeding)</xsl:if>
<xsl:if test="FOR_code = '070603'">070603 - Horticultural Crop Protection (Pests, Diseases and Weeds)</xsl:if>
<xsl:if test="FOR_code = '070604'">070604 - Oenology and Viticulture</xsl:if>
<xsl:if test="FOR_code = '070605'">070605 - Post Harvest Horticultural Technologies (incl. Transportation and Storage)</xsl:if>
<xsl:if test="FOR_code = '070699'">070699 - Horticultural Production not elsewhere classified</xsl:if>
<xsl:if test="FOR_code = '070701'">070701 - Veterinary Anaesthesiology and Intensive Care</xsl:if>
<xsl:if test="FOR_code = '070702'">070702 - Veterinary Anatomy and Physiology</xsl:if>
<xsl:if test="FOR_code = '070703'">070703 - Veterinary Diagnosis and Diagnostics</xsl:if>
<xsl:if test="FOR_code = '070704'">070704 - Veterinary Epidemiology</xsl:if>
<xsl:if test="FOR_code = '070705'">070705 - Veterinary Immunology</xsl:if>
<xsl:if test="FOR_code = '070706'">070706 - Veterinary Medicine</xsl:if>
<xsl:if test="FOR_code = '070707'">070707 - Veterinary Microbiology (excl. Virology)</xsl:if>
<xsl:if test="FOR_code = '070708'">070708 - Veterinary Parasitology</xsl:if>
<xsl:if test="FOR_code = '070709'">070709 - Veterinary Pathology</xsl:if>
<xsl:if test="FOR_code = '070710'">070710 - Veterinary Pharmacology</xsl:if>
<xsl:if test="FOR_code = '070711'">070711 - Veterinary Surgery</xsl:if>
<xsl:if test="FOR_code = '070712'">070712 - Veterinary Virology</xsl:if>
<xsl:if test="FOR_code = '070799'">070799 - Veterinary Sciences not elsewhere classified</xsl:if>
<xsl:if test="FOR_code = '079901'">079901 - Agricultural Hydrology (Drainage, Flooding, Irrigation, Quality, etc.)</xsl:if>
<xsl:if test="FOR_code = '079902'">079902 - Fertilisers and Agrochemicals (Application etc.)</xsl:if>
<xsl:if test="FOR_code = '079999'">079999 - Agricultural and Veterinary Sciences not elsewhere classified</xsl:if>
<xsl:if test="FOR_code = '080101'">080101 - Adaptive Agents and Intelligent Robotics</xsl:if>
<xsl:if test="FOR_code = '080102'">080102 - Artificial Life</xsl:if>
<xsl:if test="FOR_code = '080103'">080103 - Computer Graphics</xsl:if>
<xsl:if test="FOR_code = '080104'">080104 - Computer Vision</xsl:if>
<xsl:if test="FOR_code = '080105'">080105 - Expert Systems</xsl:if>
<xsl:if test="FOR_code = '080106'">080106 - Image Processing</xsl:if>
<xsl:if test="FOR_code = '080107'">080107 - Natural Language Processing</xsl:if>
<xsl:if test="FOR_code = '080108'">080108 - Neural, Evolutionary and Fuzzy Computation</xsl:if>
<xsl:if test="FOR_code = '080109'">080109 - Pattern Recognition and Data Mining</xsl:if>
<xsl:if test="FOR_code = '080110'">080110 - Simulation and Modelling</xsl:if>
<xsl:if test="FOR_code = '080111'">080111 - Virtual Reality and Related Simulation</xsl:if>
<xsl:if test="FOR_code = '080199'">080199 - Artificial Intelligence and Image Processing not elsewhere classified</xsl:if>
<xsl:if test="FOR_code = '080201'">080201 - Analysis of Algorithms and Complexity</xsl:if>
<xsl:if test="FOR_code = '080202'">080202 - Applied Discrete Mathematics</xsl:if>
<xsl:if test="FOR_code = '080203'">080203 - Computational Logic and Formal Languages</xsl:if>
<xsl:if test="FOR_code = '080204'">080204 - Mathematical Software</xsl:if>
<xsl:if test="FOR_code = '080205'">080205 - Numerical Computation</xsl:if>
<xsl:if test="FOR_code = '080299'">080299 - Computation Theory and Mathematics not elsewhere classified</xsl:if>
<xsl:if test="FOR_code = '080301'">080301 - Bioinformatics Software</xsl:if>
<xsl:if test="FOR_code = '080302'">080302 - Computer System Architecture</xsl:if>
<xsl:if test="FOR_code = '080303'">080303 - Computer System Security</xsl:if>
<xsl:if test="FOR_code = '080304'">080304 - Concurrent Programming</xsl:if>
<xsl:if test="FOR_code = '080305'">080305 - Multimedia Programming</xsl:if>
<xsl:if test="FOR_code = '080306'">080306 - Open Software</xsl:if>
<xsl:if test="FOR_code = '080307'">080307 - Operating Systems</xsl:if>
<xsl:if test="FOR_code = '080308'">080308 - Programming Languages</xsl:if>
<xsl:if test="FOR_code = '080309'">080309 - Software Engineering</xsl:if>
<xsl:if test="FOR_code = '080399'">080399 - Computer Software not elsewhere classified</xsl:if>
<xsl:if test="FOR_code = '080401'">080401 - Coding and Information Theory</xsl:if>
<xsl:if test="FOR_code = '080402'">080402 - Data Encryption</xsl:if>
<xsl:if test="FOR_code = '080403'">080403 - Data Structures</xsl:if>
<xsl:if test="FOR_code = '080404'">080404 - Markup Languages</xsl:if>
<xsl:if test="FOR_code = '080499'">080499 - Data Format not elsewhere classified</xsl:if>
<xsl:if test="FOR_code = '080501'">080501 - Distributed and Grid Systems</xsl:if>
<xsl:if test="FOR_code = '080502'">080502 - Mobile Technologies</xsl:if>
<xsl:if test="FOR_code = '080503'">080503 - Networking and Communications</xsl:if>
<xsl:if test="FOR_code = '080504'">080504 - Ubiquitous Computing</xsl:if>
<xsl:if test="FOR_code = '080505'">080505 - Web Technologies (excl. Web Search)</xsl:if>
<xsl:if test="FOR_code = '080599'">080599 - Distributed Computing not elsewhere classified</xsl:if>
<xsl:if test="FOR_code = '080601'">080601 - Aboriginal and Torres Strait Islander Information and Knowledge Systems</xsl:if>
<xsl:if test="FOR_code = '080602'">080602 - Computer-Human Interaction</xsl:if>
<xsl:if test="FOR_code = '080603'">080603 - Conceptual Modelling</xsl:if>
<xsl:if test="FOR_code = '080604'">080604 - Database Management</xsl:if>
<xsl:if test="FOR_code = '080605'">080605 - Decision Support and Group Support Systems</xsl:if>
<xsl:if test="FOR_code = '080606'">080606 - Global Information Systems</xsl:if>
<xsl:if test="FOR_code = '080607'">080607 - Information Engineering and Theory</xsl:if>
<xsl:if test="FOR_code = '080608'">080608 - Information Systems Development Methodologies</xsl:if>
<xsl:if test="FOR_code = '080609'">080609 - Information Systems Management</xsl:if>
<xsl:if test="FOR_code = '080610'">080610 - Information Systems Organisation</xsl:if>
<xsl:if test="FOR_code = '080611'">080611 - Information Systems Theory</xsl:if>
<xsl:if test="FOR_code = '080612'">080612 - Interorganisational Information Systems and Web Services</xsl:if>
<xsl:if test="FOR_code = '080613'">080613 - Maori Information and Knowledge Systems</xsl:if>
<xsl:if test="FOR_code = '080614'">080614 - Pacific Peoples Information and Knowledge Systems</xsl:if>
<xsl:if test="FOR_code = '080699'">080699 - Information Systems not elsewhere classified</xsl:if>
<xsl:if test="FOR_code = '080701'">080701 - Aboriginal and Torres Strait Islander Knowledge Management</xsl:if>
<xsl:if test="FOR_code = '080702'">080702 - Health Informatics</xsl:if>
<xsl:if test="FOR_code = '080703'">080703 - Human Information Behaviour</xsl:if>
<xsl:if test="FOR_code = '080704'">080704 - Information Retrieval and Web Search</xsl:if>
<xsl:if test="FOR_code = '080705'">080705 - Informetrics</xsl:if>
<xsl:if test="FOR_code = '080706'">080706 - Librarianship</xsl:if>
<xsl:if test="FOR_code = '080707'">080707 - Organisation of Information and Knowledge Resources</xsl:if>
<xsl:if test="FOR_code = '080708'">080708 - Records and Information Management (excl. Business Records and Information Management)</xsl:if>
<xsl:if test="FOR_code = '080709'">080709 - Social and Community Informatics</xsl:if>
<xsl:if test="FOR_code = '080799'">080799 - Library and Information Studies not elsewhere classified</xsl:if>
<xsl:if test="FOR_code = '089999'">089999 - Information and Computing Sciences not elsewhere classified</xsl:if>
<xsl:if test="FOR_code = '090101'">090101 - Aerodynamics (excl. Hypersonic Aerodynamics)</xsl:if>
<xsl:if test="FOR_code = '090102'">090102 - Aerospace Materials</xsl:if>
<xsl:if test="FOR_code = '090103'">090103 - Aerospace Structures</xsl:if>
<xsl:if test="FOR_code = '090104'">090104 - Aircraft Performance and Flight Control Systems</xsl:if>
<xsl:if test="FOR_code = '090105'">090105 - Avionics</xsl:if>
<xsl:if test="FOR_code = '090106'">090106 - Flight Dynamics</xsl:if>
<xsl:if test="FOR_code = '090107'">090107 - Hypersonic Propulsion and Hypersonic Aerodynamics</xsl:if>
<xsl:if test="FOR_code = '090108'">090108 - Satellite, Space Vehicle and Missile Design and Testing</xsl:if>
<xsl:if test="FOR_code = '090199'">090199 - Aerospace Engineering not elsewhere classified</xsl:if>
<xsl:if test="FOR_code = '090201'">090201 - Automotive Combustion and Fuel Engineering (incl. Alternative/Renewable Fuels)</xsl:if>
<xsl:if test="FOR_code = '090202'">090202 - Automotive Engineering Materials</xsl:if>
<xsl:if test="FOR_code = '090203'">090203 - Automotive Mechatronics</xsl:if>
<xsl:if test="FOR_code = '090204'">090204 - Automotive Safety Engineering</xsl:if>
<xsl:if test="FOR_code = '090205'">090205 - Hybrid Vehicles and Powertrains</xsl:if>
<xsl:if test="FOR_code = '090299'">090299 - Automotive Engineering not elsewhere classified</xsl:if>
<xsl:if test="FOR_code = '090301'">090301 - Biomaterials</xsl:if>
<xsl:if test="FOR_code = '090302'">090302 - Biomechanical Engineering</xsl:if>
<xsl:if test="FOR_code = '090303'">090303 - Biomedical Instrumentation</xsl:if>
<xsl:if test="FOR_code = '090304'">090304 - Medical Devices</xsl:if>
<xsl:if test="FOR_code = '090305'">090305 - Rehabilitation Engineering</xsl:if>
<xsl:if test="FOR_code = '090399'">090399 - Biomedical Engineering not elsewhere classified</xsl:if>
<xsl:if test="FOR_code = '090401'">090401 - Carbon Capture Engineering (excl. Sequestration)</xsl:if>
<xsl:if test="FOR_code = '090402'">090402 - Catalytic Process Engineering</xsl:if>
<xsl:if test="FOR_code = '090403'">090403 - Chemical Engineering Design</xsl:if>
<xsl:if test="FOR_code = '090404'">090404 - Membrane and Separation Technologies</xsl:if>
<xsl:if test="FOR_code = '090405'">090405 - Non-automotive Combustion and Fuel Engineering (incl. Alternative/Renewable Fuels)</xsl:if>
<xsl:if test="FOR_code = '090406'">090406 - Powder and Particle Technology</xsl:if>
<xsl:if test="FOR_code = '090407'">090407 - Process Control and Simulation</xsl:if>
<xsl:if test="FOR_code = '090408'">090408 - Rheology</xsl:if>
<xsl:if test="FOR_code = '090409'">090409 - Wastewater Treatment Processes</xsl:if>
<xsl:if test="FOR_code = '090410'">090410 - Water Treatment Processes</xsl:if>
<xsl:if test="FOR_code = '090499'">090499 - Chemical Engineering not elsewhere classified</xsl:if>
<xsl:if test="FOR_code = '090501'">090501 - Civil Geotechnical Engineering</xsl:if>
<xsl:if test="FOR_code = '090502'">090502 - Construction Engineering</xsl:if>
<xsl:if test="FOR_code = '090503'">090503 - Construction Materials</xsl:if>
<xsl:if test="FOR_code = '090504'">090504 - Earthquake Engineering</xsl:if>
<xsl:if test="FOR_code = '090505'">090505 - Infrastructure Engineering and Asset Management</xsl:if>
<xsl:if test="FOR_code = '090506'">090506 - Structural Engineering</xsl:if>
<xsl:if test="FOR_code = '090507'">090507 - Transport Engineering</xsl:if>
<xsl:if test="FOR_code = '090508'">090508 - Water Quality Engineering</xsl:if>
<xsl:if test="FOR_code = '090509'">090509 - Water Resources Engineering</xsl:if>
<xsl:if test="FOR_code = '090599'">090599 - Civil Engineering not elsewhere classified</xsl:if>
<xsl:if test="FOR_code = '090601'">090601 - Circuits and Systems</xsl:if>
<xsl:if test="FOR_code = '090602'">090602 - Control Systems, Robotics and Automation</xsl:if>
<xsl:if test="FOR_code = '090603'">090603 - Industrial Electronics</xsl:if>
<xsl:if test="FOR_code = '090604'">090604 - Microelectronics and Integrated Circuits</xsl:if>
<xsl:if test="FOR_code = '090605'">090605 - Photodetectors, Optical Sensors and Solar Cells</xsl:if>
<xsl:if test="FOR_code = '090606'">090606 - Photonics and Electro-Optical Engineering (excl. Communications)</xsl:if>
<xsl:if test="FOR_code = '090607'">090607 - Power and Energy Systems Engineering (excl. Renewable Power)</xsl:if>
<xsl:if test="FOR_code = '090608'">090608 - Renewable Power and Energy Systems Engineering (excl. Solar Cells)</xsl:if>
<xsl:if test="FOR_code = '090609'">090609 - Signal Processing</xsl:if>
<xsl:if test="FOR_code = '090699'">090699 - Electrical and Electronic Engineering not elsewhere classified</xsl:if>
<xsl:if test="FOR_code = '090701'">090701 - Environmental Engineering Design</xsl:if>
<xsl:if test="FOR_code = '090702'">090702 - Environmental Engineering Modelling</xsl:if>
<xsl:if test="FOR_code = '090703'">090703 - Environmental Technologies</xsl:if>
<xsl:if test="FOR_code = '090799'">090799 - Environmental Engineering not elsewhere classified</xsl:if>
<xsl:if test="FOR_code = '090801'">090801 - Food Chemistry and Molecular Gastronomy (excl. Wine)</xsl:if>
<xsl:if test="FOR_code = '090802'">090802 - Food Engineering</xsl:if>
<xsl:if test="FOR_code = '090803'">090803 - Food Nutritional Balance</xsl:if>
<xsl:if test="FOR_code = '090804'">090804 - Food Packaging, Preservation and Safety</xsl:if>
<xsl:if test="FOR_code = '090805'">090805 - Food Processing</xsl:if>
<xsl:if test="FOR_code = '090806'">090806 - Wine Chemistry and Wine Sensory Science</xsl:if>
<xsl:if test="FOR_code = '090899'">090899 - Food Sciences not elsewhere classified</xsl:if>
<xsl:if test="FOR_code = '090901'">090901 - Cartography</xsl:if>
<xsl:if test="FOR_code = '090902'">090902 - Geodesy</xsl:if>
<xsl:if test="FOR_code = '090903'">090903 - Geospatial Information Systems</xsl:if>
<xsl:if test="FOR_code = '090904'">090904 - Navigation and Position Fixing</xsl:if>
<xsl:if test="FOR_code = '090905'">090905 - Photogrammetry and Remote Sensing</xsl:if>
<xsl:if test="FOR_code = '090906'">090906 - Surveying (incl. Hydrographic Surveying)</xsl:if>
<xsl:if test="FOR_code = '090999'">090999 - Geomatic Engineering not elsewhere classified</xsl:if>
<xsl:if test="FOR_code = '091001'">091001 - CAD/CAM Systems</xsl:if>
<xsl:if test="FOR_code = '091002'">091002 - Flexible Manufacturing Systems</xsl:if>
<xsl:if test="FOR_code = '091003'">091003 - Machine Tools</xsl:if>
<xsl:if test="FOR_code = '091004'">091004 - Machining</xsl:if>
<xsl:if test="FOR_code = '091005'">091005 - Manufacturing Management</xsl:if>
<xsl:if test="FOR_code = '091006'">091006 - Manufacturing Processes and Technologies (excl. Textiles)</xsl:if>
<xsl:if test="FOR_code = '091007'">091007 - Manufacturing Robotics and Mechatronics (excl. Automotive Mechatronics)</xsl:if>
<xsl:if test="FOR_code = '091008'">091008 - Manufacturing Safety and Quality</xsl:if>
<xsl:if test="FOR_code = '091009'">091009 - Microtechnology</xsl:if>
<xsl:if test="FOR_code = '091010'">091010 - Packaging, Storage and Transportation (excl. Food and Agricultural Products)</xsl:if>
<xsl:if test="FOR_code = '091011'">091011 - Precision Engineering</xsl:if>
<xsl:if test="FOR_code = '091012'">091012 - Textile Technology</xsl:if>
<xsl:if test="FOR_code = '091099'">091099 - Manufacturing Engineering not elsewhere classified</xsl:if>
<xsl:if test="FOR_code = '091101'">091101 - Marine Engineering</xsl:if>
<xsl:if test="FOR_code = '091102'">091102 - Naval Architecture</xsl:if>
<xsl:if test="FOR_code = '091103'">091103 - Ocean Engineering</xsl:if>
<xsl:if test="FOR_code = '091104'">091104 - Ship and Platform Hydrodynamics</xsl:if>
<xsl:if test="FOR_code = '091105'">091105 - Ship and Platform Structures</xsl:if>
<xsl:if test="FOR_code = '091106'">091106 - Special Vehicles</xsl:if>
<xsl:if test="FOR_code = '091199'">091199 - Maritime Engineering not elsewhere classified</xsl:if>
<xsl:if test="FOR_code = '091201'">091201 - Ceramics</xsl:if>
<xsl:if test="FOR_code = '091202'">091202 - Composite and Hybrid Materials</xsl:if>
<xsl:if test="FOR_code = '091203'">091203 - Compound Semiconductors</xsl:if>
<xsl:if test="FOR_code = '091204'">091204 - Elemental Semiconductors</xsl:if>
<xsl:if test="FOR_code = '091205'">091205 - Functional Materials</xsl:if>
<xsl:if test="FOR_code = '091206'">091206 - Glass</xsl:if>
<xsl:if test="FOR_code = '091207'">091207 - Metals and Alloy Materials</xsl:if>
<xsl:if test="FOR_code = '091208'">091208 - Organic Semiconductors</xsl:if>
<xsl:if test="FOR_code = '091209'">091209 - Polymers and Plastics</xsl:if>
<xsl:if test="FOR_code = '091210'">091210 - Timber, Pulp and Paper</xsl:if>
<xsl:if test="FOR_code = '091299'">091299 - Materials Engineering not elsewhere classified</xsl:if>
<xsl:if test="FOR_code = '091301'">091301 - Acoustics and Noise Control (excl. Architectural Acoustics)</xsl:if>
<xsl:if test="FOR_code = '091302'">091302 - Automation and Control Engineering</xsl:if>
<xsl:if test="FOR_code = '091303'">091303 - Autonomous Vehicles</xsl:if>
<xsl:if test="FOR_code = '091304'">091304 - Dynamics, Vibration and Vibration Control</xsl:if>
<xsl:if test="FOR_code = '091305'">091305 - Energy Generation, Conversion and Storage Engineering</xsl:if>
<xsl:if test="FOR_code = '091306'">091306 - Microelectromechanical Systems (MEMS)</xsl:if>
<xsl:if test="FOR_code = '091307'">091307 - Numerical Modelling and Mechanical Characterisation</xsl:if>
<xsl:if test="FOR_code = '091308'">091308 - Solid Mechanics</xsl:if>
<xsl:if test="FOR_code = '091309'">091309 - Tribology</xsl:if>
<xsl:if test="FOR_code = '091399'">091399 - Mechanical Engineering not elsewhere classified</xsl:if>
<xsl:if test="FOR_code = '091401'">091401 - Electrometallurgy</xsl:if>
<xsl:if test="FOR_code = '091402'">091402 - Geomechanics and Resources Geotechnical Engineering</xsl:if>
<xsl:if test="FOR_code = '091403'">091403 - Hydrometallurgy</xsl:if>
<xsl:if test="FOR_code = '091404'">091404 - Mineral Processing/Beneficiation</xsl:if>
<xsl:if test="FOR_code = '091405'">091405 - Mining Engineering</xsl:if>
<xsl:if test="FOR_code = '091406'">091406 - Petroleum and Reservoir Engineering</xsl:if>
<xsl:if test="FOR_code = '091407'">091407 - Pyrometallurgy</xsl:if>
<xsl:if test="FOR_code = '091499'">091499 - Resources Engineering and Extractive Metallurgy not elsewhere classified</xsl:if>
<xsl:if test="FOR_code = '091501'">091501 - Computational Fluid Dynamics</xsl:if>
<xsl:if test="FOR_code = '091502'">091502 - Computational Heat Transfer</xsl:if>
<xsl:if test="FOR_code = '091503'">091503 - Engineering Practice</xsl:if>
<xsl:if test="FOR_code = '091504'">091504 - Fluidisation and Fluid Mechanics</xsl:if>
<xsl:if test="FOR_code = '091505'">091505 - Heat and Mass Transfer Operations</xsl:if>
<xsl:if test="FOR_code = '091506'">091506 - Nuclear Engineering (incl. Fuel Enrichment and Waste Processing and Storage)</xsl:if>
<xsl:if test="FOR_code = '091507'">091507 - Risk Engineering (excl. Earthquake Engineering)</xsl:if>
<xsl:if test="FOR_code = '091508'">091508 - Turbulent Flows</xsl:if>
<xsl:if test="FOR_code = '091599'">091599 - Interdisciplinary Engineering not elsewhere classified</xsl:if>
<xsl:if test="FOR_code = '099901'">099901 - Agricultural Engineering</xsl:if>
<xsl:if test="FOR_code = '099902'">099902 - Engineering Instrumentation</xsl:if>
<xsl:if test="FOR_code = '099999'">099999 - Engineering not elsewhere classified</xsl:if>
<xsl:if test="FOR_code = '100101'">100101 - Agricultural Biotechnology Diagnostics (incl. Biosensors)</xsl:if>
<xsl:if test="FOR_code = '100102'">100102 - Agricultural Marine Biotechnology</xsl:if>
<xsl:if test="FOR_code = '100103'">100103 - Agricultural Molecular Engineering of Nucleic Acids and Proteins</xsl:if>
<xsl:if test="FOR_code = '100104'">100104 - Genetically Modified Animals</xsl:if>
<xsl:if test="FOR_code = '100105'">100105 - Genetically Modified Field Crops and Pasture</xsl:if>
<xsl:if test="FOR_code = '100106'">100106 - Genetically Modified Horticulture Plants</xsl:if>
<xsl:if test="FOR_code = '100107'">100107 - Genetically Modified Trees</xsl:if>
<xsl:if test="FOR_code = '100108'">100108 - Livestock cloning</xsl:if>
<xsl:if test="FOR_code = '100109'">100109 - Transgenesis</xsl:if>
<xsl:if test="FOR_code = '100199'">100199 - Agricultural Biotechnology not elsewhere classified</xsl:if>
<xsl:if test="FOR_code = '100201'">100201 - Biodiscovery</xsl:if>
<xsl:if test="FOR_code = '100202'">100202 - Biological Control</xsl:if>
<xsl:if test="FOR_code = '100203'">100203 - Bioremediation</xsl:if>
<xsl:if test="FOR_code = '100204'">100204 - Environmental Biotechnology Diagnostics (incl. Biosensors)</xsl:if>
<xsl:if test="FOR_code = '100205'">100205 - Environmental Marine Biotechnology</xsl:if>
<xsl:if test="FOR_code = '100206'">100206 - Environmental Molecular Engineering of Nucleic Acids and Proteins</xsl:if>
<xsl:if test="FOR_code = '100299'">100299 - Environmental Biotechnology not elsewhere classified</xsl:if>
<xsl:if test="FOR_code = '100301'">100301 - Biocatalysis and Enzyme Technology</xsl:if>
<xsl:if test="FOR_code = '100302'">100302 - Bioprocessing, Bioproduction and Bioproducts</xsl:if>
<xsl:if test="FOR_code = '100303'">100303 - Fermentation</xsl:if>
<xsl:if test="FOR_code = '100304'">100304 - Industrial Biotechnology Diagnostics (incl. Biosensors)</xsl:if>
<xsl:if test="FOR_code = '100305'">100305 - Industrial Microbiology (incl. Biofeedstocks)</xsl:if>
<xsl:if test="FOR_code = '100306'">100306 - Industrial Molecular Engineering of Nucleic Acids and Proteins</xsl:if>
<xsl:if test="FOR_code = '100399'">100399 - Industrial Biotechnology not elsewhere classified</xsl:if>
<xsl:if test="FOR_code = '100401'">100401 - Gene and Molecular Therapy</xsl:if>
<xsl:if test="FOR_code = '100402'">100402 - Medical Biotechnology Diagnostics (incl. Biosensors)</xsl:if>
<xsl:if test="FOR_code = '100403'">100403 - Medical Molecular Engineering of Nucleic Acids and Proteins</xsl:if>
<xsl:if test="FOR_code = '100404'">100404 - Regenerative Medicine (incl. Stem Cells and Tissue Engineering)</xsl:if>
<xsl:if test="FOR_code = '100499'">100499 - Medical Biotechnology not elsewhere classified</xsl:if>
<xsl:if test="FOR_code = '100501'">100501 - Antennas and Propagation</xsl:if>
<xsl:if test="FOR_code = '100502'">100502 - Broadband and Modem Technology</xsl:if>
<xsl:if test="FOR_code = '100503'">100503 - Computer Communications Networks</xsl:if>
<xsl:if test="FOR_code = '100504'">100504 - Data Communications</xsl:if>
<xsl:if test="FOR_code = '100505'">100505 - Microwave and Millimetrewave Theory and Technology</xsl:if>
<xsl:if test="FOR_code = '100506'">100506 - Optical Fibre Communications</xsl:if>
<xsl:if test="FOR_code = '100507'">100507 - Optical Networks and Systems</xsl:if>
<xsl:if test="FOR_code = '100508'">100508 - Satellite Communications</xsl:if>
<xsl:if test="FOR_code = '100509'">100509 - Video Communications</xsl:if>
<xsl:if test="FOR_code = '100510'">100510 - Wireless Communications</xsl:if>
<xsl:if test="FOR_code = '100599'">100599 - Communications Technologies not elsewhere classified</xsl:if>
<xsl:if test="FOR_code = '100601'">100601 - Arithmetic and Logic Structures</xsl:if>
<xsl:if test="FOR_code = '100602'">100602 - Input, Output and Data Devices</xsl:if>
<xsl:if test="FOR_code = '100603'">100603 - Logic Design</xsl:if>
<xsl:if test="FOR_code = '100604'">100604 - Memory Structures</xsl:if>
<xsl:if test="FOR_code = '100605'">100605 - Performance Evaluation; Testing and Simulation of Reliability</xsl:if>
<xsl:if test="FOR_code = '100606'">100606 - Processor Architectures</xsl:if>
<xsl:if test="FOR_code = '100699'">100699 - Computer Hardware not elsewhere classified</xsl:if>
<xsl:if test="FOR_code = '100701'">100701 - Environmental Nanotechnology</xsl:if>
<xsl:if test="FOR_code = '100702'">100702 - Molecular and Organic Electronics</xsl:if>
<xsl:if test="FOR_code = '100703'">100703 - Nanobiotechnology</xsl:if>
<xsl:if test="FOR_code = '100704'">100704 - Nanoelectromechanical Systems</xsl:if>
<xsl:if test="FOR_code = '100705'">100705 - Nanoelectronics</xsl:if>
<xsl:if test="FOR_code = '100706'">100706 - Nanofabrication, Growth and Self Assembly</xsl:if>
<xsl:if test="FOR_code = '100707'">100707 - Nanomanufacturing</xsl:if>
<xsl:if test="FOR_code = '100708'">100708 - Nanomaterials</xsl:if>
<xsl:if test="FOR_code = '100709'">100709 - Nanomedicine</xsl:if>
<xsl:if test="FOR_code = '100710'">100710 - Nanometrology</xsl:if>
<xsl:if test="FOR_code = '100711'">100711 - Nanophotonics</xsl:if>
<xsl:if test="FOR_code = '100712'">100712 - Nanoscale Characterisation</xsl:if>
<xsl:if test="FOR_code = '100713'">100713 - Nanotoxicology, Health and Safety</xsl:if>
<xsl:if test="FOR_code = '100799'">100799 - Nanotechnology not elsewhere classified</xsl:if>
<xsl:if test="FOR_code = '109999'">109999 - Technology not elsewhere classified</xsl:if>
<xsl:if test="FOR_code = '110101'">110101 - Medical Biochemistry: Amino Acids and Metabolites</xsl:if>
<xsl:if test="FOR_code = '110102'">110102 - Medical Biochemistry: Carbohydrates</xsl:if>
<xsl:if test="FOR_code = '110103'">110103 - Medical Biochemistry: Inorganic Elements and Compounds</xsl:if>
<xsl:if test="FOR_code = '110104'">110104 - Medical Biochemistry: Lipids</xsl:if>
<xsl:if test="FOR_code = '110105'">110105 - Medical Biochemistry: Nucleic Acids</xsl:if>
<xsl:if test="FOR_code = '110106'">110106 - Medical Biochemistry: Proteins and Peptides (incl. Medical Proteomics)</xsl:if>
<xsl:if test="FOR_code = '110107'">110107 - Metabolic Medicine</xsl:if>
<xsl:if test="FOR_code = '110199'">110199 - Medical Biochemistry and Metabolomics not elsewhere classified</xsl:if>
<xsl:if test="FOR_code = '110201'">110201 - Cardiology (incl. Cardiovascular Diseases)</xsl:if>
<xsl:if test="FOR_code = '110202'">110202 - Haematology</xsl:if>
<xsl:if test="FOR_code = '110203'">110203 - Respiratory Diseases</xsl:if>
<xsl:if test="FOR_code = '110299'">110299 - Cardiovascular Medicine and Haematology not elsewhere classified</xsl:if>
<xsl:if test="FOR_code = '110301'">110301 - Anaesthesiology</xsl:if>
<xsl:if test="FOR_code = '110302'">110302 - Clinical Chemistry (diagnostics)</xsl:if>
<xsl:if test="FOR_code = '110303'">110303 - Clinical Microbiology</xsl:if>
<xsl:if test="FOR_code = '110304'">110304 - Dermatology</xsl:if>
<xsl:if test="FOR_code = '110305'">110305 - Emergency Medicine</xsl:if>
<xsl:if test="FOR_code = '110306'">110306 - Endocrinology</xsl:if>
<xsl:if test="FOR_code = '110307'">110307 - Gastroenterology and Hepatology</xsl:if>
<xsl:if test="FOR_code = '110308'">110308 - Geriatrics and Gerontology</xsl:if>
<xsl:if test="FOR_code = '110309'">110309 - Infectious Diseases</xsl:if>
<xsl:if test="FOR_code = '110310'">110310 - Intensive Care</xsl:if>
<xsl:if test="FOR_code = '110311'">110311 - Medical Genetics (excl. Cancer Genetics)</xsl:if>
<xsl:if test="FOR_code = '110312'">110312 - Nephrology and Urology</xsl:if>
<xsl:if test="FOR_code = '110313'">110313 - Nuclear Medicine</xsl:if>
<xsl:if test="FOR_code = '110314'">110314 - Orthopaedics</xsl:if>
<xsl:if test="FOR_code = '110315'">110315 - Otorhinolaryngology</xsl:if>
<xsl:if test="FOR_code = '110316'">110316 - Pathology</xsl:if>
<xsl:if test="FOR_code = '110317'">110317 - Physiotherapy</xsl:if>
<xsl:if test="FOR_code = '110318'">110318 - Podiatry</xsl:if>
<xsl:if test="FOR_code = '110319'">110319 - Psychiatry (incl. Psychotherapy)</xsl:if>
<xsl:if test="FOR_code = '110320'">110320 - Radiology and Organ Imaging</xsl:if>
<xsl:if test="FOR_code = '110321'">110321 - Rehabilitation and Therapy (excl. Physiotherapy)</xsl:if>
<xsl:if test="FOR_code = '110322'">110322 - Rheumatology and Arthritis</xsl:if>
<xsl:if test="FOR_code = '110323'">110323 - Surgery</xsl:if>
<xsl:if test="FOR_code = '110324'">110324 - Venereology</xsl:if>
<xsl:if test="FOR_code = '110399'">110399 - Clinical Sciences not elsewhere classified</xsl:if>
<xsl:if test="FOR_code = '110401'">110401 - Chiropractic</xsl:if>
<xsl:if test="FOR_code = '110402'">110402 - Naturopathy</xsl:if>
<xsl:if test="FOR_code = '110403'">110403 - Traditional Aboriginal and Torres Strait Islander Medicine and Treatments</xsl:if>
<xsl:if test="FOR_code = '110404'">110404 - Traditional Chinese Medicine and Treatments</xsl:if>
<xsl:if test="FOR_code = '110405'">110405 - Traditional Maori Medicine and Treatments</xsl:if>
<xsl:if test="FOR_code = '110499'">110499 - Complementary and Alternative Medicine not elsewhere classified</xsl:if>
<xsl:if test="FOR_code = '110501'">110501 - Dental Materials and Equipment</xsl:if>
<xsl:if test="FOR_code = '110502'">110502 - Dental Therapeutics, Pharmacology and Toxicology</xsl:if>
<xsl:if test="FOR_code = '110503'">110503 - Endodontics</xsl:if>
<xsl:if test="FOR_code = '110504'">110504 - Oral and Maxillofacial Surgery</xsl:if>
<xsl:if test="FOR_code = '110505'">110505 - Oral Medicine and Pathology</xsl:if>
<xsl:if test="FOR_code = '110506'">110506 - Orthodontics and Dentofacial Orthopaedics</xsl:if>
<xsl:if test="FOR_code = '110507'">110507 - Paedodontics</xsl:if>
<xsl:if test="FOR_code = '110508'">110508 - Periodontics</xsl:if>
<xsl:if test="FOR_code = '110509'">110509 - Special Needs Dentistry</xsl:if>
<xsl:if test="FOR_code = '110599'">110599 - Dentistry not elsewhere classified</xsl:if>
<xsl:if test="FOR_code = '110601'">110601 - Biomechanics</xsl:if>
<xsl:if test="FOR_code = '110602'">110602 - Exercise Physiology</xsl:if>
<xsl:if test="FOR_code = '110603'">110603 - Motor Control</xsl:if>
<xsl:if test="FOR_code = '110604'">110604 - Sports Medicine</xsl:if>
<xsl:if test="FOR_code = '110699'">110699 - Human Movement and Sports Science not elsewhere classified</xsl:if>
<xsl:if test="FOR_code = '110701'">110701 - Allergy</xsl:if>
<xsl:if test="FOR_code = '110702'">110702 - Applied Immunology (incl. Antibody Engineering, Xenotransplantation and T-cell Therapies)</xsl:if>
<xsl:if test="FOR_code = '110703'">110703 - Autoimmunity</xsl:if>
<xsl:if test="FOR_code = '110704'">110704 - Cellular Immunology</xsl:if>
<xsl:if test="FOR_code = '110705'">110705 - Humoural Immunology and Immunochemistry</xsl:if>
<xsl:if test="FOR_code = '110706'">110706 - Immunogenetics (incl. Genetic Immunology)</xsl:if>
<xsl:if test="FOR_code = '110707'">110707 - Innate Immunity</xsl:if>
<xsl:if test="FOR_code = '110708'">110708 - Transplantation Immunology</xsl:if>
<xsl:if test="FOR_code = '110709'">110709 - Tumour Immunology</xsl:if>
<xsl:if test="FOR_code = '110799'">110799 - Immunology not elsewhere classified</xsl:if>
<xsl:if test="FOR_code = '110801'">110801 - Medical Bacteriology</xsl:if>
<xsl:if test="FOR_code = '110802'">110802 - Medical Infection Agents (incl. Prions)</xsl:if>
<xsl:if test="FOR_code = '110803'">110803 - Medical Parasitology</xsl:if>
<xsl:if test="FOR_code = '110804'">110804 - Medical Virology</xsl:if>
<xsl:if test="FOR_code = '110899'">110899 - Medical Microbiology not elsewhere classified</xsl:if>
<xsl:if test="FOR_code = '110901'">110901 - Autonomic Nervous System</xsl:if>
<xsl:if test="FOR_code = '110902'">110902 - Cellular Nervous System</xsl:if>
<xsl:if test="FOR_code = '110903'">110903 - Central Nervous System</xsl:if>
<xsl:if test="FOR_code = '110904'">110904 - Neurology and Neuromuscular Diseases</xsl:if>
<xsl:if test="FOR_code = '110905'">110905 - Peripheral Nervous System</xsl:if>
<xsl:if test="FOR_code = '110906'">110906 - Sensory Systems</xsl:if>
<xsl:if test="FOR_code = '110999'">110999 - Neurosciences not elsewhere classified</xsl:if>
<xsl:if test="FOR_code = '111001'">111001 - Aged Care Nursing</xsl:if>
<xsl:if test="FOR_code = '111002'">111002 - Clinical Nursing: Primary (Preventative)</xsl:if>
<xsl:if test="FOR_code = '111003'">111003 - Clinical Nursing: Secondary (Acute Care)</xsl:if>
<xsl:if test="FOR_code = '111004'">111004 - Clinical Nursing: Tertiary (Rehabilitative)</xsl:if>
<xsl:if test="FOR_code = '111005'">111005 - Mental Health Nursing</xsl:if>
<xsl:if test="FOR_code = '111006'">111006 - Midwifery</xsl:if>
<xsl:if test="FOR_code = '111099'">111099 - Nursing not elsewhere classified</xsl:if>
<xsl:if test="FOR_code = '111101'">111101 - Clinical and Sports Nutrition</xsl:if>
<xsl:if test="FOR_code = '111102'">111102 - Dietetics and Nutrigenomics</xsl:if>
<xsl:if test="FOR_code = '111103'">111103 - Nutritional Physiology</xsl:if>
<xsl:if test="FOR_code = '111104'">111104 - Public Nutrition Intervention</xsl:if>
<xsl:if test="FOR_code = '111199'">111199 - Nutrition and Dietetics not elsewhere classified</xsl:if>
<xsl:if test="FOR_code = '111201'">111201 - Cancer Cell Biology</xsl:if>
<xsl:if test="FOR_code = '111202'">111202 - Cancer Diagnosis</xsl:if>
<xsl:if test="FOR_code = '111203'">111203 - Cancer Genetics</xsl:if>
<xsl:if test="FOR_code = '111204'">111204 - Cancer Therapy (excl. Chemotherapy and Radiation Therapy)</xsl:if>
<xsl:if test="FOR_code = '111205'">111205 - Chemotherapy</xsl:if>
<xsl:if test="FOR_code = '111206'">111206 - Haematological Tumours</xsl:if>
<xsl:if test="FOR_code = '111207'">111207 - Molecular Targets</xsl:if>
<xsl:if test="FOR_code = '111208'">111208 - Radiation Therapy</xsl:if>
<xsl:if test="FOR_code = '111209'">111209 - Solid Tumours</xsl:if>
<xsl:if test="FOR_code = '111299'">111299 - Oncology and Carcinogenesis not elsewhere classified</xsl:if>
<xsl:if test="FOR_code = '111301'">111301 - Ophthalmology</xsl:if>
<xsl:if test="FOR_code = '111302'">111302 - Optical Technology</xsl:if>
<xsl:if test="FOR_code = '111303'">111303 - Vision Science</xsl:if>
<xsl:if test="FOR_code = '111399'">111399 - Optometry and Ophthalmology not elsewhere classified</xsl:if>
<xsl:if test="FOR_code = '111401'">111401 - Foetal Development and Medicine</xsl:if>
<xsl:if test="FOR_code = '111402'">111402 - Obstetrics and Gynaecology</xsl:if>
<xsl:if test="FOR_code = '111403'">111403 - Paediatrics</xsl:if>
<xsl:if test="FOR_code = '111404'">111404 - Reproduction</xsl:if>
<xsl:if test="FOR_code = '111499'">111499 - Paediatrics and Reproductive Medicine not elsewhere classified</xsl:if>
<xsl:if test="FOR_code = '111501'">111501 - Basic Pharmacology</xsl:if>
<xsl:if test="FOR_code = '111502'">111502 - Clinical Pharmacology and Therapeutics</xsl:if>
<xsl:if test="FOR_code = '111503'">111503 - Clinical Pharmacy and Pharmacy Practice</xsl:if>
<xsl:if test="FOR_code = '111504'">111504 - Pharmaceutical Sciences</xsl:if>
<xsl:if test="FOR_code = '111505'">111505 - Pharmacogenomics</xsl:if>
<xsl:if test="FOR_code = '111506'">111506 - Toxicology (incl. Clinical Toxicology)</xsl:if>
<xsl:if test="FOR_code = '111599'">111599 - Pharmacology and Pharmaceutical Sciences not elsewhere classified</xsl:if>
<xsl:if test="FOR_code = '111601'">111601 - Cell Physiology</xsl:if>
<xsl:if test="FOR_code = '111602'">111602 - Human Biophysics</xsl:if>
<xsl:if test="FOR_code = '111603'">111603 - Systems Physiology</xsl:if>
<xsl:if test="FOR_code = '111699'">111699 - Medical Physiology not elsewhere classified</xsl:if>
<xsl:if test="FOR_code = '111701'">111701 - Aboriginal and Torres Strait Islander Health</xsl:if>
<xsl:if test="FOR_code = '111702'">111702 - Aged Health Care</xsl:if>
<xsl:if test="FOR_code = '111703'">111703 - Care for Disabled</xsl:if>
<xsl:if test="FOR_code = '111704'">111704 - Community Child Health</xsl:if>
<xsl:if test="FOR_code = '111705'">111705 - Environmental and Occupational Health and Safety</xsl:if>
<xsl:if test="FOR_code = '111706'">111706 - Epidemiology</xsl:if>
<xsl:if test="FOR_code = '111707'">111707 - Family Care</xsl:if>
<xsl:if test="FOR_code = '111708'">111708 - Health and Community Services</xsl:if>
<xsl:if test="FOR_code = '111709'">111709 - Health Care Administration</xsl:if>
<xsl:if test="FOR_code = '111710'">111710 - Health Counselling</xsl:if>
<xsl:if test="FOR_code = '111711'">111711 - Health Information Systems (incl. Surveillance)</xsl:if>
<xsl:if test="FOR_code = '111712'">111712 - Health Promotion</xsl:if>
<xsl:if test="FOR_code = '111713'">111713 - Maori Health</xsl:if>
<xsl:if test="FOR_code = '111714'">111714 - Mental Health</xsl:if>
<xsl:if test="FOR_code = '111715'">111715 - Pacific Peoples Health</xsl:if>
<xsl:if test="FOR_code = '111716'">111716 - Preventive Medicine</xsl:if>
<xsl:if test="FOR_code = '111717'">111717 - Primary Health Care</xsl:if>
<xsl:if test="FOR_code = '111718'">111718 - Residential Client Care</xsl:if>
<xsl:if test="FOR_code = '111799'">111799 - Public Health and Health Services not elsewhere classified</xsl:if>
<xsl:if test="FOR_code = '119999'">119999 - Medical and Health Sciences not elsewhere classified</xsl:if>
<xsl:if test="FOR_code = '120101'">120101 - Architectural Design</xsl:if>
<xsl:if test="FOR_code = '120102'">120102 - Architectural Heritage and Conservation</xsl:if>
<xsl:if test="FOR_code = '120103'">120103 - Architectural History and Theory</xsl:if>
<xsl:if test="FOR_code = '120104'">120104 - Architectural Science and Technology (incl. Acoustics, Lighting, Structure and Ecologically Sustainable Design)</xsl:if>
<xsl:if test="FOR_code = '120105'">120105 - Architecture Management</xsl:if>
<xsl:if test="FOR_code = '120106'">120106 - Interior Design</xsl:if>
<xsl:if test="FOR_code = '120107'">120107 - Landscape Architecture</xsl:if>
<xsl:if test="FOR_code = '120199'">120199 - Architecture not elsewhere classified</xsl:if>
<xsl:if test="FOR_code = '120201'">120201 - Building Construction Management and Project Planning</xsl:if>
<xsl:if test="FOR_code = '120202'">120202 - Building Science and Techniques</xsl:if>
<xsl:if test="FOR_code = '120203'">120203 - Quantity Surveying</xsl:if>
<xsl:if test="FOR_code = '120299'">120299 - Building not elsewhere classified</xsl:if>
<xsl:if test="FOR_code = '120301'">120301 - Design History and Theory</xsl:if>
<xsl:if test="FOR_code = '120302'">120302 - Design Innovation</xsl:if>
<xsl:if test="FOR_code = '120303'">120303 - Design Management and Studio and Professional Practice</xsl:if>
<xsl:if test="FOR_code = '120304'">120304 - Digital and Interaction Design</xsl:if>
<xsl:if test="FOR_code = '120305'">120305 - Industrial Design</xsl:if>
<xsl:if test="FOR_code = '120306'">120306 - Textile and Fashion Design</xsl:if>
<xsl:if test="FOR_code = '120307'">120307 - Visual Communication Design (incl. Graphic Design)</xsl:if>
<xsl:if test="FOR_code = '120399'">120399 - Design Practice and Management not elsewhere classified</xsl:if>
<xsl:if test="FOR_code = '120401'">120401 - Engineering Design Empirical Studies</xsl:if>
<xsl:if test="FOR_code = '120402'">120402 - Engineering Design Knowledge</xsl:if>
<xsl:if test="FOR_code = '120403'">120403 - Engineering Design Methods</xsl:if>
<xsl:if test="FOR_code = '120404'">120404 - Engineering Systems Design</xsl:if>
<xsl:if test="FOR_code = '120405'">120405 - Models of Engineering Design</xsl:if>
<xsl:if test="FOR_code = '120499'">120499 - Engineering Design not elsewhere classified</xsl:if>
<xsl:if test="FOR_code = '120501'">120501 - Community Planning</xsl:if>
<xsl:if test="FOR_code = '120502'">120502 - History and Theory of the Built Environment (excl. Architecture)</xsl:if>
<xsl:if test="FOR_code = '120503'">120503 - Housing Markets, Development, Management</xsl:if>
<xsl:if test="FOR_code = '120504'">120504 - Land Use and Environmental Planning</xsl:if>
<xsl:if test="FOR_code = '120505'">120505 - Regional Analysis and Development</xsl:if>
<xsl:if test="FOR_code = '120506'">120506 - Transport Planning</xsl:if>
<xsl:if test="FOR_code = '120507'">120507 - Urban Analysis and Development</xsl:if>
<xsl:if test="FOR_code = '120508'">120508 - Urban Design</xsl:if>
<xsl:if test="FOR_code = '120599'">120599 - Urban and Regional Planning not elsewhere classified</xsl:if>
<xsl:if test="FOR_code = '129999'">129999 - Built Environment and Design not elsewhere classified</xsl:if>
<xsl:if test="FOR_code = '130101'">130101 - Continuing and Community Education</xsl:if>
<xsl:if test="FOR_code = '130102'">130102 - Early Childhood Education (excl. Maori)</xsl:if>
<xsl:if test="FOR_code = '130103'">130103 - Higher Education</xsl:if>
<xsl:if test="FOR_code = '130104'">130104 - Kura Kaupapa Maori (Maori Primary Education)</xsl:if>
<xsl:if test="FOR_code = '130105'">130105 - Primary Education (excl. Maori)</xsl:if>
<xsl:if test="FOR_code = '130106'">130106 - Secondary Education</xsl:if>
<xsl:if test="FOR_code = '130107'">130107 - Te Whariki (Maori Early Childhood Education)</xsl:if>
<xsl:if test="FOR_code = '130108'">130108 - Technical, Further and Workplace Education</xsl:if>
<xsl:if test="FOR_code = '130199'">130199 - Education Systems not elsewhere classified</xsl:if>
<xsl:if test="FOR_code = '130201'">130201 - Creative Arts, Media and Communication Curriculum and Pedagogy</xsl:if>
<xsl:if test="FOR_code = '130202'">130202 - Curriculum and Pedagogy Theory and Development</xsl:if>
<xsl:if test="FOR_code = '130203'">130203 - Economics, Business and Management Curriculum and Pedagogy</xsl:if>
<xsl:if test="FOR_code = '130204'">130204 - English and Literacy Curriculum and Pedagogy (excl. LOTE, ESL and TESOL)</xsl:if>
<xsl:if test="FOR_code = '130205'">130205 - Humanities and Social Sciences Curriculum and Pedagogy (excl. Economics, Business and Management)</xsl:if>
<xsl:if test="FOR_code = '130206'">130206 - Kohanga Reo (Maori Language Curriculum and Pedagogy)</xsl:if>
<xsl:if test="FOR_code = '130207'">130207 - LOTE, ESL and TESOL Curriculum and Pedagogy (excl. Maori)</xsl:if>
<xsl:if test="FOR_code = '130208'">130208 - Mathematics and Numeracy Curriculum and Pedagogy</xsl:if>
<xsl:if test="FOR_code = '130209'">130209 - Medicine, Nursing and Health Curriculum and Pedagogy</xsl:if>
<xsl:if test="FOR_code = '130210'">130210 - Physical Education and Development Curriculum and Pedagogy</xsl:if>
<xsl:if test="FOR_code = '130211'">130211 - Religion Curriculum and Pedagogy</xsl:if>
<xsl:if test="FOR_code = '130212'">130212 - Science, Technology and Engineering Curriculum and Pedagogy</xsl:if>
<xsl:if test="FOR_code = '130213'">130213 - Vocational Education and Training Curriculum and Pedagogy</xsl:if>
<xsl:if test="FOR_code = '130299'">130299 - Curriculum and Pedagogy not elsewhere classified</xsl:if>
<xsl:if test="FOR_code = '130301'">130301 - Aboriginal and Torres Strait Islander Education</xsl:if>
<xsl:if test="FOR_code = '130302'">130302 - Comparative and Cross-Cultural Education</xsl:if>
<xsl:if test="FOR_code = '130303'">130303 - Education Assessment and Evaluation</xsl:if>
<xsl:if test="FOR_code = '130304'">130304 - Educational Administration, Management and Leadership</xsl:if>
<xsl:if test="FOR_code = '130305'">130305 - Educational Counselling</xsl:if>
<xsl:if test="FOR_code = '130306'">130306 - Educational Technology and Computing</xsl:if>
<xsl:if test="FOR_code = '130307'">130307 - Ethnic Education (excl. Aboriginal and Torres Strait Islander, Maori and Pacific Peoples)</xsl:if>
<xsl:if test="FOR_code = '130308'">130308 - Gender, Sexuality and Education</xsl:if>
<xsl:if test="FOR_code = '130309'">130309 - Learning Sciences</xsl:if>
<xsl:if test="FOR_code = '130310'">130310 - Maori Education (excl. Early Childhood and Primary Education)</xsl:if>
<xsl:if test="FOR_code = '130311'">130311 - Pacific Peoples Education</xsl:if>
<xsl:if test="FOR_code = '130312'">130312 - Special Education and Disability</xsl:if>
<xsl:if test="FOR_code = '130313'">130313 - Teacher Education and Professional Development of Educators</xsl:if>
<xsl:if test="FOR_code = '130399'">130399 - Specialist Studies in Education not elsewhere classified</xsl:if>
<xsl:if test="FOR_code = '139999'">139999 - Education not elsewhere classified</xsl:if>
<xsl:if test="FOR_code = '140101'">140101 - History of Economic Thought</xsl:if>
<xsl:if test="FOR_code = '140102'">140102 - Macroeconomic Theory</xsl:if>
<xsl:if test="FOR_code = '140103'">140103 - Mathematical Economics</xsl:if>
<xsl:if test="FOR_code = '140104'">140104 - Microeconomic Theory</xsl:if>
<xsl:if test="FOR_code = '140199'">140199 - Economic Theory not elsewhere classified</xsl:if>
<xsl:if test="FOR_code = '140201'">140201 - Agricultural Economics</xsl:if>
<xsl:if test="FOR_code = '140202'">140202 - Economic Development and Growth</xsl:if>
<xsl:if test="FOR_code = '140203'">140203 - Economic History</xsl:if>
<xsl:if test="FOR_code = '140204'">140204 - Economics of Education</xsl:if>
<xsl:if test="FOR_code = '140205'">140205 - Environment and Resource Economics</xsl:if>
<xsl:if test="FOR_code = '140206'">140206 - Experimental Economics</xsl:if>
<xsl:if test="FOR_code = '140207'">140207 - Financial Economics</xsl:if>
<xsl:if test="FOR_code = '140208'">140208 - Health Economics</xsl:if>
<xsl:if test="FOR_code = '140209'">140209 - Industry Economics and Industrial Organisation</xsl:if>
<xsl:if test="FOR_code = '140210'">140210 - International Economics and International Finance</xsl:if>
<xsl:if test="FOR_code = '140211'">140211 - Labour Economics</xsl:if>
<xsl:if test="FOR_code = '140212'">140212 - Macroeconomics (incl. Monetary and Fiscal Theory)</xsl:if>
<xsl:if test="FOR_code = '140213'">140213 - Public Economics- Public Choice</xsl:if>
<xsl:if test="FOR_code = '140214'">140214 - Public Economics- Publically Provided Goods</xsl:if>
<xsl:if test="FOR_code = '140215'">140215 - Public Economics- Taxation and Revenue</xsl:if>
<xsl:if test="FOR_code = '140216'">140216 - Tourism Economics</xsl:if>
<xsl:if test="FOR_code = '140217'">140217 - Transport Economics</xsl:if>
<xsl:if test="FOR_code = '140218'">140218 - Urban and Regional Economics</xsl:if>
<xsl:if test="FOR_code = '140219'">140219 - Welfare Economics</xsl:if>
<xsl:if test="FOR_code = '140299'">140299 - Applied Economics not elsewhere classified</xsl:if>
<xsl:if test="FOR_code = '140301'">140301 - Cross-Sectional Analysis</xsl:if>
<xsl:if test="FOR_code = '140302'">140302 - Econometric and Statistical Methods</xsl:if>
<xsl:if test="FOR_code = '140303'">140303 - Economic Models and Forecasting</xsl:if>
<xsl:if test="FOR_code = '140304'">140304 - Panel Data Analysis</xsl:if>
<xsl:if test="FOR_code = '140305'">140305 - Time-Series Analysis</xsl:if>
<xsl:if test="FOR_code = '140399'">140399 - Econometrics not elsewhere classified</xsl:if>
<xsl:if test="FOR_code = '149901'">149901 - Comparative Economic Systems</xsl:if>
<xsl:if test="FOR_code = '149902'">149902 - Ecological Economics</xsl:if>
<xsl:if test="FOR_code = '149903'">149903 - Heterodox Economics</xsl:if>
<xsl:if test="FOR_code = '149999'">149999 - Economics not elsewhere classified</xsl:if>
<xsl:if test="FOR_code = '150101'">150101 - Accounting Theory and Standards</xsl:if>
<xsl:if test="FOR_code = '150102'">150102 - Auditing and Accountability</xsl:if>
<xsl:if test="FOR_code = '150103'">150103 - Financial Accounting</xsl:if>
<xsl:if test="FOR_code = '150104'">150104 - International Accounting</xsl:if>
<xsl:if test="FOR_code = '150105'">150105 - Management Accounting</xsl:if>
<xsl:if test="FOR_code = '150106'">150106 - Sustainability Accounting and Reporting</xsl:if>
<xsl:if test="FOR_code = '150107'">150107 - Taxation Accounting</xsl:if>
<xsl:if test="FOR_code = '150199'">150199 - Accounting, Auditing and Accountability not elsewhere classified</xsl:if>
<xsl:if test="FOR_code = '150201'">150201 - Finance</xsl:if>
<xsl:if test="FOR_code = '150202'">150202 - Financial Econometrics</xsl:if>
<xsl:if test="FOR_code = '150203'">150203 - Financial Institutions (incl. Banking)</xsl:if>
<xsl:if test="FOR_code = '150204'">150204 - Insurance Studies</xsl:if>
<xsl:if test="FOR_code = '150205'">150205 - Investment and Risk Management</xsl:if>
<xsl:if test="FOR_code = '150299'">150299 - Banking, Finance and Investment not elsewhere classified</xsl:if>
<xsl:if test="FOR_code = '150301'">150301 - Business Information Management (incl. Records, Knowledge and Information Management, and Intelligence)</xsl:if>
<xsl:if test="FOR_code = '150302'">150302 - Business Information Systems</xsl:if>
<xsl:if test="FOR_code = '150303'">150303 - Corporate Governance and Stakeholder Engagement</xsl:if>
<xsl:if test="FOR_code = '150304'">150304 - Entrepreneurship</xsl:if>
<xsl:if test="FOR_code = '150305'">150305 - Human Resources Management</xsl:if>
<xsl:if test="FOR_code = '150306'">150306 - Industrial Relations</xsl:if>
<xsl:if test="FOR_code = '150307'">150307 - Innovation and Technology Management</xsl:if>
<xsl:if test="FOR_code = '150308'">150308 - International Business</xsl:if>
<xsl:if test="FOR_code = '150309'">150309 - Logistics and Supply Chain Management</xsl:if>
<xsl:if test="FOR_code = '150310'">150310 - Organisation and Management Theory</xsl:if>
<xsl:if test="FOR_code = '150311'">150311 - Organisational Behaviour</xsl:if>
<xsl:if test="FOR_code = '150312'">150312 - Organisational Planning and Management</xsl:if>
<xsl:if test="FOR_code = '150313'">150313 - Quality Management</xsl:if>
<xsl:if test="FOR_code = '150314'">150314 - Small Business Management</xsl:if>
<xsl:if test="FOR_code = '150399'">150399 - Business and Management not elsewhere classified</xsl:if>
<xsl:if test="FOR_code = '150401'">150401 - Food and Hospitality Services</xsl:if>
<xsl:if test="FOR_code = '150402'">150402 - Hospitality Management</xsl:if>
<xsl:if test="FOR_code = '150403'">150403 - Real Estate and Valuation Services</xsl:if>
<xsl:if test="FOR_code = '150404'">150404 - Sport and Leisure Management</xsl:if>
<xsl:if test="FOR_code = '150499'">150499 - Commercial Services not elsewhere classified</xsl:if>
<xsl:if test="FOR_code = '150501'">150501 - Consumer-Oriented Product or Service Development</xsl:if>
<xsl:if test="FOR_code = '150502'">150502 - Marketing Communications</xsl:if>
<xsl:if test="FOR_code = '150503'">150503 - Marketing Management (incl. Strategy and Customer Relations)</xsl:if>
<xsl:if test="FOR_code = '150504'">150504 - Marketing Measurement</xsl:if>
<xsl:if test="FOR_code = '150505'">150505 - Marketing Research Methodology</xsl:if>
<xsl:if test="FOR_code = '150506'">150506 - Marketing Theory</xsl:if>
<xsl:if test="FOR_code = '150507'">150507 - Pricing (incl. Consumer Value Estimation)</xsl:if>
<xsl:if test="FOR_code = '150599'">150599 - Marketing not elsewhere classified</xsl:if>
<xsl:if test="FOR_code = '150601'">150601 - Impacts of Tourism</xsl:if>
<xsl:if test="FOR_code = '150602'">150602 - Tourism Forecasting</xsl:if>
<xsl:if test="FOR_code = '150603'">150603 - Tourism Management</xsl:if>
<xsl:if test="FOR_code = '150604'">150604 - Tourism Marketing</xsl:if>
<xsl:if test="FOR_code = '150605'">150605 - Tourism Resource Appraisal</xsl:if>
<xsl:if test="FOR_code = '150606'">150606 - Tourist Behaviour and Visitor Experience</xsl:if>
<xsl:if test="FOR_code = '150699'">150699 - Tourism not elsewhere classified</xsl:if>
<xsl:if test="FOR_code = '150701'">150701 - Air Transportation and Freight Services</xsl:if>
<xsl:if test="FOR_code = '150702'">150702 - Rail Transportation and Freight Services</xsl:if>
<xsl:if test="FOR_code = '150703'">150703 - Road Transportation and Freight Services</xsl:if>
<xsl:if test="FOR_code = '150799'">150799 - Transportation and Freight Services not elsewhere classified</xsl:if>
<xsl:if test="FOR_code = '159999'">159999 - Commerce, Management, Tourism and Services not elsewhere classified</xsl:if>
<xsl:if test="FOR_code = '160101'">160101 - Anthropology of Development</xsl:if>
<xsl:if test="FOR_code = '160102'">160102 - Biological (Physical) Anthropology</xsl:if>
<xsl:if test="FOR_code = '160103'">160103 - Linguistic Anthropology</xsl:if>
<xsl:if test="FOR_code = '160104'">160104 - Social and Cultural Anthropology</xsl:if>
<xsl:if test="FOR_code = '160199'">160199 - Anthropology not elsewhere classified</xsl:if>
<xsl:if test="FOR_code = '160201'">160201 - Causes and Prevention of Crime</xsl:if>
<xsl:if test="FOR_code = '160202'">160202 - Correctional Theory, Offender Treatment and Rehabilitation</xsl:if>
<xsl:if test="FOR_code = '160203'">160203 - Courts and Sentencing</xsl:if>
<xsl:if test="FOR_code = '160204'">160204 - Criminological Theories</xsl:if>
<xsl:if test="FOR_code = '160205'">160205 - Police Administration, Procedures and Practice</xsl:if>
<xsl:if test="FOR_code = '160206'">160206 - Private Policing and Security Services</xsl:if>
<xsl:if test="FOR_code = '160299'">160299 - Criminology not elsewhere classified</xsl:if>
<xsl:if test="FOR_code = '160301'">160301 - Family and Household Studies</xsl:if>
<xsl:if test="FOR_code = '160302'">160302 - Fertility</xsl:if>
<xsl:if test="FOR_code = '160303'">160303 - Migration</xsl:if>
<xsl:if test="FOR_code = '160304'">160304 - Mortality</xsl:if>
<xsl:if test="FOR_code = '160305'">160305 - Population Trends and Policies</xsl:if>
<xsl:if test="FOR_code = '160399'">160399 - Demography not elsewhere classified</xsl:if>
<xsl:if test="FOR_code = '160401'">160401 - Economic Geography</xsl:if>
<xsl:if test="FOR_code = '160402'">160402 - Recreation, Leisure and Tourism Geography</xsl:if>
<xsl:if test="FOR_code = '160403'">160403 - Social and Cultural Geography</xsl:if>
<xsl:if test="FOR_code = '160404'">160404 - Urban and Regional Studies (excl. Planning)</xsl:if>
<xsl:if test="FOR_code = '160499'">160499 - Human Geography not elsewhere classified</xsl:if>
<xsl:if test="FOR_code = '160501'">160501 - Aboriginal and Torres Strait Islander Policy</xsl:if>
<xsl:if test="FOR_code = '160502'">160502 - Arts and Cultural Policy</xsl:if>
<xsl:if test="FOR_code = '160503'">160503 - Communications and Media Policy</xsl:if>
<xsl:if test="FOR_code = '160504'">160504 - Crime Policy</xsl:if>
<xsl:if test="FOR_code = '160505'">160505 - Economic Development Policy</xsl:if>
<xsl:if test="FOR_code = '160506'">160506 - Education Policy</xsl:if>
<xsl:if test="FOR_code = '160507'">160507 - Environment Policy</xsl:if>
<xsl:if test="FOR_code = '160508'">160508 - Health Policy</xsl:if>
<xsl:if test="FOR_code = '160509'">160509 - Public Administration</xsl:if>
<xsl:if test="FOR_code = '160510'">160510 - Public Policy</xsl:if>
<xsl:if test="FOR_code = '160511'">160511 - Research, Science and Technology Policy</xsl:if>
<xsl:if test="FOR_code = '160512'">160512 - Social Policy</xsl:if>
<xsl:if test="FOR_code = '160513'">160513 - Tourism Policy</xsl:if>
<xsl:if test="FOR_code = '160514'">160514 - Urban Policy</xsl:if>
<xsl:if test="FOR_code = '160599'">160599 - Policy and Administration not elsewhere classified</xsl:if>
<xsl:if test="FOR_code = '160601'">160601 - Australian Government and Politics</xsl:if>
<xsl:if test="FOR_code = '160602'">160602 - Citizenship</xsl:if>
<xsl:if test="FOR_code = '160603'">160603 - Comparative Government and Politics</xsl:if>
<xsl:if test="FOR_code = '160604'">160604 - Defence Studies</xsl:if>
<xsl:if test="FOR_code = '160605'">160605 - Environmental Politics</xsl:if>
<xsl:if test="FOR_code = '160606'">160606 - Government and Politics of Asia and the Pacific</xsl:if>
<xsl:if test="FOR_code = '160607'">160607 - International Relations</xsl:if>
<xsl:if test="FOR_code = '160608'">160608 - New Zealand Government and Politics</xsl:if>
<xsl:if test="FOR_code = '160609'">160609 - Political Theory and Political Philosophy</xsl:if>
<xsl:if test="FOR_code = '160699'">160699 - Political Science not elsewhere classified</xsl:if>
<xsl:if test="FOR_code = '160701'">160701 - Clinical Social Work Practice</xsl:if>
<xsl:if test="FOR_code = '160702'">160702 - Counselling, Welfare and Community Services</xsl:if>
<xsl:if test="FOR_code = '160703'">160703 - Social Program Evaluation</xsl:if>
<xsl:if test="FOR_code = '160799'">160799 - Social Work not elsewhere classified</xsl:if>
<xsl:if test="FOR_code = '160801'">160801 - Applied Sociology, Program Evaluation and Social Impact Assessment</xsl:if>
<xsl:if test="FOR_code = '160802'">160802 - Environmental Sociology</xsl:if>
<xsl:if test="FOR_code = '160803'">160803 - Race and Ethnic Relations</xsl:if>
<xsl:if test="FOR_code = '160804'">160804 - Rural Sociology</xsl:if>
<xsl:if test="FOR_code = '160805'">160805 - Social Change</xsl:if>
<xsl:if test="FOR_code = '160806'">160806 - Social Theory</xsl:if>
<xsl:if test="FOR_code = '160807'">160807 - Sociological Methodology and Research Methods</xsl:if>
<xsl:if test="FOR_code = '160808'">160808 - Sociology and Social Studies of Science and Technology</xsl:if>
<xsl:if test="FOR_code = '160809'">160809 - Sociology of Education</xsl:if>
<xsl:if test="FOR_code = '160810'">160810 - Urban Sociology and Community Studies</xsl:if>
<xsl:if test="FOR_code = '160899'">160899 - Sociology not elsewhere classified</xsl:if>
<xsl:if test="FOR_code = '169901'">169901 - Gender Specific Studies</xsl:if>
<xsl:if test="FOR_code = '169902'">169902 - Studies of Aboriginal and Torres Strait Islander Society</xsl:if>
<xsl:if test="FOR_code = '169903'">169903 - Studies of Asian Society</xsl:if>
<xsl:if test="FOR_code = '169904'">169904 - Studies of Maori Society</xsl:if>
<xsl:if test="FOR_code = '169905'">169905 - Studies of Pacific Peoples Societies</xsl:if>
<xsl:if test="FOR_code = '169999'">169999 - Studies in Human Society not elsewhere classified</xsl:if>
<xsl:if test="FOR_code = '170101'">170101 - Biological Psychology (Neuropsychology, Psychopharmacology, Physiological Psychology)</xsl:if>
<xsl:if test="FOR_code = '170102'">170102 - Developmental Psychology and Ageing</xsl:if>
<xsl:if test="FOR_code = '170103'">170103 - Educational Psychology</xsl:if>
<xsl:if test="FOR_code = '170104'">170104 - Forensic Psychology</xsl:if>
<xsl:if test="FOR_code = '170105'">170105 - Gender Psychology</xsl:if>
<xsl:if test="FOR_code = '170106'">170106 - Health, Clinical and Counselling Psychology</xsl:if>
<xsl:if test="FOR_code = '170107'">170107 - Industrial and Organisational Psychology</xsl:if>
<xsl:if test="FOR_code = '170108'">170108 - Kaupapa Maori Psychology</xsl:if>
<xsl:if test="FOR_code = '170109'">170109 - Personality, Abilities and Assessment</xsl:if>
<xsl:if test="FOR_code = '170110'">170110 - Psychological Methodology, Design and Analysis</xsl:if>
<xsl:if test="FOR_code = '170111'">170111 - Psychology of Religion</xsl:if>
<xsl:if test="FOR_code = '170112'">170112 - Sensory Processes, Perception and Performance</xsl:if>
<xsl:if test="FOR_code = '170113'">170113 - Social and Community Psychology</xsl:if>
<xsl:if test="FOR_code = '170114'">170114 - Sport and Exercise Psychology</xsl:if>
<xsl:if test="FOR_code = '170199'">170199 - Psychology not elsewhere classified</xsl:if>
<xsl:if test="FOR_code = '170201'">170201 - Computer Perception, Memory and Attention</xsl:if>
<xsl:if test="FOR_code = '170202'">170202 - Decision Making</xsl:if>
<xsl:if test="FOR_code = '170203'">170203 - Knowledge Representation and Machine Learning</xsl:if>
<xsl:if test="FOR_code = '170204'">170204 - Linguistic Processes (incl. Speech Production and Comprehension)</xsl:if>
<xsl:if test="FOR_code = '170205'">170205 - Neurocognitive Patterns and Neural Networks</xsl:if>
<xsl:if test="FOR_code = '170299'">170299 - Cognitive Science not elsewhere classified</xsl:if>
<xsl:if test="FOR_code = '179999'">179999 - Psychology and Cognitive Sciences not elsewhere classified</xsl:if>
<xsl:if test="FOR_code = '180101'">180101 - Aboriginal and Torres Strait Islander Law</xsl:if>
<xsl:if test="FOR_code = '180102'">180102 - Access to Justice</xsl:if>
<xsl:if test="FOR_code = '180103'">180103 - Administrative Law</xsl:if>
<xsl:if test="FOR_code = '180104'">180104 - Civil Law and Procedure</xsl:if>
<xsl:if test="FOR_code = '180105'">180105 - Commercial and Contract Law</xsl:if>
<xsl:if test="FOR_code = '180106'">180106 - Comparative Law</xsl:if>
<xsl:if test="FOR_code = '180107'">180107 - Conflict of Laws (Private International Law)</xsl:if>
<xsl:if test="FOR_code = '180108'">180108 - Constitutional Law</xsl:if>
<xsl:if test="FOR_code = '180109'">180109 - Corporations and Associations Law</xsl:if>
<xsl:if test="FOR_code = '180110'">180110 - Criminal Law and Procedure</xsl:if>
<xsl:if test="FOR_code = '180111'">180111 - Environmental and Natural Resources Law</xsl:if>
<xsl:if test="FOR_code = '180112'">180112 - Equity and Trusts Law</xsl:if>
<xsl:if test="FOR_code = '180113'">180113 - Family Law</xsl:if>
<xsl:if test="FOR_code = '180114'">180114 - Human Rights Law</xsl:if>
<xsl:if test="FOR_code = '180115'">180115 - Intellectual Property Law</xsl:if>
<xsl:if test="FOR_code = '180116'">180116 - International Law (excl. International Trade Law)</xsl:if>
<xsl:if test="FOR_code = '180117'">180117 - International Trade Law</xsl:if>
<xsl:if test="FOR_code = '180118'">180118 - Labour Law</xsl:if>
<xsl:if test="FOR_code = '180119'">180119 - Law and Society</xsl:if>
<xsl:if test="FOR_code = '180120'">180120 - Legal Institutions (incl. Courts and Justice Systems</xsl:if>
<xsl:if test="FOR_code = '180121'">180121 - Legal Practice, Lawyering and the Legal Profession</xsl:if>
<xsl:if test="FOR_code = '180122'">180122 - Legal Theory, Jurisprudence and Legal Interpretation</xsl:if>
<xsl:if test="FOR_code = '180123'">180123 - Litigation, Adjudication and Dispute Resolution</xsl:if>
<xsl:if test="FOR_code = '180124'">180124 - Property Law (excl. Intellectual Property Law)</xsl:if>
<xsl:if test="FOR_code = '180125'">180125 - Taxation Law</xsl:if>
<xsl:if test="FOR_code = '180126'">180126 - Tort Law</xsl:if>
<xsl:if test="FOR_code = '180199'">180199 - Law not elsewhere classified</xsl:if>
<xsl:if test="FOR_code = '180201'">180201 - Nga Tikanga Maori (Maori Customary Law)</xsl:if>
<xsl:if test="FOR_code = '180202'">180202 - Te Maori Whakakaere Rauemi (Maori Resource Law)</xsl:if>
<xsl:if test="FOR_code = '180203'">180203 - Te Tiriti O Waitangi (The Treaty of Waitangi)</xsl:if>
<xsl:if test="FOR_code = '180204'">180204 - Te Ture Whenua (Maori Land Law)</xsl:if>
<xsl:if test="FOR_code = '180299'">180299 - Maori Law not elsewhere classified</xsl:if>
<xsl:if test="FOR_code = '189999'">189999 - Law and Legal Studies not elsewhere classified</xsl:if>
<xsl:if test="FOR_code = '190101'">190101 - Art Criticism</xsl:if>
<xsl:if test="FOR_code = '190102'">190102 - Art History</xsl:if>
<xsl:if test="FOR_code = '190103'">190103 - Art Theory</xsl:if>
<xsl:if test="FOR_code = '190104'">190104 - Visual Cultures</xsl:if>
<xsl:if test="FOR_code = '190199'">190199 - Art Theory and Criticism not elsewhere classified</xsl:if>
<xsl:if test="FOR_code = '190201'">190201 - Cinema Studies</xsl:if>
<xsl:if test="FOR_code = '190202'">190202 - Computer Gaming and Animation</xsl:if>
<xsl:if test="FOR_code = '190203'">190203 - Electronic Media Art</xsl:if>
<xsl:if test="FOR_code = '190204'">190204 - Film and Television</xsl:if>
<xsl:if test="FOR_code = '190205'">190205 - Interactive Media</xsl:if>
<xsl:if test="FOR_code = '190299'">190299 - Film, Television and Digital Media not elsewhere classified</xsl:if>
<xsl:if test="FOR_code = '190301'">190301 - Journalism Studies</xsl:if>
<xsl:if test="FOR_code = '190302'">190302 - Professional Writing</xsl:if>
<xsl:if test="FOR_code = '190303'">190303 - Technical Writing</xsl:if>
<xsl:if test="FOR_code = '190399'">190399 - Journalism and Professional Writing not elsewhere classified</xsl:if>
<xsl:if test="FOR_code = '190401'">190401 - Aboriginal and Torres Strait Islander Performing Arts</xsl:if>
<xsl:if test="FOR_code = '190402'">190402 - Creative Writing (incl. Playwriting)</xsl:if>
<xsl:if test="FOR_code = '190403'">190403 - Dance</xsl:if>
<xsl:if test="FOR_code = '190404'">190404 - Drama, Theatre and Performance Studies</xsl:if>
<xsl:if test="FOR_code = '190405'">190405 - Maori Performing Arts</xsl:if>
<xsl:if test="FOR_code = '190406'">190406 - Music Composition</xsl:if>
<xsl:if test="FOR_code = '190407'">190407 - Music Performance</xsl:if>
<xsl:if test="FOR_code = '190408'">190408 - Music Therapy</xsl:if>
<xsl:if test="FOR_code = '190409'">190409 - Musicology and Ethnomusicology</xsl:if>
<xsl:if test="FOR_code = '190410'">190410 - Pacific Peoples Performing Arts</xsl:if>
<xsl:if test="FOR_code = '190499'">190499 - Performing Arts and Creative Writing not elsewhere classified</xsl:if>
<xsl:if test="FOR_code = '190501'">190501 - Crafts</xsl:if>
<xsl:if test="FOR_code = '190502'">190502 - Fine Arts (incl. Sculpture and Painting)</xsl:if>
<xsl:if test="FOR_code = '190503'">190503 - Lens-based Practice</xsl:if>
<xsl:if test="FOR_code = '190504'">190504 - Performance and Installation Art</xsl:if>
<xsl:if test="FOR_code = '190599'">190599 - Visual Arts and Crafts not elsewhere classified</xsl:if>
<xsl:if test="FOR_code = '199999'">199999 - Studies in the Creative Arts and Writing not elsewhere classified</xsl:if>
<xsl:if test="FOR_code = '200101'">200101 - Communication Studies</xsl:if>
<xsl:if test="FOR_code = '200102'">200102 - Communication Technology and Digital Media Studies</xsl:if>
<xsl:if test="FOR_code = '200103'">200103 - International and Development Communication</xsl:if>
<xsl:if test="FOR_code = '200104'">200104 - Media Studies</xsl:if>
<xsl:if test="FOR_code = '200105'">200105 - Organisational, Interpersonal and Intercultural Communication</xsl:if>
<xsl:if test="FOR_code = '200199'">200199 - Communication and Media Studies not elsewhere classified</xsl:if>
<xsl:if test="FOR_code = '200201'">200201 - Aboriginal and Torres Strait Islander Cultural Studies</xsl:if>
<xsl:if test="FOR_code = '200202'">200202 - Asian Cultural Studies</xsl:if>
<xsl:if test="FOR_code = '200203'">200203 - Consumption and Everyday Life</xsl:if>
<xsl:if test="FOR_code = '200204'">200204 - Cultural Theory</xsl:if>
<xsl:if test="FOR_code = '200205'">200205 - Culture, Gender, Sexuality</xsl:if>
<xsl:if test="FOR_code = '200206'">200206 - Globalisation and Culture</xsl:if>
<xsl:if test="FOR_code = '200207'">200207 - Maori Cultural Studies</xsl:if>
<xsl:if test="FOR_code = '200208'">200208 - Migrant Cultural Studies</xsl:if>
<xsl:if test="FOR_code = '200209'">200209 - Multicultural, Intercultural and Cross-cultural Studies</xsl:if>
<xsl:if test="FOR_code = '200210'">200210 - Pacific Cultural Studies</xsl:if>
<xsl:if test="FOR_code = '200211'">200211 - Postcolonial Studies</xsl:if>
<xsl:if test="FOR_code = '200212'">200212 - Screen and Media Culture</xsl:if>
<xsl:if test="FOR_code = '200299'">200299 - Cultural Studies not elsewhere classified</xsl:if>
<xsl:if test="FOR_code = '200301'">200301 - Early English Languages</xsl:if>
<xsl:if test="FOR_code = '200302'">200302 - English Language</xsl:if>
<xsl:if test="FOR_code = '200303'">200303 - English as a Second Language</xsl:if>
<xsl:if test="FOR_code = '200304'">200304 - Central and Eastern European Languages (incl. Russian)</xsl:if>
<xsl:if test="FOR_code = '200305'">200305 - Latin and Classical Greek Languages</xsl:if>
<xsl:if test="FOR_code = '200306'">200306 - French Language</xsl:if>
<xsl:if test="FOR_code = '200307'">200307 - German Language</xsl:if>
<xsl:if test="FOR_code = '200308'">200308 - Iberian Languages</xsl:if>
<xsl:if test="FOR_code = '200309'">200309 - Italian Language</xsl:if>
<xsl:if test="FOR_code = '200310'">200310 - Other European Languages</xsl:if>
<xsl:if test="FOR_code = '200311'">200311 - Chinese Languages</xsl:if>
<xsl:if test="FOR_code = '200312'">200312 - Japanese Language</xsl:if>
<xsl:if test="FOR_code = '200313'">200313 - Indonesian Languages</xsl:if>
<xsl:if test="FOR_code = '200314'">200314 - South-East Asian Languages (excl. Indonesian)</xsl:if>
<xsl:if test="FOR_code = '200315'">200315 - Indian Languages</xsl:if>
<xsl:if test="FOR_code = '200316'">200316 - Korean Language</xsl:if>
<xsl:if test="FOR_code = '200317'">200317 - Other Asian Languages (excl. South-East Asian)</xsl:if>
<xsl:if test="FOR_code = '200318'">200318 - Middle Eastern Languages</xsl:if>
<xsl:if test="FOR_code = '200319'">200319 - Aboriginal and Torres Strait Islander Languages</xsl:if>
<xsl:if test="FOR_code = '200320'">200320 - Pacific Languages</xsl:if>
<xsl:if test="FOR_code = '200321'">200321 - Te Reo Maori (Maori Language)</xsl:if>
<xsl:if test="FOR_code = '200322'">200322 - Comparative Language Studies</xsl:if>
<xsl:if test="FOR_code = '200323'">200323 - Translation and Interpretation Studies</xsl:if>
<xsl:if test="FOR_code = '200399'">200399 - Language Studies not elsewhere classified</xsl:if>
<xsl:if test="FOR_code = '200401'">200401 - Applied Linguistics and Educational Linguistics</xsl:if>
<xsl:if test="FOR_code = '200402'">200402 - Computational Linguistics</xsl:if>
<xsl:if test="FOR_code = '200403'">200403 - Discourse and Pragmatics</xsl:if>
<xsl:if test="FOR_code = '200404'">200404 - Laboratory Phonetics and Speech Science</xsl:if>
<xsl:if test="FOR_code = '200405'">200405 - Language in Culture and Society (Sociolinguistics)</xsl:if>
<xsl:if test="FOR_code = '200406'">200406 - Language in Time and Space (incl. Historical Linguistics, Dialectology)</xsl:if>
<xsl:if test="FOR_code = '200407'">200407 - Lexicography</xsl:if>
<xsl:if test="FOR_code = '200408'">200408 - Linguistic Structures (incl. Grammar, Phonology, Lexicon, Semantics)</xsl:if>
<xsl:if test="FOR_code = '200499'">200499 - Linguistics not elsewhere classified</xsl:if>
<xsl:if test="FOR_code = '200501'">200501 - Aboriginal and Torres Strait Islander Literature</xsl:if>
<xsl:if test="FOR_code = '200502'">200502 - Australian Literature (excl. Aboriginal and Torres Strait Islander Literature)</xsl:if>
<xsl:if test="FOR_code = '200503'">200503 - British and Irish Literature</xsl:if>
<xsl:if test="FOR_code = '200504'">200504 - Maori Literature</xsl:if>
<xsl:if test="FOR_code = '200505'">200505 - New Zealand Literature (excl. Maori Literature)</xsl:if>
<xsl:if test="FOR_code = '200506'">200506 - North American Literature</xsl:if>
<xsl:if test="FOR_code = '200507'">200507 - Pacific Literature</xsl:if>
<xsl:if test="FOR_code = '200508'">200508 - Other Literatures in English</xsl:if>
<xsl:if test="FOR_code = '200509'">200509 - Central and Eastern European Literature (incl. Russian)</xsl:if>
<xsl:if test="FOR_code = '200510'">200510 - Latin and Classical Greek Literature</xsl:if>
<xsl:if test="FOR_code = '200511'">200511 - Literature in French</xsl:if>
<xsl:if test="FOR_code = '200512'">200512 - Literature in German</xsl:if>
<xsl:if test="FOR_code = '200513'">200513 - Literature in Italian</xsl:if>
<xsl:if test="FOR_code = '200514'">200514 - Literature in Spanish and Portuguese</xsl:if>
<xsl:if test="FOR_code = '200515'">200515 - Other European Literature</xsl:if>
<xsl:if test="FOR_code = '200516'">200516 - Indonesian Literature</xsl:if>
<xsl:if test="FOR_code = '200517'">200517 - Literature in Chinese</xsl:if>
<xsl:if test="FOR_code = '200518'">200518 - Literature in Japanese</xsl:if>
<xsl:if test="FOR_code = '200519'">200519 - South-East Asian Literature (excl. Indonesian)</xsl:if>
<xsl:if test="FOR_code = '200520'">200520 - Indian Literature</xsl:if>
<xsl:if test="FOR_code = '200521'">200521 - Korean Literature</xsl:if>
<xsl:if test="FOR_code = '200522'">200522 - Other Asian Literature (excl. South-East Asian)</xsl:if>
<xsl:if test="FOR_code = '200523'">200523 - Middle Eastern Literature</xsl:if>
<xsl:if test="FOR_code = '200524'">200524 - Comparative Literature Studies</xsl:if>
<xsl:if test="FOR_code = '200525'">200525 - Literary Theory</xsl:if>
<xsl:if test="FOR_code = '200526'">200526 - Stylistics and Textual Analysis</xsl:if>
<xsl:if test="FOR_code = '200599'">200599 - Literary Studies not elsewhere classified</xsl:if>
<xsl:if test="FOR_code = '209999'">209999 - Language, Communication and Culture not elsewhere classified</xsl:if>
<xsl:if test="FOR_code = '210101'">210101 - Aboriginal and Torres Strait Islander Archaeology</xsl:if>
<xsl:if test="FOR_code = '210102'">210102 - Archaeological Science</xsl:if>
<xsl:if test="FOR_code = '210103'">210103 - Archaeology of Asia, Africa and the Americas</xsl:if>
<xsl:if test="FOR_code = '210104'">210104 - Archaeology of Australia (excl. Aboriginal and Torres Strait Islander)</xsl:if>
<xsl:if test="FOR_code = '210105'">210105 - Archaeology of Europe, the Mediterranean and the Levant</xsl:if>
<xsl:if test="FOR_code = '210106'">210106 - Archaeology of New Guinea and Pacific Islands (excl. New Zealand</xsl:if>
<xsl:if test="FOR_code = '210107'">210107 - Archaeology of New Zealand (excl. Maori)</xsl:if>
<xsl:if test="FOR_code = '210108'">210108 - Historical Archaeology (incl. Industrial Archaeology)</xsl:if>
<xsl:if test="FOR_code = '210109'">210109 - Maori Archaeology</xsl:if>
<xsl:if test="FOR_code = '210110'">210110 - Maritime Archaeology</xsl:if>
<xsl:if test="FOR_code = '210199'">210199 - Archaeology not elsewhere classified</xsl:if>
<xsl:if test="FOR_code = '210201'">210201 - Archival, Repository and Related Studies</xsl:if>
<xsl:if test="FOR_code = '210202'">210202 - Heritage and Cultural Conservation</xsl:if>
<xsl:if test="FOR_code = '210203'">210203 - Materials Conservation</xsl:if>
<xsl:if test="FOR_code = '210204'">210204 - Museum Studies</xsl:if>
<xsl:if test="FOR_code = '210299'">210299 - Curatorial and Related Studies not elsewhere classified</xsl:if>
<xsl:if test="FOR_code = '210301'">210301 - Aboriginal and Torres Strait Islander History</xsl:if>
<xsl:if test="FOR_code = '210302'">210302 - Asian History</xsl:if>
<xsl:if test="FOR_code = '210303'">210303 - Australian History (excl. Aboriginal and Torres Strait Islander History)</xsl:if>
<xsl:if test="FOR_code = '210304'">210304 - Biography</xsl:if>
<xsl:if test="FOR_code = '210305'">210305 - British History</xsl:if>
<xsl:if test="FOR_code = '210306'">210306 - Classical Greek and Roman History</xsl:if>
<xsl:if test="FOR_code = '210307'">210307 - European History (excl. British, Classical Greek and Roman)</xsl:if>
<xsl:if test="FOR_code = '210308'">210308 - Latin American History</xsl:if>
<xsl:if test="FOR_code = '210309'">210309 - Maori History</xsl:if>
<xsl:if test="FOR_code = '210310'">210310 - Middle Eastern and African History</xsl:if>
<xsl:if test="FOR_code = '210311'">210311 - New Zealand History</xsl:if>
<xsl:if test="FOR_code = '210312'">210312 - North American History</xsl:if>
<xsl:if test="FOR_code = '210313'">210313 - Pacific History (excl. New Zealand and Maori)</xsl:if>
<xsl:if test="FOR_code = '210399'">210399 - Historical Studies not elsewhere classified</xsl:if>
<xsl:if test="FOR_code = '219999'">219999 - History and Archaeology not elsewhere classified</xsl:if>
<xsl:if test="FOR_code = '220101'">220101 - Bioethics (human and animal)</xsl:if>
<xsl:if test="FOR_code = '220102'">220102 - Business Ethics</xsl:if>
<xsl:if test="FOR_code = '220103'">220103 - Ethical Use of New Technology (e.g. Nanotechnology, Biotechnology)</xsl:if>
<xsl:if test="FOR_code = '220104'">220104 - Human Rights and Justice Issues</xsl:if>
<xsl:if test="FOR_code = '220105'">220105 - Legal Ethics</xsl:if>
<xsl:if test="FOR_code = '220106'">220106 - Medical Ethics</xsl:if>
<xsl:if test="FOR_code = '220107'">220107 - Professional Ethics (incl. police and research ethics)</xsl:if>
<xsl:if test="FOR_code = '220199'">220199 - Applied Ethics not elsewhere classified</xsl:if>
<xsl:if test="FOR_code = '220201'">220201 - Business and Labour History</xsl:if>
<xsl:if test="FOR_code = '220202'">220202 - History and Philosophy of Education</xsl:if>
<xsl:if test="FOR_code = '220203'">220203 - History and Philosophy of Engineering and Technology</xsl:if>
<xsl:if test="FOR_code = '220204'">220204 - History and Philosophy of Law and Justice</xsl:if>
<xsl:if test="FOR_code = '220205'">220205 - History and Philosophy of Medicine</xsl:if>
<xsl:if test="FOR_code = '220206'">220206 - History and Philosophy of Science (incl. Non-historical Philosophy of Science)</xsl:if>
<xsl:if test="FOR_code = '220207'">220207 - History and Philosophy of the Humanities</xsl:if>
<xsl:if test="FOR_code = '220208'">220208 - History and Philosophy of the Social Sciences</xsl:if>
<xsl:if test="FOR_code = '220209'">220209 - History of Ideas</xsl:if>
<xsl:if test="FOR_code = '220210'">220210 - History of Philosophy</xsl:if>
<xsl:if test="FOR_code = '220299'">220299 - History and Philosophy of Specific Fields not elsewhere classified</xsl:if>
<xsl:if test="FOR_code = '220301'">220301 - Aesthetics</xsl:if>
<xsl:if test="FOR_code = '220302'">220302 - Decision Theory</xsl:if>
<xsl:if test="FOR_code = '220303'">220303 - Environmental Philosophy</xsl:if>
<xsl:if test="FOR_code = '220304'">220304 - Epistemology</xsl:if>
<xsl:if test="FOR_code = '220305'">220305 - Ethical Theory</xsl:if>
<xsl:if test="FOR_code = '220306'">220306 - Feminist Theory</xsl:if>
<xsl:if test="FOR_code = '220307'">220307 - Hermeneutic and Critical Theory</xsl:if>
<xsl:if test="FOR_code = '220308'">220308 - Logic</xsl:if>
<xsl:if test="FOR_code = '220309'">220309 - Metaphysics</xsl:if>
<xsl:if test="FOR_code = '220310'">220310 - Phenomenology</xsl:if>
<xsl:if test="FOR_code = '220311'">220311 - Philosophical Psychology (incl. Moral Psychology and Philosophy of Action)</xsl:if>
<xsl:if test="FOR_code = '220312'">220312 - Philosophy of Cognition</xsl:if>
<xsl:if test="FOR_code = '220313'">220313 - Philosophy of Language</xsl:if>
<xsl:if test="FOR_code = '220314'">220314 - Philosophy of Mind (excl. Cognition)</xsl:if>
<xsl:if test="FOR_code = '220315'">220315 - Philosophy of Religion</xsl:if>
<xsl:if test="FOR_code = '220316'">220316 - Philosophy of Specific Cultures (incl. Comparative Philosophy)</xsl:if>
<xsl:if test="FOR_code = '220317'">220317 - Poststructuralism</xsl:if>
<xsl:if test="FOR_code = '220318'">220318 - Psychoanalytic Philosophy</xsl:if>
<xsl:if test="FOR_code = '220319'">220319 - Social Philosophy</xsl:if>
<xsl:if test="FOR_code = '220399'">220399 - Philosophy not elsewhere classified</xsl:if>
<xsl:if test="FOR_code = '220401'">220401 - Christian Studies (incl. Biblical Studies and Church History)</xsl:if>
<xsl:if test="FOR_code = '220402'">220402 - Comparative Religious Studies</xsl:if>
<xsl:if test="FOR_code = '220403'">220403 - Islamic Studies</xsl:if>
<xsl:if test="FOR_code = '220404'">220404 - Jewish Studies</xsl:if>
<xsl:if test="FOR_code = '220405'">220405 - Religion and Society</xsl:if>
<xsl:if test="FOR_code = '220406'">220406 - Studies in Eastern Religious Traditions</xsl:if>
<xsl:if test="FOR_code = '220407'">220407 - Studies in Religious Traditions (excl. Eastern, Jewish, Christian and Islamic Traditions)</xsl:if>
<xsl:if test="FOR_code = '220499'">220499 - Religion and Religious Studies not elsewhere classified</xsl:if>
<xsl:if test="FOR_code = '229999'">229999 - Philosophy and Religious Studies not elsewhere classified</xsl:if>
<xsl:if test="FOR_code = 'XXXXXX'">XXXXXX - Unknown</xsl:if>
</note>
</note> 
      </xsl:when>
    </xsl:choose>

      <!--Other FOR code -->
    <xsl:apply-templates select="*[starts-with(local-name(),'FOR_code_')]"/>

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
     <xsl:apply-templates select="creator_last_name"/>, <xsl:apply-templates select="creator_first_name"/>
</namePart>
    <xsl:choose>
      <xsl:when test="creator_cited_name">
<namePart type="cited">
     <xsl:apply-templates select="creator_cited_name"/>
</namePart>
      </xsl:when>
    </xsl:choose>
        <role>
           <roleTerm authority="marcrelator" type="text">author</roleTerm>
        </role>

     <xsl:choose>
        <xsl:when test="creator_institution = ''">
          <xsl:if test="creator_affiliation  ='Staff'"><affiliation>University of Western Sydney</affiliation></xsl:if>
          <xsl:if test="creator_affiliation  ='Student'"><affiliation>University of Western Sydney</affiliation></xsl:if>
          <xsl:if test="creator_affiliation  ='Student - Non HDR'"><affiliation>University of Western Sydney</affiliation></xsl:if>
          <xsl:if test="creator_affiliation  ='Adjunct'"><affiliation>University of Western Sydney</affiliation></xsl:if>
          <xsl:if test="creator_affiliation  ='Emeritus'"><affiliation>University of Western Sydney</affiliation></xsl:if>
          <xsl:if test="creator_affiliation  ='Visiting Fellow'"><affiliation>University of Western Sydney</affiliation></xsl:if>
          <xsl:if test="creator_affiliation  ='External'"><affiliation>non UWS</affiliation></xsl:if>
          <xsl:if test="creator_affiliation  ='Pre-UWS'"><affiliation>non UWS</affiliation></xsl:if>
        </xsl:when>
        <xsl:otherwise>
          <affiliation><xsl:apply-templates select="creator_institution"/></affiliation>							
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
<xsl:if test="creator_affiliation">
<note type="affiliation_status"><xsl:apply-templates select="creator_affiliation"/></note> 
</xsl:if>  
<xsl:if test="creator_school_name">
<note type="school_code"><xsl:apply-templates select="creator_school_name"/></note> 
</xsl:if>
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
    
    <!-- HERDC information - general -->
    <xsl:if test="affiliated">
       <note type="uws_affiliation"><xsl:apply-templates select="affiliated"/></note> 
    </xsl:if> 
    <xsl:if test="scholarly_research">
       <note type="scholarly_research"><xsl:apply-templates select="scholarly_research"/></note> 
    </xsl:if>
    <xsl:if test="proof_published">
       <note type="proof_published"><xsl:apply-templates select="proof_published"/></note> 
    </xsl:if>  

    <!-- ERA Resource_Type -->
    <xsl:if test="ERA_resource_type">
       <note type="era_resource_type"><xsl:apply-templates select="ERA_resource_type"/></note> 
    </xsl:if>

    <!-- ERA Non-Traditional Information -->    
    <xsl:if test="ERA_non_traditional_category_c">
       <note type="era_curatedExhibitionOrEvent_category"><xsl:apply-templates select="ERA_non_traditional_category_c"/></note> 
    </xsl:if>    
    <xsl:if test="ERA_extent_c">
       <note type="era_curatedExhibitionOrEvent_extent"><xsl:apply-templates select="ERA_extent_c"/></note> 
    </xsl:if> 
    <xsl:if test="ERA_non_traditional_category_l">
       <note type="era_livePerformance_category"><xsl:apply-templates select="ERA_non_traditional_category_l"/></note> 
    </xsl:if>    
    <xsl:if test="ERA_extent_l">
       <note type="era_livePerformance_extent"><xsl:apply-templates select="ERA_extent_l"/></note> 
    </xsl:if>
    <xsl:if test="ERA_non_traditional_category_o">
       <note type="era_originalCreativeWork_category"><xsl:apply-templates select="ERA_non_traditional_category_o"/></note> 
    </xsl:if>    
    <xsl:if test="ERA_extent_o">
       <note type="era_originalCreativeWork_extent"><xsl:apply-templates select="ERA_extent_o"/></note> 
    </xsl:if>
    <xsl:if test="ERA_non_traditional_category_r">
       <note type="era_recordedOrRenderedWork_category"><xsl:apply-templates select="ERA_non_traditional_category_r"/></note> 
    </xsl:if>    
    <xsl:if test="ERA_extent_r">
       <note type="era_recordedOrRenderedWork_extent"><xsl:apply-templates select="ERA_extent_r"/></note> 
    </xsl:if>        
     
    
    <!-- Project Information -->
    
    <relatedItem type="references">
    <xsl:choose>
       <xsl:when test="project_name">         
          <titleInfo><title><xsl:apply-templates select="project_name"/></title></titleInfo>
       </xsl:when>
    </xsl:choose> 
    <xsl:choose>
       <xsl:when test="project_number">         
          <note type="project_number"><xsl:apply-templates select="project_number"/></note>
       </xsl:when>
    </xsl:choose>    
    <xsl:choose>
       <xsl:when test="cost_center">         
          <note type="cost_center"><xsl:apply-templates select="cost_center"/></note>
       </xsl:when>
    </xsl:choose>
    <xsl:choose>
       <xsl:when test="fund_source">         
          <note type="fund_source"><xsl:apply-templates select="fund_source"/></note>
       </xsl:when>
    </xsl:choose>    
    </relatedItem>   
    
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
      <xsl:when test="book_title">
        <titleInfo>
          <title>
           	<xsl:apply-templates select="book_title"/>
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
      <xsl:when test="book_language">
        <language>
          <languageTerm authority="iso639-2b" type="code">
           	<xsl:apply-templates select="book_language"/>
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
    
        <!-- HERDC information - book -->
 <xsl:if test="book_commercial_publisher">
<note type="commercial_publisher"><xsl:apply-templates select="book_commercial_publisher"/></note> 
</xsl:if>

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
    
     <!-- HERDC information - book -->
     <xsl:if test="book_o_commercial_publisher">
     <note type="commercial_publisher"><xsl:apply-templates select="book_o_commercial_publisher"/></note> 
     </xsl:if>

  </xsl:template>

  <!-- ................................Book Chapter Template...........................................-->

  <xsl:template name="book_chapter">
  
    <!-- Resource type - Book Chapter -->  
<genre authority="local">book chapter</genre>

  <!-- ................................Chapter ...........................................-->
          
    <!-- Chapter title -->
    <xsl:choose>
      <xsl:when test="chapter_title">
        <titleInfo>
          <title>
           	<xsl:apply-templates select="chapter_title"/>
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
      <xsl:when test="chapter_language">
        <language>
          <languageTerm authority="iso639-2b" type="code">
           	<xsl:apply-templates select="chapter_language"/>
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
        
     <!-- Chapter - Chapters Total in Book -->
     <xsl:if test="chapters_total_in_book">
     <note type="total_chapters"><xsl:apply-templates select="chapters_total_in_book"/></note> 
     </xsl:if>
     
     <!-- Chapter - Chapters Contributed -->
     <xsl:if test="chapters_contributed">
     <note type="chapters_contributed"><xsl:apply-templates select="chapters_contributed"/></note> 
     </xsl:if>        
        
            <!--....Chapter Book Editors....-->
    <xsl:choose>
      <xsl:when test="chapter_book_editors">
		<name type="personal">
			<namePart>
	        <xsl:apply-templates select="chapter_book_editors"/>
            </namePart>
			<role>
                <roleTerm authority="marcrelator" type="text">editor</roleTerm>
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
 <!--   <xsl:choose>
      <xsl:when test="chapter_book_isbn_e">
        <identifier type="isbn_e">
	        <xsl:apply-templates select="chapter_book_isbn_e"/>
        </identifier>
      </xsl:when>
    </xsl:choose>  -->


    
      <!-- HERDC information - book of chapter -->
     <xsl:if test="chapter_book_commercial_publisher">
     <note type="commercial_publisher"><xsl:apply-templates select="chapter_book_commercial_publisher"/></note> 
     </xsl:if>
   
     
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
           <roleTerm authority="marcrelator" type="text">editor</roleTerm>
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
        
     <!-- Chapter - Chapters Total in Book -->
     <xsl:if test="chapters_o_total_in_book">
     <note type="total_chapters"><xsl:apply-templates select="chapters_o_total_in_book"/></note> 
     </xsl:if>
     
     <!-- Chapter - Chapters Contributed -->
     <xsl:if test="chapters_o_contributed">
     <note type="chapters_contributed"><xsl:apply-templates select="chapters_o_contributed"/></note> 
     </xsl:if>          
        
     <!--....Chapter Book O Editors....-->
    <xsl:choose>
      <xsl:when test="chapter_book_o_editors">
		<name type="personal">
			<namePart>
	        <xsl:apply-templates select="chapter_book_o_editors"/>
            </namePart>
			<role>
                <roleTerm authority="marcrelator" type="text">editor</roleTerm>
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


    
       <!-- HERDC information - book of chapter -->
     <xsl:if test="chapter_book_o_commercial_publisher">
     <note type="commercial_publisher"><xsl:apply-templates select="chapter_book_o_commercial_publisher"/></note> 
     </xsl:if>
    
    
      
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
           <roleTerm authority="marcrelator" type="text">editor</roleTerm>
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
      <xsl:when test="conference_paper_title">
        <titleInfo>
          <title>
           	<xsl:apply-templates select="conference_paper_title"/>
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
      <xsl:when test="conference_paper_language">
        <language>
          <languageTerm authority="iso639-2b" type="code">
           	<xsl:apply-templates select="conference_paper_language"/>
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
    <xsl:choose>
      <xsl:when test="conference_paper_scopus_id">
<identifier type="scopus">
	        <xsl:apply-templates select="conference_paper_scopus_id"/>
</identifier>
      </xsl:when>
    </xsl:choose>    
    
         <!-- HERDC information - Conference Paper Peer reviewed -->
 <xsl:if test="conference_paper_peer_reviewed">
<note type="peer_reviewed"><xsl:apply-templates select="conference_paper_peer_reviewed"/></note> 
</xsl:if>   

         <!-- HERDC information - Conference National/International -->
 <xsl:if test="conference_nat_internat">
<note type="national_international"><xsl:apply-templates select="conference_nat_internat"/></note> 
</xsl:if>       
    

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
           <roleTerm authority="marcrelator" type="text">editor</roleTerm>
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
           <xsl:apply-templates select="conference_name"/> (<xsl:apply-templates select="conference_number"/> : <xsl:value-of select="substring($cdate,7,4)"/> : <xsl:apply-templates select="conference_location"/>)
        </displayForm>
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
           <roleTerm authority="marcrelator" type="text">editor</roleTerm>
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
    
         <!-- HERDC information - Conference Paper O Peer reviewed -->
 <xsl:if test="conference_paper_o_peer_reviewed">
<note type="peer_reviewed"><xsl:apply-templates select="conference_paper_o_peer_reviewed"/></note> 
</xsl:if>  

         <!-- HERDC information - Conference O National/International -->
 <xsl:if test="conference_o_nat_internat">
<note type="national_international"><xsl:apply-templates select="conference_o_nat_internat"/></note> 
</xsl:if>     
    

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
           <roleTerm authority="marcrelator" type="text">editor</roleTerm>
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
           <xsl:apply-templates select="conference_o_name"/> (<xsl:apply-templates select="conference_o_number"/> : <xsl:value-of select="substring($cdate,7,4)"/> : <xsl:apply-templates select="conference_o_location"/>)
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
           <roleTerm authority="marcrelator" type="text">editor</roleTerm>
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
      <xsl:when test="journal_article_title">
        <titleInfo>
          <title>
            	<xsl:apply-templates select="journal_article_title"/>
	        </title>
        </titleInfo>
      </xsl:when>
    </xsl:choose>

    <!-- Journal Article English Title -->
    <xsl:choose>
      <xsl:when test="journal_article_english_title">
        <titleInfo type="alternative">
          <title>
           	<xsl:apply-templates select="journal_article_english_title"/>
	        </title>
        </titleInfo>
      </xsl:when>
    </xsl:choose>    
    
    <!--  Journal Article Language -->    
    <xsl:choose>
      <xsl:when test="journal_article_language">
        <language>
          <languageTerm authority="iso639-2b" type="code">
           	<xsl:apply-templates select="journal_article_language"/>
          </languageTerm>
        </language>
      </xsl:when>
    </xsl:choose>
    
    <!-- Journal Article Total Pages -->
		<physicalDescription>
			<form authority="marcform">print</form>
			<extent>
			<!-- Maybe it would be safer to use journal_article_total_pages, instead of the line below -->
	 <!-- <xsl:value-of select="number($second) - number($first) +1" /> -->
	  	  <xsl:apply-templates select="journal_article_total_pages"/>
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
     
    <!-- Journal Article Scopus ID -->
    <xsl:choose>
      <xsl:when test="journal_article_scopus_id">
<identifier type="scopus">
	        <xsl:apply-templates select="journal_article_scopus_id"/>
</identifier>
      </xsl:when>
    </xsl:choose>
    
         <!-- HERDC information - Journal Article Peer reviewed -->
 <xsl:if test="journal_article_peer_reviewed">
<note type="peer_reviewed"><xsl:apply-templates select="journal_article_peer_reviewed"/></note> 
</xsl:if>

    
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
           <roleTerm authority="marcrelator" type="text">editor</roleTerm>
        </role>
		</name>
      </xsl:when>
    </xsl:choose>      

      <!--Other Journal Editors -->
    <xsl:apply-templates select="*[starts-with(local-name(),'journal_editors_')]"/>		
		
        </relatedItem>
      </xsl:when>
    </xsl:choose>


    
          <!-- HERDC information - Journal ERA id -->
 <xsl:if test="journal_ERA_id">
<note type="journal_era_id"><xsl:apply-templates select="journal_ERA_id"/></note> 
</xsl:if>

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
           <roleTerm authority="marcrelator" type="text">editor</roleTerm>
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
      <xsl:when test="journal_article_o_english_title">
        <titleInfo type="alternative">
          <title>
           	<xsl:apply-templates select="journal_article_o_english_title"/>
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

		<physicalDescription>
			<form authority="marcform">print</form>
			<extent>
			<!-- Maybe it would be safer to use journal_article_o_total_pages, instead of the line below -->
	  <xsl:value-of select=" journal_article_o_total_pages" />
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
     
    
    <!-- Journal Article O Scopus ID -->
    <xsl:choose>
      <xsl:when test="journal_article_o_scopus_id">
<identifier type="scopus">
	        <xsl:apply-templates select="journal_article_o_scopus_id"/>
</identifier>
      </xsl:when>
    </xsl:choose>
    
         <!-- HERDC information - Journal Article O Peer reviewed -->
 <xsl:if test="journal_article_o_peer_reviewed">
<note type="peer_reviewed"><xsl:apply-templates select="journal_article_o_peer_reviewed"/></note> 
</xsl:if>    
    
    
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
           <roleTerm authority="marcrelator" type="text">editor</roleTerm>
        </role>
		</name>
      </xsl:when>
    </xsl:choose>      

      <!--Other Journal O Editors -->
    <xsl:apply-templates select="*[starts-with(local-name(),'journal_o_editors_')]"/>		
		
        </relatedItem>
      </xsl:when>
    </xsl:choose>


        
           <!-- HERDC information - Journal ERA id -->
 <xsl:if test="journal_o_ERA_id">
<note type="journal_era_id"><xsl:apply-templates select="journal_o_ERA_id"/></note> 
</xsl:if>

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
           <roleTerm authority="marcrelator" type="text">editor</roleTerm>
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
  
     <!-- Multiple FOR_code -->
  <xsl:template match="*[starts-with(local-name(),'FOR_code_')]">
	<xsl:variable name="fornum" select="substring-after(name(),'FOR_code_')"/>
	<xsl:variable name="FOR_code" select="concat('FOR_code_',$fornum)"/>
	<xsl:variable name="FOR_app" select="concat('FOR_apportionment_',$fornum)"/>
<!-- <subject> 
<topic> -->
<note type='FOR_code'>
<xsl:attribute name="apportionment"> <xsl:apply-templates select="//*[local-name()=$FOR_app]"/></xsl:attribute>
<note type="anzsrc_FOR_field_of_research_code">
<xsl:if test="//*[local-name()=$FOR_code] = '010101'">010101 - Algebra and Number Theory</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '010102'">010102 - Algebraic and Differential Geometry</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '010103'">010103 - Category Theory, K Theory, Homological Algebra</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '010104'">010104 - Combinatorics and Discrete Mathematics (excl. Physical Combinatorics)</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '010105'">010105 - Group Theory and Generalisations</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '010106'">010106 - Lie Groups, Harmonic and Fourier Analysis</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '010107'">010107 - Mathematical Logic, Set Theory, Lattices and Universal Algebra</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '010108'">010108 - Operator Algebras and Functional Analysis</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '010109'">010109 - Ordinary Differential Equations, Difference Equations and Dynamical Systems</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '010110'">010110 - Partial Differential Equations</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '010111'">010111 - Real and Complex Functions (incl. Several Variables)</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '010112'">010112 - Topology</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '010199'">010199 - Pure Mathematics not elsewhere classified</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '010201'">010201 - Approximation Theory and Asymptotic Methods</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '010202'">010202 - Biological Mathematics</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '010203'">010203 - Calculus of Variations, Systems Theory and Control Theory</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '010204'">010204 - Dynamical Systems in Applications</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '010205'">010205 - Financial Mathematics</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '010206'">010206 - Operations Research</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '010207'">010207 - Theoretical and Applied Mechanics</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '010299'">010299 - Applied Mathematics not elsewhere classified</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '010301'">010301 - Numerical Analysis</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '010302'">010302 - Numerical Solution of Differential and Integral Equations</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '010303'">010303 - Optimisation</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '010399'">010399 - Numerical and Computational Mathematics not elsewhere classified</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '010401'">010401 - Applied Statistics</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '010402'">010402 - Biostatistics</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '010403'">010403 - Forensic Statistics</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '010404'">010404 - Probability Theory</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '010405'">010405 - Statistical Theory</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '010406'">010406 - Stochastic Analysis and Modelling</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '010499'">010499 - Statistics not elsewhere classified</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '010501'">010501 - Algebraic Structures in Mathematical Physics</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '010502'">010502 - Integrable Systems (Classical and Quantum)</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '010503'">010503 - Mathematical Aspects of Classical Mechanics, Quantum Mechanics and Quantum Information Theory</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '010504'">010504 - Mathematical Aspects of General Relativity</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '010505'">010505 - Mathematical Aspects of Quantum and Conformal Field Theory, Quantum Gravity and String Theory</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '010506'">010506 - Statistical Mechanics, Physical Combinatorics and Mathematical Aspects of Condensed Matter</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '010599'">010599 - Mathematical Physics not elsewhere classified</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '019999'">019999 - Mathematical Sciences not elsewhere classified</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '020101'">020101 - Astrobiology</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '020102'">020102 - Astronomical and Space Instrumentation</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '020103'">020103 - Cosmology and Extragalactic Astronomy</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '020104'">020104 - Galactic Astronomy</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '020105'">020105 - General Relativity and Gravitational Waves</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '020106'">020106 - High Energy Astrophysics; Cosmic Rays</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '020107'">020107 - Mesospheric, Ionospheric and Magnetospheric Physics</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '020108'">020108 - Planetary Science (excl. Extraterrestrial Geology)</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '020109'">020109 - Space and Solar Physics</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '020110'">020110 - Stellar Astronomy and Planetary Systems</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '020199'">020199 - Astronomical and Space Sciences not elsewhere classified</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '020201'">020201 - Atomic and Molecular Physics</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '020202'">020202 - Nuclear Physics</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '020203'">020203 - Particle Physics</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '020204'">020204 - Plasma Physics; Fusion Plasmas; Electrical Discharges</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '020299'">020299 - Atomic, Molecular, Nuclear, Particle and Plasma Physics not elsewhere classified</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '020301'">020301 - Acoustics and Acoustical Devices; Waves</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '020302'">020302 - Electrostatics and Electrodynamics</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '020303'">020303 - Fluid Physics</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '020304'">020304 - Thermodynamics and Statistical Physics</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '020399'">020399 - Classical Physics not elsewhere classified</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '020401'">020401 - Condensed Matter Characterisation Technique Development</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '020402'">020402 - Condensed Matter Imaging</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '020403'">020403 - Condensed Matter Modelling and Density Functional Theory</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '020404'">020404 - Electronic and Magnetic Properties of Condensed Matter; Superconductivity</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '020405'">020405 - Soft Condensed Matter</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '020406'">020406 - Surfaces and Structural Properties of Condensed Matter</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '020499'">020499 - Condensed Matter Physics not elsewhere classified</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '020501'">020501 - Classical and Physical Optics</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '020502'">020502 - Lasers and Quantum Electronics</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '020503'">020503 - Nonlinear Optics and Spectroscopy</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '020504'">020504 - Photonics, Optoelectronics and Optical Communications</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '020599'">020599 - Optical Physics not elsewhere classified</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '020601'">020601 - Degenerate Quantum Gases and Atom Optics</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '020602'">020602 - Field Theory and String Theory</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '020603'">020603 - Quantum Information, Computation and Communication</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '020604'">020604 - Quantum Optics</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '020699'">020699 - Quantum Physics not elsewhere classified</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '029901'">029901 - Biological Physics</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '029902'">029902 - Complex Physical Systems</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '029903'">029903 - Medical Physics</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '029904'">029904 - Synchrotrons; Accelerators; Instruments and Techniques</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '029999'">029999 - Physical Sciences not elsewhere classified</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '030101'">030101 - Analytical Spectrometry</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '030102'">030102 - Electroanalytical Chemistry</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '030103'">030103 - Flow Analysis</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '030104'">030104 - Immunological and Bioassay Methods</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '030105'">030105 - Instrumental Methods (excl. Immunological and Bioassay Methods)</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '030106'">030106 - Quality Assurance, Chemometrics, Traceability and Metrological Chemistry</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '030107'">030107 - Sensor Technology (Chemical aspects)</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '030108'">030108 - Separation Science</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '030199'">030199 - Analytical Chemistry not elsewhere classified</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '030201'">030201 - Bioinorganic Chemistry</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '030202'">030202 - f-Block Chemistry</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '030203'">030203 - Inorganic Green Chemistry</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '030204'">030204 - Main Group Metal Chemistry</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '030205'">030205 - Non-metal Chemistry</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '030206'">030206 - Solid State Chemistry</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '030207'">030207 - Transition Metal Chemistry</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '030299'">030299 - Inorganic Chemistry not elsewhere classified</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '030301'">030301 - Chemical Characterisation of Materials</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '030302'">030302 - Nanochemistry and Supramolecular Chemistry</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '030303'">030303 - Optical Properties of Materials</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '030304'">030304 - Physical Chemistry of Materials</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '030305'">030305 - Polymerisation Mechanisms</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '030306'">030306 - Synthesis of Materials</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '030307'">030307 - Theory and Design of Materials</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '030399'">030399 - Macromolecular and Materials Chemistry not elsewhere classified</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '030401'">030401 - Biologically Active Molecules</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '030402'">030402 - Biomolecular Modelling and Design</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '030403'">030403 - Characterisation of Biological Macromolecules</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '030404'">030404 - Cheminformatics and Quantitative Structure-Activity Relationships</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '030405'">030405 - Molecular Medicine</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '030406'">030406 - Proteins and Peptides</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '030499'">030499 - Medicinal and Biomolecular Chemistry not elsewhere classified</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '030501'">030501 - Free Radical Chemistry</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '030502'">030502 - Natural Products Chemistry</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '030503'">030503 - Organic Chemical Synthesis</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '030504'">030504 - Organic Green Chemistry</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '030505'">030505 - Physical Organic Chemistry</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '030599'">030599 - Organic Chemistry not elsewhere classified</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '030601'">030601 - Catalysis and Mechanisms of Reactions</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '030602'">030602 - Chemical Thermodynamics and Energetics</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '030603'">030603 - Colloid and Surface Chemistry</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '030604'">030604 - Electrochemistry</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '030605'">030605 - Solution Chemistry</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '030606'">030606 - Structural Chemistry and Spectroscopy</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '030607'">030607 - Transport Properties and Non-Equilibrium Processes</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '030699'">030699 - Physical Chemistry not elsewhere classified</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '030701'">030701 - Quantum Chemistry</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '030702'">030702 - Radiation and Matter</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '030703'">030703 - Reaction Kinetics and Dynamics</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '030704'">030704 - Statistical Mechanics in Chemistry</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '030799'">030799 - Theoretical and Computational Chemistry not elsewhere classified</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '039901'">039901 - Environmental Chemistry (incl. Atmospheric Chemistry)</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '039902'">039902 - Forensic Chemistry</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '039903'">039903 - Industrial Chemistry</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '039904'">039904 - Organometallic Chemistry</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '039999'">039999 - Chemical Sciences not elsewhere classified</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '040101'">040101 - Atmospheric Aerosols</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '040102'">040102 - Atmospheric Dynamics</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '040103'">040103 - Atmospheric Radiation</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '040104'">040104 - Climate Change Processes</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '040105'">040105 - Climatology (excl. Climate Change Processes)</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '040106'">040106 - Cloud Physics</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '040107'">040107 - Meteorology</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '040108'">040108 - Tropospheric and Stratospheric Physics</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '040199'">040199 - Atmospheric Sciences not elsewhere classified</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '040201'">040201 - Exploration Geochemistry</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '040202'">040202 - Inorganic Geochemistry</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '040203'">040203 - Isotope Geochemistry</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '040204'">040204 - Organic Geochemistry</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '040299'">040299 - Geochemistry not elsewhere classified</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '040301'">040301 - Basin Analysis</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '040302'">040302 - Extraterrestrial Geology</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '040303'">040303 - Geochronology</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '040304'">040304 - Igneous and Metamorphic Petrology</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '040305'">040305 - Marine Geoscience</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '040306'">040306 - Mineralogy and Crystallography</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '040307'">040307 - Ore Deposit Petrology</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '040308'">040308 - Palaeontology (incl. Palynology)</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '040309'">040309 - Petroleum and Coal Geology</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '040310'">040310 - Sedimentology</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '040311'">040311 - Stratigraphy (incl. Biostratigraphy and Sequence Stratigraphy)</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '040312'">040312 - Structural Geology</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '040313'">040313 - Tectonics</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '040314'">040314 - Volcanology</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '040399'">040399 - Geology not elsewhere classified</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '040401'">040401 - Electrical and Electromagnetic Methods in Geophysics</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '040402'">040402 - Geodynamics</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '040403'">040403 - Geophysical Fluid Dynamics</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '040404'">040404 - Geothermics and Radiometrics</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '040405'">040405 - Gravimetrics</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '040406'">040406 - Magnetism and Palaeomagnetism</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '040407'">040407 - Seismology and Seismic Exploration</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '040499'">040499 - Geophysics not elsewhere classified</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '040501'">040501 - Biological Oceanography</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '040502'">040502 - Chemical Oceanography</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '040503'">040503 - Physical Oceanography</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '040599'">040599 - Oceanography not elsewhere classified</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '040601'">040601 - Geomorphology and Regolith and Landscape Evolution</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '040602'">040602 - Glaciology</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '040603'">040603 - Hydrogeology</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '040604'">040604 - Natural Hazards</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '040605'">040605 - Palaeoclimatology</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '040606'">040606 - Quaternary Environments</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '040607'">040607 - Surface Processes</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '040608'">040608 - Surfacewater Hydrology</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '040699'">040699 - Physical Geography and Environmental Geoscience not elsewhere classified</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '049999'">049999 - Earth Sciences not elsewhere classified</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '050101'">050101 - Ecological Impacts of Climate Change</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '050102'">050102 - Ecosystem Function</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '050103'">050103 - Invasive Species Ecology</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '050104'">050104 - Landscape Ecology</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '050199'">050199 - Ecological Applications not elsewhere classified</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '050201'">050201 - Aboriginal and Torres Strait Islander Environmental Knowledge</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '050202'">050202 - Conservation and Biodiversity</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '050203'">050203 - Environmental Education and Extension</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '050204'">050204 - Environmental Impact Assessment</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '050205'">050205 - Environmental Management</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '050206'">050206 - Environmental Monitoring</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '050207'">050207 - Environmental Rehabilitation (excl. Bioremediation)</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '050208'">050208 - Maori Environmental Knowledge</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '050209'">050209 - Natural Resource Management</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '050210'">050210 - Pacific Peoples Environmental Knowledge</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '050211'">050211 - Wildlife and Habitat Management</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '050299'">050299 - Environmental Science and Management not elsewhere classified</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '050301'">050301 - Carbon Sequestration Science</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '050302'">050302 - Land Capability and Soil Degradation</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '050303'">050303 - Soil Biology</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '050304'">050304 - Soil Chemistry (excl. Carbon Sequestration Science)</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '050305'">050305 - Soil Physics</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '050399'">050399 - Soil Sciences not elsewhere classified</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '059999'">059999 - Environmental Sciences not elsewhere classified</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '060101'">060101 - Analytical Biochemistry</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '060102'">060102 - Bioinformatics</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '060103'">060103 - Cell Development, Proliferation and Death</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '060104'">060104 - Cell Metabolism</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '060105'">060105 - Cell Neurochemistry</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '060106'">060106 - Cellular Interactions (incl. Adhesion, Matrix, Cell Wall)</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '060107'">060107 - Enzymes</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '060108'">060108 - Protein Trafficking</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '060109'">060109 - Proteomics and Intermolecular Interactions (excl. Medical Proteomics)</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '060110'">060110 - Receptors and Membrane Biology</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '060111'">060111 - Signal Transduction</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '060112'">060112 - Structural Biology (incl. Macromolecular Modelling)</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '060113'">060113 - Synthetic Biology</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '060114'">060114 - Systems Biology</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '060199'">060199 - Biochemistry and Cell Biology not elsewhere classified</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '060201'">060201 - Behavioural Ecology</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '060202'">060202 - Community Ecology</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '060203'">060203 - Ecological Physiology</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '060204'">060204 - Freshwater Ecology</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '060205'">060205 - Marine and Estuarine Ecology (incl. Marine Ichthyology)</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '060206'">060206 - Palaeoecology</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '060207'">060207 - Population Ecology</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '060208'">060208 - Terrestrial Ecology</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '060299'">060299 - Ecology not elsewhere classified</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '060301'">060301 - Animal Systematics and Taxonomy</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '060302'">060302 - Biogeography and Phylogeography</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '060303'">060303 - Biological Adaptation</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '060304'">060304 - Ethology and Sociobiology</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '060305'">060305 - Evolution of Developmental Systems</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '060306'">060306 - Evolutionary Impacts of Climate Change</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '060307'">060307 - Host-Parasite Interactions</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '060308'">060308 - Life Histories</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '060309'">060309 - Phylogeny and Comparative Analysis</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '060310'">060310 - Plant Systematics and Taxonomy</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '060311'">060311 - Speciation and Extinction</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '060399'">060399 - Evolutionary Biology not elsewhere classified</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '060401'">060401 - Anthropological Genetics</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '060402'">060402 - Cell and Nuclear Division</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '060403'">060403 - Developmental Genetics (incl. Sex Determination)</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '060404'">060404 - Epigenetics (incl. Genome Methylation and Epigenomics)</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '060405'">060405 - Gene Expression (incl. Microarray and other genome-wide approaches)</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '060406'">060406 - Genetic Immunology</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '060407'">060407 - Genome Structure and Regulation</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '060408'">060408 - Genomics</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '060409'">060409 - Molecular Evolution</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '060410'">060410 - Neurogenetics</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '060411'">060411 - Population, Ecological and Evolutionary Genetics</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '060412'">060412 - Quantitative Genetics (incl. Disease and Trait Mapping Genetics)</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '060499'">060499 - Genetics not elsewhere classified</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '060501'">060501 - Bacteriology</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '060502'">060502 - Infectious Agents</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '060503'">060503 - Microbial Genetics</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '060504'">060504 - Microbial Ecology</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '060505'">060505 - Mycology</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '060506'">060506 - Virology</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '060599'">060599 - Microbiology not elsewhere classified</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '060601'">060601 - Animal Physiology - Biophysics</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '060602'">060602 - Animal Physiology - Cell</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '060603'">060603 - Animal Physiology - Systems</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '060604'">060604 - Comparative Physiology</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '060699'">060699 - Physiology not elsewhere classified</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '060701'">060701 - Phycology (incl. Marine Grasses)</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '060702'">060702 - Plant Cell and Molecular Biology</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '060703'">060703 - Plant Developmental and Reproductive Biology</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '060704'">060704 - Plant Pathology</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '060705'">060705 - Plant Physiology</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '060799'">060799 - Plant Biology not elsewhere classified</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '060801'">060801 - Animal Behaviour</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '060802'">060802 - Animal Cell and Molecular Biology</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '060803'">060803 - Animal Developmental and Reproductive Biology</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '060804'">060804 - Animal Immunology</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '060805'">060805 - Animal Neurobiology</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '060806'">060806 - Animal Physiological Ecology</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '060807'">060807 - Animal Structure and Function</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '060808'">060808 - Invertebrate Biology</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '060809'">060809 - Vertebrate Biology</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '060899'">060899 - Zoology not elsewhere classified</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '069901'">069901 - Forensic Biology</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '069902'">069902 - Global Change Biology</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '069999'">069999 - Biological Sciences not elsewhere classified</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '070101'">070101 - Agricultural Land Management</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '070102'">070102 - Agricultural Land Planning</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '070103'">070103 - Agricultural Production Systems Simulation</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '070104'">070104 - Agricultural Spatial Analysis and Modelling</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '070105'">070105 - Agricultural Systems Analysis and Modelling</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '070106'">070106 - Farm Management, Rural Management and Agribusiness</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '070107'">070107 - Farming Systems Research</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '070108'">070108 - Sustainable Agricultural Development</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '070199'">070199 - Agriculture, Land and Farm Management not elsewhere classified</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '070201'">070201 - Animal Breeding</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '070202'">070202 - Animal Growth and Development</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '070203'">070203 - Animal Management</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '070204'">070204 - Animal Nutrition</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '070205'">070205 - Animal Protection (Pests and Pathogens)</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '070206'">070206 - Animal Reproduction</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '070207'">070207 - Humane Animal Treatment</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '070299'">070299 - Animal Production not elsewhere classified</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '070301'">070301 - Agro-ecosystem Function and Prediction</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '070302'">070302 - Agronomy</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '070303'">070303 - Crop and Pasture Biochemistry and Physiology</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '070304'">070304 - Crop and Pasture Biomass and Bioproducts</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '070305'">070305 - Crop and Pasture Improvement (Selection and Breeding)</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '070306'">070306 - Crop and Pasture Nutrition</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '070307'">070307 - Crop and Pasture Post Harvest Technologies (incl. Transportation and Storage)</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '070308'">070308 - Crop and Pasture Protection (Pests, Diseases and Weeds)</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '070399'">070399 - Crop and Pasture Production not elsewhere classified</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '070401'">070401 - Aquaculture</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '070402'">070402 - Aquatic Ecosystem Studies and Stock Assessment</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '070403'">070403 - Fisheries Management</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '070404'">070404 - Fish Pests and Diseases</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '070405'">070405 - Fish Physiology and Genetics</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '070406'">070406 - Post-Harvest Fisheries Technologies (incl. Transportation)</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '070499'">070499 - Fisheries Sciences not elsewhere classified</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '070501'">070501 - Agroforestry</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '070502'">070502 - Forestry Biomass and Bioproducts</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '070503'">070503 - Forestry Fire Management</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '070504'">070504 - Forestry Management and Environment</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '070505'">070505 - Forestry Pests, Health and Diseases</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '070506'">070506 - Forestry Product Quality Assessment</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '070507'">070507 - Tree Improvement (Selection and Breeding)</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '070508'">070508 - Tree Nutrition and Physiology</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '070509'">070509 - Wood Fibre Processing</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '070510'">070510 - Wood Processing</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '070599'">070599 - Forestry Sciences not elsewhere classified</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '070601'">070601 - Horticultural Crop Growth and Development</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '070602'">070602 - Horticultural Crop Improvement (Selection and Breeding)</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '070603'">070603 - Horticultural Crop Protection (Pests, Diseases and Weeds)</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '070604'">070604 - Oenology and Viticulture</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '070605'">070605 - Post Harvest Horticultural Technologies (incl. Transportation and Storage)</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '070699'">070699 - Horticultural Production not elsewhere classified</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '070701'">070701 - Veterinary Anaesthesiology and Intensive Care</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '070702'">070702 - Veterinary Anatomy and Physiology</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '070703'">070703 - Veterinary Diagnosis and Diagnostics</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '070704'">070704 - Veterinary Epidemiology</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '070705'">070705 - Veterinary Immunology</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '070706'">070706 - Veterinary Medicine</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '070707'">070707 - Veterinary Microbiology (excl. Virology)</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '070708'">070708 - Veterinary Parasitology</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '070709'">070709 - Veterinary Pathology</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '070710'">070710 - Veterinary Pharmacology</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '070711'">070711 - Veterinary Surgery</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '070712'">070712 - Veterinary Virology</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '070799'">070799 - Veterinary Sciences not elsewhere classified</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '079901'">079901 - Agricultural Hydrology (Drainage, Flooding, Irrigation, Quality, etc.)</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '079902'">079902 - Fertilisers and Agrochemicals (Application etc.)</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '079999'">079999 - Agricultural and Veterinary Sciences not elsewhere classified</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '080101'">080101 - Adaptive Agents and Intelligent Robotics</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '080102'">080102 - Artificial Life</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '080103'">080103 - Computer Graphics</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '080104'">080104 - Computer Vision</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '080105'">080105 - Expert Systems</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '080106'">080106 - Image Processing</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '080107'">080107 - Natural Language Processing</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '080108'">080108 - Neural, Evolutionary and Fuzzy Computation</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '080109'">080109 - Pattern Recognition and Data Mining</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '080110'">080110 - Simulation and Modelling</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '080111'">080111 - Virtual Reality and Related Simulation</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '080199'">080199 - Artificial Intelligence and Image Processing not elsewhere classified</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '080201'">080201 - Analysis of Algorithms and Complexity</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '080202'">080202 - Applied Discrete Mathematics</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '080203'">080203 - Computational Logic and Formal Languages</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '080204'">080204 - Mathematical Software</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '080205'">080205 - Numerical Computation</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '080299'">080299 - Computation Theory and Mathematics not elsewhere classified</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '080301'">080301 - Bioinformatics Software</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '080302'">080302 - Computer System Architecture</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '080303'">080303 - Computer System Security</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '080304'">080304 - Concurrent Programming</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '080305'">080305 - Multimedia Programming</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '080306'">080306 - Open Software</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '080307'">080307 - Operating Systems</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '080308'">080308 - Programming Languages</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '080309'">080309 - Software Engineering</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '080399'">080399 - Computer Software not elsewhere classified</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '080401'">080401 - Coding and Information Theory</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '080402'">080402 - Data Encryption</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '080403'">080403 - Data Structures</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '080404'">080404 - Markup Languages</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '080499'">080499 - Data Format not elsewhere classified</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '080501'">080501 - Distributed and Grid Systems</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '080502'">080502 - Mobile Technologies</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '080503'">080503 - Networking and Communications</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '080504'">080504 - Ubiquitous Computing</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '080505'">080505 - Web Technologies (excl. Web Search)</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '080599'">080599 - Distributed Computing not elsewhere classified</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '080601'">080601 - Aboriginal and Torres Strait Islander Information and Knowledge Systems</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '080602'">080602 - Computer-Human Interaction</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '080603'">080603 - Conceptual Modelling</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '080604'">080604 - Database Management</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '080605'">080605 - Decision Support and Group Support Systems</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '080606'">080606 - Global Information Systems</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '080607'">080607 - Information Engineering and Theory</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '080608'">080608 - Information Systems Development Methodologies</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '080609'">080609 - Information Systems Management</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '080610'">080610 - Information Systems Organisation</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '080611'">080611 - Information Systems Theory</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '080612'">080612 - Interorganisational Information Systems and Web Services</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '080613'">080613 - Maori Information and Knowledge Systems</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '080614'">080614 - Pacific Peoples Information and Knowledge Systems</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '080699'">080699 - Information Systems not elsewhere classified</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '080701'">080701 - Aboriginal and Torres Strait Islander Knowledge Management</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '080702'">080702 - Health Informatics</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '080703'">080703 - Human Information Behaviour</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '080704'">080704 - Information Retrieval and Web Search</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '080705'">080705 - Informetrics</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '080706'">080706 - Librarianship</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '080707'">080707 - Organisation of Information and Knowledge Resources</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '080708'">080708 - Records and Information Management (excl. Business Records and Information Management)</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '080709'">080709 - Social and Community Informatics</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '080799'">080799 - Library and Information Studies not elsewhere classified</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '089999'">089999 - Information and Computing Sciences not elsewhere classified</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '090101'">090101 - Aerodynamics (excl. Hypersonic Aerodynamics)</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '090102'">090102 - Aerospace Materials</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '090103'">090103 - Aerospace Structures</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '090104'">090104 - Aircraft Performance and Flight Control Systems</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '090105'">090105 - Avionics</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '090106'">090106 - Flight Dynamics</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '090107'">090107 - Hypersonic Propulsion and Hypersonic Aerodynamics</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '090108'">090108 - Satellite, Space Vehicle and Missile Design and Testing</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '090199'">090199 - Aerospace Engineering not elsewhere classified</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '090201'">090201 - Automotive Combustion and Fuel Engineering (incl. Alternative/Renewable Fuels)</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '090202'">090202 - Automotive Engineering Materials</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '090203'">090203 - Automotive Mechatronics</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '090204'">090204 - Automotive Safety Engineering</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '090205'">090205 - Hybrid Vehicles and Powertrains</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '090299'">090299 - Automotive Engineering not elsewhere classified</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '090301'">090301 - Biomaterials</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '090302'">090302 - Biomechanical Engineering</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '090303'">090303 - Biomedical Instrumentation</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '090304'">090304 - Medical Devices</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '090305'">090305 - Rehabilitation Engineering</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '090399'">090399 - Biomedical Engineering not elsewhere classified</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '090401'">090401 - Carbon Capture Engineering (excl. Sequestration)</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '090402'">090402 - Catalytic Process Engineering</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '090403'">090403 - Chemical Engineering Design</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '090404'">090404 - Membrane and Separation Technologies</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '090405'">090405 - Non-automotive Combustion and Fuel Engineering (incl. Alternative/Renewable Fuels)</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '090406'">090406 - Powder and Particle Technology</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '090407'">090407 - Process Control and Simulation</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '090408'">090408 - Rheology</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '090409'">090409 - Wastewater Treatment Processes</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '090410'">090410 - Water Treatment Processes</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '090499'">090499 - Chemical Engineering not elsewhere classified</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '090501'">090501 - Civil Geotechnical Engineering</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '090502'">090502 - Construction Engineering</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '090503'">090503 - Construction Materials</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '090504'">090504 - Earthquake Engineering</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '090505'">090505 - Infrastructure Engineering and Asset Management</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '090506'">090506 - Structural Engineering</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '090507'">090507 - Transport Engineering</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '090508'">090508 - Water Quality Engineering</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '090509'">090509 - Water Resources Engineering</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '090599'">090599 - Civil Engineering not elsewhere classified</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '090601'">090601 - Circuits and Systems</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '090602'">090602 - Control Systems, Robotics and Automation</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '090603'">090603 - Industrial Electronics</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '090604'">090604 - Microelectronics and Integrated Circuits</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '090605'">090605 - Photodetectors, Optical Sensors and Solar Cells</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '090606'">090606 - Photonics and Electro-Optical Engineering (excl. Communications)</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '090607'">090607 - Power and Energy Systems Engineering (excl. Renewable Power)</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '090608'">090608 - Renewable Power and Energy Systems Engineering (excl. Solar Cells)</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '090609'">090609 - Signal Processing</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '090699'">090699 - Electrical and Electronic Engineering not elsewhere classified</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '090701'">090701 - Environmental Engineering Design</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '090702'">090702 - Environmental Engineering Modelling</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '090703'">090703 - Environmental Technologies</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '090799'">090799 - Environmental Engineering not elsewhere classified</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '090801'">090801 - Food Chemistry and Molecular Gastronomy (excl. Wine)</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '090802'">090802 - Food Engineering</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '090803'">090803 - Food Nutritional Balance</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '090804'">090804 - Food Packaging, Preservation and Safety</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '090805'">090805 - Food Processing</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '090806'">090806 - Wine Chemistry and Wine Sensory Science</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '090899'">090899 - Food Sciences not elsewhere classified</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '090901'">090901 - Cartography</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '090902'">090902 - Geodesy</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '090903'">090903 - Geospatial Information Systems</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '090904'">090904 - Navigation and Position Fixing</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '090905'">090905 - Photogrammetry and Remote Sensing</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '090906'">090906 - Surveying (incl. Hydrographic Surveying)</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '090999'">090999 - Geomatic Engineering not elsewhere classified</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '091001'">091001 - CAD/CAM Systems</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '091002'">091002 - Flexible Manufacturing Systems</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '091003'">091003 - Machine Tools</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '091004'">091004 - Machining</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '091005'">091005 - Manufacturing Management</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '091006'">091006 - Manufacturing Processes and Technologies (excl. Textiles)</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '091007'">091007 - Manufacturing Robotics and Mechatronics (excl. Automotive Mechatronics)</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '091008'">091008 - Manufacturing Safety and Quality</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '091009'">091009 - Microtechnology</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '091010'">091010 - Packaging, Storage and Transportation (excl. Food and Agricultural Products)</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '091011'">091011 - Precision Engineering</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '091012'">091012 - Textile Technology</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '091099'">091099 - Manufacturing Engineering not elsewhere classified</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '091101'">091101 - Marine Engineering</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '091102'">091102 - Naval Architecture</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '091103'">091103 - Ocean Engineering</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '091104'">091104 - Ship and Platform Hydrodynamics</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '091105'">091105 - Ship and Platform Structures</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '091106'">091106 - Special Vehicles</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '091199'">091199 - Maritime Engineering not elsewhere classified</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '091201'">091201 - Ceramics</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '091202'">091202 - Composite and Hybrid Materials</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '091203'">091203 - Compound Semiconductors</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '091204'">091204 - Elemental Semiconductors</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '091205'">091205 - Functional Materials</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '091206'">091206 - Glass</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '091207'">091207 - Metals and Alloy Materials</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '091208'">091208 - Organic Semiconductors</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '091209'">091209 - Polymers and Plastics</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '091210'">091210 - Timber, Pulp and Paper</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '091299'">091299 - Materials Engineering not elsewhere classified</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '091301'">091301 - Acoustics and Noise Control (excl. Architectural Acoustics)</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '091302'">091302 - Automation and Control Engineering</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '091303'">091303 - Autonomous Vehicles</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '091304'">091304 - Dynamics, Vibration and Vibration Control</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '091305'">091305 - Energy Generation, Conversion and Storage Engineering</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '091306'">091306 - Microelectromechanical Systems (MEMS)</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '091307'">091307 - Numerical Modelling and Mechanical Characterisation</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '091308'">091308 - Solid Mechanics</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '091309'">091309 - Tribology</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '091399'">091399 - Mechanical Engineering not elsewhere classified</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '091401'">091401 - Electrometallurgy</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '091402'">091402 - Geomechanics and Resources Geotechnical Engineering</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '091403'">091403 - Hydrometallurgy</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '091404'">091404 - Mineral Processing/Beneficiation</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '091405'">091405 - Mining Engineering</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '091406'">091406 - Petroleum and Reservoir Engineering</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '091407'">091407 - Pyrometallurgy</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '091499'">091499 - Resources Engineering and Extractive Metallurgy not elsewhere classified</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '091501'">091501 - Computational Fluid Dynamics</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '091502'">091502 - Computational Heat Transfer</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '091503'">091503 - Engineering Practice</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '091504'">091504 - Fluidisation and Fluid Mechanics</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '091505'">091505 - Heat and Mass Transfer Operations</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '091506'">091506 - Nuclear Engineering (incl. Fuel Enrichment and Waste Processing and Storage)</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '091507'">091507 - Risk Engineering (excl. Earthquake Engineering)</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '091508'">091508 - Turbulent Flows</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '091599'">091599 - Interdisciplinary Engineering not elsewhere classified</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '099901'">099901 - Agricultural Engineering</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '099902'">099902 - Engineering Instrumentation</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '099999'">099999 - Engineering not elsewhere classified</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '100101'">100101 - Agricultural Biotechnology Diagnostics (incl. Biosensors)</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '100102'">100102 - Agricultural Marine Biotechnology</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '100103'">100103 - Agricultural Molecular Engineering of Nucleic Acids and Proteins</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '100104'">100104 - Genetically Modified Animals</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '100105'">100105 - Genetically Modified Field Crops and Pasture</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '100106'">100106 - Genetically Modified Horticulture Plants</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '100107'">100107 - Genetically Modified Trees</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '100108'">100108 - Livestock cloning</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '100109'">100109 - Transgenesis</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '100199'">100199 - Agricultural Biotechnology not elsewhere classified</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '100201'">100201 - Biodiscovery</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '100202'">100202 - Biological Control</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '100203'">100203 - Bioremediation</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '100204'">100204 - Environmental Biotechnology Diagnostics (incl. Biosensors)</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '100205'">100205 - Environmental Marine Biotechnology</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '100206'">100206 - Environmental Molecular Engineering of Nucleic Acids and Proteins</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '100299'">100299 - Environmental Biotechnology not elsewhere classified</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '100301'">100301 - Biocatalysis and Enzyme Technology</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '100302'">100302 - Bioprocessing, Bioproduction and Bioproducts</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '100303'">100303 - Fermentation</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '100304'">100304 - Industrial Biotechnology Diagnostics (incl. Biosensors)</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '100305'">100305 - Industrial Microbiology (incl. Biofeedstocks)</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '100306'">100306 - Industrial Molecular Engineering of Nucleic Acids and Proteins</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '100399'">100399 - Industrial Biotechnology not elsewhere classified</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '100401'">100401 - Gene and Molecular Therapy</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '100402'">100402 - Medical Biotechnology Diagnostics (incl. Biosensors)</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '100403'">100403 - Medical Molecular Engineering of Nucleic Acids and Proteins</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '100404'">100404 - Regenerative Medicine (incl. Stem Cells and Tissue Engineering)</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '100499'">100499 - Medical Biotechnology not elsewhere classified</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '100501'">100501 - Antennas and Propagation</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '100502'">100502 - Broadband and Modem Technology</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '100503'">100503 - Computer Communications Networks</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '100504'">100504 - Data Communications</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '100505'">100505 - Microwave and Millimetrewave Theory and Technology</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '100506'">100506 - Optical Fibre Communications</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '100507'">100507 - Optical Networks and Systems</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '100508'">100508 - Satellite Communications</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '100509'">100509 - Video Communications</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '100510'">100510 - Wireless Communications</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '100599'">100599 - Communications Technologies not elsewhere classified</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '100601'">100601 - Arithmetic and Logic Structures</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '100602'">100602 - Input, Output and Data Devices</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '100603'">100603 - Logic Design</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '100604'">100604 - Memory Structures</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '100605'">100605 - Performance Evaluation; Testing and Simulation of Reliability</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '100606'">100606 - Processor Architectures</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '100699'">100699 - Computer Hardware not elsewhere classified</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '100701'">100701 - Environmental Nanotechnology</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '100702'">100702 - Molecular and Organic Electronics</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '100703'">100703 - Nanobiotechnology</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '100704'">100704 - Nanoelectromechanical Systems</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '100705'">100705 - Nanoelectronics</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '100706'">100706 - Nanofabrication, Growth and Self Assembly</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '100707'">100707 - Nanomanufacturing</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '100708'">100708 - Nanomaterials</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '100709'">100709 - Nanomedicine</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '100710'">100710 - Nanometrology</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '100711'">100711 - Nanophotonics</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '100712'">100712 - Nanoscale Characterisation</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '100713'">100713 - Nanotoxicology, Health and Safety</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '100799'">100799 - Nanotechnology not elsewhere classified</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '109999'">109999 - Technology not elsewhere classified</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '110101'">110101 - Medical Biochemistry: Amino Acids and Metabolites</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '110102'">110102 - Medical Biochemistry: Carbohydrates</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '110103'">110103 - Medical Biochemistry: Inorganic Elements and Compounds</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '110104'">110104 - Medical Biochemistry: Lipids</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '110105'">110105 - Medical Biochemistry: Nucleic Acids</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '110106'">110106 - Medical Biochemistry: Proteins and Peptides (incl. Medical Proteomics)</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '110107'">110107 - Metabolic Medicine</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '110199'">110199 - Medical Biochemistry and Metabolomics not elsewhere classified</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '110201'">110201 - Cardiology (incl. Cardiovascular Diseases)</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '110202'">110202 - Haematology</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '110203'">110203 - Respiratory Diseases</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '110299'">110299 - Cardiovascular Medicine and Haematology not elsewhere classified</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '110301'">110301 - Anaesthesiology</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '110302'">110302 - Clinical Chemistry (diagnostics)</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '110303'">110303 - Clinical Microbiology</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '110304'">110304 - Dermatology</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '110305'">110305 - Emergency Medicine</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '110306'">110306 - Endocrinology</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '110307'">110307 - Gastroenterology and Hepatology</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '110308'">110308 - Geriatrics and Gerontology</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '110309'">110309 - Infectious Diseases</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '110310'">110310 - Intensive Care</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '110311'">110311 - Medical Genetics (excl. Cancer Genetics)</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '110312'">110312 - Nephrology and Urology</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '110313'">110313 - Nuclear Medicine</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '110314'">110314 - Orthopaedics</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '110315'">110315 - Otorhinolaryngology</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '110316'">110316 - Pathology</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '110317'">110317 - Physiotherapy</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '110318'">110318 - Podiatry</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '110319'">110319 - Psychiatry (incl. Psychotherapy)</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '110320'">110320 - Radiology and Organ Imaging</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '110321'">110321 - Rehabilitation and Therapy (excl. Physiotherapy)</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '110322'">110322 - Rheumatology and Arthritis</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '110323'">110323 - Surgery</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '110324'">110324 - Venereology</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '110399'">110399 - Clinical Sciences not elsewhere classified</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '110401'">110401 - Chiropractic</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '110402'">110402 - Naturopathy</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '110403'">110403 - Traditional Aboriginal and Torres Strait Islander Medicine and Treatments</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '110404'">110404 - Traditional Chinese Medicine and Treatments</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '110405'">110405 - Traditional Maori Medicine and Treatments</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '110499'">110499 - Complementary and Alternative Medicine not elsewhere classified</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '110501'">110501 - Dental Materials and Equipment</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '110502'">110502 - Dental Therapeutics, Pharmacology and Toxicology</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '110503'">110503 - Endodontics</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '110504'">110504 - Oral and Maxillofacial Surgery</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '110505'">110505 - Oral Medicine and Pathology</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '110506'">110506 - Orthodontics and Dentofacial Orthopaedics</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '110507'">110507 - Paedodontics</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '110508'">110508 - Periodontics</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '110509'">110509 - Special Needs Dentistry</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '110599'">110599 - Dentistry not elsewhere classified</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '110601'">110601 - Biomechanics</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '110602'">110602 - Exercise Physiology</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '110603'">110603 - Motor Control</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '110604'">110604 - Sports Medicine</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '110699'">110699 - Human Movement and Sports Science not elsewhere classified</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '110701'">110701 - Allergy</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '110702'">110702 - Applied Immunology (incl. Antibody Engineering, Xenotransplantation and T-cell Therapies)</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '110703'">110703 - Autoimmunity</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '110704'">110704 - Cellular Immunology</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '110705'">110705 - Humoural Immunology and Immunochemistry</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '110706'">110706 - Immunogenetics (incl. Genetic Immunology)</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '110707'">110707 - Innate Immunity</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '110708'">110708 - Transplantation Immunology</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '110709'">110709 - Tumour Immunology</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '110799'">110799 - Immunology not elsewhere classified</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '110801'">110801 - Medical Bacteriology</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '110802'">110802 - Medical Infection Agents (incl. Prions)</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '110803'">110803 - Medical Parasitology</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '110804'">110804 - Medical Virology</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '110899'">110899 - Medical Microbiology not elsewhere classified</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '110901'">110901 - Autonomic Nervous System</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '110902'">110902 - Cellular Nervous System</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '110903'">110903 - Central Nervous System</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '110904'">110904 - Neurology and Neuromuscular Diseases</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '110905'">110905 - Peripheral Nervous System</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '110906'">110906 - Sensory Systems</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '110999'">110999 - Neurosciences not elsewhere classified</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '111001'">111001 - Aged Care Nursing</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '111002'">111002 - Clinical Nursing: Primary (Preventative)</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '111003'">111003 - Clinical Nursing: Secondary (Acute Care)</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '111004'">111004 - Clinical Nursing: Tertiary (Rehabilitative)</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '111005'">111005 - Mental Health Nursing</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '111006'">111006 - Midwifery</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '111099'">111099 - Nursing not elsewhere classified</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '111101'">111101 - Clinical and Sports Nutrition</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '111102'">111102 - Dietetics and Nutrigenomics</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '111103'">111103 - Nutritional Physiology</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '111104'">111104 - Public Nutrition Intervention</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '111199'">111199 - Nutrition and Dietetics not elsewhere classified</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '111201'">111201 - Cancer Cell Biology</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '111202'">111202 - Cancer Diagnosis</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '111203'">111203 - Cancer Genetics</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '111204'">111204 - Cancer Therapy (excl. Chemotherapy and Radiation Therapy)</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '111205'">111205 - Chemotherapy</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '111206'">111206 - Haematological Tumours</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '111207'">111207 - Molecular Targets</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '111208'">111208 - Radiation Therapy</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '111209'">111209 - Solid Tumours</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '111299'">111299 - Oncology and Carcinogenesis not elsewhere classified</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '111301'">111301 - Ophthalmology</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '111302'">111302 - Optical Technology</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '111303'">111303 - Vision Science</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '111399'">111399 - Optometry and Ophthalmology not elsewhere classified</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '111401'">111401 - Foetal Development and Medicine</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '111402'">111402 - Obstetrics and Gynaecology</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '111403'">111403 - Paediatrics</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '111404'">111404 - Reproduction</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '111499'">111499 - Paediatrics and Reproductive Medicine not elsewhere classified</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '111501'">111501 - Basic Pharmacology</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '111502'">111502 - Clinical Pharmacology and Therapeutics</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '111503'">111503 - Clinical Pharmacy and Pharmacy Practice</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '111504'">111504 - Pharmaceutical Sciences</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '111505'">111505 - Pharmacogenomics</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '111506'">111506 - Toxicology (incl. Clinical Toxicology)</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '111599'">111599 - Pharmacology and Pharmaceutical Sciences not elsewhere classified</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '111601'">111601 - Cell Physiology</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '111602'">111602 - Human Biophysics</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '111603'">111603 - Systems Physiology</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '111699'">111699 - Medical Physiology not elsewhere classified</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '111701'">111701 - Aboriginal and Torres Strait Islander Health</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '111702'">111702 - Aged Health Care</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '111703'">111703 - Care for Disabled</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '111704'">111704 - Community Child Health</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '111705'">111705 - Environmental and Occupational Health and Safety</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '111706'">111706 - Epidemiology</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '111707'">111707 - Family Care</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '111708'">111708 - Health and Community Services</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '111709'">111709 - Health Care Administration</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '111710'">111710 - Health Counselling</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '111711'">111711 - Health Information Systems (incl. Surveillance)</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '111712'">111712 - Health Promotion</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '111713'">111713 - Maori Health</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '111714'">111714 - Mental Health</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '111715'">111715 - Pacific Peoples Health</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '111716'">111716 - Preventive Medicine</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '111717'">111717 - Primary Health Care</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '111718'">111718 - Residential Client Care</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '111799'">111799 - Public Health and Health Services not elsewhere classified</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '119999'">119999 - Medical and Health Sciences not elsewhere classified</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '120101'">120101 - Architectural Design</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '120102'">120102 - Architectural Heritage and Conservation</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '120103'">120103 - Architectural History and Theory</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '120104'">120104 - Architectural Science and Technology (incl. Acoustics, Lighting, Structure and Ecologically Sustainable Design)</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '120105'">120105 - Architecture Management</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '120106'">120106 - Interior Design</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '120107'">120107 - Landscape Architecture</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '120199'">120199 - Architecture not elsewhere classified</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '120201'">120201 - Building Construction Management and Project Planning</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '120202'">120202 - Building Science and Techniques</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '120203'">120203 - Quantity Surveying</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '120299'">120299 - Building not elsewhere classified</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '120301'">120301 - Design History and Theory</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '120302'">120302 - Design Innovation</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '120303'">120303 - Design Management and Studio and Professional Practice</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '120304'">120304 - Digital and Interaction Design</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '120305'">120305 - Industrial Design</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '120306'">120306 - Textile and Fashion Design</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '120307'">120307 - Visual Communication Design (incl. Graphic Design)</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '120399'">120399 - Design Practice and Management not elsewhere classified</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '120401'">120401 - Engineering Design Empirical Studies</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '120402'">120402 - Engineering Design Knowledge</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '120403'">120403 - Engineering Design Methods</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '120404'">120404 - Engineering Systems Design</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '120405'">120405 - Models of Engineering Design</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '120499'">120499 - Engineering Design not elsewhere classified</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '120501'">120501 - Community Planning</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '120502'">120502 - History and Theory of the Built Environment (excl. Architecture)</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '120503'">120503 - Housing Markets, Development, Management</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '120504'">120504 - Land Use and Environmental Planning</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '120505'">120505 - Regional Analysis and Development</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '120506'">120506 - Transport Planning</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '120507'">120507 - Urban Analysis and Development</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '120508'">120508 - Urban Design</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '120599'">120599 - Urban and Regional Planning not elsewhere classified</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '129999'">129999 - Built Environment and Design not elsewhere classified</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '130101'">130101 - Continuing and Community Education</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '130102'">130102 - Early Childhood Education (excl. Maori)</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '130103'">130103 - Higher Education</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '130104'">130104 - Kura Kaupapa Maori (Maori Primary Education)</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '130105'">130105 - Primary Education (excl. Maori)</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '130106'">130106 - Secondary Education</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '130107'">130107 - Te Whariki (Maori Early Childhood Education)</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '130108'">130108 - Technical, Further and Workplace Education</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '130199'">130199 - Education Systems not elsewhere classified</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '130201'">130201 - Creative Arts, Media and Communication Curriculum and Pedagogy</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '130202'">130202 - Curriculum and Pedagogy Theory and Development</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '130203'">130203 - Economics, Business and Management Curriculum and Pedagogy</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '130204'">130204 - English and Literacy Curriculum and Pedagogy (excl. LOTE, ESL and TESOL)</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '130205'">130205 - Humanities and Social Sciences Curriculum and Pedagogy (excl. Economics, Business and Management)</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '130206'">130206 - Kohanga Reo (Maori Language Curriculum and Pedagogy)</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '130207'">130207 - LOTE, ESL and TESOL Curriculum and Pedagogy (excl. Maori)</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '130208'">130208 - Mathematics and Numeracy Curriculum and Pedagogy</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '130209'">130209 - Medicine, Nursing and Health Curriculum and Pedagogy</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '130210'">130210 - Physical Education and Development Curriculum and Pedagogy</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '130211'">130211 - Religion Curriculum and Pedagogy</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '130212'">130212 - Science, Technology and Engineering Curriculum and Pedagogy</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '130213'">130213 - Vocational Education and Training Curriculum and Pedagogy</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '130299'">130299 - Curriculum and Pedagogy not elsewhere classified</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '130301'">130301 - Aboriginal and Torres Strait Islander Education</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '130302'">130302 - Comparative and Cross-Cultural Education</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '130303'">130303 - Education Assessment and Evaluation</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '130304'">130304 - Educational Administration, Management and Leadership</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '130305'">130305 - Educational Counselling</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '130306'">130306 - Educational Technology and Computing</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '130307'">130307 - Ethnic Education (excl. Aboriginal and Torres Strait Islander, Maori and Pacific Peoples)</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '130308'">130308 - Gender, Sexuality and Education</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '130309'">130309 - Learning Sciences</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '130310'">130310 - Maori Education (excl. Early Childhood and Primary Education)</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '130311'">130311 - Pacific Peoples Education</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '130312'">130312 - Special Education and Disability</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '130313'">130313 - Teacher Education and Professional Development of Educators</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '130399'">130399 - Specialist Studies in Education not elsewhere classified</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '139999'">139999 - Education not elsewhere classified</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '140101'">140101 - History of Economic Thought</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '140102'">140102 - Macroeconomic Theory</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '140103'">140103 - Mathematical Economics</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '140104'">140104 - Microeconomic Theory</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '140199'">140199 - Economic Theory not elsewhere classified</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '140201'">140201 - Agricultural Economics</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '140202'">140202 - Economic Development and Growth</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '140203'">140203 - Economic History</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '140204'">140204 - Economics of Education</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '140205'">140205 - Environment and Resource Economics</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '140206'">140206 - Experimental Economics</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '140207'">140207 - Financial Economics</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '140208'">140208 - Health Economics</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '140209'">140209 - Industry Economics and Industrial Organisation</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '140210'">140210 - International Economics and International Finance</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '140211'">140211 - Labour Economics</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '140212'">140212 - Macroeconomics (incl. Monetary and Fiscal Theory)</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '140213'">140213 - Public Economics- Public Choice</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '140214'">140214 - Public Economics- Publically Provided Goods</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '140215'">140215 - Public Economics- Taxation and Revenue</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '140216'">140216 - Tourism Economics</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '140217'">140217 - Transport Economics</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '140218'">140218 - Urban and Regional Economics</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '140219'">140219 - Welfare Economics</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '140299'">140299 - Applied Economics not elsewhere classified</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '140301'">140301 - Cross-Sectional Analysis</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '140302'">140302 - Econometric and Statistical Methods</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '140303'">140303 - Economic Models and Forecasting</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '140304'">140304 - Panel Data Analysis</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '140305'">140305 - Time-Series Analysis</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '140399'">140399 - Econometrics not elsewhere classified</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '149901'">149901 - Comparative Economic Systems</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '149902'">149902 - Ecological Economics</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '149903'">149903 - Heterodox Economics</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '149999'">149999 - Economics not elsewhere classified</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '150101'">150101 - Accounting Theory and Standards</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '150102'">150102 - Auditing and Accountability</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '150103'">150103 - Financial Accounting</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '150104'">150104 - International Accounting</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '150105'">150105 - Management Accounting</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '150106'">150106 - Sustainability Accounting and Reporting</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '150107'">150107 - Taxation Accounting</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '150199'">150199 - Accounting, Auditing and Accountability not elsewhere classified</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '150201'">150201 - Finance</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '150202'">150202 - Financial Econometrics</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '150203'">150203 - Financial Institutions (incl. Banking)</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '150204'">150204 - Insurance Studies</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '150205'">150205 - Investment and Risk Management</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '150299'">150299 - Banking, Finance and Investment not elsewhere classified</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '150301'">150301 - Business Information Management (incl. Records, Knowledge and Information Management, and Intelligence)</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '150302'">150302 - Business Information Systems</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '150303'">150303 - Corporate Governance and Stakeholder Engagement</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '150304'">150304 - Entrepreneurship</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '150305'">150305 - Human Resources Management</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '150306'">150306 - Industrial Relations</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '150307'">150307 - Innovation and Technology Management</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '150308'">150308 - International Business</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '150309'">150309 - Logistics and Supply Chain Management</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '150310'">150310 - Organisation and Management Theory</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '150311'">150311 - Organisational Behaviour</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '150312'">150312 - Organisational Planning and Management</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '150313'">150313 - Quality Management</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '150314'">150314 - Small Business Management</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '150399'">150399 - Business and Management not elsewhere classified</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '150401'">150401 - Food and Hospitality Services</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '150402'">150402 - Hospitality Management</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '150403'">150403 - Real Estate and Valuation Services</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '150404'">150404 - Sport and Leisure Management</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '150499'">150499 - Commercial Services not elsewhere classified</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '150501'">150501 - Consumer-Oriented Product or Service Development</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '150502'">150502 - Marketing Communications</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '150503'">150503 - Marketing Management (incl. Strategy and Customer Relations)</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '150504'">150504 - Marketing Measurement</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '150505'">150505 - Marketing Research Methodology</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '150506'">150506 - Marketing Theory</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '150507'">150507 - Pricing (incl. Consumer Value Estimation)</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '150599'">150599 - Marketing not elsewhere classified</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '150601'">150601 - Impacts of Tourism</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '150602'">150602 - Tourism Forecasting</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '150603'">150603 - Tourism Management</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '150604'">150604 - Tourism Marketing</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '150605'">150605 - Tourism Resource Appraisal</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '150606'">150606 - Tourist Behaviour and Visitor Experience</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '150699'">150699 - Tourism not elsewhere classified</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '150701'">150701 - Air Transportation and Freight Services</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '150702'">150702 - Rail Transportation and Freight Services</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '150703'">150703 - Road Transportation and Freight Services</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '150799'">150799 - Transportation and Freight Services not elsewhere classified</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '159999'">159999 - Commerce, Management, Tourism and Services not elsewhere classified</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '160101'">160101 - Anthropology of Development</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '160102'">160102 - Biological (Physical) Anthropology</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '160103'">160103 - Linguistic Anthropology</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '160104'">160104 - Social and Cultural Anthropology</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '160199'">160199 - Anthropology not elsewhere classified</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '160201'">160201 - Causes and Prevention of Crime</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '160202'">160202 - Correctional Theory, Offender Treatment and Rehabilitation</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '160203'">160203 - Courts and Sentencing</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '160204'">160204 - Criminological Theories</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '160205'">160205 - Police Administration, Procedures and Practice</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '160206'">160206 - Private Policing and Security Services</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '160299'">160299 - Criminology not elsewhere classified</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '160301'">160301 - Family and Household Studies</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '160302'">160302 - Fertility</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '160303'">160303 - Migration</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '160304'">160304 - Mortality</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '160305'">160305 - Population Trends and Policies</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '160399'">160399 - Demography not elsewhere classified</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '160401'">160401 - Economic Geography</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '160402'">160402 - Recreation, Leisure and Tourism Geography</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '160403'">160403 - Social and Cultural Geography</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '160404'">160404 - Urban and Regional Studies (excl. Planning)</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '160499'">160499 - Human Geography not elsewhere classified</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '160501'">160501 - Aboriginal and Torres Strait Islander Policy</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '160502'">160502 - Arts and Cultural Policy</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '160503'">160503 - Communications and Media Policy</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '160504'">160504 - Crime Policy</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '160505'">160505 - Economic Development Policy</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '160506'">160506 - Education Policy</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '160507'">160507 - Environment Policy</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '160508'">160508 - Health Policy</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '160509'">160509 - Public Administration</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '160510'">160510 - Public Policy</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '160511'">160511 - Research, Science and Technology Policy</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '160512'">160512 - Social Policy</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '160513'">160513 - Tourism Policy</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '160514'">160514 - Urban Policy</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '160599'">160599 - Policy and Administration not elsewhere classified</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '160601'">160601 - Australian Government and Politics</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '160602'">160602 - Citizenship</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '160603'">160603 - Comparative Government and Politics</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '160604'">160604 - Defence Studies</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '160605'">160605 - Environmental Politics</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '160606'">160606 - Government and Politics of Asia and the Pacific</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '160607'">160607 - International Relations</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '160608'">160608 - New Zealand Government and Politics</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '160609'">160609 - Political Theory and Political Philosophy</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '160699'">160699 - Political Science not elsewhere classified</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '160701'">160701 - Clinical Social Work Practice</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '160702'">160702 - Counselling, Welfare and Community Services</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '160703'">160703 - Social Program Evaluation</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '160799'">160799 - Social Work not elsewhere classified</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '160801'">160801 - Applied Sociology, Program Evaluation and Social Impact Assessment</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '160802'">160802 - Environmental Sociology</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '160803'">160803 - Race and Ethnic Relations</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '160804'">160804 - Rural Sociology</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '160805'">160805 - Social Change</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '160806'">160806 - Social Theory</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '160807'">160807 - Sociological Methodology and Research Methods</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '160808'">160808 - Sociology and Social Studies of Science and Technology</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '160809'">160809 - Sociology of Education</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '160810'">160810 - Urban Sociology and Community Studies</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '160899'">160899 - Sociology not elsewhere classified</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '169901'">169901 - Gender Specific Studies</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '169902'">169902 - Studies of Aboriginal and Torres Strait Islander Society</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '169903'">169903 - Studies of Asian Society</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '169904'">169904 - Studies of Maori Society</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '169905'">169905 - Studies of Pacific Peoples Societies</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '169999'">169999 - Studies in Human Society not elsewhere classified</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '170101'">170101 - Biological Psychology (Neuropsychology, Psychopharmacology, Physiological Psychology)</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '170102'">170102 - Developmental Psychology and Ageing</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '170103'">170103 - Educational Psychology</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '170104'">170104 - Forensic Psychology</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '170105'">170105 - Gender Psychology</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '170106'">170106 - Health, Clinical and Counselling Psychology</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '170107'">170107 - Industrial and Organisational Psychology</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '170108'">170108 - Kaupapa Maori Psychology</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '170109'">170109 - Personality, Abilities and Assessment</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '170110'">170110 - Psychological Methodology, Design and Analysis</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '170111'">170111 - Psychology of Religion</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '170112'">170112 - Sensory Processes, Perception and Performance</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '170113'">170113 - Social and Community Psychology</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '170114'">170114 - Sport and Exercise Psychology</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '170199'">170199 - Psychology not elsewhere classified</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '170201'">170201 - Computer Perception, Memory and Attention</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '170202'">170202 - Decision Making</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '170203'">170203 - Knowledge Representation and Machine Learning</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '170204'">170204 - Linguistic Processes (incl. Speech Production and Comprehension)</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '170205'">170205 - Neurocognitive Patterns and Neural Networks</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '170299'">170299 - Cognitive Science not elsewhere classified</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '179999'">179999 - Psychology and Cognitive Sciences not elsewhere classified</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '180101'">180101 - Aboriginal and Torres Strait Islander Law</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '180102'">180102 - Access to Justice</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '180103'">180103 - Administrative Law</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '180104'">180104 - Civil Law and Procedure</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '180105'">180105 - Commercial and Contract Law</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '180106'">180106 - Comparative Law</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '180107'">180107 - Conflict of Laws (Private International Law)</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '180108'">180108 - Constitutional Law</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '180109'">180109 - Corporations and Associations Law</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '180110'">180110 - Criminal Law and Procedure</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '180111'">180111 - Environmental and Natural Resources Law</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '180112'">180112 - Equity and Trusts Law</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '180113'">180113 - Family Law</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '180114'">180114 - Human Rights Law</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '180115'">180115 - Intellectual Property Law</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '180116'">180116 - International Law (excl. International Trade Law)</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '180117'">180117 - International Trade Law</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '180118'">180118 - Labour Law</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '180119'">180119 - Law and Society</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '180120'">180120 - Legal Institutions (incl. Courts and Justice Systems</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '180121'">180121 - Legal Practice, Lawyering and the Legal Profession</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '180122'">180122 - Legal Theory, Jurisprudence and Legal Interpretation</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '180123'">180123 - Litigation, Adjudication and Dispute Resolution</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '180124'">180124 - Property Law (excl. Intellectual Property Law)</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '180125'">180125 - Taxation Law</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '180126'">180126 - Tort Law</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '180199'">180199 - Law not elsewhere classified</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '180201'">180201 - Nga Tikanga Maori (Maori Customary Law)</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '180202'">180202 - Te Maori Whakakaere Rauemi (Maori Resource Law)</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '180203'">180203 - Te Tiriti O Waitangi (The Treaty of Waitangi)</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '180204'">180204 - Te Ture Whenua (Maori Land Law)</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '180299'">180299 - Maori Law not elsewhere classified</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '189999'">189999 - Law and Legal Studies not elsewhere classified</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '190101'">190101 - Art Criticism</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '190102'">190102 - Art History</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '190103'">190103 - Art Theory</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '190104'">190104 - Visual Cultures</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '190199'">190199 - Art Theory and Criticism not elsewhere classified</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '190201'">190201 - Cinema Studies</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '190202'">190202 - Computer Gaming and Animation</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '190203'">190203 - Electronic Media Art</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '190204'">190204 - Film and Television</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '190205'">190205 - Interactive Media</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '190299'">190299 - Film, Television and Digital Media not elsewhere classified</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '190301'">190301 - Journalism Studies</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '190302'">190302 - Professional Writing</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '190303'">190303 - Technical Writing</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '190399'">190399 - Journalism and Professional Writing not elsewhere classified</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '190401'">190401 - Aboriginal and Torres Strait Islander Performing Arts</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '190402'">190402 - Creative Writing (incl. Playwriting)</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '190403'">190403 - Dance</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '190404'">190404 - Drama, Theatre and Performance Studies</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '190405'">190405 - Maori Performing Arts</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '190406'">190406 - Music Composition</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '190407'">190407 - Music Performance</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '190408'">190408 - Music Therapy</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '190409'">190409 - Musicology and Ethnomusicology</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '190410'">190410 - Pacific Peoples Performing Arts</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '190499'">190499 - Performing Arts and Creative Writing not elsewhere classified</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '190501'">190501 - Crafts</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '190502'">190502 - Fine Arts (incl. Sculpture and Painting)</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '190503'">190503 - Lens-based Practice</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '190504'">190504 - Performance and Installation Art</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '190599'">190599 - Visual Arts and Crafts not elsewhere classified</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '199999'">199999 - Studies in the Creative Arts and Writing not elsewhere classified</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '200101'">200101 - Communication Studies</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '200102'">200102 - Communication Technology and Digital Media Studies</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '200103'">200103 - International and Development Communication</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '200104'">200104 - Media Studies</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '200105'">200105 - Organisational, Interpersonal and Intercultural Communication</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '200199'">200199 - Communication and Media Studies not elsewhere classified</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '200201'">200201 - Aboriginal and Torres Strait Islander Cultural Studies</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '200202'">200202 - Asian Cultural Studies</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '200203'">200203 - Consumption and Everyday Life</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '200204'">200204 - Cultural Theory</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '200205'">200205 - Culture, Gender, Sexuality</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '200206'">200206 - Globalisation and Culture</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '200207'">200207 - Maori Cultural Studies</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '200208'">200208 - Migrant Cultural Studies</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '200209'">200209 - Multicultural, Intercultural and Cross-cultural Studies</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '200210'">200210 - Pacific Cultural Studies</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '200211'">200211 - Postcolonial Studies</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '200212'">200212 - Screen and Media Culture</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '200299'">200299 - Cultural Studies not elsewhere classified</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '200301'">200301 - Early English Languages</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '200302'">200302 - English Language</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '200303'">200303 - English as a Second Language</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '200304'">200304 - Central and Eastern European Languages (incl. Russian)</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '200305'">200305 - Latin and Classical Greek Languages</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '200306'">200306 - French Language</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '200307'">200307 - German Language</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '200308'">200308 - Iberian Languages</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '200309'">200309 - Italian Language</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '200310'">200310 - Other European Languages</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '200311'">200311 - Chinese Languages</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '200312'">200312 - Japanese Language</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '200313'">200313 - Indonesian Languages</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '200314'">200314 - South-East Asian Languages (excl. Indonesian)</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '200315'">200315 - Indian Languages</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '200316'">200316 - Korean Language</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '200317'">200317 - Other Asian Languages (excl. South-East Asian)</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '200318'">200318 - Middle Eastern Languages</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '200319'">200319 - Aboriginal and Torres Strait Islander Languages</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '200320'">200320 - Pacific Languages</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '200321'">200321 - Te Reo Maori (Maori Language)</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '200322'">200322 - Comparative Language Studies</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '200323'">200323 - Translation and Interpretation Studies</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '200399'">200399 - Language Studies not elsewhere classified</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '200401'">200401 - Applied Linguistics and Educational Linguistics</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '200402'">200402 - Computational Linguistics</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '200403'">200403 - Discourse and Pragmatics</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '200404'">200404 - Laboratory Phonetics and Speech Science</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '200405'">200405 - Language in Culture and Society (Sociolinguistics)</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '200406'">200406 - Language in Time and Space (incl. Historical Linguistics, Dialectology)</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '200407'">200407 - Lexicography</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '200408'">200408 - Linguistic Structures (incl. Grammar, Phonology, Lexicon, Semantics)</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '200499'">200499 - Linguistics not elsewhere classified</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '200501'">200501 - Aboriginal and Torres Strait Islander Literature</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '200502'">200502 - Australian Literature (excl. Aboriginal and Torres Strait Islander Literature)</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '200503'">200503 - British and Irish Literature</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '200504'">200504 - Maori Literature</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '200505'">200505 - New Zealand Literature (excl. Maori Literature)</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '200506'">200506 - North American Literature</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '200507'">200507 - Pacific Literature</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '200508'">200508 - Other Literatures in English</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '200509'">200509 - Central and Eastern European Literature (incl. Russian)</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '200510'">200510 - Latin and Classical Greek Literature</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '200511'">200511 - Literature in French</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '200512'">200512 - Literature in German</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '200513'">200513 - Literature in Italian</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '200514'">200514 - Literature in Spanish and Portuguese</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '200515'">200515 - Other European Literature</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '200516'">200516 - Indonesian Literature</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '200517'">200517 - Literature in Chinese</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '200518'">200518 - Literature in Japanese</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '200519'">200519 - South-East Asian Literature (excl. Indonesian)</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '200520'">200520 - Indian Literature</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '200521'">200521 - Korean Literature</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '200522'">200522 - Other Asian Literature (excl. South-East Asian)</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '200523'">200523 - Middle Eastern Literature</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '200524'">200524 - Comparative Literature Studies</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '200525'">200525 - Literary Theory</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '200526'">200526 - Stylistics and Textual Analysis</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '200599'">200599 - Literary Studies not elsewhere classified</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '209999'">209999 - Language, Communication and Culture not elsewhere classified</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '210101'">210101 - Aboriginal and Torres Strait Islander Archaeology</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '210102'">210102 - Archaeological Science</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '210103'">210103 - Archaeology of Asia, Africa and the Americas</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '210104'">210104 - Archaeology of Australia (excl. Aboriginal and Torres Strait Islander)</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '210105'">210105 - Archaeology of Europe, the Mediterranean and the Levant</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '210106'">210106 - Archaeology of New Guinea and Pacific Islands (excl. New Zealand</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '210107'">210107 - Archaeology of New Zealand (excl. Maori)</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '210108'">210108 - Historical Archaeology (incl. Industrial Archaeology)</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '210109'">210109 - Maori Archaeology</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '210110'">210110 - Maritime Archaeology</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '210199'">210199 - Archaeology not elsewhere classified</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '210201'">210201 - Archival, Repository and Related Studies</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '210202'">210202 - Heritage and Cultural Conservation</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '210203'">210203 - Materials Conservation</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '210204'">210204 - Museum Studies</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '210299'">210299 - Curatorial and Related Studies not elsewhere classified</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '210301'">210301 - Aboriginal and Torres Strait Islander History</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '210302'">210302 - Asian History</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '210303'">210303 - Australian History (excl. Aboriginal and Torres Strait Islander History)</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '210304'">210304 - Biography</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '210305'">210305 - British History</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '210306'">210306 - Classical Greek and Roman History</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '210307'">210307 - European History (excl. British, Classical Greek and Roman)</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '210308'">210308 - Latin American History</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '210309'">210309 - Maori History</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '210310'">210310 - Middle Eastern and African History</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '210311'">210311 - New Zealand History</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '210312'">210312 - North American History</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '210313'">210313 - Pacific History (excl. New Zealand and Maori)</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '210399'">210399 - Historical Studies not elsewhere classified</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '219999'">219999 - History and Archaeology not elsewhere classified</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '220101'">220101 - Bioethics (human and animal)</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '220102'">220102 - Business Ethics</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '220103'">220103 - Ethical Use of New Technology (e.g. Nanotechnology, Biotechnology)</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '220104'">220104 - Human Rights and Justice Issues</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '220105'">220105 - Legal Ethics</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '220106'">220106 - Medical Ethics</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '220107'">220107 - Professional Ethics (incl. police and research ethics)</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '220199'">220199 - Applied Ethics not elsewhere classified</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '220201'">220201 - Business and Labour History</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '220202'">220202 - History and Philosophy of Education</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '220203'">220203 - History and Philosophy of Engineering and Technology</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '220204'">220204 - History and Philosophy of Law and Justice</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '220205'">220205 - History and Philosophy of Medicine</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '220206'">220206 - History and Philosophy of Science (incl. Non-historical Philosophy of Science)</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '220207'">220207 - History and Philosophy of the Humanities</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '220208'">220208 - History and Philosophy of the Social Sciences</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '220209'">220209 - History of Ideas</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '220210'">220210 - History of Philosophy</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '220299'">220299 - History and Philosophy of Specific Fields not elsewhere classified</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '220301'">220301 - Aesthetics</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '220302'">220302 - Decision Theory</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '220303'">220303 - Environmental Philosophy</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '220304'">220304 - Epistemology</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '220305'">220305 - Ethical Theory</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '220306'">220306 - Feminist Theory</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '220307'">220307 - Hermeneutic and Critical Theory</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '220308'">220308 - Logic</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '220309'">220309 - Metaphysics</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '220310'">220310 - Phenomenology</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '220311'">220311 - Philosophical Psychology (incl. Moral Psychology and Philosophy of Action)</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '220312'">220312 - Philosophy of Cognition</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '220313'">220313 - Philosophy of Language</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '220314'">220314 - Philosophy of Mind (excl. Cognition)</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '220315'">220315 - Philosophy of Religion</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '220316'">220316 - Philosophy of Specific Cultures (incl. Comparative Philosophy)</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '220317'">220317 - Poststructuralism</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '220318'">220318 - Psychoanalytic Philosophy</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '220319'">220319 - Social Philosophy</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '220399'">220399 - Philosophy not elsewhere classified</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '220401'">220401 - Christian Studies (incl. Biblical Studies and Church History)</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '220402'">220402 - Comparative Religious Studies</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '220403'">220403 - Islamic Studies</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '220404'">220404 - Jewish Studies</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '220405'">220405 - Religion and Society</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '220406'">220406 - Studies in Eastern Religious Traditions</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '220407'">220407 - Studies in Religious Traditions (excl. Eastern, Jewish, Christian and Islamic Traditions)</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '220499'">220499 - Religion and Religious Studies not elsewhere classified</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = '229999'">229999 - Philosophy and Religious Studies not elsewhere classified</xsl:if>
<xsl:if test="//*[local-name()=$FOR_code] = 'XXXXXX'">XXXXXX - Unknown</xsl:if>
 </note>
 </note>
 <!-- </topic> 
  </subject> -->
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
		<xsl:variable name="ors_id" select="concat('creator_ORS_id_',$num)"/>	
	<xsl:variable name="affiliation" select="concat('creator_affiliation_',$num)"/>
		<xsl:variable name="institution" select="concat('creator_institution_',$num)"/>
	<xsl:variable name="school_name" select="concat('creator_school_name_',$num)"/>
<name type="personal">
	<xsl:attribute name="ID"> <xsl:apply-templates select="//*[local-name()=$ors_id]"/></xsl:attribute>
<namePart>
	  <xsl:value-of select="."/>, <xsl:value-of select="//*[local-name()=$first_name]"/>
</namePart>
<namePart type="cited">
	  <xsl:value-of select="//*[local-name()=$cited_name]"/>
</namePart>  
        <role>
           <roleTerm authority="marcrelator" type="text">author</roleTerm>
        </role>

<!-- Maybe we should leave out the specific affiliation relationship eg.Staff (Just print affiliation as University of Western Sydney - see below) --> 
<!-- Note this would also leave out the affiliation "External" --> 
<!--<affiliation>
      <xsl:apply-templates select="//*[local-name()=$affiliation]"/>
</affiliation> -->
     <xsl:choose>
        <xsl:when test="//*[local-name()=$institution]"><affiliation><xsl:apply-templates select="//*[local-name()=$institution]"/></affiliation></xsl:when>
      <xsl:otherwise>
<xsl:if test="//*[local-name()=$affiliation] ='Staff'"><affiliation>University of Western Sydney</affiliation></xsl:if>
<xsl:if test="//*[local-name()=$affiliation] = 'Student'"><affiliation>University of Western Sydney</affiliation></xsl:if>
<xsl:if test="//*[local-name()=$affiliation] ='Student - Non HDR'"><affiliation>University of Western Sydney</affiliation></xsl:if>
<xsl:if test="//*[local-name()=$affiliation] = 'Adjunct'"><affiliation>University of Western Sydney</affiliation></xsl:if>
<xsl:if test="//*[local-name()=$affiliation] = 'Emeritus'"><affiliation>University of Western Sydney</affiliation></xsl:if>
<xsl:if test="//*[local-name()=$affiliation] = 'Visiting Fellow'"><affiliation>University of Western Sydney</affiliation></xsl:if>
<xsl:if test="//*[local-name()=$affiliation] ='External'"><affiliation>non UWS</affiliation></xsl:if> 
<xsl:if test="//*[local-name()=$affiliation] ='Pre-UWS'"><affiliation>non UWS</affiliation></xsl:if>					
	  </xsl:otherwise>
    </xsl:choose> 


<!-- <xsl:if test="//*[local-name()=$affiliation] ='Staff'"><affiliation>University of Western Sydney</affiliation></xsl:if>
<xsl:if test="//*[local-name()=$affiliation] = 'Student'"><affiliation>University of Western Sydney</affiliation></xsl:if>
<xsl:if test="//*[local-name()=$affiliation] ='Student - Non HDR'"><affiliation>University of Western Sydney</affiliation></xsl:if>
<xsl:if test="//*[local-name()=$affiliation] = 'Adjunct'"><affiliation>University of Western Sydney</affiliation></xsl:if>
<xsl:if test="//*[local-name()=$affiliation] = 'Emeritus'"><affiliation>University of Western Sydney</affiliation></xsl:if>
<xsl:if test="//*[local-name()=$affiliation] = 'Visiting Fellow'"><affiliation>University of Western Sydney</affiliation></xsl:if> -->
<!-- <xsl:if test="//*[local-name()=$affiliation] ='External'"><affiliation>External</affiliation></xsl:if> -->
<!-- <xsl:if test="//*[local-name()=$affiliation] ='External'"><affiliation>non UWS</affiliation></xsl:if> -->
<!-- <xsl:if test="//*[local-name()=$affiliation] ='Pre-UWS'"><affiliation>Pre-UWS</affiliation></xsl:if> -->
<!-- <xsl:if test="//*[local-name()=$affiliation] ='Pre-UWS'"><affiliation>non UWS</affiliation></xsl:if> --> 

<xsl:if test="//*[local-name()=$affiliation]">
<note type="affiliation_status"><xsl:apply-templates select="//*[local-name()=$affiliation]"/></note> 
</xsl:if>  	 
<xsl:if test="//*[local-name()=$school_name]">
<note type="school_code"><xsl:apply-templates select="//*[local-name()=$school_name]"/></note> 
</xsl:if>
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
