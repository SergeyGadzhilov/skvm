find_program(DEPLOYQT windeployqt HINTS "${_qt_bin_dir}")
set(INSTALL_SCRIPTS ${CMAKE_CURRENT_SOURCE_DIR}/dist/win)
set(CPACK_IFW_PACKAGE_WIZARD_STYLE "Modern")
set(CPACK_IFW_PACKAGE_WIZARD_SHOW_PAGE_LIST OFF)
set(CPACK_IFW_PACKAGE_NAME "SKVM")
set(CPACK_IFW_PACKAGE_TITLE "SKVM")
set(CPACK_IFW_TARGET_DIRECTORY "@ApplicationsDir@/SKVM")
set(CPACK_IFW_PACKAGE_CONTROL_SCRIPT ${INSTALL_SCRIPTS}/controller.js)
set(CPACK_GENERATOR "IFW")

configure_file("${INSTALL_SCRIPTS}/dependencies.cmake.in" "${INSTALL_SCRIPTS}/dependencies.cmake" @ONLY)
set(CPACK_PRE_BUILD_SCRIPTS ${INSTALL_SCRIPTS}/dependencies.cmake)
set(CPACK_PACKAGE_DIRECTORY "${CMAKE_INSTALL_PREFIX}/pack")
SET(CPACK_PACKAGE_VERSION_MAJOR ${SKVM_VERSION_MAJOR})
SET(CPACK_PACKAGE_VERSION_MINOR ${SKVM_VERSION_MINOR})
SET(CPACK_PACKAGE_VERSION_PATCH ${SKVM_VERSION_PATCH})

include(CPACK)
include(CPackIFW)

cpack_add_component(SKVM REQUIRED)
cpack_ifw_configure_component(SKVM FORCED_INSTALLATION)
cpack_ifw_configure_component(SKVM SCRIPT ${INSTALL_SCRIPTS}/component.js)
