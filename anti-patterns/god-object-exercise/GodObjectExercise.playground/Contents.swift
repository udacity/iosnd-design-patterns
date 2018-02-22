//: Playground - noun: a place where people can play

import UIKit

class AppSettings {
    
    private let defaults = UserDefaults.standard
    
    var userId: String {
        return defaults.string(forKey: "user_id") ?? ""
    }
    
    // MARK: User preferences
    
    var userPreference1: Bool {
        return defaults.bool(forKey: "user_preference_1")
    }
    
    var userPreference2: Bool {
        return defaults.bool(forKey: "user_preference_2")
    }
    
    // MARK: Onboarding
    
    var hasSeenFeature1: Bool {
        return defaults.bool(forKey: "has_seen_feature_1")
    }
    
    var hasSeenFeature2: Bool {
        return defaults.bool(forKey: "has_seen_feature_2")
    }
}
