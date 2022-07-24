import UIKit
import AvTracker

class OptOutViewController: UIViewController {
    
    @IBOutlet weak var optOutSwitch: UISwitch!
    @IBAction func optOutSwitchChanged(_ sender: Any) {
        AvTracker.shared.isOptedOut = optOutSwitch.isOn
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        optOutSwitch.isOn = AvTracker.shared.isOptedOut
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        AvTracker.shared.track(view: ["menu","opt out"])
    }
}
