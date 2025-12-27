#include "PROJECT_NAME_PLACEHOLDER/engine.h"
#include <iostream>
#include <spdlog/spdlog.h>

int main() {
  spdlog::info("Starting Application...");

  // Instantiate the engine class
  PROJECT_NAME_PLACEHOLDER::Engine engine;

  // Use the engine
  std::cout << engine.get_greeting() << std::endl;

  return 0;
}
