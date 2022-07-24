import UIKit
import AvTracker

class ConfigurationViewController: UIViewController {
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        AvTracker.shared.track(view: ["menu","configuration"])
    }
    
    @IBAction func newSessionButtonTapped(_ sender: UIButton) {
        AvTracker.shared.startNewSession()
    }
    
    @IBAction func dispatchButtonTapped(_ sender: UIButton) {
        AvTracker.shared.dispatch()
    }

}
