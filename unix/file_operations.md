# Unix file operations

Typical reusable patterns include recursive text search, archive creation/extraction, dated-file selection, and secure copy.

For secure copy, document endpoints generically:

```text
<local-file> -> <user>@<host>:<remote-directory>
<user>@<host>:<remote-file> -> <local-directory>
```

Use SSH configuration, DNS aliases, and approved authentication. Do not commit customer hostnames, private network addresses, usernames, database names, or production backup paths.

Copyright (c) 2026 Mohamed Dawood. MIT License; see LICENSE.
