#include "PROJECT_NAME_PLACEHOLDER/engine.h"
#include <spdlog/spdlog.h>

namespace PROJECT_NAME_PLACEHOLDER {

Engine::Engine() { spdlog::info("Engine initialized successfully."); }

Engine::~Engine() { spdlog::info("Engine shutting down."); }

std::string Engine::get_greeting() const {
  return "Hello from PROJECT_NAME_PLACEHOLDER!";
}

} // namespace PROJECT_NAME_PLACEHOLDER
