# Day 23 – Git Branching & Working with GitHub

## Task 1 – Understanding Branches

### What is a branch in Git?
A branch is a pointer to a specific commit. It allows isolated development.

### Why use branches instead of committing everything to main?
Branches prevent unstable code from affecting the main branch.

### What is HEAD?
HEAD is a reference to the current branch and commit.

### What happens when switching branches?
Git updates the working directory to reflect that branch’s state.

---

## origin vs upstream

- origin:
Your forked repository on GitHub.

- upstream:
The original repository you forked from.

---

## git fetch vs git pull

- git fetch:
Downloads changes without merging.

- git pull:
Fetch + merge (or rebase).

---

## Clone vs Fork

Clone:
- Creates a local copy of a repository.

Fork:
- Creates your own copy of someone else's repository on GitHub.

When to fork:
- When contributing or modifying independently.

Keeping fork updated:
- git remote add upstream <original-repo>
- git pull upstream master



















