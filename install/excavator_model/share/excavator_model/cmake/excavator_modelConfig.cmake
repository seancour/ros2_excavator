# generated from ament/cmake/core/templates/nameConfig.cmake.in

# prevent multiple inclusion
if(_excavator_model_CONFIG_INCLUDED)
  # ensure to keep the found flag the same
  if(NOT DEFINED excavator_model_FOUND)
    # explicitly set it to FALSE, otherwise CMake will set it to TRUE
    set(excavator_model_FOUND FALSE)
  elseif(NOT excavator_model_FOUND)
    # use separate condition to avoid uninitialized variable warning
    set(excavator_model_FOUND FALSE)
  endif()
  return()
endif()
set(_excavator_model_CONFIG_INCLUDED TRUE)

# output package information
if(NOT excavator_model_FIND_QUIETLY)
  message(STATUS "Found excavator_model: 0.0.0 (${excavator_model_DIR})")
endif()

# warn when using a deprecated package
if(NOT "" STREQUAL "")
  set(_msg "Package 'excavator_model' is deprecated")
  # append custom deprecation text if available
  if(NOT "" STREQUAL "TRUE")
    set(_msg "${_msg} ()")
  endif()
  # optionally quiet the deprecation message
  if(NOT ${excavator_model_DEPRECATED_QUIET})
    message(DEPRECATION "${_msg}")
  endif()
endif()

# flag package as ament-based to distinguish it after being find_package()-ed
set(excavator_model_FOUND_AMENT_PACKAGE TRUE)

# include all config extra files
set(_extras "")
foreach(_extra ${_extras})
  include("${excavator_model_DIR}/${_extra}")
endforeach()
