# Find GoogleTest (installed via Conda)
find_package(GTest REQUIRED)

# Create the test executable
add_executable(unit_tests engine_test.cpp)

# Link to GoogleTest and your main project library
# Note: ${PROJECT_NAME} automatically refers to the name set in the root CMakeLists.txt
target_link_libraries(unit_tests 
    PRIVATE 
    GTest::gtest_main 
    ${PROJECT_NAME}::lib
)

# Register tests so they can be run with 'ctest'
include(GoogleTest)
gtest_discover_tests(unit_tests)
