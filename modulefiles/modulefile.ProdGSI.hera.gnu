#%Module######################################################################
# NOAA-EMC/GSI
#_____________________________________________________
#proc ModulesHelp { } {
#puts stderr "Set environment variables for NOAA-EMC/GSI"
#puts stderr "This module initializes the environment "
#puts stderr "for the Intel Compiler Suite $version\n"
##}
#module-whatis " NOAA-EMC/GSI whatis description"

setenv CRTM_FIX /scratch2/NCEPDEV/nwprod/NCEPLIBS/fix/crtm_v2.3.0

# Load cmake
module use -a /contrib/cmake/modulefiles
module load cmake/3.20.1

# Load hpc-stack
module use /scratch2/NCEPDEV/nwprod/hpc-stack/libs/hpc-stack/modulefiles/stack
module load hpc/1.1.0

# Load GNU compiler and mpi
module load hpc-gnu/9.2.0
module load hpc-mpich/3.3.2

# Use Intel MKL
setenv MKLROOT "/apps/oneapi/mkl/2022.0.2"

# Load production utilities
module load prod_util/1.2.2

module load netcdf/4.7.4

# Load nceplibs
module load bufr/11.5.0
module load ip/3.3.3
module load nemsio/2.5.2
module load sfcio/1.4.1
module load sigio/2.3.2
module load sp/2.3.3
module load w3emc/2.9.1
module load bacio/2.4.1
module load crtm/2.3.0
module load wrf_io/1.2.0
module load ncio/1.1.0
