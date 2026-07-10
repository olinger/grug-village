# 🪨 grug village

village of grug-brained AI agents for [Claude Code](https://code.claude.com). village does the work. village bothers human only when needed. human sits by fire, shiny rocks arrive.

built in the spirit of the original grug picture-rock: [grugbrain.dev](https://grugbrain.dev/). eternal enemy is complexity spirit demon. **complexity very, very bad.**

## why village exist

big-brain AI agents are strong but easily tricked by complexity demon: they abstract too early, build rocks nobody asked for, and bury the one scary finding under nine paragraphs of confident words. grug village fights this three ways:

1. **every villager is bound by law** — the [Founding Rock](skills/grug-village/FOUNDING_ROCK.md) and the [Elder Rock](skills/grug-village/ELDER_ROCK.md) (distilled grugbrain.dev). say no. 80/20. Chesterton's Fence. no clever rocks.
2. **villagers check each other** — planner plans, seer pre-mortems BEFORE code, builder builds boring, skeptic tries to tear it all down. hub and spoke: every grug reports to chief, grugs never debate each other (that is the token bonfire where villages die).
3. **human stays in charge but not in the weeds** — village interrupts only at real decision points: plan approval, escalations, danger. every report puts the scary thing first and ends with a **danger?** line you can read from across the cave.

## the villagers

| grug | job |
|---|---|
| 🔥 **chief** | your main Claude session — orchestrates the hunt, summons grugs, decides what each one sees, asks YOU at real junctions |
| 🧭 **traveller** | product manager — is this worth building? what is the smallest version worth shipping? |
| 🪨 **rock stacker** | architect — the 80/20 plan: exact files, build order, known risks. never edits code |
| 🔮 **seer** | pre-mortem oracle — after plan, before code: sees the futures where the pile falls, writes test cases before code exists |
| 🔨 **builder** | implementer — follows the plan exactly, builds boring, reports instead of improvising |
| 🧐 **skeptic** | reviewer — hunts real bugs, proposes rock REMOVAL, escalates to human when it smells something only human would know |

chief is not a subagent. chief is your session. all grugs know. all grugs play along.

## how hunt works

```
/grug-village <what you want, in your own lazy words>
```

chief sizes the hunt first, so a typo does not summon six grugs:

- **pebble** — chief alone (typo, one-liner, question)
- **rabbit** — plan → build → review (small clear task)
- **mammoth** — full ritual: traveller → rock stacker → **you approve plan** → seer pre-mortem → builder → skeptic → fix loop → report

then go drink coffee. village pokes you only for: plan approval, escalations (a grug smelled something only you would know), destructive actions, and the final report. ask "what is going on?" anytime for story time from the `VILLAGE_LOG.md` the village keeps at your repo root (gitignore it, or commit it as shared team memory — your campfire's call).

## story time on pull requests

```
/grug-story            # PR of current branch
/grug-story 123        # or name the PR
```

storyteller grug reads the PR and drafts a short village tale of the change — accurate first, funny second — for teammates to read and smile. **you approve the exact text before anything is posted** (as a separate comment; the serious PR description is never touched). purely opt-in, per PR, by running the command.

## setup

```
/plugin marketplace add olinger/grug-village
/plugin install grug-village@grug-village
```

restart Claude Code (or start a new session). village is awake in every repo. that is the whole setup.

### sharing with your team (the signpost law)

to make the village discoverable to teammates without forcing it on anyone, add ONLY a marketplace signpost to your repo's checked-in `.claude/settings.json`:

```json
{
  "extraKnownMarketplaces": {
    "grug-village": {
      "source": { "source": "github", "repo": "olinger/grug-village" }
    }
  }
}
```

do **not** add an `enabledPlugins` entry — that force-installs whimsy on every teammate, and forced whimsy breeds village enemies. with the signpost, the village appears in everyone's `/plugin` Discover tab and each human opts in with one install command. reserve `enabledPlugins` for a team that voted yes at campfire.

### Claude Code on the web

cloud sessions never load your laptop's `~/.claude/`, so the plugin is the road: install from a web session with the same two commands above (needs your GitHub auth for private forks; public repo needs nothing). `/grug-story` works in cloud sessions too — the built-in GitHub tools post comments where the `gh` CLI is absent.

## how village grows (census law)

village grows by wounds, not wishes. when the log shows the same lack twice ("village had no database grug"), chief brings you a complete draft agent file and asks. you always decide. recruits are carved into **your own** `~/.claude/agents/` with unclaimed names — the plugin's core grugs belong to every village and are never edited locally.

## roadmap (rocks not yet stacked, on purpose)

- **welcome ritual + hearth-stone** — on first summons, chief interviews the human (seasons of experience, comfortable vs shaky domains, how much explaining, how often to poke) and carves a personal stone the village reads as context. skeptic escalates more eagerly in your shaky domain; juniors get teacher-tilt instead of doer-tilt. the stone is context, never branching logic — every grug file stays identical for every human.
- **two logs** — split rock-facts (repo log, shareable) from human-facts (private chief's log that follows you across repos).

these wait until real hunts prove them needed. village grows by wounds, not wishes — that law applies to the village itself.

## the fine print

- grug voice is for talking to YOU. code, commits, PR bodies, test names — anything a coworker reads — stays professional. the one sanctioned exception is the opt-in `/grug-story` comment.
- your project's CLAUDE.md always beats village law for code matters.
- MIT licensed. take fire from this fire.

*complexity very, very bad.*
