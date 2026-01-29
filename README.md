# Swift INI

A Swift library for parsing and encoding INI configuration files.

## Installation

Add to your `Package.swift`:

```swift
dependencies: [
    .package(url: "https://github.com/nathanborror/swift-ini-generated.git", from: "1.0.0")
]
```

## Usage

```swift
import INI

let config = """
app_name = My Application

[database]
host = localhost
port = 5432
"""

// Decode
let ini = try INI(string: config)
print(ini.global["app_name"])     // "My Application"
print(ini["database", "host"])    // "localhost"

// Encode
var ini = INI()
ini.global["app_name"] = "My Application"
ini["database", "host"] = "localhost"
let encoded = ini.encode()
```

## Features

- Global and named sections
- Array sections (lists without key=value pairs)
- Section prefix matching (for git-style configs)
- Quoted values with escape sequences
- Configurable encoder/decoder options
- Thread-safe (`Sendable`)

## Requirements

- Swift 6.2+
- iOS 18+ / macOS 15+

## Learn More

See the [tests](Tests/INITests) for detailed usage examples covering all features.

## License

MIT