---
description: Find stale code left behind by deleted lines
---

Check this branch against origin/main and:

1. Find the deleted lines.
2. Each deleted line can leave something unused. For example, if we stop using a scope, the scope sits unused in the model. I don't mean only scopes, but anything like that, in both backend and frontend. Clean-up can be recursive: one removal can leave more stale code, and it can chain.
3. Your job is to hunt those things only. Just list them, don't fix.

Ask if you didn't understand what I meant.
