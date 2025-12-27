#include "PROJECT_NAME_PLACEHOLDER/engine.h"
#include <gtest/gtest.h>

// Test the greeting function
TEST(EngineTest, GreetingReturnsCorrectString) {
  PROJECT_NAME_PLACEHOLDER::Engine engine;

  // We expect the greeting to contain the project name
  EXPECT_EQ(engine.get_greeting(), "Hello from PROJECT_NAME_PLACEHOLDER!");
}
