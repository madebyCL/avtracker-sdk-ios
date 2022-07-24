import UIKit
import AvTracker

class CustomTrackingParametersViewController: UIViewController {
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        AvTracker.shared.track(view: ["menu","custom tracking parameters"])
    }
    
    @IBAction func didTapSendDownloadEvent(_ sender: UIButton) {
        let downloadURL = URL(string: "https://builds.piwik.org/piwik.zip")!
        let event = Event(tracker: AvTracker.shared, action: ["menu", "custom tracking parameters"], url: downloadURL, customTrackingParameters: ["download": downloadURL.absoluteString], isCustomAction: false)
        AvTracker.shared.track(event)
    }

}

