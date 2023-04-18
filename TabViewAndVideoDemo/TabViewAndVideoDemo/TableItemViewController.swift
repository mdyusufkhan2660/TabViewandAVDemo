import UIKit
class TableItemViewController: UIViewController {

    @IBOutlet weak var tableItem: UILabel!
    var item = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableItem.text = item
    }


}
