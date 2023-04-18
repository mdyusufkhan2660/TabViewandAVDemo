import UIKit
class TableViewController: UIViewController {
    @IBOutlet weak var myTable: UITableView!
    var items = ["Item 1", "Item 2", "Item 3"]
    override func viewDidLoad() {
        super.viewDidLoad()
        myTable.delegate = self
        myTable.dataSource = self

    }
}
extension TableViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = myTable.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = items[indexPath.row]
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("You selected \(items[indexPath.row])")
        let sendData = self.storyboard?.instantiateViewController(withIdentifier: "TableItemViewController") as! TableItemViewController
        sendData.item = String(items[indexPath.row])
        self.navigationController?.pushViewController(sendData, animated: true)
    }
}
