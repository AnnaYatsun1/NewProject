//
//  NetworkingService.swift
//  TestTechnology
//
//  Created by Анна Яцун on 24.07.2020.
//  Copyright © 2020 Анна Яцун. All rights reserved.
//

import UIKit

class RequestService {
    
    let session: URLSession
    let urlBuilder: URLBuilder
    
    init(session: URLSession, urlBuilder: URLBuilder) {
        self.session = session        
        self.urlBuilder = urlBuilder
    }
    
    func getData(url: URL, completion: @escaping (Result<Data, Error>) -> ()) {
        let task = self.session.dataTask(with: url) { data, response, error in
            debugPrint(response)
            
            if let error = error {
                DispatchQueue.main.async {
                    completion(.failure(error))
                }
            }
            if let data = data {
                DispatchQueue.main.async {
                    completion(.success(data))
                }
            }
        }
        task.resume()
    }
}


