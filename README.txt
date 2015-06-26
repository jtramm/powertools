===============================================================================
                        ╔═╗┌─┐┬ ┬┌─┐┬─┐╔╦╗┌─┐┌─┐┬  ┌─┐
                        ╠═╝│ ││││├┤ ├┬┘ ║ │ ││ ││  └─┐
                        ╩  └─┘└┴┘└─┘┴└─ ╩ └─┘└─┘┴─┘└─┘
===============================================================================

                                  John Tramm

===============================================================================

Power monitoring tools and scripts for linux. Capable of measuring 100 ms power intervals for Intel CPUs via RAPL PAPI, and NVIDIA GPUs via nvidia-smi.

===============================================================================
Dependencies
===============================================================================

- CPU power monitoring requires PAPI installation performed with RAPL option
  enabled. See (http://web.eece.maine.edu/~vweaver/projects/rapl/) for more
  info, but the gist is that the configure step must be performed as:
  
  ./configure --with-components="rapl"

  Note that this has only been tested with Sandy Bridge. RAPL may not be
  available on newer/older chips.

- GPU monitoring works out of the box with CUDA install.

===============================================================================
Install
===============================================================================

1. Use Makefile to build targets
2. copy binaries to /bin/
3. copy .sh scripts to /bin/, removing ".sh" from their names 

===============================================================================
Usage
===============================================================================

Both architectures have two modes: indefinite printout and command wrapper.
The indefinite printout modes simply save timing and Watt data to files
until killed. The wrapper modes accept commands as arguments and will
automatically start/stop power collection in sync with the program timing.

When measuring on GPU, the CUDA Device ID must be given as the first argument.
This ID can be determined using the nvidia-smi command (though 0 is a safe bet).

CPU (requires sudo access):
	sudo rapl
	sudo rapl_wrapper <commands ...>
GPU:
	gpu_power_monitor <CUDA device ID>
	gpu_power_wrapper <CUDA device ID> <commands ...>

===============================================================================
