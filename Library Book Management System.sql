
-- Create books table
CREATE TABLE books (
    book_id NUMBER PRIMARY KEY,
    title VARCHAR2(100),
    author VARCHAR2(50),
    is_checked_out VARCHAR2(1) DEFAULT 'N',
    due_date DATE,
    daily_fee NUMBER(5,2) DEFAULT 1.00
);

-- Create loan history table
CREATE TABLE loan_history (
    loan_id NUMBER PRIMARY KEY,
    book_id NUMBER,
    action_type VARCHAR2(20),
    action_date DATE,
    fees_paid NUMBER(5,2),
    FOREIGN KEY (book_id) REFERENCES books(book_id)
);
commit;
