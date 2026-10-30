
-- CUSTOMER SUPPORT ANALYSIS
-- SQL Portfolio Project
-- Table name: customer_support_data

-- 1. Total number of tickets
SELECT COUNT(*) AS total_tickets
FROM customer_support_data;

-- 2. Ticket distribution by status
SELECT
    "Ticket Status",
    COUNT(*) AS ticket_count
FROM customer_support_data
GROUP BY "Ticket Status"
ORDER BY ticket_count DESC;

-- 3. Tickets by priority
SELECT
    "Ticket Priority",
    COUNT(*) AS ticket_count
FROM customer_support_data
GROUP BY "Ticket Priority"
ORDER BY ticket_count DESC;

-- 4. Most common ticket types
SELECT
    "Ticket Type",
    COUNT(*) AS ticket_count
FROM customer_support_data
GROUP BY "Ticket Type"
ORDER BY ticket_count DESC;

-- 5. Tickets by communication channel
SELECT
    "Ticket Channel",
    COUNT(*) AS ticket_count
FROM customer_support_data
GROUP BY "Ticket Channel"
ORDER BY ticket_count DESC;

-- 6. Average customer satisfaction
SELECT
    ROUND(AVG("Customer Satisfaction Rating"), 2)
    AS average_satisfaction
FROM customer_support_data;

-- 7. Satisfaction by ticket type
SELECT
    "Ticket Type",
    ROUND(AVG("Customer Satisfaction Rating"), 2)
    AS average_satisfaction,
    COUNT("Customer Satisfaction Rating") AS rated_tickets
FROM customer_support_data
GROUP BY "Ticket Type"
ORDER BY average_satisfaction DESC;
