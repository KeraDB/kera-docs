---
sidebar_position: 1
slug: /
---

# Welcome to KeraDB

KeraDB is a lightweight, MongoDB-compatible embedded database designed for Node.js and Python applications. It provides a simple, familiar API for storing and querying data without the need for a separate database server.

## Key Features

- **MongoDB-Compatible API**: Use familiar MongoDB query syntax
- **Embedded Database**: No separate server required
- **Multi-Language Support**: Available for both Node.js and Python
- **Lightweight**: Minimal dependencies and small footprint
- **Fast**: Optimized for embedded use cases
- **Persistent Storage**: Data is stored on disk with optional in-memory mode

## Quick Start

Get started with KeraDB in your preferred language:

import Tabs from '@theme/Tabs';
import TabItem from '@theme/TabItem';

<Tabs>
  <TabItem value="nodejs" label="Node.js" default>

```bash
npm install keradb
```

```javascript
const { KeraDB } = require('keradb');

// Create a new database
const db = new KeraDB('myapp.db');

// Get a collection
const users = db.collection('users');

// Insert a document
await users.insertOne({
  name: 'John Doe',
  email: 'john@example.com',
  age: 30
});

// Query documents
const user = await users.findOne({ email: 'john@example.com' });
console.log(user);
```

  </TabItem>
  <TabItem value="python" label="Python">

```bash
pip install keradb
```

```python
from keradb import KeraDB

# Create a new database
db = KeraDB('myapp.db')

# Get a collection
users = db.collection('users')

# Insert a document
users.insert_one({
    'name': 'John Doe',
    'email': 'john@example.com',
    'age': 30
})

# Query documents
user = users.find_one({'email': 'john@example.com'})
print(user)
```

  </TabItem>
</Tabs>

## Why KeraDB?

KeraDB is perfect for applications that need a simple database without the overhead of running a separate database server. Common use cases include:

- Desktop applications
- Mobile backends
- Development and testing
- Configuration management
- Caching and session storage
- Prototyping and MVPs

## Next Steps

- [Node.js Getting Started Guide](/docs/getting-started/nodejs)
- [Python Getting Started Guide](/docs/getting-started/python)
- [Core Concepts](/docs/api-reference/core-concepts)
- [Query Guide](/docs/query-guide)
- [Examples](/docs/examples)
