//
//  ArtistsDataSource.swift
//  TestTechnology
//
//  Created by Анна Яцун on 24.07.2020.
//  Copyright © 2020 Анна Яцун. All rights reserved.
//

import UIKit

enum PopularArtistsDataSourceEvent: EventType {
    
}

class PopularArtistsDataSource: RootTableDataSource<Artist, PopularArtistsDataSourceEvent> {
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        return tableView.reusableCell(ArtistsTableViewCell.self, for: indexPath) { catalogCell in
            let model = self.models[indexPath.row]
            catalogCell.fill(model: model)
        }
    }
}
