# Session JW261 – Joule Work, Everywhere You Work

[![REUSE status](https://api.reuse.software/badge/github.com/SAP-samples/teched2026-JW261)](https://api.reuse.software/info/github.com/SAP-samples/teched2026-JW261)

## Description

This repository contains the material for the SAP TechEd 2026 session **JW261 | Joule Work, Everywhere You Work**.

> Explore Joule Work in action across the desktop and web surfaces. In this session, you will have the chance to discover what the Joule Work web and desktop surface offers, and get hands-on with exercises designed to show you the best of both worlds. Meet Skills that extend what Joule can do, explore Assistants and see how Spaces help you turn conversations into a dynamic workspace you can return to anytime. Walk away with a clear picture of how Joule Work fits into your daily workflow, wherever you choose to work from.

---

## Overview

This is a **2-hour hands-on session**. You follow a single business story, a Q4 billing and close scenario across three Joule Work surfaces, each picked up where the last one naturally ends.

If you have questions, ask Joule. It can help you.

### The Story

You are a finance manager closing Q4. You start in **SAP S/4HANA** and the Joule panel surfacing overdue billing items. You open **Joule Work web** to investigate the full close picture with the Financial Closing Assistant: status, blockers, CFO brief. The billing gap points to your local Q4 forecast spreadsheet. You switch to **Joule Work desktop application**, attach the Excel file, activate the Billing Assistant, and synthesise local plan with live S/4HANA actuals. You then build a custom Skill to make that analysis repeatable. Finally, you build a persistent **Space** based on live web search, weather, calendar, and close status that waits for you every morning until the books are closed.

### What You'll Do

| Area | What you'll experience |
|------|--------------------------|
| **S/4HANA → Web** | Use the embedded **Diamond Icon** Joule panel in Fiori; move to full Joule Work Web |
| **Financial Closing Assistant** | Period-end close status, blockers, journal entries, and a CFO brief |
| **Billing Assistant + local data** | Cross-reference your Q4 Excel forecast against live S/4HANA billing actuals |
| **Skill Creator** | Build a custom reusable skill from scratch in Joule Work Desktop |
| **Spaces** | Build a live dashboard with web search, weather, Outlook, and S/4HANA data |

### Session Flow

```
Setup  →  S/4 + Web  →  Web: Close & Skills  →  Desktop: Billing + Skill  →  Desktop: Space
(5 min)   (25 min)         (30 min)                    (35 min)                  (25 min)
```

> **Exercise 4 (Spaces) is standalone** It can be done independently without completing Exercises 1–3.

---

## Requirements for Attending

- **Login credentials** to the session demo system — provided by instructors on the day (covers S/4HANA + Joule Work Web).
- A modern **web browser** (Chrome, Edge, or Firefox).
- **Joule Work desktop application** installed on your laptop (macOS or Windows) — required for Exercises 3 and 4.
- Download **[`assets/Q4_Billing_Plan.xlsx`](./assets/Q4_Billing_Plan.xlsx)** to your laptop before starting Exercise 3.
- No prior Joule or AI experience is required.

---

## Note on screenshots and example data

- This session runs against a shared demo environment that is used by multiple participants across sessions. The exact numbers, names, and statuses shown in the exercise screenshots reflect the state of the system at the time the screenshots were taken and will differ from what you see. This is expected: the data is live and changes with every new record created or modified by any participant.

- Use the screenshots as a guide to the layout and structure of the response, not as a reference for specific values.

---

## Exercises

Work through the exercises **in order** — each builds directly on the previous, except Exercise 4 which is standalone. Follow the **Continue →** links at the bottom of each page.

| # | Exercise | Surface | Topic | Time |
|---|----------|---------|-------|------|
| 0 | [Getting Started](./exercises/ex0%20-%20Getting%20Started/README.md) | — | Login and system orientation | 5 min |
| 1 | [From S/4HANA to Joule Work](./exercises/ex1%20-%20From%20SAP%20S4HANA%20to%20Joule%20Work/README.md) | S/4HANA → Web | Embedded Joule panel → Joule Work Web | 25 min |
| 2 | [Financial Close in Joule Work Web](./exercises/ex2%20-%20From%20Billing%20Analysis%20to%20Risk%20Assessment%20Document/README.md) | Web | Financial Closing Assistant + Skills | 30 min |
| 3 | [Billing, Local Data & Custom Skills](./exercises/ex3%20-%20Desktop%20Local%20Files%20and%20the%20Financial%20Closing%20Assistant/README.md) | Desktop | Billing Assistant + Excel + Skill Creator | 35 min |
| 4 | [Build a Business Dashboard Space ★](./exercises/ex4%20-%20Spaces%20From%20Weather%20to%20Close%20Readiness/README.md) | Desktop | Web search · Weather · Calendar · Close data | 25 min |

★ Standalone — can be done without Exercises 1–3.

---

## Related Sessions

This session focuses on **using** Joule Work as a knowledge worker. If you want to go deeper on building Skills and Agents, these sessions complement JW261:

| Session | Title | Focus |
|---------|-------|-------|
| [JW160](https://github.com/SAP-samples/teched2026-JW160) | Joule 101: Prompting, agents, skills, and deep reasoning | Build Skills and Agents in Joule Studio; prompting fundamentals; deep reasoning |

---

## How to Obtain Support

- If you are attending the **in-person session in Berlin**, raise your hand — an instructor will come to you.
---

## License

Copyright (c) 2026 SAP SE or an SAP affiliate company. All rights reserved.  
This project is licensed under the Apache Software License, version 2.0 — see [LICENSE](LICENSE) for details.
