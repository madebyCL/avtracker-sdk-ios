import UIKit
import AvTracker

class SecondScreenViewController: UIViewController {
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        AvTracker.shared.track(view: ["menu","screen view", "screen view 2"])
    }
}
