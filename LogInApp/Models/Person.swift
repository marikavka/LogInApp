//
//  Person.swift
//  LogInApp
//
//  Created by Мария Купчинская on 14.05.2023.
//

struct User {
    let user: String
    let password: String
    let person: Person
    let travel: Travel
    let education: Education
    
    static func getUserInfo() -> User {
        User(
            user: "User",
            password: "Password",
            person: Person(
                name: "Maria",
                surname: "Kupchinskaia",
                zodiacSign: "Aquarius",
                age: 25,
                city: "Irkutsk"),
            travel: Travel(visitedCountries: ["China",
                                              "America",
                                              "Greece",
                                              "Türkiye",
                                              "Thailand",
                                              "Australia",
                                              "France",
                                              "Belgium",
                                              "Czech",
                                              "Poland",
                                              "Netherlands",
                                              "Vietnam",
                                              "Lithuania",
                                              "Germany"]),
            education: Education(
                university: "ISU",
                speciality: "Management",
                yearOfIssue: 2021,
                degree: "Master")
        )
    }
}

struct Person {
    let name: String
    let surname: String
    let zodiacSign: String
    let age: Int
    let city: String
}

struct Travel {
    let visitedCountries: [String]
}

struct Education {
    let university: String
    let speciality: String
    let yearOfIssue: Int
    let degree: String
}

