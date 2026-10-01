# AGENTS.md

## Repository mission

`INDIKit` is part of **Project Meridian**, the library family behind **AstroLab**.

Mission: a pure Swift INDI protocol client with streaming XML, BLOB transfer, state tracking, reconnection and deterministic replay.

## Hard constraints

- Swift only for Project Meridian source in this repository.
- Objective-C and Objective-C++ are prohibited.
- No Qt, KDE or libindi client dependency.
- Swift 6 strict concurrency.
- macOS 27 is the minimum supported platform.
- INDIKit owns transport and protocol representation, not typed astronomy device semantics.

## Implementation rules

- Network connection state belongs behind an actor.
- Parse incrementally from arbitrary TCP packet boundaries.
- Do not assume one XML message per network read.
- Preserve INDI vector state, permissions and timestamps explicitly.
- Long-running reads and writes must be cancellable.
- Reconnection and timeout behavior must be deterministic.
- BLOB transfer must avoid unnecessary copies where practical.
- Protocol logging must support redaction and deterministic replay fixtures.
- Malformed input must fail safely without corrupting connection state.

## Codex workflow

Read `README.md` and `docs/SPEC.md` when changing public behavior or protocol semantics. Use `PLANS.md` for substantial transport/parser changes.

Before finishing:

1. Build and run tests.
2. Add transcript fixtures for changed protocol behavior.
3. Exercise partial packets and multiple messages per packet.
4. Test disconnect/reconnect and cancellation paths.
5. Check strict-concurrency diagnostics.
