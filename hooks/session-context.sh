#!/bin/bash
# AI marketing — SessionStart hook.
# Prints the marketing member's memory for this project: date, company stage, target market,
# overdue/upcoming obligations, last journal entries, drafts awaiting the founder's approval,
# claims awaiting a source or a lawyer check, inbox, pending learnings, latest digest.
# Silent when the project has no ai-team/marketing workspace.
set -u
# Find the nearest workspace: ai-team/marketing in the project folder or any parent folder
# (a company folder can hold ai-team/ next to projects/<product>/).
dir="${CLAUDE_PROJECT_DIR:-$PWD}"
WS=""
while [ -n "$dir" ] && [ "$dir" != "/" ]; do
  if [ -d "$dir/ai-team/marketing" ]; then WS="$dir/ai-team"; break; fi
  dir=$(dirname "$dir")
done
[ -n "$WS" ] || exit 0
ME="$WS/marketing"
cd "$ME" || exit 0

version=$(grep -m1 '"version"' "${CLAUDE_PLUGIN_ROOT:-.}/.claude-plugin/plugin.json" 2>/dev/null | sed 's/.*"version": *"\([^"]*\)".*/\1/')
today=$(date +%F)
soon=$(date -v+30d +%F 2>/dev/null || date -d '+30 days' +%F)

echo "=== AI MARKETING ${version:+v$version }— session context (${today}) ==="
echo "Rules: ${CLAUDE_PLUGIN_ROOT:-<plugin>}/RULES.md (agent ai-marketing:marketing). Draft only — the founder publishes. Back every claim (claims.md). Log every job (log-job)."
echo "Workspace: $WS  (every ai-team/... path in the rules and skills means this folder)"

stage=$(grep -m1 '^- \*\*Stage:\*\*' "$WS/company/profile.md" 2>/dev/null | sed 's/^- \*\*Stage:\*\* *//')
market=$(grep -m1 '^- \*\*Target market:\*\*' icp.md 2>/dev/null | sed 's/^- \*\*Target market:\*\* *//' | cut -c1-80)
echo "Company stage: ${stage:-unknown} · Target market: ${market:-unknown}"
echo

echo "--- Marketing obligations: overdue or due by ${soon} ---"
if [ -f history/obligations.md ]; then
  awk -F'|' -v today="$today" -v soon="$soon" '
    /^\| O-/ {
      id=$2; due=$3; type=$4; what=$5; status=$7
      gsub(/^ +| +$/, "", id); gsub(/^ +| +$/, "", due); gsub(/^ +| +$/, "", type)
      gsub(/^ +| +$/, "", what); gsub(/^ +| +$/, "", status)
      if (status == "open" && due ~ /^[0-9]{4}-[0-9]{2}-[0-9]{2}$/ && due <= soon) {
        flag = (due < today) ? "OVERDUE " : ""
        printf "%s%s  %s  [%s] %s\n", flag, id, due, type, what; n++
      }
      if (status == "open" && due == "—") u++
    }
    END { if (n == 0) print "(none)"; if (u > 0) printf "(+ %d open items without a date)\n", u }' history/obligations.md
fi
echo

echo "--- Last journal entries ---"
j=$(grep '^## J-' history/journal.md 2>/dev/null | tail -n 6)
echo "${j:-(none)}"
echo

echo "--- Drafts awaiting the founder's approval (the founder publishes) ---"
ready=0; wip=0
for f in drafts/*.md; do
  [ -e "$f" ] || continue
  [ "$(basename "$f")" = "README.md" ] && continue
  st=$(grep -m1 '^status:' "$f" | awk '{print $2}')
  case "$st" in
    ready) echo "$f"; ready=$((ready+1)) ;;
    draft) wip=$((wip+1)) ;;
  esac
done
[ $ready -eq 0 ] && echo "(none)"
claims=$(awk -F'|' '/^\| CL-/ { s=$8; gsub(/^ +| +$/, "", s); if (s == "needs-source" || s == "needs-lawyer") n++ } END { print n+0 }' claims.md 2>/dev/null)
echo "In progress: ${wip} draft(s) · Claims waiting for a source or lawyer check: ${claims:-0}"
echo

pending=$(grep -c '^| L-[0-9]* .*| general .*| pending' learnings.md 2>/dev/null || true)
inbox=$(find inbox -type f ! -name 'README.md' ! -name '.*' 2>/dev/null | wc -l | tr -d ' ')
latest=$(ls -1 digests/20*.md 2>/dev/null | tail -n 1)
echo "Inbox: ${inbox:-0} file(s) · Pending general learnings: ${pending:-0}$( [ "${pending:-0}" -ge 3 ] && echo ' → suggest ai-marketing:improve') · Latest digest: ${latest:-none yet}"
exit 0
