#!/bin/sh

mkdir coverage
lcov --capture --directory . --output-file coverage/coverage.info
genhtml coverage/coverage.info --output-directory coverage

open coverage/index.html
