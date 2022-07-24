import UIKit
import AvTracker

class ScreenViewController: UIViewController {
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        AvTracker.shared.track(view: ["menu","screen view"])
    }
}
