# --- 1. The Library Target ---

# Create the library from the implementation file
add_library(${PROJECT_NAME}_lib 
    engine.cpp
)

# Create an alias so we can link to it cleanly (e.g., MyProject::lib)
add_library(${PROJECT_NAME}::lib ALIAS ${PROJECT_NAME}_lib)

# Define where header files are located
target_include_directories(${PROJECT_NAME}_lib PUBLIC
    $<BUILD_INTERFACE:${CMAKE_SOURCE_DIR}/include>
    $<INSTALL_INTERFACE:include>
)

# Link external dependencies (spdlog)
find_package(spdlog REQUIRED)
target_link_libraries(${PROJECT_NAME}_lib PRIVATE spdlog::spdlog)


# --- 2. The Executable Target ---

# Create the main executable
add_executable(${PROJECT_NAME}_app main.cpp)

# Link our internal library to the executable
target_link_libraries(${PROJECT_NAME}_app PRIVATE ${PROJECT_NAME}::lib)
