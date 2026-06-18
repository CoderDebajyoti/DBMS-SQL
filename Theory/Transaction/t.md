# DBMS Unit: Transaction Processing and Concurrency Control

---

# Important 15 Marks Questions with Answers

## Q1. Explain ACID Properties of Transactions.

### Definition
A transaction is a logical unit of work that consists of one or more database operations.

### ACID Properties

### 1. Atomicity
- A transaction is treated as a single unit.
- Either all operations execute successfully or none execute.

**Example:**
Transfer ₹1000 from Account A to Account B.

```
Debit A = ₹1000
Credit B = ₹1000
```

If the system crashes after debiting A but before crediting B, the transaction is rolled back.

### 2. Consistency
- Ensures database remains in a valid state before and after transaction.

**Example:**
Total balance before transfer = ₹10000

After transfer:
```
A = ₹4000
B = ₹6000
```
Total = ₹10000

Consistency preserved.

### 3. Isolation
- Concurrent transactions should not interfere with each other.
- Intermediate results are hidden from other transactions.

### 4. Durability
- Once a transaction is committed, changes become permanent.
- Changes survive system failures.

### Advantages
- Data integrity
- Reliability
- Correct concurrent execution
- Recovery from failures

---

## Q2. Explain Serializability of Schedules.

### Schedule
Order in which operations of multiple transactions execute.

### Types of Schedules

#### Serial Schedule
Transactions execute one after another.

Example:

```
T1: Read(A) Write(A)
T2: Read(B) Write(B)
```

Execution:

```
T1 → T2
```

#### Non-Serial Schedule
Operations are interleaved.

### Serializability
A non-serial schedule is serializable if it produces the same result as a serial schedule.

### Types

#### 1. Conflict Serializability

Two operations conflict when:
- They belong to different transactions.
- Access same data item.
- At least one operation is write.

Conflicting operations:
```
R(A) and W(A)
W(A) and R(A)
W(A) and W(A)
```

#### Precedence Graph Method
- Create node for each transaction.
- Draw edge Ti → Tj if Ti's operation conflicts and occurs before Tj.

If graph has no cycle:
```
Schedule is Conflict Serializable
```

#### 2. View Serializability

A schedule is view serializable if:
- Same read-from relationship.
- Same final write.
- Same output as serial schedule.

### Difference

| Conflict Serializable | View Serializable |
|----------|----------|
| Easier to test | Difficult |
| Subset of View Serializable | More general |

---

## Q3. Explain Lock-Based Concurrency Control.

### Locking
A transaction must acquire lock before accessing data.

### Types of Locks

#### Shared Lock (S)
- Read only
- Multiple transactions allowed

```
Read(A)
```

#### Exclusive Lock (X)
- Read and Write
- Only one transaction allowed

```
Write(A)
```

### Lock Compatibility Table

| Lock | Shared | Exclusive |
|--------|--------|--------|
| Shared | Yes | No |
| Exclusive | No | No |

### Two Phase Locking (2PL)

#### Growing Phase
Only acquire locks.

#### Shrinking Phase
Only release locks.

### Example

```
Lock-X(A)
Read(A)
Write(A)
Unlock(A)
```

### Advantages
- Ensures conflict serializability.
- Prevents inconsistent updates.

### Disadvantages
- Deadlock may occur.
- Starvation possible.

---

## Q4. Explain Timestamp-Based Concurrency Control.

### Timestamp Ordering Protocol

Each transaction receives a unique timestamp when it starts.

```
TS(T1)=1
TS(T2)=2
```

Older transaction has smaller timestamp.

### Data Item Stores

```
Read_TS(X)
Write_TS(X)
```

### Read Rule

Transaction T can read X if:

```
TS(T) ≥ Write_TS(X)
```

Otherwise rollback.

### Write Rule

Transaction T can write X if:

```
TS(T) ≥ Read_TS(X)
AND
TS(T) ≥ Write_TS(X)
```

Otherwise rollback.

### Advantages
- Deadlock free.
- Ensures serializability.

### Disadvantages
- High rollback rate.
- Wastage of resources.

---

## Q5. Explain Database Recovery.

### Recovery
Process of restoring database after failure.

### Types of Failure

#### 1. Transaction Failure
- Invalid input
- Arithmetic error

#### 2. System Failure
- Power failure
- Operating system crash

#### 3. Media Failure
- Disk crash
- Hardware failure

### Recovery Techniques

#### Log-Based Recovery

Log stores:

```
<Ti Start>
<Ti, X, Old Value, New Value>
<Ti Commit>
```

### Deferred Update

- Changes recorded in log.
- Applied after commit.

### Immediate Update

- Database updated before commit.
- Uses Undo and Redo.

### Checkpointing

Periodically saves database state.

### Benefits
- Faster recovery.
- Reduces log scanning time.

---

## Q6. Explain Multiversion and Optimistic Concurrency Control.

### Multiversion Concurrency Control (MVCC)

Multiple versions of data are maintained.

Example:

```
Version 1 : Salary = 10000
Version 2 : Salary = 12000
Version 3 : Salary = 15000
```

Readers access old version while writers create new version.

### Advantages
- No read-write conflict.
- High concurrency.

### Disadvantages
- Extra storage needed.

---

### Optimistic Concurrency Control (OCC)

Assumes conflicts are rare.

### Phases

#### 1. Read Phase
Transaction reads data.

#### 2. Validation Phase
Check for conflicts.

#### 3. Write Phase
Update database.

### Advantages
- No locking.
- No deadlock.

### Disadvantages
- More rollback when conflicts occur.

---

# Important 5 Marks Questions with Answers

## 1. What is a Transaction?

A transaction is a sequence of database operations executed as a single logical unit of work.

Example:

```
Withdraw Money
Update Balance
Commit
```

---

## 2. What is Concurrency Control?

Concurrency control manages simultaneous execution of transactions while maintaining consistency and isolation.

---

## 3. Define Serial Schedule.

A schedule where one transaction completes before another starts.

---

## 4. Define Conflict Serializability.

A schedule is conflict serializable if it can be transformed into a serial schedule by swapping non-conflicting operations.

---

## 5. What is a Shared Lock?

A shared lock allows multiple transactions to read the same data item simultaneously.

---

## 6. What is an Exclusive Lock?

An exclusive lock allows only one transaction to read/write a data item.

---

## 7. What is Two Phase Locking?

A protocol having:
- Growing Phase
- Shrinking Phase

Used to ensure serializability.

---

## 8. What is Deadlock?

A condition where transactions wait indefinitely for each other's resources.

---

## 9. What is Timestamp Ordering?

A concurrency control method that executes transactions according to timestamps.

---

## 10. What is Recovery?

Process of restoring database to a consistent state after failure.

---

## 11. What is Checkpointing?

Technique of periodically saving database state to reduce recovery time.

---

## 12. What is MVCC?

A concurrency control technique that keeps multiple versions of data items.

---

## 13. What is Optimistic Concurrency Control?

Concurrency control method that checks conflicts only before commit.

---

## 14. Difference Between Shared and Exclusive Lock

| Shared Lock | Exclusive Lock |
|------------|------------|
| Read only | Read & Write |
| Multiple allowed | Single transaction |

---

## 15. What is a Log File?

A file storing all transaction activities for recovery purposes.

---

# Important 1 Mark Questions with Answers

### 1. What is a transaction?
A logical unit of database operations.

### 2. Expand ACID.
Atomicity, Consistency, Isolation, Durability.

### 3. Which ACID property ensures all-or-nothing execution?
Atomicity.

### 4. Which ACID property ensures permanent changes?
Durability.

### 5. Which ACID property prevents interference?
Isolation.

### 6. What is a schedule?
Order of execution of transaction operations.

### 7. What is a serial schedule?
Transactions execute one after another.

### 8. What is serializability?
Equivalence to some serial schedule.

### 9. What is a lock?
Mechanism to control data access.

### 10. Types of locks?
Shared and Exclusive.

### 11. Which lock is used for reading?
Shared Lock.

### 12. Which lock is used for writing?
Exclusive Lock.

### 13. What is 2PL?
Two Phase Locking.

### 14. What causes deadlock?
Circular waiting.

### 15. What is timestamp ordering?
Concurrency control using timestamps.

### 16. What is rollback?
Undoing transaction effects.

### 17. What is commit?
Making transaction changes permanent.

### 18. What is recovery?
Restoring database after failure.

### 19. What is a checkpoint?
Saved consistent database state.

### 20. Expand MVCC.
Multiversion Concurrency Control.

### 21. Expand OCC.
Optimistic Concurrency Control.

### 22. What is Read_TS?
Largest timestamp that read a data item.

### 23. What is Write_TS?
Largest timestamp that wrote a data item.

### 24. What is a log file?
Record of transaction activities.

### 25. Name two recovery techniques.
Undo and Redo.

---

# Exam Focus (Most Important for MAKAUT)

### 15 Marks
1. ACID Properties
2. Serializability and Precedence Graph
3. Lock-Based Concurrency Control (2PL)
4. Timestamp Ordering Protocol
5. Database Recovery
6. MVCC and OCC

### 5 Marks
1. Deadlock
2. Shared vs Exclusive Lock
3. Transaction States
4. Checkpointing
5. Conflict Serializability
6. Timestamp Ordering

### 1 Marks
1. ACID
2. Commit
3. Rollback
4. Shared Lock
5. Exclusive Lock
6. MVCC
7. OCC
8. Serial Schedule
9. Deadlock
10. Checkpoint