## 1. Bank Transaction Problem

Write an SQL transaction to transfer 5000 from account `A101` to account `A102`.

Table:
`Bank(Account_No, Customer_Name, Balance)`

Requirements:

* Deduct 5000 from account `A101`
* Add 5000 to account `A102`
* Use `COMMIT` if the transaction is successful
* Use `ROLLBACK` if any error occurs

2. College Fee Payment Problem

Write an SQL transaction for a student fee payment system.

Tables:
Student(Student_ID, Student_Fee_Status)
Payment(Payment_ID, Student_ID, Amount)

Requirements:

Update the student fee status to "Paid"
Insert the payment record into the Payment table
Use COMMIT if successful
Use ROLLBACK if any error occurs
3. Railway Ticket Booking Problem

Write an SQL transaction for a railway ticket booking system.

Tables:
Train(Train_No, Available_Seats)
Booking(Booking_ID, Passenger_Name, Train_No)

Requirements:

Decrease available seats after booking
Insert passenger booking details
If seats are unavailable, cancel the transaction using ROLLBACK
Otherwise use COMMIT
4. ATM Withdrawal Problem

Write an SQL transaction for an ATM withdrawal system.

Tables:
Account(Account_No, Customer_Name, Balance)
Transaction_History(Transaction_ID, Account_No, Amount, Transaction_Type)

Requirements:

Withdraw 10000 from the customer account
Deduct amount from balance
Insert transaction history record
If balance is insufficient, use ROLLBACK
Otherwise use COMMIT