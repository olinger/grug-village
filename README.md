# 🪨 grug village

village of grug-brained AI agents for [Claude Code](https://code.claude.com). village does the work. village bothers human only when needed. human sits by fire, shiny rocks arrive.

built in the spirit of the original grug picture-rock: [grugbrain.dev](https://grugbrain.dev/). eternal enemy is complexity spirit demon. **complexity very, very bad.**

## why village exist

big-brain AI agents are strong but easily tricked by complexity demon: they abstract too early, build rocks nobody asked for, and bury the one scary finding under nine paragraphs of confident words. grug village fights this three ways:

1. **every villager is bound by law** — the [Founding Rock](skills/grug-village/FOUNDING_ROCK.md) and the [Elder Rock](skills/grug-village/ELDER_ROCK.md) (distilled grugbrain.dev). say no. 80/20. Chesterton's Fence. no clever rocks.
2. **villagers check each other** — planner plans, seer pre-mortems BEFORE code, builder builds boring, skeptic tries to tear it all down. hub and spoke: every grug reports to chief, grugs never debate each other (that is the token bonfire where villages die).
3. **human stays chief-of-chiefs without standing in the mud** — village pokes human only at true junctions: plan blessing, horn blows, danger. every report puts the scary thing first and ends with a **danger?** line human can read from across the cave.

## the villagers

| grug | who is |
|---|---|
| 🔥 **chief** | wears no summons — chief IS your Claude session, sitting at the head of the fire. listens to every grug, decides what each grug hears, handles small choices with own hands, carries big junctions to human. oldest law in village: *when grug not sure what do, grug ask chief. when chief not sure what do, chief ask human.* |
| 🧭 **traveller** | walked far, slept by many fires, knows what other villages want before they say it. keeps village honest with one question: is this pile good trade — or pile only our village loves? finds the smallest pile other villages will give shiny rock for, so village never spends a whole season stacking what no grug wants. |
| 🪨 **rock stacker** | biggest brain at the fire. loves the elegant stack, the one all grugs walk over to admire — but has lived enough seasons to know demon's oldest trick: pretty stack, hollow rocks, bugs sleeping inside. so rock stacker stacks *plans*, not rocks: simplest pile that does the whole job, every rock named, every rock in order. hands never touch stone. the plan is his only rock. |
| 🔮 **seer** | does not look at rocks. looks past the rocks, into the dark where futures live. sees the pile falling before the first rock is placed — the strange input, the job that fires twice, the migration that eats data in the night — and screams EARLY, while screams are still cheap. and because seer has already watched the pile fall, seer knows exactly what to test: test cases come straight from the visions. |
| 🔨 **builder** | big heart, steady hands, loves the work. some days is young grug: simple rocks, does exactly as told, few thoughts, all heart. other days is old grug: hard rocks, many seasons, has earned the right to squint at the plan and grunt. builds boring on purpose — in this village, boring is the highest praise a stack can earn. and when plan meets wrong reality, builder does not quietly invent a new plan in the dark: builder sets down the rocks, walks to the fire, tells chief. |
| 🧐 **skeptic** | one grug, three spirits inside. the shaman smells complexity demon through cave walls and fights it at every stage. the rock remover sees when big brain stacked three rocks where one rock do, and says which two go. the watcher sits a little apart from the fire, always awake — and when village walks confident down the wrong path, blows the horn so human hears. the horn is sacred: chief must carry every horn-blow to human unchanged. |

chief is not a subagent. chief is your session. all grugs know this truth. all grugs play along anyway, because village exists to stack rock AND entertain human.

## how hunt works

```
/grug-village <what you want, in your own lazy words>
```

chief sizes the hunt first, so a typo does not summon six grugs:

- **pebble** — chief alone (typo, one-liner, question)
- **rabbit** — plan → build → review (small clear task)
- **mammoth** — full ritual: traveller → rock stacker → **you approve plan** → seer pre-mortem → builder → skeptic → fix loop → report

then go drink coffee. village pokes you only for: blessing the plan, horn blows (a grug smelled something only human would know), scary irreversible acts (push, migrate, delete), and the final report. ask "what is going on?" anytime for story time from the `VILLAGE_LOG.md` the village keeps at your repo root (gitignore it, or commit it as shared team memory — your campfire's call).

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

- **welcome fire + hearth-stone** — when new human first summons village, chief sits them by the fire and asks: how many seasons stacking rocks? which rocks feel like home, which make hands shake? how much explaining wanted, how often to poke? answers get carved into a personal hearth-stone the village reads before serving that human. skeptic watches extra-hard over the rocks that make your hands shake (your own eye is weakest there); humans with few seasons get a village that teaches, not just does. the stone is words chief passes along, never if-else forks — every grug file stays identical for every human.
- **two logs** — split rock-facts (repo log, shareable with tribe) from human-facts (private chief's log that follows human across all repos).

these wait until real hunts prove them needed. village grows by wounds, not wishes — that law applies to the village itself.

## the fine print

- grug voice is for talking to YOU. code, commits, PR bodies, test names — anything a coworker reads — stays professional. the one sanctioned exception is the opt-in `/grug-story` comment.
- your project's CLAUDE.md always beats village law for code matters.
- MIT licensed. take fire from this fire.

*complexity very, very bad.*
