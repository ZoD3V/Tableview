import UIKit
 
class ViewController: UIViewController {
 
    var provinsi = ["Aceh", "Jakarta", "Bangka Belitung", "Bali", "Jawa Barat", "Jawa Tengah", "Jawa Timur", "Banten", "Gorontalo", "Kalimantan Barat"]
 
 
    @IBOutlet weak var provinsiTableView: UITableView!
 
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
 
        provinsiTableView.delegate = self
        provinsiTableView.dataSource = self
 
        provinsiTableView.separatorStyle = .none
        provinsiTableView.showsVerticalScrollIndicator = true
 
    }
 
 
}
 
extension ViewController: UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return provinsi.count
    }
 
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = provinsiTableView.dequeueReusableCell(withIdentifier: "cellProvinsi") as! ProvinsiTableViewCell
 
        let prov = provinsi[indexPath.row]
        cell.provinsiLBL.text = prov
        cell.provinsiImg.image = UIImage(named: prov)
               
        cell.provinsi_view.layer.cornerRadius = cell.provinsi_view.frame.height / 2
        cell.provinsiImg.layer.cornerRadius = cell.provinsiImg.frame.height / 2
 
        return cell
    }
}
