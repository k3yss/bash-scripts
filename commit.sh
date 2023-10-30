#!/bin/sh

TYPE=$(gum choose "fix" "feat" "docs" "style" "refactor" "test" "chore" "revert")

SCOPE=$(gum input --placeholder "scope")

#Testing to see if the length of the scope is non-zero

test -n "$SCOPE" && SCOPE="($SCOPE)"

SUMMARY=$(gum input --value "$TYPE$SCOPE: " --placeholder "Summary of this change")

DESCRIPTION=$(gum write --placeholder "Details of this change (CTRL+D to finish)")

gum confirm "Commit changes?" && git commit -m "$SUMMARY" -m "$DESCRIPTION"
