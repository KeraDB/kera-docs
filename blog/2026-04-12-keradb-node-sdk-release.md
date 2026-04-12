---
slug: keradb-node-sdk-release
title: KeraDB Is Now Available on npm — Official Node.js / TypeScript SDK
authors: [keradb]
tags: [nodejs, typescript, npm, release, nosql, vector-search, embedded-db]
date: 2026-04-12
---

# KeraDB Is Now Available on npm — Official Node.js / TypeScript SDK

We're excited to announce that **KeraDB now has an official Node.js / TypeScript SDK**, available on npm.

You can install it with a single command:

```bash
npm install @keradb/node-sdk
```

This release brings KeraDB's fast embedded document storage and vector search to the JavaScript ecosystem, making it easy to use in Node.js applications, TypeScript projects, serverless functions, and local-first tools.

<!-- truncate -->

With the npm release, KeraDB can be used directly inside Node.js and TypeScript projects for:

- Embedded document storage
- Fast single-record CRUD operations
- Local-first and offline workflows
- AI/agent pipelines that need lightweight persistence
- Prototyping without database setup or servers

KeraDB runs as an embedded database — no server to spin up, no configuration required.

## Quick Example

```typescript
import { KeraDB } from "@keradb/node-sdk";

const db = new KeraDB("example.kdb");

await db.insert("users", {
  id: "user_1",
  name: "Alice",
  role: "developer",
});

const user = await db.get("users", "user_1");
console.log(user);
```

The SDK is built with TypeScript-first design, so you get full type safety and autocompletion out of the box.

## Get Started

- **npm**: https://www.npmjs.com/package/@keradb/node-sdk
- **Documentation**: https://keradb.github.io/docs
- **GitHub**: https://github.com/KeraDB/keradb

If you're building something with KeraDB in Node.js or TypeScript, we'd love to hear about it.
