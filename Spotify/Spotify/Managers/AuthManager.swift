//
//  AuthManager.swift
//  Spotify
//
//  Created by Chris on 1/29/22.
//

import Foundation

final class AuthManager {
    static let shared = AuthManager()
    
    struct Constants {
        static let clientID = "eb4c0579da744d2f9d99e62cad72a0c9"
        static let clientSecret = "5b96fdaa39d34a7dadb4c2c29f2bf6ff"
    }
    
    private init() {}
    
    public var signInURL: URL? {
        let scope = "user-read-private"
        let redirectURI = "https://www.google.com/"
        let base = "https://accounts.spotify.com/authorize"
        let string = "\(base)?response_type=code&client_id=\(Constants.clientID)&scope=\(scope)&redirect_uri=\(redirectURI)&show_dialog=TRUE"
        
        return URL(string: string)
    }
    
    var isSignedIn: Bool {
        return false
    }
    
    private var accessToken: String? {
        return nil
    }
    
    private var refreshToken: String? {
        return nil
    }
    
    private var tokenExpirationDate: Date? {
        return nil
    }
    
    private var shouldRefreshToken: Bool {
        return false
    }
    
    public func exchangeCodeFortoken(code: String,
                                     completion: @escaping ((Bool) -> Void)) {
        
    }
    
    public func refreshAccessToken() {
        
    }
    
    private func cacheToken() {
        
    }
}
