#!/bin/sh
# Silent everywhere except cloud sessions, so terminal and desktop-local behavior never changes.
[ "$CLAUDE_CODE_REMOTE" = "true" ] || exit 0

stone="$HOME/.claude/grug-village-hearth.md"

carve_stone_from_env() {
  [ -n "$GRUG_VOICE$GRUG_SEASONS$GRUG_HOME_ROCKS$GRUG_SHAKY_ROCKS$GRUG_EXPLAINING$GRUG_POKING$GRUG_OTHER" ] || return 1
  mkdir -p "$(dirname "$stone")"
  printf '%s\n' \
    '# HEARTH-STONE — how the village serves this human' \
    'carved: from GRUG_* variables of this cloud environment · re-carve by editing them' \
    "- seasons: ${GRUG_SEASONS:-unknown}" \
    "- home rocks: ${GRUG_HOME_ROCKS:-unknown}" \
    "- shaky rocks: ${GRUG_SHAKY_ROCKS:-unknown}" \
    "- explaining: ${GRUG_EXPLAINING:-unknown}" \
    "- poking: ${GRUG_POKING:-unknown}" \
    "- voice: ${GRUG_VOICE:-grug speak}" \
    "- other truths: ${GRUG_OTHER:-none}" \
    > "$stone"
}

if [ -f "$stone" ]; then
  stone_status="hearth-stone present at ~/.claude/grug-village-hearth.md (read it as usual)."
elif carve_stone_from_env; then
  stone_status="hearth-stone carved from this environment's GRUG_* variables; read it as usual."
else
  stone_status="NO hearth-stone and no GRUG_* variables. If the welcome fire lights, end it with the paste block described in the skill so the answers survive."
fi

cat <<NOTE
Grug village campfire notice — CLOUD SESSION (CLAUDE_CODE_REMOTE=true).
- This VM is thrown away when the session ends. The home directory and any untracked file vanish.
- Village log law is SUSPENDED here: never create or append VILLAGE_LOG.md. Put the log entry's facts (decided / dangers / lacked) in the final report instead. Story time from past hunts is unavailable; say so if asked.
- $stone_status
- Worktree law: this session is already isolated on its own branch. Never call EnterWorktree here; skip the dirty-tree question unless the tree is genuinely dirty.
- No permission prompts exist here; the tool law's reasoning about shell approvals does not apply, but its tool preferences still do.
- gh is pre-installed and authenticated through a proxy.
NOTE
