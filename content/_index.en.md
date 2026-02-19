---
title: "Rekeeply Specification"
type: docs
weight: 10
---

# Rekeeply Specification

This specification defines a **core contract** and **client implementations** for
personal content management: **unified materials**, **progress tracking**,
**notes**, and *fast retrieval*.

The **goal** is to turn chaotic "save for later" into a structured flow:
*save -> progress -> capture -> retrieve fast*.

## System Architecture Overview 

```
Default mode (offline-first, fastest)
-------------------------------------

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

Optional sync mode
------------------

    +----------------+      secure sync      +----------------+
    |  Local Vault   | <-------------------> | Remote Service |
    +----------------+                       +----------------+


Session rule
------------

    account
      |
      +-- library A
      +-- library B

    active session -> exactly one active library
```
