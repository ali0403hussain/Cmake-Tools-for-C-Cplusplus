#define CATCH_CONFIG_MAIN

#include <catch2/catch.hpp>
#include "myLib.h"

TEST_CASE("Factorials are computed", "[factorial]")
{
    REQUIRE( factorial(1) == 1);
    REQUIRE( factorial(2) == 2);
    REQUIRE( factorial(3) == 6);
    REQUIRE( factorial(10) == 3628800);
}