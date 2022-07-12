// The MIT License (MIT)
//
// Copyright (c) 2017-2022 Alexander Grebenyuk (github.com/kean).

import XCTest
import Align

// WARNING: Don't forget to compile for Release mode!
final class AnchorPerformanceTests: XCTestCase {
    func testPin() {
        let view = View()
        let container = View()
        container.addSubview(view)

        measure {
            for _ in 0...1000 {
                view.anchors.edges.pin(alignment: .center)
            }
        }
    }

    func testConstraintsPin() {
        let view = View()
        let container = View()
        container.addSubview(view)

        measure {
            Constraints {
                for _ in 0...10000 {
                    view.anchors.width.equal(view.anchors.height)
                }
            }
        }
    }
}
