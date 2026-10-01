# INDIKit

Part of **Project Meridian**, the library family powering **AstroLab**.

INDIKit is a pure Swift INDI protocol client with streaming XML, BLOB transfer, state tracking, reconnection, and deterministic replay.

## Scope

- TCP connection lifecycle using Network.framework
- Streaming INDI XML parsing
- Number, text, switch, light and BLOB vector models
- Permissions and Busy/OK/Alert state tracking
- Dynamic device and property discovery
- Base64 and compressed BLOB transport
- AsyncSequence event streams
- Reconnect, timeout, cancellation and backpressure handling
- Protocol transcript logging and replay fixtures

## Direct Project Meridian dependencies

- None

## Platform and implementation policy

- macOS 27+
- Swift 6 strict concurrency
- Objective-C prohibited
- No libindi client dependency required

## Development

```sh
swift build
swift test
```

See `AGENTS.md`, `PLANS.md`, and `docs/SPEC.md`.
