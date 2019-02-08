//
//  LeagueVC.swift
//  app-swoosh
//
//  Created by Finn Kiesinger on 08.02.19.
//  Copyright © 2019 Finn Kiesinger. All rights reserved.
//

import UIKit

class LeagueVC: UIViewController {

    
    var player: Player!
    @IBOutlet weak var nxtBtn: BorderButton!
    @IBAction func onNextTapped(_ sender: Any) {
        performSegue(withIdentifier: "skillVCSegue", sender: self)
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        player = Player()
        
        
    }

    @IBOutlet weak var menBut: BorderButton!
    @IBOutlet weak var womenBut: BorderButton!
    @IBOutlet weak var coedBut: BorderButton!
    @IBAction func mensTapped(_ sender: Any) {
        initLeague(league: "m")
    }
    @IBAction func womensTapped(_ sender: Any) {
        initLeague(league: "w")
    }
    @IBAction func coedTapped(_ sender: Any) {
        initLeague(league: "c")
    }
    
    func initLeague(league: String) {
        player.desiredLeague = league
        nxtBtn.isEnabled = true
        if league == "m" {
            menBut.layer.borderColor = UIColor.green.cgColor
            womenBut.layer.borderColor = UIColor.white.cgColor
            coedBut.layer.borderColor = UIColor.white.cgColor
        } else if league == "w" {
            womenBut.layer.borderColor = UIColor.green.cgColor
            menBut.layer.borderColor = UIColor.white.cgColor
            coedBut.layer.borderColor = UIColor.white.cgColor
        } else {
            coedBut.layer.borderColor = UIColor.green.cgColor
            menBut.layer.borderColor = UIColor.white.cgColor
            womenBut.layer.borderColor = UIColor.white.cgColor
        }
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let skillVC = segue.destination as? SkillVC {
            skillVC.player = player
        }
    }
    
}
