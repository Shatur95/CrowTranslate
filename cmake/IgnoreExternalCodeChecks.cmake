# Files generated by MOC, RCC, and UIC may produce clang-tidy warnings.
# We generate a dummy .clang-tidy file in the binary directory that disables
# all clang-tidy checks except one that will never match.  This one check is
# necessary; clang-tidy reports an error when no checks are enabled.
# Since the Qt code generators will generate source files in the binary tree,
# clang-tidy will load the configuration from this dummy file when the sources
# are built.
# https://gitlab.kitware.com/cmake/cmake/-/issues/19772
#
# This also disables warnings from external dependencies downloaded into the
# build directory via FetchContent.
file(WRITE ${CMAKE_BINARY_DIR}/.clang-tidy "Checks: '-*,llvm-twine-local'")