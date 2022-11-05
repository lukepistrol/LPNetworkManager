//
//  LPNetworkManager.swift
//  
//
//  Created by Lukas Pistrol on 05.11.22.
//

import Foundation

/// A small, lightweight wrapper class for async/await fetching on `URLSession`.
///
/// By default it gets instantiated with `URLSession.shared`. But upon testing a
/// custom `URLSession` can be passed to the initializer.
///
/// This package also provides a mocked `URLProtocol` class, which can be used
/// to setup a `URLSession` for unit testing purposes.
final public class LPNetworkManager {

    private var urlSession: URLSession

    /// Instantiates a new ``LPNetworkManager`` with a given `URLSession`.
    /// - Parameter urlSession: A `URLSession` which is
    /// `URLSession.default` by default.
    public init(urlSession: URLSession = .shared) {
        self.urlSession = urlSession
    }

    /// Wraps the `URLSession.data(for:) async throws`.
    /// - Parameter request: A `URLRequest`.
    /// - Returns: A tuple of `Data` and a `URLResponse`.
    public func data(for request: URLRequest) async throws -> (Data, URLResponse) {
        return try await urlSession.data(for: request)
    }

    /// Wraps the `URLSession.data(from:) async throws`.
    /// - Parameter url: A `URL`.
    /// - Returns: A tuple of `Data` and a `URLResponse`.
    public func data(from url: URL) async throws -> (Data, URLResponse) {
        return try await urlSession.data(from: url)
    }
}
