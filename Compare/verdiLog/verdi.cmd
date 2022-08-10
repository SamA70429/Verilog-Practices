verdiWindowResize -win $_Verdi_1 "0" "25" "1920" "1004"
debImport "-f" "file_list.f"
debLoadSimResult /home/IC/Project/VerilogProject/Compare/main_mod_tb.fsdb
wvCreateWindow
verdiDockWidgetDisplay -dock widgetDock_WelcomePage
verdiDockWidgetHide -dock widgetDock_WelcomePage
srcSelect -signal "clk" -win $_nTrace1
srcSelect -signal "rst_n" -win $_nTrace1
srcSelect -signal "a" -win $_nTrace1
srcSelect -signal "b" -win $_nTrace1
srcSelect -signal "c" -win $_nTrace1
srcSelect -signal "d" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
wvSetCursor -win $_nWave2 18.990220 -snap {("G2" 0)}
wvZoomAll -win $_nWave2
verdiWindowWorkMode -win $_Verdi_1 -protocolDebug
pabCloseWindow -win $_pabWnd3
nsMsgSwitchTab -tab cmpl
verdiDockWidgetHide -dock widgetDock_<Message>
wvSetCursor -win $_nWave2 344.650087 -snap {("G2" 0)}
wvSelectSignal -win $_nWave2 {( "G1" 1 2 3 4 5 6 )} 
wvSetRadix -win $_nWave2 -format UDec
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
debExit
