@testable import AvTracker

extension AvTracker {
    static func fixture(siteId: String = "fixture_site_id", baseURL: URL = URL(string: "http://demo2.matomo.org/fixture")!, userAgent: String? = nil) -> AvTracker {
        AvTracker(siteId: siteId, baseURL: baseURL, userAgent: userAgent)
    }
    static func fixture(siteId: String = "fixture_site_id", queue: Queue, dispatcher: Dispatcher) -> AvTracker {
        AvTracker(siteId: siteId, queue: queue, dispatcher: dispatcher)
    }
}
