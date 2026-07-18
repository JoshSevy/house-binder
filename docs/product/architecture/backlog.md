# Architecture Backlog

This backlog tracks architecture work that has been identified but not yet
accepted as a design decision or implementation commitment.

Items move from this backlog into a domain model, requirement, ADR, or delivery
roadmap only after their scope and ownership are understood.

## Status Legend

| Status | Meaning |
|--------|---------|
| Proposed | The idea needs discovery and boundary analysis |
| Modeling | The domain language and relationships are being documented |
| Decision Needed | An architectural choice requires an ADR |
| Ready | The design is sufficiently clear for requirements or implementation |
| Deferred | Useful, but intentionally postponed |

## Active Work

| Priority | Capability | Status | Next Deliverable |
|----------|------------|--------|------------------|
| High | Product Catalog | Modeling | Validate product, variant, and package boundaries |
| High | Event-Driven Inventory | Decision Needed | Review and accept ADR-0002 |
| High | Product Acquisition | Modeling | Define purchase aggregates and recognition workflow |
| High | Scheduling | Proposed | Create bounded-context overview and context-map relationships |
| High | Maintenance Execution | Proposed | Model plans, tasks, occurrences, and completion records |
| Medium | Commerce | Modeling | Define recommendation and retailer-offer boundaries |
| Medium | Documents | Proposed | Define ownership of receipts, labels, manuals, SDS files, and photos |
| Medium | Shared Units of Measure | Proposed | Define quantity, concentration, rate, area, and conversion rules |

## Product Domain

- [ ] Decide whether shared catalog products and household-created products use
      one aggregate or separate review workflows.
- [ ] Define product metadata provenance and conflict resolution.
- [ ] Define package identity for UPC, GTIN, manufacturer part number, and
      retailer-scoped SKU values.
- [ ] Define inventory reservations for planned maintenance.
- [ ] Define inventory confidence and reconciliation rules.
- [ ] Define duplicate receipt and invoice detection.
- [ ] Define product-recognition provider boundaries.
- [ ] Define usage events emitted by recipes, applications, and maintenance
      completion.
- [ ] Decide how returns, refunds, waste, expiration, and transfers affect cost
      and quantity projections.
- [ ] Define household, property, and storage-location ownership.

## Scheduling and Notifications

- [ ] Model maintenance plans separately from generated task occurrences.
- [ ] Define recurrence, seasonal, weather, sensor, and manual triggers.
- [ ] Define rescheduling and skip behavior without losing history.
- [ ] Separate notification policy from delivery channels.
- [ ] Model Google Calendar, Apple Calendar, email, SMS, and push integrations as
      adapters rather than domain owners.
- [ ] Define weather-based recommendations and user approval rules.
- [ ] Define inventory checks and shopping-list generation for upcoming work.

## Cross-Cutting Architecture

- [ ] Create a glossary for ubiquitous language shared across bounded contexts.
- [ ] Define household and property tenancy boundaries.
- [ ] Document offline-first synchronization and conflict-resolution principles.
- [ ] Define source-document retention, privacy, and deletion rules.
- [ ] Define an integration-provider pattern for weather, irrigation, calendar,
      product recognition, and retailer services.
- [ ] Establish diagram review and Lucidchart export conventions.
- [ ] Define how Markdown content maps to templates, workflows, and structured
      records without making Markdown dependent on the application.

## Deferred Implementation Questions

The following decisions should remain open until the domain model and user
workflows are mature:

- database and persistence technology
- event-store implementation
- API style
- service boundaries and deployment topology
- mobile and web frameworks
- OCR, barcode, and AI providers
- commerce and affiliate providers

## Promotion Criteria

An item is ready to leave the architecture backlog when:

- its user or business problem is documented;
- the owning bounded context is identified;
- key terms and invariants are defined;
- cross-context dependencies are visible;
- material tradeoffs have an ADR when needed; and
- open questions no longer block requirements or implementation planning.
