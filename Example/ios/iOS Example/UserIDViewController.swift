import UIKit
import AvTracker

class UserIDViewController: UIViewController {
    @IBOutlet weak var userIDTextField: UITextField!
    @IBOutlet weak var signinButton: UIButton!
    @IBOutlet weak var signoutButton: UIButton!
    
    @IBOutlet weak var visitorIdTextField: UITextField!
    @IBAction func signinAction(_ sender: UIButton) {
        if (self.userIDTextField.text != nil) && (self.userIDTextField.text?.count)! > 0 {
            AvTracker.shared.userId = self.userIDTextField.text
            updateUserIdState()
        }
    }
    
    @IBAction func signOutAction(_ sender: UIButton) {
        AvTracker.shared.userId = nil
        updateUserIdState()
    }
    
    @IBAction func visitorIdTapped(_ sender: Any) {
        if (self.visitorIdTextField.text != nil) && (self.visitorIdTextField.text?.count)! > 0 {
            AvTracker.shared.forcedVisitorId = self.visitorIdTextField.text
            updateVisitorIdState()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUserIdState()
        updateVisitorIdState()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        AvTracker.shared.track(view: ["menu","user id"])
    }
    
    private func updateUserIdState() {
        self.userIDTextField.text = AvTracker.shared.userId
        
        self.signinButton.isEnabled = !isVisitorIdValid()
        self.signoutButton.isEnabled = !self.signinButton.isEnabled
    }
    
    private func updateVisitorIdState() {
        self.visitorIdTextField.text = AvTracker.shared.forcedVisitorId
    }
    
    private func isVisitorIdValid() -> Bool {
        let currentVisitorId = AvTracker.shared.userId

        return (currentVisitorId != nil) && (currentVisitorId?.count)! > 0
    }
}
