<Qucs Schematic 0.0.15>
<Properties>
  <View=-207,-711,1115,625,1.43182,414,120>
  <Grid=10,10,1>
  <DataSet=composite.dat>
  <DataDisplay=composite.dpl>
  <OpenDisplay=1>
  <showFrame=0>
  <FrameText0=Title>
  <FrameText1=Drawn By:>
  <FrameText2=Date:>
  <FrameText3=Revision:>
</Properties>
<Symbol>
  <.PortSym 40 20 2 0>
  <.PortSym 40 60 3 0>
  <.PortSym 40 100 4 0>
  <.PortSym 40 140 5 0>
  <.PortSym 40 180 1 0>
  <.PortSym -70 220 6 0>
  <.PortSym -70 260 7 0>
  <.PortSym -70 300 8 0>
  <.PortSym -70 340 9 0>
  <.PortSym -240 380 10 0>
  <.PortSym -240 420 11 0>
  <.PortSym -240 460 12 0>
  <.PortSym -240 500 13 0>
  <.PortSym -210 540 14 0>
</Symbol>
<Components>
  <R R6 1 650 360 15 -26 0 1 "10 kOhm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
  <R R7 1 500 500 -26 15 0 0 "100 kOhm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
  <GND * 1 650 580 0 0 0 0>
  <_BJT Q2N3904_2 1 650 500 8 -26 0 0 "npn" 0 "1.4e-14" 0 "1" 0 "1" 0 "0.025" 0 "0" 0 "100" 0 "0" 0 "3e-13" 0 "1.5" 0 "0" 0 "2" 0 "300" 0 "7.5" 0 "0" 0 "0" 0 "2.4" 0 "0" 0 "0" 0 "4.5e-12" 0 "0.75" 0 "0.33" 0 "3.5e-12" 0 "0.75" 0 "0.33" 0 "1" 0 "0" 0 "0.75" 0 "0" 0 "0.5" 0 "4e-10" 0 "0" 0 "0" 0 "0" 0 "2.1e-08" 0 "26.85" 0 "9e-16" 0 "1" 0 "1" 0 "0" 0 "1" 0 "1" 0 "0" 0 "1.5" 0 "3" 0 "1.11" 0 "26.85" 0 "1" 0>
  <Port TachPulseLogicOut 1 160 420 -23 12 0 0 "5" 1 "analog" 0>
  <Port TachPulseRaw 1 160 500 -23 12 0 0 "1" 1 "analog" 0>
  <GND * 1 520 320 0 0 0 0>
  <Port FuelSensorA 1 160 190 -23 12 0 0 "2" 1 "analog" 0>
  <Port FuelSensorB 1 160 260 -23 12 0 0 "3" 1 "analog" 0>
  <Lib LM140_1 1 500 0 -40 -46 0 0 "Regulators" 0 "LM140-5V" 0>
  <Port BatteryIn 1 160 0 -23 12 0 0 "6" 1 "analog" 0>
  <Diode D3 1 370 -340 -26 15 0 0 "1e-15 A" 0 "1" 0 "10 fF" 0 "0.5" 0 "0.7 V" 0 "0.5" 0 "0.0 fF" 0 "0.0" 0 "2.0" 0 "0.0 Ohm" 0 "0.0 ps" 0 "0" 0 "0.0" 0 "1.0" 0 "1.0" 0 "0" 0 "1 mA" 0 "26.85" 0 "3.0" 0 "1.11" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "26.85" 0 "1.0" 0 "normal" 0>
  <R R10 1 470 -340 -26 15 0 0 "470 Ohm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
  <Port WaterTempIndicatorGround 1 160 -340 -23 12 0 0 "8" 1 "analog" 0>
  <Port NeutralIndicatorGround 1 160 -680 -23 12 0 0 "4" 1 "analog" 0>
  <Diode D1 1 370 -680 -26 15 0 0 "1e-15 A" 0 "1" 0 "10 fF" 0 "0.5" 0 "0.7 V" 0 "0.5" 0 "0.0 fF" 0 "0.0" 0 "2.0" 0 "0.0 Ohm" 0 "0.0 ps" 0 "0" 0 "0.0" 0 "1.0" 0 "1.0" 0 "0" 0 "1 mA" 0 "26.85" 0 "3.0" 0 "1.11" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "26.85" 0 "1.0" 0 "normal" 0>
  <R R8 1 470 -680 -26 15 0 0 "470 Ohm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
  <Diode D2 1 370 -510 -26 15 0 0 "1e-15 A" 0 "1" 0 "10 fF" 0 "0.5" 0 "0.7 V" 0 "0.5" 0 "0.0 fF" 0 "0.0" 0 "2.0" 0 "0.0 Ohm" 0 "0.0 ps" 0 "0" 0 "0.0" 0 "1.0" 0 "1.0" 0 "0" 0 "1 mA" 0 "26.85" 0 "3.0" 0 "1.11" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "26.85" 0 "1.0" 0 "normal" 0>
  <R R9 1 470 -510 -26 15 0 0 "470 Ohm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
  <Port FI_Indicator_Ground 1 160 -510 -23 12 0 0 "7" 1 "analog" 0>
  <Diode D4 1 370 -190 -26 15 0 0 "1e-15 A" 0 "1" 0 "10 fF" 0 "0.5" 0 "0.7 V" 0 "0.5" 0 "0.0 fF" 0 "0.0" 0 "2.0" 0 "0.0 Ohm" 0 "0.0 ps" 0 "0" 0 "0.0" 0 "1.0" 0 "1.0" 0 "0" 0 "1 mA" 0 "26.85" 0 "3.0" 0 "1.11" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "26.85" 0 "1.0" 0 "normal" 0>
  <R R11 1 470 -190 -26 15 0 0 "470 Ohm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
  <Port OilWarningIndicatorGround 1 160 -190 -23 12 0 0 "9" 1 "analog" 0>
  <Port FI_Indicator_Logic_Out 1 160 -440 -23 12 0 0 "10" 1 "analog" 0>
  <Port Water_Indicator_Logic_Out 1 160 -270 -23 12 0 0 "11" 1 "analog" 0>
  <Port Oil_Indicator_Logic_Out 1 160 -120 -23 12 0 0 "12" 1 "analog" 0>
  <Port Neutral_Indicator_Logic_Out 1 160 -600 -23 12 0 0 "13" 1 "analog" 0>
  <GND * 1 500 30 0 0 0 0>
  <Port FuelSensorVoltageMeasurement 1 160 120 -23 12 0 0 "14" 1 "analog" 0>
  <R R5 1 490 120 -26 -59 0 2 "100 Ohm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
</Components>
<Wires>
  <650 390 650 420 "" 0 0 0 "">
  <650 530 650 580 "" 0 0 0 "">
  <650 420 650 470 "" 0 0 0 "">
  <530 500 620 500 "" 0 0 0 "">
  <160 500 470 500 "" 0 0 0 "">
  <160 420 650 420 "" 0 0 0 "">
  <650 120 650 330 "" 0 0 0 "">
  <520 120 650 120 "" 0 0 0 "">
  <520 260 520 320 "" 0 0 0 "">
  <160 260 520 260 "" 0 0 0 "">
  <160 190 420 190 "" 0 0 0 "">
  <650 0 650 120 "" 0 0 0 "">
  <550 0 650 0 "" 0 0 0 "">
  <160 0 450 0 "" 0 0 0 "">
  <400 -340 440 -340 "" 0 0 0 "">
  <160 -340 340 -340 "" 0 0 0 "">
  <400 -680 440 -680 "" 0 0 0 "">
  <160 -680 340 -680 "" 0 0 0 "">
  <400 -510 440 -510 "" 0 0 0 "">
  <160 -510 340 -510 "" 0 0 0 "">
  <400 -190 440 -190 "" 0 0 0 "">
  <160 -190 340 -190 "" 0 0 0 "">
  <160 -600 400 -600 "" 0 0 0 "">
  <400 -680 400 -600 "" 0 0 0 "">
  <160 -440 400 -440 "" 0 0 0 "">
  <400 -510 400 -440 "" 0 0 0 "">
  <160 -270 400 -270 "" 0 0 0 "">
  <400 -340 400 -270 "" 0 0 0 "">
  <160 -120 400 -120 "" 0 0 0 "">
  <400 -190 400 -120 "" 0 0 0 "">
  <500 -190 650 -190 "" 0 0 0 "">
  <650 -190 650 0 "" 0 0 0 "">
  <500 -340 650 -340 "" 0 0 0 "">
  <650 -340 650 -190 "" 0 0 0 "">
  <500 -510 650 -510 "" 0 0 0 "">
  <650 -510 650 -340 "" 0 0 0 "">
  <500 -680 650 -680 "" 0 0 0 "">
  <650 -680 650 -510 "" 0 0 0 "">
  <160 120 420 120 "" 0 0 0 "">
  <420 120 420 190 "" 0 0 0 "">
  <420 120 460 120 "" 0 0 0 "">
</Wires>
<Diagrams>
</Diagrams>
<Paintings>
</Paintings>
