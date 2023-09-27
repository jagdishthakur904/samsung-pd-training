set db_files [glob -directory "./" -types f -tails *.db]
set exclude_files {"avsddac.db" "avsdpll.db"}
set sky_db {}
foreach db $db_files {
    if {$db ni $exclude_files} {
        lappend sky_db $db
    }
}
    
foreach file_name $sky_db {
    set target_library [concat $file_name " avsddac.db avsdpll.db "]
    set link_library [concat " * " $file_name " avsddac.db avsdpll.db "]
#    echo $file_name
    read_verilog vsdbabysoc.v
    source ../sdc/vsdbabysoc_synthesis.sdc
    link
    compile_ultra
#    set report [report_qor]
#    set tns_pattern { Design WNS:* }
#    set hold_pattern { Design(Hold) WNS:* }
#    if  {[regexp $tns_pattern $report match tns]} {
#        set tns_value [lindex $tns 1]
#    }
#    if  {[regexp $hold_pattern $report match hold]} {
#        set whs_value [lindex $hold 1]
#    }
#    report_timing > reports/$file_name.rpt2
    report_qor > reports/$file_name.rpt

     

}
    
