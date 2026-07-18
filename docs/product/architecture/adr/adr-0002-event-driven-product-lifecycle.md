# ADR-0002: Event-Driven Product Inventory

## Status

Proposed

---

## Context

PropertyOps is intended to become the operational system for managing residential properties. The platform will track products including fertilizers, herbicides, pesticides, cleaners, replacement parts, and other consumables used throughout property maintenance.

Traditional inventory systems require users to manually edit product quantities after each purchase or use. This creates unnecessary work, reduces data accuracy, and discourages long-term use.

PropertyOps seeks to minimize manual interaction by treating inventory as the
result of recorded events rather than directly managed quantities.

---

## Decision

PropertyOps will model inventory using an event-driven lifecycle.

Rather than editing inventory directly, the application will record events such as:

- Product Purchased
- Product Consumed
- Product Returned
- Product Disposed
- Inventory Adjusted
- Product Expired
- Product Transferred

Accepted inventory transactions are the authoritative history. Current
inventory will be exposed through a projection calculated from those
transactions.

The implementation may persist snapshots or current-balance projections for
performance and offline use. Those projections can be rebuilt or reconciled
from the accepted transaction history.

Direct quantity corrections will be represented as adjustment transactions
rather than silent counter edits.

---

## Rationale

This approach provides several long-term benefits.

### Complete Audit History

Every inventory change has a corresponding event.

### Automatic Inventory

Completing maintenance activities can automatically deduct expected quantities.

### Purchase Tracking

Receipts and invoices become part of the product history.

### Cost Analysis

Historical pricing allows PropertyOps to calculate:

- Cost per application
- Annual maintenance cost
- Cost by maintenance category
- Budget forecasting

### AI Readiness

The event history provides high-quality data for future recommendations.

Examples include:

- Estimated remaining product
- Predicted reorder dates
- Alternative product suggestions
- Seasonal purchasing recommendations

### Synchronization and Offline Use

Transactions provide a clear unit for synchronization and conflict review
across devices. They also preserve the reason and source behind a quantity
change.

---

## Consequences

### Positive

- Complete historical record
- Easier analytics
- Undo capability
- Automatic inventory updates
- Better user experience
- Enables future automation

### Negative

- More complex implementation
- Event processing required
- Projections and reconciliation logic are required
- Duplicate or conflicting events must be detected
- Product recognition and inferred usage require confidence and confirmation

### Neutral

- This decision does not require a particular event-store product, database, API
  style, or deployment architecture.
- This decision does not require every read to replay the complete transaction
  history.

---

## Domain Events

The domain language may evolve, but the initial event set includes:

- `InventoryInitialized`
- `PurchaseReceived`
- `ProductUsageRecorded`
- `ProductReturned`
- `ProductDisposed`
- `ProductExpired`
- `InventoryTransferred`
- `InventoryCountAdjusted`
- `InventoryReservationCreated`
- `InventoryReservationReleased`

---

## Guardrails

- Recognition results and inferred usage are proposals until accepted under the
  configured confidence and confirmation policy.
- Every accepted transaction records its source, timestamp, actor, quantity,
  unit, and reason.
- Corrections append compensating or adjustment transactions; they do not erase
  accepted history.
- Source documents may be retained outside the inventory context, but inventory
  transactions keep stable references to them.
- Core inventory features remain usable without commerce or affiliate services.

---

## Future Opportunities

This architecture enables future capabilities including:

- Barcode scanning
- Receipt OCR
- Invoice imports
- Affiliate purchasing
- Vendor integrations
- Smart shopping lists
- Automatic reorder reminders
- Product recommendations
- Cost forecasting
- AI-powered maintenance planning

---

## Related Documents

- [Inventory Domain Model](../domain-models/products/inventory.md)
- [Purchasing Domain Model](../domain-models/products/purchasing.md)
- [Products Domain](../domain-models/products/README.md)
- [Architecture Backlog](../backlog.md)
