import UIKit
import AvTracker

class SearchViewController: UIViewController, UISearchBarDelegate {
    
    @IBOutlet weak var searchBar: UISearchBar!
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        AvTracker.shared.track(view: ["menu","search"])
    }

    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        guard let query = searchBar.text else { return }
        AvTracker.shared.trackSearch(query: query, category: "MatomoTracker Search", resultCount: Int(arc4random_uniform(100)))
    }
}

