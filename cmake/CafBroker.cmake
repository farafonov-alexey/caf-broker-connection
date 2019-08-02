set(CAF_BROKER caf_broker)

set(SOURCE_FILES
        main.cpp
        )

add_executable(${CAF_BROKER} ${SOURCE_FILES})

message("CAF_LIBRARY_CORE = ${CAF_LIBRARY_CORE}")
message("CAF_LIBRARY_IO = ${CAF_LIBRARY_IO}")

target_link_libraries(
        ${CAF_BROKER}
        ${CAF_LIBRARY_IO}
        ${CAF_LIBRARY_CORE}
        -liphlpapi
        -lpsapi
        -lWs2_32
        -static-libstdc++
        -static-libgcc
        -static -lpthread
)
