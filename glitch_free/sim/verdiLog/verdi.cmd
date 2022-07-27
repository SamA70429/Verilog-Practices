debImport "-f" "file_list.f"
debLoadSimResult \
           /home/IC/Project/VerilogProject/glitch_free/sim/glitch_free_tb.fsdb
wvCreateWindow
verdiDockWidgetDisplay -dock widgetDock_WelcomePage
verdiDockWidgetHide -dock widgetDock_WelcomePage
verdiWindowResize -win $_Verdi_1 -2 "25" "1920" "1004"
srcDeselectAll -win $_nTrace1
srcHBSelect "glitch_free_tb.u_glitch_free" -win $_nTrace1
srcSetScope -win $_nTrace1 "glitch_free_tb.u_glitch_free" -delim "."
srcDeselectAll -win $_nTrace1
srcSelect -win $_nTrace1 -range {2 11 1 1 1 1} -backward
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -win $_nTrace1 -range {2 11 1 1 1 1} -backward
srcAddSelectedToWave -win $_nTrace1
wvSetCursor -win $_nWave2 78149.425301 -snap {("G1" 3)}
wvZoomAll -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvSelectGroup -win $_nWave2 {G2}
srcDeselectAll -win $_nTrace1
srcSelect -signal "clk_in0_scan" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "in0_sel" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "in1_sel" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "in2_sel" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "in0_used" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "in1_used" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "in2_used" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "in0_en" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "in1_en" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "in2_en" -win $_nTrace1
srcAddSelectedToWave -win $_nTrace1
srcHBSelect "glitch_free_tb.u_glitch_free.u_clk_gate_out0" -win $_nTrace1
srcHBSelect "glitch_free_tb.u_glitch_free.u_clk_gate_out0" -win $_nTrace1
srcHBSelect "glitch_free_tb.u_glitch_free.u_clk_gate_out0" -win $_nTrace1
srcSetScope -win $_nTrace1 "glitch_free_tb.u_glitch_free.u_clk_gate_out0" -delim \
           "."
srcDeselectAll -win $_nTrace1
srcSelect -signal "E_or" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "E_lat" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "CP" -win $_nTrace1
wvSetCursor -win $_nWave2 74962.087912 -snap {("G1" 1)}
wvZoomIn -win $_nWave2
wvSetCursor -win $_nWave2 140691.505634 -snap {("G1" 2)}
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcHBSelect "glitch_free_tb.u_glitch_free" -win $_nTrace1
srcHBSelect "glitch_free_tb.u_glitch_free" -win $_nTrace1
srcHBSelect "glitch_free_tb.u_glitch_free" -win $_nTrace1
srcSetScope -win $_nTrace1 "glitch_free_tb.u_glitch_free" -delim "."
wvSelectSignal -win $_nWave2 {( "G1" 11 )} 
wvSelectSignal -win $_nWave2 {( "G1" 12 )} 
srcDeselectAll -win $_nTrace1
wvSetCursor -win $_nWave2 141970.098751 -snap {("G1" 0)}
wvSetCursor -win $_nWave2 139705.162372 -snap {("G1" 0)}
wvSetCursor -win $_nWave2 140070.474691 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 140728.036866 -snap {("G1" 1)}
wvSelectSignal -win $_nWave2 {( "G1" 14 )} 
wvSetCursor -win $_nWave2 142117.085140 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 142774.647315 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 143505.271954 -snap {("G1" 14)}
wvSetCursor -win $_nWave2 140655.835863 -snap {("G1" 2)}
wvSetCursor -win $_nWave2 142153.616372 -snap {("G1" 4)}
wvSetCursor -win $_nWave2 143541.803186 -snap {("G1" 4)}
wvScrollDown -win $_nWave2 1
wvSetCursor -win $_nWave2 144126.302896 -snap {("G1" 5)}
wvSetCursor -win $_nWave2 146354.708044 -snap {("G1" 5)}
wvSetCursor -win $_nWave2 148583.113191 -snap {("G1" 5)}
wvSetCursor -win $_nWave2 147706.363625 -snap {("G1" 5)}
wvSetCursor -win $_nWave2 142774.647315 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 140728.898327 -snap {("G1" 2)}
wvSetCursor -win $_nWave2 142117.085140 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 140692.367095 -snap {("G1" 4)}
wvSetCursor -win $_nWave2 142190.147604 -snap {("G1" 4)}
wvSetCursor -win $_nWave2 143578.334417 -snap {("G1" 4)}
srcDeselectAll -win $_nTrace1
wvSetCursor -win $_nWave2 140655.835863 -snap {("G1" 2)}
wvSetCursor -win $_nWave2 142226.678836 -snap {("G1" 4)}
wvSetCursor -win $_nWave2 143578.334417 -snap {("G1" 4)}
wvSetCursor -win $_nWave2 70659.841840 -snap {("G1" 2)}
wvSetCursor -win $_nWave2 70952.091695 -snap {("G1" 3)}
wvSetCursor -win $_nWave2 71426.997710 -snap {("G1" 3)}
wvSetCursor -win $_nWave2 71865.372493 -snap {("G1" 3)}
wvSelectSignal -win $_nWave2 {( "G1" 15 )} 
wvSelectSignal -win $_nWave2 {( "G1" 14 15 )} 
wvSetCursor -win $_nWave2 140699.587196 -snap {("G1" 2)}
wvSelectSignal -win $_nWave2 {( "G1" 13 )} 
wvSetCursor -win $_nWave2 71857.721663 -snap {("G1" 13)}
wvScrollDown -win $_nWave2 0
wvSetCursor -win $_nWave2 140728.898327 -snap {("G1" 13)}
wvSetCursor -win $_nWave2 70651.092756 -snap {("G1" 2)}
wvSetCursor -win $_nWave2 140663.055964 -snap {("G1" 2)}
wvSetCursor -win $_nWave2 142197.367705 -snap {("G1" 4)}
wvSetCursor -win $_nWave2 143549.023286 -snap {("G1" 4)}
wvSetCursor -win $_nWave2 140663.055964 -snap {("G1" 4)}
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
wvSetCursor -win $_nWave2 143505.271954 -snap {("G1" 18)}
wvSetCursor -win $_nWave2 144053.240433 -snap {("G1" 5)}
wvSetCursor -win $_nWave2 146281.645580 -snap {("G1" 5)}
srcHBSelect "glitch_free_tb.u_glitch_free.u_clk_gate_out0" -win $_nTrace1
srcHBSelect "glitch_free_tb.u_glitch_free.u_clk_gate_out0" -win $_nTrace1
srcHBSelect "glitch_free_tb.u_glitch_free.u_clk_gate_out0" -win $_nTrace1
srcHBSelect "glitch_free_tb.u_glitch_free.u_clk_gate_out0" -win $_nTrace1
srcSetScope -win $_nTrace1 "glitch_free_tb.u_glitch_free.u_clk_gate_out0" -delim \
           "."
srcDeselectAll -win $_nTrace1
srcSelect -signal "E_lat" -win $_nTrace1
srcBackwardHistory -win $_nTrace1
srcBackwardHistory -win $_nTrace1
srcHBSelect "glitch_free_tb.u_glitch_free" -win $_nTrace1
srcSetScope -win $_nTrace1 "glitch_free_tb.u_glitch_free" -delim "."
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcHBSelect "glitch_free_tb.u_glitch_free.u_clk_gate_out0" -win $_nTrace1
srcSetScope -win $_nTrace1 "glitch_free_tb.u_glitch_free.u_clk_gate_out0" -delim \
           "."
srcDeselectAll -win $_nTrace1
srcSelect -signal "E_or" -win $_nTrace1
srcBackwardHistory -win $_nTrace1
srcDeselectAll -win $_nTrace1
wvSetCursor -win $_nWave2 140728.898327 -snap {("G1" 4)}
wvSetCursor -win $_nWave2 142153.616372 -snap {("G1" 4)}
wvSetCursor -win $_nWave2 143468.740722 -snap {("G1" 4)}
wvSetCursor -win $_nWave2 144089.771664 -snap {("G1" 5)}
wvSetCursor -win $_nWave2 146281.645580 -snap {("G1" 5)}
debExit
