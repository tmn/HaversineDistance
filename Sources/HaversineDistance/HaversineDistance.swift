import Foundation

public struct HaversineDistance {

    public struct Defaults {
        public static let EARTH_RADIUS_METER = 637100.0
    }

    fileprivate static func degreesToRadians(degrees: Double) -> Double {
        return degrees * .pi / 180
    }

    public static func distance(firstLocation: (lat: Double, lon: Double), secondLocation: (lat: Double, lon: Double), radius: Double = HaversineDistance.Defaults.EARTH_RADIUS_METER) -> Double {
        let φ1 = HaversineDistance.degreesToRadians(degrees: firstLocation.lat)
        let φ2 = HaversineDistance.degreesToRadians(degrees: secondLocation.lat)
        let Δφ = HaversineDistance.degreesToRadians(degrees: secondLocation.lat - firstLocation.lat)
        let Δλ = HaversineDistance.degreesToRadians(degrees: secondLocation.lon - firstLocation.lon)

        let a = sin(Δφ/2) * sin(Δφ/2) + cos(φ1) * cos(φ2) * sin(Δλ/2) * sin(Δλ/2)
        let c = 2 * atan2(sqrt(a), sqrt(1 - a))
        let distance = radius * c

        return distance
    }

}
