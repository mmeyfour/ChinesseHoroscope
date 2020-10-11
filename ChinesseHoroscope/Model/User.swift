//
//  User.swift
//  ChinesseHoroscope
//
//  Created by Mersad Meyfour Asadi on 09/10/2020.
//

import Foundation

struct User{
    var name: String
    var birthday: Dates
//    let sign: Sign
    
    init(name: String, birthday: Dates) {
        self.name = name
        self.birthday = birthday
//        self.sign = sign
    }
    
    func dateConvert(date: String) -> Date {
        let dateFormate = DateFormatter()
        dateFormate.dateFormat = "dd/MM/yyyy"
        
        return dateFormate.date(from: date)!
    }
}
extension User{
    func choseSign(birtday: Dates) -> Sign {
        let chosenDate = dateConvert(date:"\(birthday.day)/\(birthday.month)/\(birthday.month)")
        
        if dateConvert(date: "20/02/1985") <= chosenDate
            && dateConvert(date: "08/02/1986") >= chosenDate{
            
            return Sign(animal: .ox, element: .wood, domination: .init(name: .yang, type: .major), Dates: ["20/02/1985","08/02/1986"])
        }
        else if dateConvert(date: "27/01/1990") <= chosenDate
            && dateConvert(date: "14/02/1991") >= chosenDate{
            
            return Sign(animal: .ox, element: .wood, domination: .init(name: .yang, type: .major), Dates: ["20/02/1985","08/02/1986"])
        }
        else if dateConvert(date: "15/02/1991") <= chosenDate
            && dateConvert(date: "03/02/1992") >= chosenDate {
            
            return Sign(animal: .ox, element: .wood, domination: .init(name: .yang, type: .major), Dates: ["20/02/1985","08/02/1986"])
        }
        else if dateConvert(date: "04/02/1992") <= chosenDate
            && dateConvert(date: "22/01/1993") >= chosenDate{
            
            return Sign(animal: .ox, element: .wood, domination: .init(name: .yang, type: .major), Dates: ["20/02/1985","08/02/1986"])
        }
        else if dateConvert(date: "23/01/1993") <= chosenDate
            && dateConvert(date: "09/02/1994") >= chosenDate {
            
            return Sign(animal: .ox, element: .wood, domination: .init(name: .yang, type: .major), Dates: ["20/02/1985","08/02/1986"])
        }
        else if dateConvert(date: "10/02/1994") <= chosenDate
            && dateConvert(date: "30/01/1995") >= chosenDate {
            
            return Sign(animal: .ox, element: .wood, domination: .init(name: .yang, type: .major), Dates: ["20/02/1985","08/02/1986"])
        }
        else if dateConvert(date: "31/01/1995") <= chosenDate
            && dateConvert(date: "18/02/1996") >= chosenDate {
            
            return Sign(animal: .ox, element: .wood, domination: .init(name: .yang, type: .major), Dates: ["20/02/1985","08/02/1986"])
        }
        else if dateConvert(date: "19/02/1996") <= chosenDate
            && dateConvert(date: "07/02/1997") >= chosenDate {
            
            return Sign(animal: .ox, element: .wood, domination: .init(name: .yang, type: .major), Dates: ["20/02/1985","08/02/1986"])
        }
        else if dateConvert(date: "08/02/1997") <= chosenDate
            && dateConvert(date: "27/01/1998") >= chosenDate {
            
            return Sign(animal: .ox, element: .wood, domination: .init(name: .yang, type: .major), Dates: ["20/02/1985","08/02/1986"])
        }
        else if dateConvert(date: "28/01/1998") <= chosenDate
            && dateConvert(date: "15/02/1999") >= chosenDate {
            
            return Sign(animal: .ox, element: .wood, domination: .init(name: .yang, type: .major), Dates: ["20/02/1985","08/02/1986"])
        }
        else if dateConvert(date: "16/02/1999") <= chosenDate
            && dateConvert(date: "04/02/2000") >= chosenDate {
            
            return Sign(animal: .ox, element: .wood, domination: .init(name: .yang, type: .major), Dates: ["20/02/1985","08/02/1986"])
        }
        else if dateConvert(date: "05/02/2000") <= chosenDate
            && dateConvert(date: "23/01/2001") >= chosenDate {
            
            return Sign(animal: .ox, element: .wood, domination: .init(name: .yang, type: .major), Dates: ["20/02/1985","08/02/1986"])
        }
        return Sign(animal: .ox, element: .wood, domination: .init(name: .yang, type: .major), Dates: ["20/02/1985","08/02/1986"])
    }
}
