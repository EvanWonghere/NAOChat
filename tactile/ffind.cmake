# Look for the library and include directories
find_library(MSC_LIBRARY NAMES msc PATHS ${CMAKE_SOURCE_DIR}/libs)
# find_path(MSC_INCLUDE_DIR NAMES msc.h PATHS ${CMAKE_SOURCE_DIR}/include)

# Set variables
set(MSC_FOUND FALSE)
if(MSC_LIBRARY AND MSC_INCLUDE_DIR)
    set(MSC_FOUND TRUE)
endif()

if(MSC_FOUND)
    # Provide the library and include directories to the user
    set(MSC_LIBRARIES ${MSC_LIBRARY})
    set(MSC_INCLUDE_DIRS ${MSC_INCLUDE_DIR})
endif()

include(FindPackageHandleStandardArgs)
find_package_handle_standard_args(MSC DEFAULT_MSG MSC_LIBRARY MSC_INCLUDE_DIR)
