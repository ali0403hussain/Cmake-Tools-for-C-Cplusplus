function(add_fetch_ext_lib LIB_NAME REPO VER DIR SHALLOW_EN)
    
    set(FETCHCONTENT_BASE_DIR ${DIR})
    set(LIB_NAME_POP "${LIB_NAME}_POPULATED")
    set(LIB_NAME_DIR "${LIB_NAME}_SOURCE_DIR")

    FetchContent_Declare(
        ${LIB_NAME}
        GIT_REPOSITORY ${REPO}
        GIT_TAG ${VER}
        GIT_SHALLOW ${SHALLOW_EN}
    )

    FetchContent_GetProperties(${LIB_NAME})
    if(NOT ${LIB_NAME_POP})
        FetchContent_Populate(${LIB_NAME})
        add_subdirectory(${${LIB_NAME_DIR}})
    else()
        message("Lib Present")
    endif()
endfunction(add_fetch_ext_lib LIB_NAME REPO VER DIR SHALLOW_EN)