import Foundation
import AvTracker

extension AvTracker {
    static let shared: AvTracker = {
        let queue = UserDefaultsQueue(UserDefaults.standard, autoSave: true)
        let dispatcher = URLSessionDispatcher(baseURL: URL(string: "https://ad-v.kr/p")!)
        let AvTracker = AvTracker(siteId: "23", queue: queue, dispatcher: dispatcher)
        AvTracker.logger = DefaultLogger(minLevel: .verbose)
        AvTracker.migrateFromFourPointFourSharedInstance()
        return AvTracker
    }()
    
    private func migrateFromFourPointFourSharedInstance() {
        guard !UserDefaults.standard.bool(forKey: "migratedFromFourPointFourSharedInstance") else { return }
        copyFromOldSharedInstance()
        UserDefaults.standard.set(true, forKey: "migratedFromFourPointFourSharedInstance")
    }
}
