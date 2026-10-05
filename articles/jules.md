---
title: "Google still offers Jules as a service"
author: Jack Kendall
date: 2026-10-04
toc: true
---

In case you aren't aware - and I wouldn't blame you - [Jules](https://jules.google.com/session) is Google's offering in the AI niche of offering you containers in the cloud for agent inference.

It's the same fundamental product as OpenAI's [Codex Cloud](https://learn.chatgpt.com/docs/cloud), or Anthropic's ['Claude Code in the cloud'](https://code.claude.com/docs/en/claude-code-on-the-web) (great name, very snappy).

What baffles me is that if you go to Jules today, nothing really indicates it's an absolutely terrible option for doing agentic work in the modern day.

It wasn't particularly good when it came out: Gemini models have never been great at agentic coding, and the UI was so poorly-implemented that it used to literally crash my browser on longer sessions. I try to cut Google some slack, as a small indie startup, but some things are just unacceptable as commercial offerings.

And nowadays, of course, the only real games in town are the first-party harnesses or your libre alternative of choice (Hermes, OMP...).

I'm relatively convinced that Jules has received zero real product attention from Google in over a year, and it's up in the air if the upcoming release of Gemini 4 (Argon) will make any difference there. Their priorities seem more set on their Antigravity IDE.

## People still use it

There are probably thousands of working programmers who use Jules as their daily driver for building software.

That fact disquiets me, but can we doubt it?

The law of big numbers seems to compel us to accept it.

AI is diffuse enough now that I think basically everyone uses it, but the cadre of programmers who are 'into AI' is still relatively small.

I imagine a significant number don't keep up with model releases at all, and simply plug away with whatever default their harness gives them.

(To be clear, I don't blame anyone for just collecting a paycheck; this is about social dynamics, not individual choices).

## So what?

It's fascinating to see a field develop its own legacy tooling in real-time.

Because AI operates on hyperspeed, using something released in August 2025 today is like trying to use Visual Studio 2008 to build a Blazor app.

It seems inevitable that companies not invested in staying up to date will become [genetic isolates](https://en.wikipedia.org/wiki/Genetic_isolate) on this, for the same reasons it happens today (lack of interest, awareness, time, resources).

So you may very well end up getting hired at a company in 2030 who expects you to use AI models and harnesses that were hot in 2027, or worse!

What follows? Let's list the obvious results.

- The developer environment is almost guaranteed to be bespoke, brittle, weird and hard to onboard. (You try getting an API key from Google Cloud.)
- Real advancements are simply left on the table. (An obvious example that I've seen in practice is gargantuan `AGENTS.md` files instead of [tightly-scoped skills](https://platform.claude.com/docs/en/agents-and-tools/agent-skills/overview).)
- Codebase quality will likely degenerate into slurry, since these corporate environments will likely not have the institutional know-how to prevent it with adversarial code review, specs, tests that agents can't cheat, etc.

That last point is personal for me, because I have bad memories of the days when Gemini 2.5 Pro was legitimately the best model in the world. It had a bizarre quirk of leaving inane page-length comments all over the codebase, which annoyed me so much I developed shell scripts for trying to strip them out without having to look at them.

Anyway, my point is that the future will be exactly like the past in every way, without exception.

Where we once had 800k LOC Fortran banking systems upholding the economy, we will now see economically-vital companies hamstrung by five million lines of Python that no human has ever reviewed, tested or understood.

This is frankly great news, because it means there will still be good honest money in people going in to fix these mistakes.
But don't be surprised when, in ten years, you start seeing headlines like this:

> TechCorp admits they have 'no idea' how their authorization system works in post-breach litigation...

> WidgetCo signs $10M contract with external firm to analyze their 'uncontrollable' AI spend...

> Products Ltd. quickly pulls 'free money' feature from user accounts after realizing it was proposed, designed, implemented and released without human input...