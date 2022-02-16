//
//  Extensions.swift
//  AudioRecorder
//
//  Created by Ivan Trajanovski on 2022. 02. 08..
//

import Foundation


extension Date
{
    func toString( dateFormat format: String) -> String
    {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = format
        return dateFormatter.string(from: self)
    }
}
