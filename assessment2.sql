-- SQL Assessment Test 2
-- #1-How can you retrieve all the information from the cd.facilities table?
SELECT * FROM cd.facilities;

-- #2-You want to print out a list of all of the facilities and their cost to members. 
-- How would you retrieve a list of only facility names and costs?
SELECT name, membercost FROM cd.facilities;

-- #3-How can you produce a list of facilities that charge a fee to members?
SELECT * FROM cd.facilities
WHERE membercost != 0;

-- #4-How can you produce a list of facilities that charge a fee to members, 
-- and that fee is less than 1/50th of the monthly maintenance cost? 
-- Return the facid, facility name, member cost, and 
-- monthly maintenance of the facilities in question.

SELECT facid, name, membercost, monthlymaintenance FROM cd.facilities
WHERE membercost < (1/50 * monthlymaintenance);

-- #5-How can you produce a list of all facilities with the word 'Tennis' in their name?

SELECT * FROM cd.facilities
WHERE name LIKE '%Tennis%';

-- #7-How can you retrieve the details of facilities with ID 1 and 5? 
-- Try to do it without using the OR operator.

SELECT * FROM cd.facilities
WHERE facid IN (1,5);

-- #7-How can you produce a list of members who joined after the start of September 2012? 
-- Return the memid, surname, firstname, and joindate of the members in question.

SELECT * FROM cd.members
WHERE TRIM(TO_CHAR(joindate,'YYYY-Month')) >= '2012-September';

SELECT * FROM cd.members
WHERE joindate >= '2012-09-1';

-- #8-How can you produce an ordered list of the first 10 surnames in the members table? 
-- The list must not contain duplicates.

SELECT DISTINCT surname FROM cd.members
ORDER BY surname
LIMIT 10;

-- #9-You'd like to get the signup date of your last member. 
-- How can you retrieve this information
SELECT joindate FROM cd.members 
ORDER BY joindate DESC
LIMIT 1;


-- #10-Produce a count of the number of facilities that have a cost to guests of 10 or more.

SELECT COUNT(*) FROM cd.facilities
WHERE guestcost >= 10;

-- #11-Produce a list of the total number of slots booked per facility in the month of September 2012. 
-- Produce an output table consisting of facility id and slots, sorted by the number of slots.


SELECT facid, SUM(slots) AS "Number of slots" FROM cd.bookings
WHERE starttime BETWEEN '2012-09-01' AND '2012-09-30 23:59:59.999999'
-- WHERE TRIM(TO_CHAR(starttime,'YYYY-Month')) >= '2012-September'
GROUP BY facid; 

-- #12-Produce a list of facilities with more than 1000 slots booked. 
-- Produce an output table consisting of facility id and total slots, sorted by facility id.

SELECT facid, SUM(slots) FROM cd.bookings
GROUP BY facid
HAVING SUM(slots) > 1000;

-- #13-How can you produce a list of the start times 
-- for bookings for tennis courts, for the date '2012-09-21'? 
-- Return a list of start time and facility name pairings, ordered by the time.

SELECT * FROM cd.bookings;

SELECT * FROM cd.facilities;


SELECT facilities.name, bookings.starttime 
FROM cd.facilities AS facilities
INNER JOIN cd.bookings AS bookings
ON bookings.facid = facilities.facid
WHERE facilities.name LIKE 'Tennis Court%' AND TRIM(TO_CHAR(starttime,'YYYY-MM-DD')) = '2012-09-21'
ORDER BY bookings.starttime;

-- #14-How can you produce a list of the start times for bookings by members named 'David Farrell'?
SELECT * FROM cd.bookings;
SELECT * FROM cd.members;

SELECT TO_CHAR(starttime,'YYYY-MM-DD HH:II') AS "START TIME" FROM cd.bookings
WHERE memid IN (SELECT memid FROM cd.members
WHERE firstname = 'David' AND surname = 'Farrell');