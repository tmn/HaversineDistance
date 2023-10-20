#include "haversineFormula.h"


Haversine::Haversine()
{

}

Haversine::~Haversine()
{

}

double Haversine::to_radians(double degree)
{
    return degree * M_PI / 180;
}

double Haversine::distance(Location start, Location end)
{
    double φ1 = to_radians(start.lat);
    double φ2 = to_radians(end.lat);
    double δφ = to_radians(end.lat - start.lat);
    double δλ = to_radians(end.lon - start.lon);

    double a = sin(δφ / 2.0) * sin(δφ / 2.0)
        + cos(φ1) * cos(φ2) * sin(δλ / 2.0) * sin(δλ / 2.0);
    double c = 2.0 * asin(sqrt(a));

    return round(637100.0 * c * 100)/100;
}
