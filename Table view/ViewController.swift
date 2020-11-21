//
//  ViewController.swift
//  Table view
//
//  Created by Admin on 12/11/20.
//

import UIKit

class ViewController: UIViewController {

    var provinsi = ["Aceh","Bali","Bangka Belitung","Banten","Gorontalo","Jakarta","Jawa Barat","Jawa Tengah","Jawa Timur","Kalimantan Barat"]
    
    @IBOutlet weak var ProvinsiTableView:
        UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ProvinsiTableView.delegate = self
        ProvinsiTableView.dataSource = self
        
        ProvinsiTableView.separatorStyle = .none
        ProvinsiTableView.showsVerticalScrollIndicator = false
    }


}
extension ViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return provinsi.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = ProvinsiTableView.dequeueReusableCell(withIdentifier: "cellProvinsi") as! ProvinsiTableViewCell
        
        let prov = provinsi[indexPath.row]
        
        cell.ProvinsiLbl.text = prov
        cell.ProvinsiImg.image = UIImage(named: prov)
        
        cell.ProvinsiView.layer.cornerRadius = cell.ProvinsiView.frame.height / 2
        cell.ProvinsiImg.layer.cornerRadius = cell.ProvinsiImg.frame.height / 2

        
        return cell
    }
    
    
}




