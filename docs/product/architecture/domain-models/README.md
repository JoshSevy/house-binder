# Domain Models

This directory documents the business concepts, relationships, boundaries, and
shared language used throughout PropertyOps.

The domain models describe the problem space independently of a specific
database, framework, API, or user interface.

## Purpose

These documents help PropertyOps:

- establish a shared vocabulary
- define ownership and bounded contexts
- identify entities, value objects, aggregates, and domain events
- connect product requirements to future implementation
- preserve architectural decisions as the application evolves

## Source of Truth

The Markdown documents and Mermaid diagrams in this directory are the source of
truth.

Lucidchart or other visual tools may be used to create polished diagrams, but
those diagrams should be derived from and remain consistent with the models
documented here.

## Domain Map

- [PropertyOps Context Map](context-map.md)
- [Products Domain](products/README.md)
- Shared concepts:
  - [Documents](shared/documents.md)
  - [Units of Measure](shared/units-of-measure.md)
  - [Vendors](shared/vendors.md)

## Architecture Workflow

Ideas begin in the [Architecture Backlog](../backlog.md). Mature concepts are
promoted into domain models, requirements, or ADRs.

Domain models describe business meaning and behavior. They do not prescribe a
database schema, API, framework, or deployment topology.

## Modeling Conventions

Each domain document should include:

1. purpose and scope
2. bounded-context ownership
3. ubiquitous language
4. business rules and invariants
5. aggregate boundaries
6. domain events
7. relationships with other contexts
8. Mermaid diagrams
9. open questions
10. related ADRs and requirements

## Diagram Conventions

Use Mermaid diagrams for version-controlled working models.

Preferred diagram types:

| Diagram | Purpose |
|---------|---------|
| Flowchart | Bounded contexts and context maps |
| Class diagram | Entities, value objects, and relationships |
| State diagram | Entity and workflow lifecycles |
| Sequence diagram | Cross-context workflows and integrations |
| Entity relationship diagram | Early persistence exploration only |

ER diagrams should not be treated as the primary domain model because they tend
to describe storage rather than business behavior.

## Diagram Ownership

Mermaid diagrams in this directory are the version-controlled source of truth.
Presentation diagrams may be recreated in Lucidchart, but should link back to
the Markdown source from which they were derived.
