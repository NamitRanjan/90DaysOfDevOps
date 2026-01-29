# notes.md (Day 01)

````md
# Day 01 - Notes: Introduction to DevOps & Setup

## 1. Environment Setup
- Installed and used **WSL2 (Ubuntu 22.04)** on Windows.
- Verified Linux shell access and basic navigation.
- Used VS Code with WSL integration.

Commands used:
```bash
pwd
ls
cd
nano README.md
code README.md
````

---

## 2. Git & GitHub Workflow

### Forking & Cloning

* Forked original repo to my GitHub account.
* Cloned my fork locally:

```bash
git clone https://github.com/NamitRanjan/90DaysOfDevOps.git
cd 90DaysOfDevOps
```

### Git Identity Setup

Git requires user identity for commits:

```bash
git config --global user.name "Namit Ranjan"
git config --global user.email "my_github_email"
```

Stored in:

```bash
~/.gitconfig
```

---

## 3. Basic Git Commands Learned

| Command       | Purpose              |
| ------------- | -------------------- |
| git status    | Check modified files |
| git add .     | Stage changes        |
| git commit -m | Save snapshot        |
| git push      | Push to GitHub       |
| git remote -v | Show remotes         |
| git diff      | See changes          |

---

## 4. GitHub Authentication (Important)

* GitHub no longer supports password authentication.
* Must use **Personal Access Token (PAT)** or SSH.

Used PAT:

* Generated token with `repo` scope.
* Used token as password during `git push`.

This matches modern cloud security practices.

---

## 5. Markdown Basics

Learned basic Markdown syntax:

```md
# Heading 1
## Heading 2
- Bullet points
**bold text**
[link](url)
```

---

## 6. Key Concepts (Mental Model)

### What is DevOps (My Understanding)

DevOps is a culture and set of practices that:

* Automate software delivery.
* Reduce friction between Dev and Ops.
* Focus on speed, reliability, and feedback loops.

### Why DevOps Matters

* Faster releases
* Fewer failures
* Better collaboration
* Strong demand in job market

---

## 7. Mistakes & Learnings

Mistakes:

* Tried to push using GitHub password.
* Overwrote README without separating docs.

Learnings:

* Modern systems use **token-based auth**.
* README should be summary, not full document.
* Separate files for clarity (README vs notes vs plans).

---

## 8. Daily Reflection

What went well:

* Set up full environment successfully.
* First real Git workflow end-to-end.

What was confusing:

* GitHub authentication initially.

What I feel confident about:

* Linux basics
* Git workflow
* Repo structure

---

## 9. Next Steps (Day 02)

* Learn Linux file system deeper.
* Practice more shell commands.
* Add more structured notes.

```

---

