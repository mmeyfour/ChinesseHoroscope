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
    
    init(name: String, birthday: Dates) {
        self.name = name
        self.birthday = birthday
        
    }
    
    func dateConvert(date: String) -> Date {
        let dateFormate = DateFormatter()
        dateFormate.dateFormat = "dd/MM/yyyy"
        
        return dateFormate.date(from: date)!
    }
}

extension User{
    func choseSign(birtday: Dates) -> Sign {
        let chosenDate = dateConvert(date:"\(birthday.day)/\(birthday.month)/\(birthday.year)")
        
        print("your birthday is: \(chosenDate)")
        print("\(dateConvert(date: "05/02/2000"))")
        
        if dateConvert(date: "20/02/1985") <= chosenDate
            && dateConvert(date: "08/02/1986") >= chosenDate{
            return Sign(animal: .ox, element: .wood, domination: .init(name: .yin, type: .minor), Dates: ["20/02/1985","08/02/1986"])
        }
        else if dateConvert(date: "09/02/1986") <= chosenDate
                    && dateConvert(date: "28/01/1987") >= chosenDate{
            return Sign(animal: .tiger, element: .fire, domination: .init(name: .yang, type: .major), Dates: ["09/02/1986","28/01/1987"])
        }
        else if dateConvert(date: "29/01/1987") <= chosenDate
                    && dateConvert(date: "16/02/1988") >= chosenDate {
            return Sign(animal: .hare, element: .fire, domination: .init(name: .yin, type: .minor), Dates: ["29/01/1987","16/02/1988"])
        }
        else if dateConvert(date: "17/02/1988") <= chosenDate
                    && dateConvert(date: "05/02/1989") >= chosenDate{
            return Sign(animal: .dragon, element: .ground, domination: .init(name: .yang, type: .major), Dates: ["17/02/1988","08/02/1986"])
        }
        else if dateConvert(date: "06/02/1989") <= chosenDate
                    && dateConvert(date: "26/01/1990") >= chosenDate {
            return Sign(animal: .snake, element: .ground, domination: .init(name: .yin, type: .minor), Dates: ["06/02/1989","26/01/1990"])
        }
        else if dateConvert(date: "27/01/1990") <= chosenDate
                    && dateConvert(date: "14/02/1991") >= chosenDate {
            return Sign(animal: .hare, element: .metal, domination: .init(name: .yang, type: .major), Dates: ["27/01/1990","14/02/1991"])
        }
        else if dateConvert(date: "15/02/1991") <= chosenDate
                    && dateConvert(date: "03/02/1992") >= chosenDate {            return Sign(animal: .sheep, element: .metal, domination: .init(name: .yin, type: .minor), Dates: ["15/02/1991","03/02/1992"])
        }
        else if dateConvert(date: "04/02/1992") <= chosenDate
                    && dateConvert(date: "22/01/1993") >= chosenDate {
            return Sign(animal: .monkey, element: .water, domination: .init(name: .yang, type: .major), Dates: ["04/02/1992","22/01/1993"])
        }
        else if dateConvert(date: "23/01/1993") <= chosenDate
                    && dateConvert(date: "09/02/1994") >= chosenDate {            return Sign(animal: .rooster, element: .water, domination: .init(name: .yin, type: .minor), Dates: ["23/01/1993","09/02/1994"])
        }
        else if dateConvert(date: "10/02/1994") <= chosenDate
                    && dateConvert(date: "30/01/1995") >= chosenDate {            return Sign(animal: .dog, element: .wood, domination: .init(name: .yang, type: .major), Dates: ["10/02/1994","30/01/1995"])
        }
        else if dateConvert(date: "31/01/1995") <= chosenDate
                    && dateConvert(date: "18/02/1996") >= chosenDate {
            return Sign(animal: .pig, element: .wood, domination: .init(name: .yin, type: .minor), Dates: ["31/01/1995","18/02/1996"])
        }
        else if dateConvert(date: "19/02/1996") <= chosenDate
                    && dateConvert(date: "07/02/1997") >= chosenDate {            return Sign(animal: .rat, element: .fire, domination: .init(name: .yang, type: .major), Dates: ["19/02/1996","07/02/1997"])
        }
        else if dateConvert(date: "08/02/1997") <= chosenDate
                    && dateConvert(date: "27/01/1998") >= chosenDate {
            return Sign(animal: .ox, element: .fire, domination: .init(name: .yin, type: .minor), Dates: ["08/02/1997","27/01/1998"])
        }
        else if dateConvert(date: "28/01/1998") <= chosenDate
                    && dateConvert(date: "15/02/1999") >= chosenDate {
            return Sign(animal: .tiger, element: .ground, domination: .init(name: .yang, type: .major), Dates: ["28/01/1998","15/02/1999"])
        }
        else if dateConvert(date: "16/02/1999") <= chosenDate
                    && dateConvert(date: "04/02/2000") >= chosenDate {
            return Sign(animal: .hare, element: .ground, domination: .init(name: .yin, type: .minor), Dates: ["16/02/1999","04/02/2000"])
        }
        else if dateConvert(date: "05/02/2000") <= chosenDate
                    && dateConvert(date: "23/01/2001") >= chosenDate {
            return Sign(animal: .dragon, element: .metal, domination: .init(name: .yang, type: .major), Dates: ["05/02/2000","23/01/2001"])
        } else {
            return Sign(animal: .dragon, element: .metal, domination: .init(name: .yang, type: .minor), Dates: ["05/02/2000","23/01/2001"])
        }
    }
}
