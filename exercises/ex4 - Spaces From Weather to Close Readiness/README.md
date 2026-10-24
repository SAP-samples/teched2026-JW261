# Exercise 4 - Spaces: From Weather to Close Readiness

**Learning Objectives**
After completing this exercise, you will be able to:
- Create a Space in Joule Work desktop application and understand how cards work.
- Add live data cards from web search and refresh them on demand.
- Build a persistent Close Readiness Space directly from the Exercise 3 conversation.
- Organise cards into sections and use the Space as a daily monitoring dashboard.

**Estimated time:** 25 minutes

---

## Part 1. Learn Spaces with a Travel Planning Warm-Up

A Space is a persistent dashboard made of live data cards. Unlike a conversation, it stays put. You open it the next day and the data is still there, ready to refresh. This section introduces the mechanics with a simple example before applying them to your financial close work.

---

### 1. Create Your First Space

1. In Joule Work desktop, click **New Conversation**.
2. 👉 Copy and paste the following prompt:

```
Create a Space called "Travel Planning" and add a 5-day weather forecast card for Berlin and a 5-day weather forecast card for the city I am travelling to next.
```

Replace the second city with a city you are actually travelling to after TechEd: for example Munich, London, or New York.

**Result:** Joule creates the Space and adds two weather cards, one per city. Both cards appear in the sidebar under **Spaces**.

<img width="1500" height="891" alt="image" src="https://github.com/user-attachments/assets/2dd1428d-f7ab-42c8-a98d-be42a3f4385b" />

---

### 2. Navigate to the Space and Explore the Cards

1. In the left sidebar, click **Spaces** and open **Travel Planning**.
2. Look at the two weather cards. Notice:
   - Each card has a **↻** refresh icon in the top-right corner.
   - The data is live — it came from a web search Joule ran when creating the card.
   - You did not have to keep the conversation open. The Space persists independently.

---

### 3. Refresh a Card

1. Click **↻** on one of the weather cards.

**Result:** The card re-fetches the latest forecast without you re-prompting. This is the core mechanic of Spaces: live data, on-demand refresh, no conversation required.

> **Note:** The ↻ button works on every card type — weather, news, calendar, S/4HANA data. You will use it throughout Part 2.

---

### 4. Add a Section

1. Open the attached conversation (speech bubble icon in the Space toolbar).
2. 👉 Copy and paste the following prompt:

```
Add a section called "My Destinations" and move both weather cards into it.
```

**Result:** The cards are now grouped under a named section. Sections keep a Space readable as it grows.

---

## Part 2. Build the Q4 Close Readiness Space from Exercise 3

Now apply what you just learned to your real Q4 close work. You already ran the full close readiness analysis in Exercise 3: the at-risk customers, open item check, document consistency, and accrual proposal are all in that conversation. A Space turns those results into a persistent dashboard you can open each morning.

---

### 5. Open the Exercise 3 Conversation

1. In the left sidebar, click **Conversations**.
2. Find and open the conversation from Exercise 3: it is the one where you attached the two files and ran the close readiness workflow.

---

### 6. Create the Close Readiness Space From the Conversation

1. In the Exercise 3 conversation input field, 👉 copy and paste the following prompt:

```
Create a Space called "Q4 Close Readiness" from our conversation. Add the following cards:
1. A summary table of the three at-risk customers with their status, open billing value, and oldest overdue item age
2. The results of the open items and document consistency check
3. The December accrual proposal status for CA Specialty Cycles 2
```

**Result:** Joule creates the Space and adds three cards, each sourced from the Exercise 3 conversation results. Navigate to **Spaces** in the sidebar to see them.

<img width="1501" height="884" alt="image" src="https://github.com/user-attachments/assets/2c418a39-b2b4-4f9c-866d-cf40ac13f1f0" />


---

### 7. Explore the Close Readiness Space

1. Open the **Q4 Close Readiness** Space.
2. Review each card:
   - **At-Risk Customers** the three flagged accounts with their billing exposure and item age.
   - **Open Items and Consistency** the open AR and posting issues the Financial Closing Assistant found.
   - **Accrual Proposal** the December safety net for CA Specialty Cycles 2.

3. Click **↻** on the **At-Risk Customers** card to re-fetch the data.

**Result:** The card refreshes and any changes since Exercise 3 appear without reopening the files or re-running the analysis.

---

### 8. Organise Into Sections

1. Open the attached conversation from the Space toolbar.
2. 👉 Copy and paste the following prompt:

```
Add two sections to this Space: "Customer Risk" and "Closing Actions". Put the at-risk customer summary in Customer Risk, and the open items check and accrual proposal in Closing Actions.
```

**Result:** The cards reorganise into two sections. Customer risk is visible at a glance at the top; the action items are grouped below.

---

### 9. Add a Weather Card for Context

The close team may need to travel to customer sites before December 31. Add a weather card for CA Specialty Cycles 2's region as a practical daily-use addition.

1. In the same attached conversation, 👉 copy and paste the following prompt:

```
Add a weather forecast card for Vancouver, Canada to the Customer Risk section.
```

**Result:** A live weather card for Vancouver is added to the Customer Risk section, a small but concrete example of mixing S/4HANA data with real-world context in one Space.

---

### 10. Ask a Follow-Up Question From the Space

1. In the attached conversation, 👉 copy and paste the following prompt:

```
Based on the cards in this Space, what is the single most important action to take before end of this week to protect Q4 revenue recognition?
```

**Result:** Joule reads the live card data, the customer risk table, the consistency check results, and the accrual status and returns a prioritised recommendation grounded in the actual numbers on the Space.

---

## Summary

In this exercise you:
- Learned how Spaces work by building a simple travel planning Space with live weather cards.
- Applied the same mechanics to your financial close work by creating a Q4 Close Readiness Space directly from the Exercise 3 conversation.
- Organised cards into sections for daily monitoring and added a weather card to show cross-context use.
- Used the Space's attached conversation to ask a grounded follow-up question without re-running any analysis.

[Continue to Exercise 5 →](../ex5%20-%20Joule%20Everywhere%20The%20Command%20Palette/README.md)
