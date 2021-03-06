//
//  UILabel.swift
//  FSMovie
//
//  Created by Игорь Попов on 28.11.2020.
//  Copyright © 2020 AirIgor. All rights reserved.
//

import UIKit


extension UILabel {
    func setCorrectlyDate(_ movie: Result) {
        guard let dateFilm = movie.releaseDate else { return }
        let filmDate = dateFilm.split(separator: "-")
        if !filmDate.isEmpty {
            let year = filmDate[0]
            let day = filmDate[2]
            var month: Months = .undefined
            switch filmDate[1] {
            case "01":
                month = .january
            case "02":
                month = .february
            case "03":
                month = .march
            case "04":
                month = .april
            case "05":
                month = .may
            case "06":
                month = .june
            case "07":
                month = .july
            case "08":
                month = .august
            case "09":
                month = .september
            case "10":
                month = .october
            case "11":
                month = .november
            case "12":
                month = .december
            default:
                month = .undefined
            }
            self.text = "\(year), \(month.rawValue) \(day)"
        }
        else {
            self.text = "Release date unknow"
        }
    }
    
    func setCorrectlyDate(_ movie: DetailMovieEntity) {
           guard let dateFilm = movie.releaseDate else { return }
           let filmDate = dateFilm.split(separator: "-")
           if !filmDate.isEmpty {
               let year = filmDate[0]
               let day = filmDate[2]
               var month: Months = .undefined
               switch filmDate[1] {
               case "01":
                   month = .january
               case "02":
                   month = .february
               case "03":
                   month = .march
               case "04":
                   month = .april
               case "05":
                   month = .may
               case "06":
                   month = .june
               case "07":
                   month = .july
               case "08":
                   month = .august
               case "09":
                   month = .september
               case "10":
                   month = .october
               case "11":
                   month = .november
               case "12":
                   month = .december
               default:
                   month = .undefined
               }
               self.text = "\(year), \(month.rawValue) \(day)"
           }
           else {
               self.text = "Unknow"
           }
       }
    
    func setCorrectlyDate(_ personInfo: Person) {
        guard let personBirthday = personInfo.birthday else { return }
        let birthdayPerson = personBirthday.split(separator: "-")
        if !birthdayPerson.isEmpty {
            let year = birthdayPerson[0]
            let day = birthdayPerson[2]
            var month: Months = .undefined
            switch birthdayPerson[1] {
            case "01":
                month = .january
            case "02":
                month = .february
            case "03":
                month = .march
            case "04":
                month = .april
            case "05":
                month = .may
            case "06":
                month = .june
            case "07":
                month = .july
            case "08":
                month = .august
            case "09":
                month = .september
            case "10":
                month = .october
            case "11":
                month = .november
            case "12":
                month = .december
            default:
                month = .undefined
            }
            self.text = "\(month.rawValue) \(day), \(year) "
        }
        else {
            self.text = "Unknow"
        }
    }
    
    func setCorrectlyDate(_ personCastMovies: PersonCastMovies) {
        guard let dateFilm = personCastMovies.releaseDate else { return }
        let filmDate = dateFilm.split(separator: "-")
        if !filmDate.isEmpty {
            let year = filmDate[0]
            let day = filmDate[2]
            var month: Months = .undefined
            switch filmDate[1] {
            case "01":
                month = .january
            case "02":
                month = .february
            case "03":
                month = .march
            case "04":
                month = .april
            case "05":
                month = .may
            case "06":
                month = .june
            case "07":
                month = .july
            case "08":
                month = .august
            case "09":
                month = .september
            case "10":
                month = .october
            case "11":
                month = .november
            case "12":
                month = .december
            default:
                month = .undefined
            }
            self.text = "\(year), \(month.rawValue) \(day)"
        }
        else {
            self.text = "Unknow"
        }
    }
    
}
