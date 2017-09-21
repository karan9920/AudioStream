//
//  ViewController.swift
//  AudioStream
//
//  Created by Karan Saglani on 21/09/17.
//  Copyright © 2017 KaranSaglani. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    
    var player:AVPlayer!
    var playerItem:AVPlayerItem?
    var playerLayer:AVPlayerLayer?
    @IBOutlet var searchBar: UISearchBar!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }

    @IBAction func loadClicked(_ sender: Any) {
        
        
        let url = URL(string: searchBar.text!)
        let playerItem:AVPlayerItem = AVPlayerItem(url: url!)
        player = AVPlayer(playerItem: playerItem)
        
    }
    @IBAction func playClicked(_ sender: Any) {
        if player!.rate == 0{
            player!.play()
        }else{
            player!.pause()
        }
    
    }

}

