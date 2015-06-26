===============================================================================
                        ╔═╗┌─┐┬ ┬┌─┐┬─┐╔╦╗┌─┐┌─┐┬  ┌─┐
                        ╠═╝│ ││││├┤ ├┬┘ ║ │ ││ ││  └─┐
                        ╩  └─┘└┴┘└─┘┴└─ ╩ └─┘└─┘┴─┘└─┘
===============================================================================

                                  John Tramm

===============================================================================

Power monitoring tools and scripts for linux. Capable of measuring 100 ms power intervals for Intel CPUs via RAPL PAPI, and NVIDIA GPUs via nvidia-smi.

===============================================================================
Install
===============================================================================
1. Use Makefile to build targets
2. copy binaries to /bin/
3. copy .sh scripts to /bin/, removing ".sh" from their names 

===============================================================================
Usage
===============================================================================
CPU (requires sudo access):
	sudo rapl
	sudo rapl_wrapper
GPU:
	gpu_power_monitor <CUDA device ID>
	gpu_power_wrapper <CUDA device ID> <commands ...>

===============================================================================
