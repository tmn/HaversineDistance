# Haversine Distance

The Haversine distance formula determines the great-circle distance between two points on a sphere given their longitudes and latitudes.

## Usage

Add a package to your Xcode project by select _File_ > _Swift Packages_ > _Add Package Dependency_ and enter `https://github.com/tmn/HaversineDistance`.

```swift
import HaversineDistance

let haversineDistance = HaversineDistance.distance(
    firstLocation: (63.421798, 10.394786),
    secondLocation: (63.416191, 10.431693)
)
```
