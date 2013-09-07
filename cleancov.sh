#!/bin/sh

find . -name '*.gcno' -exec rm '{}' ';'
find . -name '*.gcda' -exec rm '{}' ';'
rm -rf coverage
