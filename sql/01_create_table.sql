CREATE TABLE complaints (
    complaint_id INTEGER PRIMARY KEY,
    date_received DATE,
    date_sent_to_company DATE,
    product TEXT,
    sub_product TEXT,
    issue TEXT,
    sub_issue TEXT,
    company TEXT,
    state TEXT,
    submitted_via TEXT,
    company_response TEXT,
    timely_response TEXT
);
