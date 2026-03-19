//
//  DataBase.swift
//  ProjetGlowCare
//
//  Created by Ambre Brisson on 05/03/2026.
//

import Foundation

struct ProductsResponse: Codable {
    let records: [ProductRecord]
}

struct ProductRecord: Codable {
    let fields: Product
}

// User
struct User: Identifiable, Codable {
    var id = UUID()
    var firstName: String
    var lastName: String
    var email: String
    var password: String
    var favoriteProduct: [String]
}

// Routine
struct Routine: Identifiable, Codable {
    var id = UUID()
    var routineName: String
    var time: Int
    var step: [StepRoutine]
}

// Etape Routine
struct StepRoutine: Identifiable, Codable {
    var id = UUID()
    var order: Int
    var stepName: String
    var image: String
    var description: String
    var time: Int
}

// Produit
struct Product: Codable {
    var productName: String
    var brand: String
    var category: String
    var type: String
    var description: String
    var note: Int
    var image: String
}

// Avis Produit
struct ProductReview: Identifiable, Codable {
    var id = UUID()
    var user: User
    var comment: String
    var date: Int
}

// Vidéo
struct Video: Identifiable, Codable {
    var id = UUID()
    var videoName: String
    var category: String
    var urlVideo: String
    var description: String
    var image: String
}

// Conseil Beauté
struct BeautyTip: Identifiable, Codable {
    var id = UUID()
    var tipName: String
    var category: String
    var description: String
    var image: String
}

// Conseil Bien-Être
struct CareTip: Identifiable, Codable {
    var id = UUID()
    var careName: String
    var category: String
    var description: String
    var image: String
}

// Type de Peau
struct SkinType: Identifiable, Codable {
    var id = UUID()
    var typeName: String
    var description: String
}

// Objectif
struct Goal: Identifiable, Codable {
    var id = UUID()
    var goalName: String
    var description: String
}

// Notifications
@Observable
class Notif: Identifiable {
    var id = UUID()
    var routineReminder: Bool = false
    var weekCareReminder: Bool = false
    var seasonTips: Bool = false
    var recommendations: Bool = false
    var popularProducts: Bool = false
    var selectedTime: Date = Date()
    var timePicker: Bool = false
}

var products: [Product] = [
    
    Product (
        productName: "Hydrating Cleanser",
        brand: "CeraVe",
        category: "Nettoyant",
        type: "Sèche",
        description: "Nettoyant doux hydratant",
        note: 3,
        image: "sun.max.fill"
    ),
    
    Product (
        productName: "Niacinamide Serum",
        brand: "The Ordinary",
        category: "Sérum",
        type: "Grasse",
        description: "Réduit les imperfections",
        note: 4,
        image: "drop.fill"
    ),
    
    Product (
        productName: "Moisturizing Cream",
        brand: "La Roche Posay",
        category: "Crème",
        type: "Mixte",
        description: "Crème hydratante visage",
        note: 5,
        image: "leaf.fill"
    )
]

var users = User(firstName: "Léa", lastName: "Martin", email: "lea@gmail.com", password: "123456", favoriteProduct: ["rec3u3BCgBQUvtOr8", "recF2yU1bqk6HZa9m"])

var productsReview: [ProductReview] = [
    ProductReview(user: users, comment: "", date: 20260803)
]

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
        time: 2
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

var skinTypes: [SkinType] = [
    
    SkinType (
        typeName: "Sèche",
        description: "La peau tiraille et manque d’hydratation."
    ),
    SkinType (
        typeName: "Grasse",
        description: "La peau produit beaucoup de sébum."
    ),
    SkinType (
        typeName: "Mixte",
        description: "Zone T grasse mais joues normales ou sèches."
    ),
    SkinType (
        typeName: "Normale",
        description: "Peau équilibrée sans problème particulier."
    )
]

var goals: [Goal] = [
    
    Goal (
        goalName: "Hydratation",
        description: "vuvuvu"
    ),
    Goal (
        goalName: "Alimentation",
        description: "apsojdoi"
    ),
    Goal (
        goalName: "Stress",
        description: "aliefobao"
    ),
    Goal (
        goalName: "Sommeil",
        description: "aoefboab"
    )
]

