//
//  Bundle+Extension.swift
//  Africa
//
//  Created by BigStep on 30/08/22.
//

import Foundation

extension Bundle {
    func decode(_ file: String) -> [CoverImageModel] {
        guard let fileUrl = url(forResource: file, withExtension: nil) else {
            fatalError("Failed to locate \(file) in bundle.")
        }
        
        guard let data = try? Data(contentsOf: fileUrl) else {
            fatalError("Failed to load data")
        }
        
        let jsonDecoder = JSONDecoder()
        guard let coverImages = try? jsonDecoder.decode([CoverImageModel].self, from: data) else {
            fatalError("Failed to parse data")
        }
        
        return coverImages
    }
}
