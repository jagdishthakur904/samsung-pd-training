# Directory containing report files
set directory_path "/home/j.thakur/vlsi/VSDBabySoC/src/module/reports"

# Initialize a list to store the data in tabular format
set data_table {}

# Define regex patterns to match TNS and WNS
set tns_pattern {TNS:\s\d+(\.\d+)}
set wns_pattern {WNS:\s+([+-]?\d+(\.\d+)?)}

# Get a list of report files in the directory
set report_files [glob -nocomplain -directory $directory_path -type f *.rpt]

# Loop over each report file
foreach file $report_files {
    # Read the content of the file
    set file_content [read [open $file]]

    # Extract TNS using regex
    if {[regexp $tns_pattern $file_content match tns]} {
        set tns_value [lindex $tns 1]
    } else {
        set tns_value "N/A"
    }

    # Extract WNS using regex
    if {[regexp $wns_pattern $file_content match wns]} {
        set wns_value [lindex $wns 1]
    } else {
        set wns_value "N/A"
    }

    # Append data to the data_table
    lappend data_table [file tail $file] $tns_value $wns_value
}

# Print the data table
puts "File Name\tTNS\tWNS"
foreach row $data_table {
    puts [join $row "\t"]
}

