# Unix and AIX Operations Toolkit

A curated collection of operating-system administration references for Oracle DBAs and infrastructure engineers working with AIX, Linux, HP-UX, Windows, and related Unix environments.

## Scope

The repository covers filesystem and LVM administration, memory and process diagnostics, account administration, file operations, Oracle trace retention, secure file transfer, and common platform utilities.

The examples are being modernized from historical DBA notes into reusable references. Environment-specific usernames, hostnames, network addresses, database names, and production paths are intentionally excluded.

## Safety

Some operating-system administration commands can modify storage, remove files, stop processes, or change user-account state. Review commands before use, replace placeholders with values appropriate to your environment, and validate disruptive operations in a non-production environment first.

## Repository conventions

- Shell material uses shell-appropriate extensions rather than `.sql`.
- Examples use placeholders instead of infrastructure-specific values.
- Potentially destructive operations include explicit safety guidance.
- Repository checks guard against accidental private-network or credential-like values.

## License

Released under the MIT License.

Copyright (c) 2026 Mohamed Dawood.
