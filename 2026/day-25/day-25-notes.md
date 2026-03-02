# Day 25 – Git Reset vs Revert & Branching Strategies

---

## 1️⃣ Git Reset – Observations

I created 3 commits: A → B → C.

### git reset --soft HEAD~1
- Removed the last commit (C).
- Changes from C remained staged.
- `git status` showed changes ready to commit again.

👉 Moves HEAD only.

---

### git reset --mixed HEAD~1 (default)
- Removed the last commit.
- Changes remained in working directory.
- Changes were NOT staged.

👉 Moves HEAD + resets staging area.

---

### git reset --hard HEAD~1
- Removed the last commit.
- Deleted changes from working directory.
- Everything returned to previous commit state.

👉 Moves HEAD + resets staging area + deletes changes.

---

### Which is destructive?

`--hard` is destructive because it permanently deletes uncommitted changes from the working directory.

---

### Should you reset pushed commits?

No.

Reset rewrites history. If commits are already pushed and shared, resetting causes history mismatch and breaks collaboration.

Use reset only for local cleanup.

---

## 2️⃣ Git Revert – Observations

I created 3 commits: X → Y → Z.

Then I reverted commit Y:

```bash
git revert <hash-of-Y>
