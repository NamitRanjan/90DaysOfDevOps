# Day 26 – GitHub CLI (gh)

## Overview

Today I explored the GitHub CLI (gh) and learned how to manage repositories, issues, pull requests, and workflows directly from the terminal without switching to the browser.

The GitHub CLI helps DevOps engineers automate repository management and integrate GitHub actions into scripts and CI/CD pipelines.

---

## 1️⃣ Installation & Authentication

### Installation

Verified installation:

```bash
gh --version
````

### Authentication

```bash
gh auth login
```

Verified active account:

```bash
gh auth status
```

### Authentication Methods Supported by gh

* Web-based OAuth login
* Personal Access Token (PAT)
* SSH authentication
* GitHub Enterprise login
* Token via environment variable (GH_TOKEN)

Observation:
The CLI securely stores credentials and integrates with existing Git credentials.

---

## 2️⃣ Working with Repositories

### Create Repository from Terminal

```bash
gh repo create test-gh-repo --public --clone --add-readme
```

This:

* Created a repository on GitHub
* Added a README
* Cloned it locally

---

### Clone Repository

```bash
gh repo clone owner/repo-name
```

---

### View Repository Details

```bash
gh repo view
```

---

### List My Repositories

```bash
gh repo list
```

---

### Open Repository in Browser

```bash
gh repo view --web
```

---

### Delete Repository

```bash
gh repo delete owner/repo-name
```

The CLI asks for confirmation before deletion.

---

## 3️⃣ Working with Issues

### Create Issue

```bash
gh issue create --title "Bug in login" --body "Login fails on invalid input" --label bug
```

---

### List Issues

```bash
gh issue list
```

---

### View Specific Issue

```bash
gh issue view <issue-number>
```

---

### Close Issue

```bash
gh issue close <issue-number>
```

### Automation Use Case

`gh issue` can be used to:

* Automatically create issues from CI failures
* Log incidents from monitoring tools
* Auto-close issues when PRs are merged
* Generate release reports

---

## 4️⃣ Pull Requests

### Create Pull Request

```bash
gh pr create --fill
```

The `--fill` option auto-generates title and description from commit messages.

---

### List Pull Requests

```bash
gh pr list
```

---

### View PR Details

```bash
gh pr view <pr-number>
```

---

### Merge Pull Request

```bash
gh pr merge <pr-number> --merge
```

Merge methods supported:

* --merge (merge commit)
* --squash
* --rebase

---

### Review a Pull Request

```bash
gh pr checkout <pr-number>
gh pr review --approve
gh pr review --comment
gh pr review --request-changes
```

---

## 5️⃣ GitHub Actions (Preview)

### List Workflow Runs

```bash
gh run list
```

---

### View Workflow Run Details

```bash
gh run view <run-id>
```

### DevOps Use Case

`gh run` and `gh workflow` can:

* Monitor CI/CD pipeline status
* Trigger workflows manually
* Check failed jobs quickly
* Integrate deployment checks into scripts
* Automate rollback triggers

---

## 6️⃣ Useful gh Commands

### Raw GitHub API

```bash
gh api repos/:owner/:repo
```

Useful for scripting and automation.

---

### Create Gist

```bash
gh gist create file.txt --public
```

---

### Create Release

```bash
gh release create v1.0.0 --title "First Release"
```

---

### Create Alias

```bash
gh alias set pr-clean 'pr list --state merged'
```

---

### Search Repositories

```bash
gh search repos devops --limit 5
```

---

## 🔑 Key Learnings

* The GitHub CLI enables full repository management from the terminal.
* It reduces context switching between terminal and browser.
* It is powerful for scripting and DevOps automation.
* PRs, issues, and workflows can be managed entirely via CLI.
* JSON output support makes gh useful in automation pipelines.

---

## 🚀 Real-World DevOps Relevance

* Create PRs automatically after branch push.
* Monitor CI/CD pipeline status from production servers.
* Auto-create issues during incidents.
* Trigger releases from deployment scripts.
* Integrate GitHub operations into infrastructure automation.

---

## Final Reflection

Using gh makes GitHub feel like part of the command-line workflow rather than a separate platform. This improves productivity and enables automation at scale.

