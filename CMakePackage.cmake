##
## THESE SETTINGS ARE IGNORED WHEN USING mulle-project.
## SEE mulle-project/formula-info.sh
##

#
# CPack and project specific stuff
#
######

set( CPACK_PACKAGE_NAME "${PROJECT_NAME}")
set( CPACK_PACKAGE_VERSION "${PROJECT_VERSION}")
set( CPACK_PACKAGE_CONTACT "Nat! <nat@mulle-kybernetik.de>")
set( CPACK_PACKAGE_DESCRIPTION_FILE "${CMAKE_CURRENT_SOURCE_DIR}/README.md")
set( CPACK_PACKAGE_DESCRIPTION_SUMMARY "A multi-select option picker with bitmask output")
set( CPACK_RESOURCE_FILE_LICENSE "${CMAKE_CURRENT_SOURCE_DIR}/LICENSE")
set( CPACK_STRIP_FILES false)

set( CPACK_DEBIAN_PACKAGE_HOMEPAGE "https://github.com/mulle-sde/${PROJECT_NAME}")
set( CPACK_DEBIAN_PACKAGE_DEPENDS "sh")

set( CPACK_RPM_PACKAGE_VENDOR "Mulle kybernetiK")
