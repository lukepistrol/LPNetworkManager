# LPNetworkManager

A small, lightweight wrapper class for async/await fetching on `URLSession`.

By default it gets instantiated with `URLSession.shared`. But upon testing a
custom `URLSession` can be passed to the initializer.

This package also provides a mocked `URLProtocol` class, which can be used
to setup a `URLSession` for unit testing purposes.
