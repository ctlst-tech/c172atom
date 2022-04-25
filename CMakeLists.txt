cmake_minimum_required(VERSION 3.6)
project(c172atom)

include_directories(./c-atom/function)

add_subdirectory(c-atom)

include(fspecs.cmake)

add_executable(catom c-atom/catom.c ${FSPECS_REG})

target_link_libraries(catom c-atom-static ${FSPECS_LIBS})
