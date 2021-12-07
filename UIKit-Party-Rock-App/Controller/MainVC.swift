//
//  ViewController.swift
//  UIKit-Party-Rock-App
//
//  Created by Pavan Mikkilineni on 06/12/21.
//

import UIKit

class MainVC: UIViewController {
    
    var  partyRocks=[PartyRock]()
    
    @IBOutlet weak var tableView:UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let p1=PartyRock(imageURL:"https://content-eu-8.content-cms.com/12becebc-ce88-4f3c-844b-fed0588ae8fb/dxdam/c2/c2a9ec93-631a-4ebb-bc67-a4ae94163d4d/20220628-AS-billieeilish2-400x400.jpg" , vedioURL:"<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/5GJWxDKyk3A\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>", vedioTitle:" Happier than ever")
        partyRocks.append(p1)
        
        let p2=PartyRock(imageURL:"https://content-eu-8.content-cms.com/12becebc-ce88-4f3c-844b-fed0588ae8fb/dxdam/c2/c2a9ec93-631a-4ebb-bc67-a4ae94163d4d/20220628-AS-billieeilish2-400x400.jpg" , vedioURL:"<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/5GJWxDKyk3A\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>", vedioTitle:"Male Fantasy")
        partyRocks.append(p2)
        
        let p3=PartyRock(imageURL:"https://content-eu-8.content-cms.com/12becebc-ce88-4f3c-844b-fed0588ae8fb/dxdam/c2/c2a9ec93-631a-4ebb-bc67-a4ae94163d4d/20220628-AS-billieeilish2-400x400.jpg" , vedioURL:"<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/5GJWxDKyk3A\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>", vedioTitle:"EveryBody Dies")
        partyRocks.append(p3)
        
        let p4=PartyRock(imageURL:"https://content-eu-8.content-cms.com/12becebc-ce88-4f3c-844b-fed0588ae8fb/dxdam/c2/c2a9ec93-631a-4ebb-bc67-a4ae94163d4d/20220628-AS-billieeilish2-400x400.jpg" , vedioURL:"<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/5GJWxDKyk3A\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>", vedioTitle:" Billie Bosa Nova")
        partyRocks.append(p4)
        
        tableView.delegate=self
        tableView.dataSource=self
    }


}

extension MainVC:UITableViewDelegate{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "VedioVC", sender: partyRocks[indexPath.row])
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination=segue.destination as? VedioVC {
            if let party=sender as? PartyRock{
                destination.partyRock=party
            }
        }
    }
}

extension MainVC:UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return partyRocks.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let  cell=tableView.dequeueReusableCell(withIdentifier: "PartyCell",for: indexPath) as? PartyCell{
            cell.updateUI(partyRock: partyRocks[indexPath.row])
            return cell
        }
        else{
            return UITableViewCell()
        }
    }
    
}
