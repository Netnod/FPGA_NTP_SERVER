.PRECIOUS: %.xpr %.bit

SELF_DIR := $(dir $(lastword $(MAKEFILE_LIST)))

%.xpr: Makefile $(XCI_FILES)
	rm -rf -- $*.xpr $*.cache $*.hw $*.ip_user_files $*.runs $*.sim $*.srcs
	PROJ_NAME="$(PROJ_NAME)" \
	FPGA_TOP="$(FPGA_TOP)" \
	FPGA_PART="$(FPGA_PART)" \
	FPGA_BOARD="$(FPGA_BOARD)" \
	SYN_FILES="$(SYN_FILES)" \
	XDC_FILES="$(XDC_FILES)" \
	XCI_FILES="$(XCI_FILES)" \
	TCL_PRE="$(TCL_PRE)" \
	time vivado -nojournal -nolog -notrace -mode batch -source "$(SELF_DIR)"create_project.tcl

%.runs/synth_1/%.dcp: %.xpr $(SYN_FILES) $(INC_FILES) $(XDC_FILES) $(TCL_PRE)
	PROJ_NAME="$(PROJ_NAME)" \
	time vivado -nojournal -nolog -mode batch -source "$(SELF_DIR)"run_synth.tcl

%.runs/impl_1/%_routed.dcp: %.runs/synth_1/%.dcp
	PROJ_NAME="$(PROJ_NAME)" \
	time vivado -nojournal -nolog -mode batch -source "$(SELF_DIR)"run_impl.tcl

%.bit: %.runs/impl_1/%_routed.dcp
	PROJ_NAME="$(PROJ_NAME)" \
	time vivado -nojournal -nolog -mode batch -source "$(SELF_DIR)"generate_bitstream.tcl
