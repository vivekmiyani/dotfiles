---
description: Check new associations have their inverse and foreign keys have belongs_to
---

In this branch compared to origin/main, check:

For each has_many, has_one or belongs_to added, the inverse association exists.

Also check that every new foreign key column in db/schema.rb has a belongs_to.

Show output in table format.
