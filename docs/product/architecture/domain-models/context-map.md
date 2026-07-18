# PropertyOps Context Map

```mermaid
flowchart LR
    Products["Products Context"]
    Maintenance["Maintenance Context"]
    Property["Property Context"]
    Equipment["Equipment Context"]
    Scheduling["Scheduling Context"]
    Notifications["Notification Delivery"]
    Documents["Documents Context"]
    Identity["Identity and Households"]
    Commerce["Commerce Integrations"]
    Retailers["External Retailers"]
    Recognition["Product Recognition Services"]

    Maintenance -->|"records product usage"| Products
    Maintenance -->|"performs work on"| Property
    Maintenance -->|"uses"| Equipment
    Scheduling -->|"generates planned work"| Maintenance
    Scheduling -->|"requests delivery through"| Notifications

    Products -->|"stores receipts, labels, and SDS files"| Documents
    Products -->|"inventory belongs to"| Identity
    Products -->|"recommends products through"| Commerce

    Commerce -->|"retrieves listings and offers"| Retailers
    Products -->|"submits barcode or receipt data"| Recognition
    Recognition -->|"returns product candidates"| Products
```

## Notes

The Products context is shared across property-maintenance domains. Lawn care,
cleaning, painting, automotive care, and equipment maintenance may all reference
the same product catalog and inventory capabilities.

Scheduling owns maintenance timing and generated occurrences. External calendar,
email, SMS, and push services are delivery adapters; they do not own maintenance
plans or scheduling rules.
