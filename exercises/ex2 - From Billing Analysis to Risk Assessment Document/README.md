# Exercise 2. From Billing Analysis to Risk Assessment Document

**Learning Objectives**
After completing this exercise, you will be able to:
- Continue a conversation thread that started in the S/4HANA embedded panel.
- Enable document creation in Joule Work web settings and export a PDF or Markdown file.
- Use Joule Work web to structure analytical findings into a shareable document.
- Identify the natural transition point from web to desktop and understand what triggers it.

**Estimated time:** 25 minutes

---

## 1. Continue From Your S/4HANA Session

Your conversation from Exercise 1 is already here. You do not need to re-explain the billing situation. Joule has the context.

1. In the left sidebar of Joule Work web, open the conversation from Exercise 1.
2. Scroll to the bottom to see the billing analysis from S/4HANA: the aged items and the top 3 customer ranking.

> **Note:** If you are starting this exercise fresh without completing Exercise 1, open a new conversation and paste the following as your first message to set up the context:

```
I have 2,400+ open billing items in my S/4HANA billing due list. My top 3 customers by open value are US Specialty Cycles 6 (€5.7M, oldest item Sept 2026), CA Specialty Cycles 1 (€4.6M, 91 items), and CA Specialty Cycles 2 (€4.5M, oldest item April 2025). Several customers also have open credit memo requests and billing document requests alongside their delivery backlog.
```

---

## 2. Enable Document Creation

Before generating the risk assessment document, make sure the document creation skill is turned on.

1. Click user **initials** and **Explore Skills** to open skills.
2. Toggle on **PDF**
3. Return to your conversation.

<img width="1510" height="826" alt="image" src="https://github.com/user-attachments/assets/65bb2bc3-36fb-4fb8-be42-726d2f425068" />


---

## 3. Enrich the Risk Picture

The S/4HANA data shows what is open. Now ask Joule to reason about what it means for the close.

1. 👉 Copy and paste the following prompt:

```
Based on the billing analysis we ran, what are the key risk factors I should highlight before the Q4 close? Consider the customer concentration, the age of the oldest items, and the fact that some customers have open credit memo requests alongside their delivery backlog.
```

**Result:** Joule identifies the risk dimensions: revenue recognition exposure, customer concentration risk, aging escalation thresholds, and the complication that credit memo requests create for clean invoicing.

---

## 4. Generate the Structured Document

Now turn the analysis into a document you can share and carry into the next exercise.

1. 👉 Copy and paste the following prompt:

```
Turn this into a structured Q4 Billing Risk Assessment I can share with my controller. Format it with the following sections: Executive Summary, Top At-Risk Customers (with open value, item count, and oldest item age), Document Type Breakdown, and Recommended Actions before close, create a pdf document out of this.
```

**Result:** Joule generates a complete, structured document ready to share or use as the basis for a briefing.

---

## 5. Save the Document

You will use this file as an input in Exercise 3. Save it now before moving on.

1. In the conversation, find the generated document and use the **Download** or **Export as PDF** button to save it to your laptop as `Q4_Billing_Risk_Assessment.pdf`.

> **Note:** This file is not provided in the session repository. You must save it here before continuing to Exercise 3.

<img width="1510" height="497" alt="image" src="https://github.com/user-attachments/assets/020814c1-62fd-4a52-8fb4-856213144f5e" />

---

## 6. Recognise the Desktop Transition Point

You now have a risk assessment grounded in live S/4HANA billing data. To complete the picture before the close you still need two things that require Joule Work desktop application:

- **Your local Q4 billing plan:** a spreadsheet on your laptop with planned billing targets per customer.
- **The Financial Closing Assistant:** which shows the actual period-end close task status in S/4HANA, so you can see which close tasks are still open for the customers in your risk assessment.

Move to Desktop.

---

## Summary

In this exercise you:
- Continued the conversation thread from Exercise 1 without re-explaining the context.
- Enabled document creation in settings and generated a formatted Q4 Billing Risk Assessment.
- Saved the risk assessment as a local file: the carry-over artifact for Exercise 3.
- Identified the two capabilities that require Desktop like local file access.

[Continue to Exercise 3 ](../ex3%20-%20Desktop%20Local%20Files%20and%20the%20Financial%20Closing%20Assistant/README.md)
