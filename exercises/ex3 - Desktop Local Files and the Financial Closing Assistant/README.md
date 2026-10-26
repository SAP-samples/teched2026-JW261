# Exercise 3 - Desktop: Local Files and the Financial Closing Assistant

**Learning Objectives**
After completing this exercise, you will be able to:
- Attach multiple local files to a single desktop conversation.
- Activate the Financial Closing Assistant and use it for transactional close actions grounded in file context.
- Use the Assistant to clear open items and generate accrual proposals for at-risk accounts.
- Build a custom Skill that automates this three-source close workflow.

**Estimated time:** 30 minutes

---

## 1. Open Joule Work desktop application

1. Launch Joule Work desktop from **Applications** (macOS) or **Start Menu** (Windows).
2. Sign in with your SSO credentials.
3. Desktop starts from scratch. There is no conversation history from Exercises 1 and 2 here. The context you carry forward comes from the two files you prepared: the risk assessment saved from Web and the billing plan from the session repository.

---

## 2. Prepare Your Two Files

**File 1 — Risk assessment from Exercise 2:**
- Use the `Q4_Billing_Risk_Assessment.pdf` you saved at the end of Exercise 2.
- If you do not have it, return to Exercise 2 and complete step 5 before continuing.

**File 2 — Billing plan from the session repository:**
1. Download [`assets/Q4_Billing_Plan.xlsx`](../../assets/Q4_Billing_Plan.xlsx).
2. The file contains 8 SAP demo customers — US Specialty Cycles 6, CA Specialty Cycles 2, US Specialty Cycles 2 (the three high-risk accounts from the PDF), and five on-track accounts. Status levels are On Track, At Risk, and Critical.

---

## 3. Start a New Conversation and Attach Both Files

1. Click **New Conversation**.
2. Click the `+ icon and attach both files:
   - `Q4_Billing_Risk_Assessment.pdf`
   - `Q4_Billing_Plan.xlsx`

3. 👉 Copy and paste the following prompt:

```
I have attached two documents: a Q4 billing risk assessment from my S/4HANA analysis and a Q4 billing plan with status per customer. Summarize what each document tells me and identify which customers appear in both as at-risk or critical.
```

**Result:** Joule reads both files and identifies the overlap — CA Specialty Cycles 2 (Critical), US Specialty Cycles 6 (At Risk), and US Specialty Cycles 2 (At Risk) appear in both documents with consistent risk signals.

<img width="1501" height="890" alt="image" src="https://github.com/user-attachments/assets/d9f4172f-2842-4487-a53e-5c14f567312b" />

---

## 4. Activate the Financial Closing Assistant

1. Open the **Assistants** panel.
2. Locate **Financial Closing Assistant**.
   - *"An intelligent workflow orchestration agent for SAP financial processes including period-end close, journal entries, clearing, and accruals. Scoped to S/4HANA Finance (ACCFC)."*
3. Toggle the Assistant **on**.

> **Note:** The Financial Closing Assistant handles transactional close actions: clearing open items, creating journal entry proposals, and generating accrual proposals. It does not surface period-end close task lists or billing block status — those are queried directly in S/4HANA via the Manage Your Closing Activities app and the Billing Due List (F0798).

---

## 5. Clear Open Items for the At-Risk Accounts

With both files attached and the Financial Closing Assistant active, Joule can now take closing actions grounded in the accounts identified in your documents.

1. 👉 Copy and paste the following prompt:

```
@Financial Closing Assistant CA Specialty Cycles 2 (CACU_S02) has a systemic billing block and 87 overdue items at risk of missing Q4 close. The customer is billed from two company codes: 1710 and F1US. Generate a December accrual proposal covering unbilled revenue under both company codes to ensure Q4 recognition if invoicing is not completed before December 31.
```

**Result:** The Financial Closing Assistant checks open item status for all three accounts and returns a summary of any issues that need resolution before close.

<img width="1501" height="891" alt="image" src="https://github.com/user-attachments/assets/8509efec-10f8-46aa-8d11-075ce363dfb3" />

---

## 6. Scope the December Accrual Requirements

CA Specialty Cycles 2 has 87 items overdue, oldest from April 2025. If the billing block is not resolved before December 31 the revenue slips to FY27. Before an accrual can be posted, the Financial Closing Assistant needs to know what it is working with.

This customer is billed from two company codes simultaneously: **1710** (primary US operating entity, matching Sales Organization 1710) and **F1US** (a separate US legal entity). Both have documents as recent as October 23, 2026. A block set on F1US would not appear when checking 1710, which may explain why the 87-item backlog went unnoticed.

1. 👉 Copy and paste the following prompt:

```
CA Specialty Cycles 2 (CACU_S02) has a systemic billing block and 87 overdue items at risk of missing Q4 close. The customer is billed from two company codes: 1710 and F1US. What do you need from me to generate a December accrual proposal covering unbilled revenue under both company codes?
```

**Result:** The Financial Closing Assistant identifies the prerequisites for each entity. For **1710** it requires a company code handbook (GL accounts, posting rules, and accrual parameters) to be on file before it can post. For **F1US** it asks for confirmation of the revenue split across the two codes. This is the expected behaviour in a system where handbooks are not yet uploaded for a company code.

> **Note:** In a fully configured production system with handbooks on file, the same prompt generates the accrual proposals directly. What you see here is the Assistant correctly surfacing the missing configuration, a finding that is itself actionable: the billing team now knows the handbook for 1710 is missing and the revenue split for F1US needs to be confirmed before any accrual can be posted.

<img width="1500" height="887" alt="image" src="https://github.com/user-attachments/assets/bf7f5a23-dd0b-46ef-8747-f5d5af7c7b10" />

---

## 7. Build a Skill for This Workflow

The three-step flow you just ran: cross-reference files, clear open items, generate accrual safety net — is repeatable every week until close.

1. 👉 Copy and paste the following prompt:

```
Create a skill for me
```

---

## 8. Define the Skill

1. When Joule asks for a **name**, type:

```
Q4 Close Readiness Check
```

2. When Joule asks for a **description**, 👉 copy and paste the following:

```
When triggered, read Q4_Billing_Risk_Assessment.pdf and Q4_Billing_Plan.xlsx from the working directory. Identify all customers with At Risk or Critical status across both documents. Use the Financial Closing Assistant to: (1) check open AR items for each flagged customer and (2) generate a December accrual proposal for any customer with a critical billing block where Q4 invoicing is uncertain for CA Specialty Cycles 2 (CACU_S02) include both company codes 1710 and F1US. Output a structured Close Readiness Report with one section per at-risk customer.
```

**Result:** Joule drafts a `SKILL.md` with the workflow defined as named steps referencing both local file inputs and Financial Closing Assistant actions.

<img width="1503" height="890" alt="image" src="https://github.com/user-attachments/assets/e9f26b1d-77fb-4a39-927f-3035120d1c18" />

---

## 9. Save, Activate, and Test

1. Click **Save & Activate**.
2. 👉 Copy and paste the following prompt:

```
Run Q4 close readiness check.
```

**Result:** The complete workflow runs from a single prompt both files read, at-risk customers identified, open items checked, accrual proposal generated for CA Specialty Cycles 2.

---

## Summary

In this exercise you:
- Attached a live-generated PDF and a local Excel as context in a single desktop conversation.
- Activated the Financial Closing Assistant and used it for what it does best: clearing open items and generating accrual proposals for revenue at risk of missing Q4 close.
- Built a reusable Skill that automates the weekly close readiness check from two files to a structured report.

[Continue to Exercise 4 →](../ex4%20-%20Spaces%20From%20Weather%20to%20Close%20Readiness/README.md)
