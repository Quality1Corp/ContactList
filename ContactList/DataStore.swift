//
//  DataStore.swift
//  ContactList
//
//  Created by MikhaiL on 22.04.2023.
//

final class DataStore {
    
    static let shared = DataStore()
    
    let names = [
        "Александра",
        "Иван",
        "Екатерина",
        "Михаил",
        "Анна",
        "Дмитрий",
        "Ольга",
        "Сергей",
        "Наталья",
        "Артем"
    ]
    
    let surnames = [
        "Иванова",
        "Петров",
        "Сидорова",
        "Кузнецов",
        "Новикова",
        "Смирнов",
        "Козлова",
        "Морозов",
        "Васильева",
        "1Зайцев"
    ]
    
    let phones = [
        "+7 (916) 123-45-67",
        "+7 (925) 987-65-43",
        "+7 (903) 456-78-90",
        "+7 (495) 111-22-33",
        "+7 (499) 222-33-44",
        "+7 (903) 333-44-55",
        "+7 (926) 444-55-66",
        "+7 (495) 555-66-77",
        "+7 (925) 666-77-88",
        "+7 (916) 777-88-99"
    ]
    
    let emails = [
        "info@techsupport.com",
        "sales@ecommercestore.com",
        "support@webhosting.net",
        "contact@marketingagency.org",
        "info@travelbooking.com",
        "careers@startupcompany.net",
        "admin@bloggingplatform.com",
        "customerservice@onlineshop.com",
        "feedback@restaurant.com",
        "info@healthandwellness.net"
    ]
    
    private init() {}
}
