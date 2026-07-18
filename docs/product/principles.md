# Product Principles

The Property Binder and PropertyOps are documentation-first: the source-of-truth lives in Markdown and drives product design, data models, and workflows. These principles guide decisions about data, UX, integrations, and longevity.

## 1. Data First

Every feature begins with the data model.

- Why: Clean, well-defined data enables reliable features, exports, and automation.
- How: Define schema and examples before UI; store canonical records in the binder.

---

## 2. Offline First

The app must be usable without internet.

- Why: Home maintenance happens in the field; connectivity is not guaranteed.
- How: Local storage, sync queues, and graceful conflict resolution.

---

## 3. User Owns Their Data

Users can export and retain everything they create.

- Why: Trust and portability are first-class features.
- How: Provide open, machine-readable exports (Markdown, CSV, JSON) and clear data deletion paths.

---

## 4. Recommendations Over Ads

Recommend only products or actions that genuinely solve user problems.

- Why: Maintain trust and product integrity.
- How: Surface evidence-based recommendations, label sponsored content clearly, and keep recommendations optional.

---

## 5. Long-Term Thinking

Design features that remain useful for years.

- Why: Home systems and processes evolve slowly; premature optimization wastes effort.
- How: Prefer simple, composable features and backward-compatible data migrations.

---

## 6. Document Once, Publish Many

Write operational knowledge a single time and reuse it.

- Why: Reduces duplication and keeps source of truth consistent.
- How: Structure documents for machine consumption (metadata, templates, examples) so they can be transformed into workflows, reports, and educational material.
