//
//  RepresentativeController.swift
//  Representatives
//
//  Created by Seth Danner on 8/10/18.
//  Copyright © 2018 Seth Danner. All rights reserved.
//

import Foundation

class RepresentativeController {
    
    let representatives: [Representative] = []
    static let baseURL = URL(string: "https://whoismyrepresentative.com/getall_reps_bystate.php")!
    
    func searchRepresentatives(forState state: String, completion: @escaping ([Representative]) -> Void) {
        
        let url = RepresentativeController.baseURL
        let urlParameters = ["state": "\(state)", "output": "json"]
        var components = URLComponents(url: url, resolvingAgainstBaseURL: true)
        let queryItems = urlParameters.compactMap({ URLQueryItem(name: $0.key, value: $0.value) })
        components?.queryItems = queryItems
    }
    
}
