macro(find_ffmpeg_component varname component)
  pkg_check_modules(PC_${varname} REQUIRED lib${component})
  find_path(${varname}_INCLUDE_DIR
      NAMES
        lib${component}/${component}.h
        ${component}.h
      PATHS
        ${PC_${varname}_INCLUDE_DIRS}
      )

  find_library(${varname}_LIBRARY
      NAMES
        ${component}
      PATHS
        ${PC_${varname}_LIBRARY_DIRS}
      )

  STRING(REGEX REPLACE ";" " " ${varname}_DEPS "${PC_${varname}_LDFLAGS}")
  set(${varname}_LIBRARIES ${${varname}_LIBRARY} ${${varname}_DEPS})
  set(${varname}_INCLUDE_DIRS ${${varname}_INCLUDE_DIR})

  include(FindPackageHandleStandardArgs)
  find_package_handle_standard_args(${varname}  DEFAULT_MSG
    ${varname}_LIBRARY ${varname}_INCLUDE_DIR)
  mark_as_advanced( ${varname}_LIBRARY ${varname}_INCLUDE_DIR)

endmacro(find_ffmpeg_component)

find_ffmpeg_component(LIBAVUTIL avutil)
find_ffmpeg_component(LIBAVFORMAT avformat)
find_ffmpeg_component(LIBAVCODEC avcodec)
