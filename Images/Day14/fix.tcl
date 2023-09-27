foreach file [glob *.lib] {
  set file_name [file rootname [file tail $file]]  
  read_lib $file
  write_lib $file_name -f db -o $file_name.db
}
