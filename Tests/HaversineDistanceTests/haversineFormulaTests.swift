import XCTest
@testable import haversineFormula

final class HaversineDistanceTests: XCTestCase {
    func testDistance() {
        let distance = Haversine.distance(
            Location(lat: 59.890465, lon: 10.523493),
            Location(lat: 59.904499, lon: 10.786372)
        )

        XCTAssertEqual(distance, 1474.35)
    }

    static var allTests = [
        ("testDistance", testDistance)
    ]
}
