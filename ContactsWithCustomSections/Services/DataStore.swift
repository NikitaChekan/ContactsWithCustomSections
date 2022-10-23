//
//  DataStore.swift
//  ContactsWithCustomSections
//
//  Created by Nikita Chekan on 23.10.2022.
//

class DataStore {
    
    static let shared = DataStore()
    
    let names = [
        "Liam",
        "Olivia",
        "Noah",
        "Emma",
        "Oliver",
        "Charlotte",
        "James",
        "Amelia",
        "Lucas",
        "Mia"
    ]
    
    let surnames = [
        "Smith",
        "Johnson",
        "Williams",
        "Brown",
        "Jones",
        "Garcia",
        "Miller",
        "Davis",
        "Martinez",
        "Anderson"
    ]
    
    let emails = [
        "aaa@gmail.com",
        "bbb@gmail.com",
        "ccc@gmail.com",
        "ddd@gmail.com",
        "eee@gmail.com",
        "fff@gmail.com",
        "ggg@gmail.com",
        "hhh@gmail.com",
        "iii@gmail.com",
        "jjj@gmail.com"
    ]
    
    let phones = [
        "739268473918",
        "483659275937",
        "264856397512",
        "186352846284",
        "654839284653",
        "495726547384",
        "862846659302",
        "649364592642",
        "138464956394",
        "539361946593"
    ]
    
    private init() {}
    
}
