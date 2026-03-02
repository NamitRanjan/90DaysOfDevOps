# Day 24 – Advanced Git: Merge, Rebase, Stash & Cherry Pick

---

## 1️⃣ Git Merge

### Fast-Forward Merge

What happened:
- Main branch had no new commits.
- Git simply moved the pointer forward.
- No merge commit created.

Definition:
A fast-forward merge happens when the target branch has not diverged from the source branch. Git simply moves the branch pointer forward.

---

### Merge Commit

What happened:
- Both branches had new commits.
- Git created a merge commit.

Definition:
A merge commit is created when two branches have diverged and Git needs to combine their histories.

---

### Merge Conflict

What happened:
- Edited the same line in the same file on two branches.
- Git stopped and asked to resolve conflict.
- Conflict markers appeared in file:
  <<<<<<< HEAD
  =======
  >>>>>>> branch-name

Resolution Steps:
1. Manually edit the file.
2. Remove conflict markers.
3. git add <file>
4. git commit

Definition:
A merge conflict occurs when Git cannot automatically resolve differences between branches.

---

## 2️⃣ Git Rebase

What I Observed:
- My commits were replayed on top of main.
- Commit hashes changed.
- History became linear.
- No merge commit was created.

Definition:
Rebase moves (replays) your commits onto another base branch.

Difference from Merge:
- Merge preserves history with a merge commit.
- Rebase rewrites history to keep it linear.

Why not rebase shared branches?
Because it changes commit hashes and can break collaboration.

When to use rebase:
- Cleaning feature branch before Pull Request
- Keeping history linear

---

## 3️⃣ Squash Merge vs Regular Merge

### Squash Merge

What happened:
- Multiple commits combined into one.
- Only one commit added to main.

Definition:
Squash merge combines all commits from a branch into a single commit.

When to use:
- Feature branch with many small commits
- Clean project history

Trade-off:
- Lose detailed commit history

---

### Regular Merge

What happened:
- All commits preserved.
- Merge commit created (if diverged).

Use when:
- You want full commit traceability

---

## 4️⃣ Git Stash

What I Observed:
- git stash saved uncommitted changes.
- git stash pop restored them.
- git stash apply restored without deleting stash.
- Multiple stashes listed using git stash list.

Difference:
- stash pop → apply + remove stash
- stash apply → apply only

When to use:
- Urgent context switch
- Switching branches mid-work
- Temporary save of WIP changes

---

## 5️⃣ Cherry Pick

What I Observed:
- Selected one specific commit.
- Only that commit applied to main.
- Other commits from the branch were ignored.

Definition:
Cherry-pick applies a specific commit from one branch to another.

When to use:
- Production hotfix
- Selective bug fix
- Backporting changes

What can go wrong:
- Duplicate commits
- Merge conflicts
- History confusion if overused

---

## 🔍 Comparison Summary

| Feature       | Creates New Commit? | Rewrites History? | Best Used For |
|--------------|--------------------|------------------|---------------|
| Merge        | Yes (sometimes)    | No               | Team integration |
| Rebase       | No                 | Yes              | Clean feature branches |
| Squash       | Yes (1 commit)     | No               | Clean main history |
| Stash        | No                 | No               | Temporary save |
| Cherry-pick  | Yes                | No               | Selective fixes |

---

## 🧠 Key Learnings (3–5 Points)

- Fast-forward happens when branches do not diverge.
- Rebase creates clean history but rewrites commit hashes.
- Squash keeps main branch clean.
- Stash is useful during urgent context switching.
- Cherry-pick should be used carefully to avoid duplicate history.

---

## 🚀 Real-World DevOps Relevance

- Merge → Regular team development
- Rebase → Clean pull requests
- Squash → Maintain readable production history
- Stash → Emergency fixes
- Cherry-pick → Production hotfix without merging full feature# Day 24 – Advanced Git: Merge, Rebase, Stash & Cherry Pick

