<Qucs Schematic 0.0.15>
<Properties>
  <View=0,0,800,800,1,0,0>
  <Grid=10,10,1>
  <DataSet=voltage_divider.dat>
  <DataDisplay=voltage_divider.dpl>
  <OpenDisplay=1>
  <showFrame=0>
  <FrameText0=Title>
  <FrameText1=Drawn By:>
  <FrameText2=Date:>
  <FrameText3=Revision:>
</Properties>
<Symbol>
</Symbol>
<Components>
  <R R2 1 490 390 15 -26 0 1 "50 Ohm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
  <Vdc V1 1 290 270 18 -26 0 1 "5V" 1>
  <GND * 1 390 440 0 0 0 0>
  <R R1 1 490 270 15 -26 0 1 "100 kOhm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
</Components>
<Wires>
  <290 200 290 240 "" 0 0 0 "">
  <290 200 490 200 "" 0 0 0 "">
  <490 200 490 240 "" 0 0 0 "">
  <490 300 490 360 "reading" 520 290 25 "">
  <490 420 490 440 "" 0 0 0 "">
  <290 440 390 440 "" 0 0 0 "">
  <290 300 290 440 "" 0 0 0 "">
  <390 440 490 440 "" 0 0 0 "">
</Wires>
<Diagrams>
</Diagrams>
<Paintings>
  <Text 330 150 12 #000000 0 "Voltage Divider">
</Paintings>
