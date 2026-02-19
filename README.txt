Rekeeply Specification
======================

This repository contains the official specification for Rekeeply.
It defines the system contracts, architecture baseline, and client-facing
behavior needed to build compatible implementations.


Quick Start
-----------

* Run locally: hugo server -D
* Open docs in local
* Main config: hugo.yml
* Content root: content/
* Theme: themes/book/


What This Repository Covers
---------------------------

The spec currently focuses on:

* Core API behavior (platform-agnostic)
* Client documentation (starting with CLI)
* Architectural constraints and agreed baseline decisions
* Ongoing change history


System Architecture Overview
----------------------------

Default mode (offline-first, fastest):

    +---------+     in-process calls     +----------------+
    |   CLI   | -----------------------> |  Core runtime  |
    +---------+                          |   (embedded)   |
                                         +--------+-------+
                                                  |
                                                  | local DB I/O
                                                  v
                                         +----------------+
                                         |  Local Vault   |
                                         | (encrypted DB) |
                                         +----------------+

Optional sync mode:

    +----------------+      secure sync      +----------------+
    |  Local Vault   | <-------------------> | Remote Service |
    +----------------+                       +----------------+

Session rule:

    account
      |
      +-- library A
      +-- library B

    active session -> exactly one active library


Repository Structure
--------------------

Top-level documentation sections:

* content/_index.*.md                 - Specification landing page
* content/core-api/                   - Core contracts and runtime behavior
* content/clients/                    - Client-specific documentation
* content/appendices/                 - Supporting material
* content/changelog.*.md              - Spec change history


Writing Style
-------------

Use clear normative language and avoid implementation noise in core sections.

* Core API: what must happen, independent of client/device
* Clients: how a specific client implements the core contract
* Keep sections concise and non-duplicated
* Prefer structure and traceability over long narrative text


Contributing
------------

Contribution rules are documented in:

* Contributor guide: `CONTRIBUTING.txt`
* Commit convention: `COMMIT_CONVENTION.txt`

Validation:

* CI validates Pull Request titles (`.github/workflows/pr-title.yml`)
* Shared validation logic: `scripts/check_change_title.sh`
* Local commit-msg hook is optional helper for early feedback
