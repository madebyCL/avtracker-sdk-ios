import UIKit
import AvTracker

class EventsViewController: UIViewController {
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        AvTracker.shared.track(view: ["menu","events"])
    }
    @IBAction func trackEventButtonTapped(_ sender: UIButton) {
        AvTracker.shared.track(eventWithCategory: "TestCategory", action: "TestAction", name: "TestName", value: 7)
    }
}
