
# PlanAhead Launch Script for Post-Synthesis floorplanning, created by Project Navigator

create_project -name Esercizio4 -dir "C:/Users/Guido Di Chiara/Documents/Semestre Corrente/Architettura dei Sistemi di Elaborazione/Tesina nuova/Esercizio4/planAhead_run_1" -part xc3s250etq144-4
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "C:/Users/Guido Di Chiara/Documents/Semestre Corrente/Architettura dei Sistemi di Elaborazione/Tesina nuova/Esercizio4/RCA_on_board.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {C:/Users/Guido Di Chiara/Documents/Semestre Corrente/Architettura dei Sistemi di Elaborazione/Tesina nuova/Esercizio4} }
set_property target_constrs_file "Basys_250K.ucf" [current_fileset -constrset]
add_files [list {Basys_250K.ucf}] -fileset [get_property constrset [current_run]]
link_design
