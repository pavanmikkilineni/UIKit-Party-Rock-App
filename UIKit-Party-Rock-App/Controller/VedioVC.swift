//
//  VedioVC.swift
//  UIKit-Party-Rock-App
//
//  Created by Pavan Mikkilineni on 06/12/21.
//

import UIKit

class VedioVC: UIViewController {
    
    private var _partyRock:PartyRock!
    
    @IBOutlet weak var webView: UIWebView!
    
    @IBOutlet weak var vedioTitle: UILabel!
    
    var partyRock:PartyRock{
        get{
           return _partyRock
        }
        set{
            _partyRock=newValue
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        vedioTitle.text=partyRock.vedioTitle
        webView.loadHTMLString(partyRock.vedioURL, baseURL: nil)
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
