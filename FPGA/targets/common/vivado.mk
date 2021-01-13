.PRECIOUS: %.xpr %.bit

SELF_DIR := $(dir $(lastword $(MAKEFILE_LIST)))

.PHONY: proj synth report_synth impl report_impl bit

proj $(PROJ_NAME).xpr: Makefile $(TCL_FILES)
	rm -rf -- $*.xpr $*.cache $*.hw $*.ip_user_files $*.runs $*.sim $*.srcs
	PROJ_NAME="$(PROJ_NAME)" \
	FPGA_TOP="$(FPGA_TOP)" \
	FPGA_PART="$(FPGA_PART)" \
	FPGA_BOARD="$(FPGA_BOARD)" \
	SYN_FILES="$(SYN_FILES)" \
	XDC_FILES="$(XDC_FILES)" \
	XCI_FILES="$(XCI_FILES)" \
	TCL_FILES="$(TCL_FILES)" \
	TCL_PRE="$(TCL_PRE)" \
	time vivado -nojournal -nolog -notrace -mode batch -source "$(SELF_DIR)create_project.tcl"; ec=$$?; if [ $$ec -ne 0 ]; then rm -f -- $(2); exit $$ec; fi

.PRECIOUS: $(PROJ_NAME).runs/synth_1/$(FPGA_TOP).dcp
synth $(PROJ_NAME).runs/synth_1/$(FPGA_TOP).dcp: $(PROJ_NAME).xpr $(SYN_FILES) $(INC_FILES) $(XDC_FILES) $(XCI_FILES) $(TCL_PRE)
	PROJ_NAME="$(PROJ_NAME)" \
	time vivado -nojournal -nolog -mode batch -source "$(SELF_DIR)run_synth.tcl"

report_synth: $(PROJ_NAME).runs/synth_1/$(FPGA_TOP).dcp
	PROJ_NAME="$(PROJ_NAME)" \
	time vivado -nojournal -nolog -mode batch -source "$(SELF_DIR)report_synth.tcl"

.PRECIOUS: $(PROJ_NAME).runs/impl_1/$(FPGA_TOP)_routed.dcp
impl $(PROJ_NAME).runs/impl_1/$(FPGA_TOP)_routed.dcp: $(PROJ_NAME).runs/synth_1/$(FPGA_TOP).dcp
	PROJ_NAME="$(PROJ_NAME)" \
	time vivado -nojournal -nolog -mode batch -source "$(SELF_DIR)run_impl.tcl"

report_impl: $(PROJ_NAME).runs/impl_1/$(FPGA_TOP)_routed.dcp
	PROJ_NAME="$(PROJ_NAME)" \
	/bin/time vivado -nojournal -nolog -mode batch -source "$(SELF_DIR)report_impl.tcl"

bit $(PROJ_NAME).bit: $(PROJ_NAME).runs/impl_1/$(FPGA_TOP)_routed.dcp
	PROJ_NAME="$(PROJ_NAME)" \
	time vivado -nojournal -nolog -mode batch -source "$(SELF_DIR)generate_bitstream.tcl"
