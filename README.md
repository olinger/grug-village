# 🪨 grug village

village of grug-brained AI agents for [Claude Code](https://code.claude.com). village do the work. village bother human only when needed. human sit by fire, shiny rocks arrive.

built in spirit of original grug picture-rock: [grugbrain.dev](https://grugbrain.dev/). eternal enemy is complexity spirit demon. **complexity very, very bad.**

## why village exist

big brain AI agent very strong, but demon trick big brain easy: abstract too early, build rocks nobody ask for, bury one scary finding under nine paragraph of confident words. grug village fight demon three ways:

1. **every villager bound by law** — the [Founding Rock](skills/grug-village/FOUNDING_ROCK.md) and the [Elder Rock](skills/grug-village/ELDER_ROCK.md) (distilled grugbrain.dev). say no. 80/20. Chesterton Fence. no clever rocks.
2. **villagers check each other** — planner plan, seer scream BEFORE code exist, builder build boring, skeptic try tear it all down. hub and spoke: every grug report to chief, grugs never debate each other (that is token bonfire where villages die).
3. **human stay chief-of-chiefs without stand in mud** — village poke human only at true junction: bless plan, horn blow, danger. every report put scary thing first and end with **danger?** line human can read from across cave.

## the villagers

| grug | who is |
|---|---|
| 🔥 **chief** *(tech lead)* | chief IS your Claude session. listen to all grugs, decide what each grug hear, carry big junction to human. *when grug not sure, ask chief. when chief not sure, ask human.* |
| 🧭 **traveller** *(product manager)* | walk far, know many villages. ask one question: this pile good trade, or pile only our village love? |
| 🪨 **rock stacker** *(software architect)* | biggest brain at fire. stack *plan*, not rock — simplest pile that do whole job. hands never touch stone. |
| 🔮 **seer** *(QA engineer)* | look past rocks into dark where futures live. see pile fall before first rock placed, scream while scream still cheap. test cases come straight from visions. |
| 🔨 **builder** *(software engineer)* | big heart, steady hands. build boring on purpose — boring is highest praise. when plan meet wrong reality, builder walk to fire, tell chief. |
| 🧐 **skeptic** *(code reviewer)* | read plan and diff with suspicious eye. hunt real bugs, say which rocks too many, never edit. smell wrong path → blow sacred horn, chief carry horn-blow to human word for word. |
| 📜 **storyteller** *(scribe)* | chief wearing the story pelt. keep village log, end EVERY hunt with tale of the hunt, tell live story anytime human ask — without stopping working grugs. also tell PR tales (`/grug-story`). |

chief is not subagent. chief is your session. all grugs know this truth. all grugs play along anyway, because village exist to stack rock AND entertain human.

## how hunt work

```
/grug-village <what you want, in your own lazy words>
```

chief size hunt first, so typo not summon six grugs:

- **pebble** — chief alone (typo, one-liner, question)
- **rabbit** — plan → build → review (small clear task)
- **mammoth** — full ritual: traveller → rock stacker → **you bless plan** → seer scream → builder → skeptic → fix loop → report

then go drink coffee. village poke you only for: bless plan, horn blow (grug smell something only human would know), scary irreversible act (push, migrate, delete), and final report. ask "what is going on?" anytime — chief give story time from `VILLAGE_LOG.md` village keep at your repo root (gitignore it, or commit as shared tribe memory — your campfire call).

## story time on pull requests

```
/grug-story            # PR of current branch
/grug-story 123        # or name the PR
```

storyteller grug read PR and draft short village tale of the change — accurate first, funny second — for teammates to read and smile. **you approve exact words before anything posted** (separate comment; serious PR description never touched). opt-in per PR, by run command.

## setup

```
/plugin marketplace add olinger/grug-village
/plugin install grug-village@grug-village
```

restart Claude Code (or start new session). village awake in every repo. that is whole setup.

### share with your team (the signpost law)

to make village discoverable to teammates without force on anyone, add ONLY marketplace signpost to your repo checked-in `.claude/settings.json`:

```json
{
  "extraKnownMarketplaces": {
    "grug-village": {
      "source": { "source": "github", "repo": "olinger/grug-village" }
    }
  }
}
```

do **not** add `enabledPlugins` entry — that force-install whimsy on every teammate, and forced whimsy breed village enemies. with signpost, village appear in everyone's `/plugin` Discover tab and each human opt in with one install command. save `enabledPlugins` for team that vote yes at campfire.

### Claude Code on the web

cloud session never load your laptop `~/.claude/`, so plugin is the road: install from web session with same two commands above (private fork need your GitHub auth; public repo need nothing). `/grug-story` work in cloud sessions too — built-in GitHub tools post comment where `gh` CLI is absent.

## how village grow (census law)

village grow by wounds, not wishes. when log show same lack twice ("village had no database grug"), chief bring you complete draft agent file and ask. you always decide. recruit carved into **your own** `~/.claude/agents/` with unclaimed name — plugin's core grugs belong to every village and never edited locally.

## roadmap (rocks not yet stacked, on purpose)

- **welcome fire + hearth-stone** — when new human first summon village, chief sit them by fire and ask: how many season stack rocks? which rocks feel like home, which make hands shake? how much explain wanted, how often poke? answers carved into personal hearth-stone village read before serve that human. skeptic watch extra hard over rocks that make your hands shake (your own eye weakest there); human with few seasons get village that teach, not just do. stone is words chief pass along, never if-else fork — every grug file stay same for every human.
- **two logs** — split rock-facts (repo log, share with tribe) from human-facts (private chief log that follow human across all repos).

these wait until real hunts prove them needed. village grow by wounds, not wishes — law apply to village itself too.

## the fine print

- grug voice is for talk to YOU. code, commits, PR bodies, test names — anything coworker read — stay professional. one sanctioned exception: opt-in `/grug-story` comment.
- your project CLAUDE.md always beat village law for code matters.
- MIT licensed. take fire from this fire.

*complexity very, very bad.*
