//
//  PartyCell.swift
//  UIKit-Party-Rock-App
//
//  Created by Pavan Mikkilineni on 06/12/21.
//

import UIKit

class PartyCell: UITableViewCell {

    
    @IBOutlet weak var vedioPreviewImage: UIImageView!
    
    @IBOutlet weak var vedioTitle: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func updateUI(partyRock:PartyRock){
        vedioTitle.text=partyRock.vedioTitle
        let url=URL(string: partyRock.imageURL)!
        DispatchQueue.global().async {
            do{
                let data=try Data(contentsOf: url)
                DispatchQueue.global().sync {
                    self.vedioPreviewImage.image=UIImage(data: data)

                }
            }catch {
               
            }
        }
    }

}
