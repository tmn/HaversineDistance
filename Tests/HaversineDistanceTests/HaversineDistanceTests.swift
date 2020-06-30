import XCTest
@testable import HaversineDistance

final class HaversineDistanceTests: XCTestCase {
    func testDistance() {
        let distance = HaversineDistance.distance(
            firstLocation: (63.421798, 10.394786),
            secondLocation: (63.416191, 10.431693)
        )

        XCTAssertEqual(String(format: "%.2f", arguments: [distance]), "193.93")
    }

    static var allTests = [
        ("testDistance", testDistance)
    ]
}
