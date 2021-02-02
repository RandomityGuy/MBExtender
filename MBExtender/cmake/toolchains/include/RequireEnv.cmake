macro(require_env VAR)
  if(NOT ${VAR})
    set(${VAR} "$ENV{${VAR}}" CACHE INTERNAL "")
    if(NOT ${VAR})
      message(FATAL_ERROR "${VAR} is not set")
    endif()
  endif()
endmacro()