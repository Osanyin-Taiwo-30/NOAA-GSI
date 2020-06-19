macro (setGeneric)
  message("Setting paths for Generic System")
  option(FIND_HDF5 "Try to Find HDF5 libraries" OFF)
  option(FIND_HDF5_HL "Try to Find HDF5 libraries" OFF)
  if(EXISTS /jetmon) 
    set(HOST_FLAG "" CACHE INTERNAL "Host Flag") ## default, no host_flag required
  else()
    set(HOST_FLAG "" CACHE INTERNAL "Host Flag") ## default, no host_flag required
  endif()
  set(GSI_Fortran_FLAGS "${FOPT3} ${FP_MODEL_SOURCE} ${BYTERECLEN} ${BIG_ENDIAN} ${GEOS_Fortran_Vect_FPE_Flags} -D_REAL8_ ${OpenMP_Fortran_FLAGS} ${MPI_Fortran_COMPILE_FLAGS}" CACHE INTERNAL "GSI Fortran Flags")
  set(ENKF_Fortran_FLAGS "${FOPT3} ${HOST_FLAG} ${WARNALL} ${IMPLICITNONE} ${TRACEBACK} ${FP_MODEL_STRICT} ${BIG_ENDIAN} -DGFS -D_REAL8_ ${MPI3FLAG} ${OpenMP_Fortran_FLAGS}" CACHE INTERNAL "ENKF Fortran Flags")
  set(GSI_LDFLAGS "${OpenMP_Fortran_FLAGS}" CACHE INTERNAL "")

endmacro()
