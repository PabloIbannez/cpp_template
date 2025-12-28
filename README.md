# C++ Template Project

This is a basic C++ template project that can be used as a starting point for new projects. It includes:

- CMake for build system management
- Google Test for unit testing
- Doxygen for documentation generation
- GitHub Actions for continuous integration

## Getting Started

To get started with this project, follow these steps:

1. **Download the repository and set up the project:**
   ```bash
   git clone https://github.com/PabloIbannez/cpp_template.git
   cd cpp_template
   ./scripts/setup_project.sh YourProjectName
   ```

2. **Build the project:**
   ```bash
   ./scripts/build.sh
   ```

3. **Run tests:**
   ```bash
   ./scripts/run_tests.sh
   ```

4. **Generate documentation:**
   ```bash
   ./scripts/build_docs.sh
   ```

## Project Structure

- `src/`: Contains the main source code.
- `include/`: Contains header files.
- `tests/`: Contains unit tests.
- `docs/`: Contains Doxygen configuration and reStructuredText files for documentation.
- `scripts/`: Contains various utility scripts for building, testing, and documentation.
- `CMakeLists.txt`: Main CMake configuration file.

## Contributing

Feel free to contribute to this project by opening issues or pull requests.

## License

This project is licensed under the MIT License. See the `LICENSE` file for details.