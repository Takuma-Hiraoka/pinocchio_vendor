find_package(Eigen3 REQUIRED)

# pinocchio core
add_library(pinocchio_default SHARED IMPORTED GLOBAL)
set_target_properties(pinocchio_default PROPERTIES
  IMPORTED_LOCATION "${pinocchio_vendor_DIR}/../../../lib/libpinocchio_default.so"
  INTERFACE_INCLUDE_DIRECTORIES "${pinocchio_vendor_DIR}/../../../include"
)

# pinocchio parsers
add_library(pinocchio_parsers SHARED IMPORTED GLOBAL)
set_target_properties(pinocchio_parsers PROPERTIES
  IMPORTED_LOCATION "${pinocchio_vendor_DIR}/../../../lib/libpinocchio_parsers.so"
  INTERFACE_INCLUDE_DIRECTORIES "${pinocchio_vendor_DIR}/../../../include"
)

# pinocchio visualizers
add_library(pinocchio_visualizers SHARED IMPORTED GLOBAL)
set_target_properties(pinocchio_visualizers PROPERTIES
  IMPORTED_LOCATION "${pinocchio_vendor_DIR}/../../../lib/libpinocchio_visualizers.so"
  INTERFACE_INCLUDE_DIRECTORIES "${pinocchio_vendor_DIR}/../../../include"
)

add_library(pinocchio INTERFACE IMPORTED)
target_link_libraries(pinocchio
  INTERFACE
  pinocchio_default
  pinocchio_parsers
  pinocchio_visualizers
  Eigen3::Eigen
)
