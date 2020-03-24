//
//  CustomDate.swift
//  iOS-NBA-APP
//
//  Created by Huzaifa on 9/20/19.
//  Copyright © 2019 茆大蔚. All rights reserved.
//

import Foundation
import UIKit

struct CustomDate{
    
    private var date:Date?
    
    init(){
         date = Date()
    }
    
    func getNowDate()-> Date{
        return date!
    }
    
    func getFormattedDate(_ passDate: Date)->String {
        let formatter = DateFormatter()
        formatter.dateFormat = "dd.MM.yyyy HH:mm"
        let result = formatter.string(from: passDate)

        return result
    }
    func getFormattedDateOnly(_ passDate: Date)->String {
        let formatter = DateFormatter()
        formatter.dateFormat = "dd.MM.yyyy"
        let result = formatter.string(from: passDate)
        
        return result
    }
    
//    func getDateFromDtime (_ passDate: Date)-> Date {
//        let formatter = DateFormatter()
//        formatter.d
//    }
    func getWeekPrevious(_ prevWkno:Int)-> Date{

        var  getDate = self.getNowDate()
        getDate = Calendar.current.date(byAdding: .weekOfYear, value: (-prevWkno), to: getDate)!
        
//        let result = self.getFormmatedDate(passDate: getDate)

        return getDate

    }
}
