#!/bin/sh -f
xv_path="/ad/eng/support/software/linux/all/x86_64/Xilinx/Vivado/2014.4"
ExecStep()
{
"$@"
RETVAL=$?
if [ $RETVAL -ne 0 ]
then
exit $RETVAL
fi
}
ExecStep $xv_path/bin/xsim Datapath_testbench_behav -key {Behavioral:sim_1:Functional:Datapath_testbench} -tclbatch Datapath_testbench.tcl -log simulate.log
