#!/bin/bash
# =============================================================================
# push-to-github.sh
# Pushes teched2026-JW261 to https://github.com/SAP-samples/teched2026-JW261
#
# Run this from INSIDE the teched2026-JW261 directory:
#   cd /path/to/teched2026-JW261
#   bash push-to-github.sh
#
# Prerequisites:
#   - git installed on your machine
#   - GitHub account with write access to SAP-samples/teched2026-JW261
#   - GitHub credentials configured (token, SSH key, or Git Credential Manager)
# =============================================================================

set -e  # Exit immediately if any command fails

REMOTE_URL="https://github.com/SAP-samples/teched2026-JW261.git"
BRANCH="main"

echo ""
echo "▶ Checking git installation..."
if ! command -v git &> /dev/null; then
    echo "✗ git is not installed. Install it from https://git-scm.com and re-run."
    exit 1
fi
echo "  git $(git --version | cut -d' ' -f3)"

echo ""
echo "▶ Checking repository state..."
if [ ! -d ".git" ]; then
    echo "  No .git directory found — initialising new git repository..."
    git init
    git checkout -b "$BRANCH" 2>/dev/null || git branch -M "$BRANCH"
    echo "  Initialised."
else
    echo "  Existing git repository detected."
fi

echo ""
echo "▶ Checking remote..."
if git remote get-url origin &>/dev/null; then
    CURRENT_REMOTE=$(git remote get-url origin)
    if [ "$CURRENT_REMOTE" != "$REMOTE_URL" ]; then
        echo "  Remote 'origin' is currently: $CURRENT_REMOTE"
        echo "  Updating to: $REMOTE_URL"
        git remote set-url origin "$REMOTE_URL"
    else
        echo "  Remote 'origin' already set correctly."
    fi
else
    echo "  Adding remote 'origin' → $REMOTE_URL"
    git remote add origin "$REMOTE_URL"
fi

echo ""
echo "▶ Staging files..."
git add \
    README.md \
    LICENSE \
    REUSE.toml \
    LICENSES/Apache-2.0.txt \
    .gitignore \
    exercises/ex0/README.md \
    exercises/ex1/README.md \
    exercises/ex2/README.md \
    exercises/ex3/README.md \
    exercises/ex4/README.md \
    exercises/ex5/README.md \
    assets/Q4_Billing_Plan.xlsx

echo "  Staged. Summary:"
git status --short

echo ""
echo "▶ Committing..."
COMMIT_MSG="Add TechEd 2026 JW261 workshop exercises — initial push

Exercises ex0–ex5 covering Joule Work Embedded, Web, and Desktop.
Includes: root README, 6 exercise READMEs, Q4_Billing_Plan.xlsx asset,
Apache 2.0 license, REUSE compliance, and .gitignore."

git commit -m "$COMMIT_MSG" || echo "  (Nothing new to commit — repository may already be up to date.)"

echo ""
echo "▶ Pushing to GitHub..."
echo "  If prompted for credentials, use your GitHub personal access token as the password."
git push -u origin "$BRANCH"

echo ""
echo "✓ Done. View the repository at:"
echo "  https://github.com/SAP-samples/teched2026-JW261"
echo ""
