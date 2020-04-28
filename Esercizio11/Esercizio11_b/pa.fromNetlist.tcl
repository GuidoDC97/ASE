
# PlanAhead Launch Script for Post-Synthesis floorplanning, created by Project Navigator

create_project -name Esercizio11_b -dir "C:/Users/Guido Di Chiara/Documents/Semestre Corrente/Architettura dei Sistemi di Elaborazione/Tesina/Esercizio11/Esercizio11_b/planAhead_run_3" -part xc3s250etq144-4
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "C:/Users/Guido Di Chiara/Documents/Semestre Corrente/Architettura dei Sistemi di Elaborazione/Tesina/Esercizio11/Esercizio11_b/UART_On_Board.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {C:/Users/Guido Di Chiara/Documents/Semestre Corrente/Architettura dei Sistemi di Elaborazione/Tesina/Esercizio11/Esercizio11_b} }
set_property target_constrs_file "Basys_250K.ucf" [current_fileset -constrset]
add_files [list {Basys_250K.ucf}] -fileset [get_property constrset [current_run]]
link_design
