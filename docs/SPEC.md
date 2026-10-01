# INDIKit Specification

## Purpose

Pure Swift INDI protocol client with streaming XML, BLOB transfer, state tracking, reconnection and deterministic replay.

## Required capabilities

- [ ] TCP connection lifecycle using Network.framework
- [ ] Streaming INDI XML parsing
- [ ] Number, text, switch, light and BLOB vector models
- [ ] Property permissions and Busy/OK/Alert state tracking
- [ ] Dynamic device and property discovery
- [ ] Base64 and compressed BLOB transport
- [ ] Typed async event streams
- [ ] Reconnection, timeout, cancellation and backpressure handling
- [ ] Protocol transcript logging and replay fixtures

## Non-goals

- Typed astronomy device semantics
- INDI server or driver implementation
- User interface

## Architectural requirements

- Transport and parser state are actor-isolated.
- Parsing is incremental and packet-boundary agnostic.
- Protocol state changes are represented as typed, Sendable values where possible.
- Replay fixtures can drive downstream tests without real hardware.
