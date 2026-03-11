//
//  DataBase.swift
//  ProjetGlowCare
//
//  Created by Ambre Brisson on 05/03/2026.
//

import Foundation

// User
struct User: Identifiable {
    var id = UUID()
    var firstName: String
    var lastName: String
    var email: String
    var password: String
//    var dateOfBirth: Date
//    var weight: Double
//    var height: Double
}

// Routine
struct Routine: Identifiable {
    var id = UUID()
    var routineName: String
    var time: Int
    var step: [StepRoutine]
}

// Etape Routine
struct StepRoutine: Identifiable {
    var id = UUID()
    var order: Int
    var stepName: String
    var image: String
    var description: String
    var time: Int
}

// Produit
struct Product: Identifiable {
    var id = UUID()
    var productName: String
    var brand: String
    var category: String
    var type: String
    var description: String
    var note: String
    var image: String
    var productReview: ProductReview
}

// Avis Produit
struct ProductReview: Identifiable {
    var id = UUID()
    var user: User
    var comment: String
    var date: Int
}

// Vidéo
struct Video: Identifiable {
    var id = UUID()
    var videoName: String
    var category: String
    var urlVideo: String
    var description: String
    var image: String
}

// Conseil Beauté
struct BeautyTip: Identifiable {
    var id = UUID()
    var tipName: String
    var category: String
    var description: String
    var image: String
}

// Conseil Bien-Être
struct CareTip: Identifiable {
    var id = UUID()
    var careName: String
    var category: String
    var description: String
    var image: String
}

// Notification Routine
//struct RoutineNotification: Identifiable {
//    var id = UUID()
//    var message: String
//    var hour: String
//    var isActive: Bool
//}

var products: [Product] = [
    
    Product (
        productName: "Hydrating Cleanser",
        brand: "CeraVe",
        category: "Nettoyant",
        type: "Sèche",
        description: "Nettoyant doux hydratant",
        note: "",
        image: "",
        productReview: productsReview[0]
    ),
    
    Product (
        productName: "Niacinamide Serum",
        brand: "The Ordinary",
        category: "Sérum",
        type: "Grasse",
        description: "Réduit les imperfections",
        note: "",
        image: "",
        productReview: productsReview[0]
    ),
    
    Product (
        productName: "Moisturizing Cream",
        brand: "La Roche Posay",
        category: "Crème",
        type: "Mixte",
        description: "Crème hydratante visage",
        note: "",
        image: "",
        productReview: productsReview[0]
    )
]

var productsReview = [ProductReview(user: users, comment: "", date: 08/03/2026)]

var users = User(firstName: "Léa", lastName: "Martin", email: "lea@gmail.com", password: "123456")

var videos: [Video] = [
    
    Video (
        videoName: "Routine peau sèche",
        category: "Skincare",
        urlVideo: "",
        description: "Routine simple pour peau sèche",
        image: ""
    ),
    
    Video (
        videoName: "Nettoyer sa peau correctement",
        category: "Skincare",
        urlVideo: "",
        description: "Comment bien nettoyer sa peau",
        image: ""
    ),
    
    Video (
        videoName: "Routine rapide matin",
        category: "Routine",
        urlVideo: "",
        description: "Routine en moins de 5 minutes",
        image: ""
    )
]

var beautytips: [BeautyTip] = [

    BeautyTip (
        tipName: "Boire suffisamment d'eau",
        category: "Peau",
        description: "Boire au moins 1.5L d'eau par jour aide à hydrater la peau.",
        image: ""
    ),

    BeautyTip (
        tipName: "Bien se démaquiller",
        category: "Peau",
        description: "Se démaquiller chaque soir évite les imperfections.",
        image: ""
    ),

    BeautyTip (
        tipName: "Protéger sa peau du soleil",
        category: "Peau",
        description: "Utiliser une crème SPF protège du vieillissement.",
        image: ""
    )
]

var careTips : [CareTip] = [

    CareTip (
        careName: "Dormir suffisamment",
        category: "Sommeil",
        description: "Un bon sommeil aide la peau à se régénérer.",
        image: ""
    ),

    CareTip(
        careName: "Réduire le stress",
        category: "Stress",
        description: "Le stress peut provoquer des imperfections.",
        image: ""
    ),

    CareTip(
        careName: "Manger équilibré",
        category: "Nutrition",
        description: "Une alimentation équilibrée améliore la qualité de la peau.",
        image: ""
    )
]

var routineSteps: [StepRoutine] = [

    StepRoutine (
        order: 1,
        stepName: "Nettoyer",
        image: "",
        description: "Utiliser un nettoyant doux pour éliminer les impuretés.",
        time: 1
    ),

    StepRoutine (
        order: 2,
        stepName: "Sérum",
        image: "",
        description: "Appliquer un sérum adapté à votre type de peau.",
        time: 1
    ),

    StepRoutine (
        order: 3,
        stepName: "Hydrater",
        image: "",
        description: "Appliquer une crème hydratante.",
        time: 1
    )
]
