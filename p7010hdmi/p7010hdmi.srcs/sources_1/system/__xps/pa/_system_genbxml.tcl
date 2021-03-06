######################################################
#
# XPS Tcl API script generated by PlanAhead
#
######################################################

proc _main_ {} {
  cd "/home/smahmood/Parallella-Projects/p7010hdmi/p7010hdmi.srcs/sources_1/system"
  if { [ catch {xload xmp system.xmp} result ] } {
    exit 10
  }

  # Set host application type
  xset intstyle PA

  # Reset target (cleanup generated files)
  run clean

  return $result
}

if { [catch {_main_} result] } {
  exit -1
}

# Check return status and exit
if { [string length $result] == 0 } {
  exit 0
} else {
  exit $result
}
