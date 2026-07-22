cmake_minimum_required( VERSION 3.13...99.99)

project( mulle-option VERSION 0.1.0 LANGUAGES NONE)

execute_process( COMMAND ./mulle-option --version
                 WORKING_DIRECTORY "${CMAKE_CURRENT_SOURCE_DIR}"
                 OUTPUT_VARIABLE MULLE_OPTION_VERSION
                 OUTPUT_STRIP_TRAILING_WHITESPACE)
message( STATUS "MULLE_OPTION_VERSION is ${MULLE_OPTION_VERSION} according to mulle-option")


set( PROJECT_VERSION "${MULLE_OPTION_VERSION}")


set( SCRIPTS
mulle-option
)


INSTALL( FILES ${SCRIPTS}
PERMISSIONS OWNER_EXECUTE OWNER_WRITE OWNER_READ
            GROUP_EXECUTE GROUP_READ
            WORLD_EXECUTE WORLD_READ
DESTINATION "bin")


######
#
# must be after CPACK_PACKAGE_VERSION
include( CMakePackage.cmake)
include( CPack)
