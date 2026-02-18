---
title: "Authentication Boundary"
weight: 22
---

# Authentication Boundary

- authentication rules are defined by core;
- credential validation and session issuance are performed by core;
- clients only submit auth data through the core contract and store client-side session artifacts;
- data access without an active valid session is forbidden.
