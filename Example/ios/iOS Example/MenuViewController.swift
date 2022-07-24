import UIKit
import AvTracker

class MenuViewController: UITableViewController {
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        AvTracker.shared.track(eventWithCategory: "timing", action: "one")
        AvTracker.shared.track(view: ["menu"])
        AvTracker.shared.track(eventWithCategory: "timing", action: "two")
    }
}
