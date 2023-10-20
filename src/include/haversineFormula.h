#pragma once

#include <math.h>

struct Location
{
    double lat;
    double lon;
};

class Haversine
{
public:
    Haversine();
    ~Haversine();

    static double distance(Location start, Location end);

private:
    static double to_radians(double degree);
};
