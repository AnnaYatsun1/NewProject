//
//  CustomView.swift
//  TestTechnology
//
//  Created by Анна Яцун on 24.07.2020.
//  Copyright © 2020 Анна Яцун. All rights reserved.
//

import UIKit

enum PopularArtistsViewEvent {
    case switchOnlineMode
}

class PopularArtistsView: UIView {
    
    typealias Handler = (PopularArtistsViewEvent) -> ()
    
    @IBOutlet var artistsTableView: UITableView?    
    @IBOutlet var onlineModeSwitch: UISwitch?
    @IBOutlet var spinnerView: UIActivityIndicatorView?
    
    private var eventHandler: Handler?
    
    func fill(eventHandler: @escaping Handler) {
        self.eventHandler = eventHandler
    }
    
    @IBAction func switchOnlineMode(_ sender: Any) {
        self.eventHandler?(.switchOnlineMode)
    }
}
