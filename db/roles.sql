CREATE ROLE spectator;
CREATE ROLE subject;
CREATE ROLE author;
CREATE ROLE admin;


-- SPECTATOR
REVOKE ALL ON DATABASE weichware FROM spectator;
GRANT CONNECT ON DATABASE weichware TO spectator;
-- all tables
GRANT SELECT ON ALL TABLES IN SCHEMA test, public TO spectator;

-- SUBJECT
REVOKE ALL ON DATABASE weichware FROM subject;
GRANT CONNECT ON DATABASE weichware TO subject;
-- select
GRANT SELECT ON public.configurations, public.trials, public.strings TO subject;
GRANT SELECT ON test.configurations, test.trials, test.strings TO subject;
-- trials
GRANT UPDATE ON public.trials TO subject;
GRANT UPDATE ON test.trials TO subject;
-- datapoints
GRANT INSERT ON public.datapoints TO subject;
GRANT INSERT ON test.datapoints TO subject;

-- AUTHOR
REVOKE ALL ON DATABASE weichware FROM author;
GRANT CONNECT ON DATABASE weichware TO author;
-- all tables
GRANT SELECT, INSERT ON ALL TABLES IN SCHEMA test TO author;
GRANT SELECT, INSERT ON ALL TABLES IN SCHEMA public TO author;
-- trials
GRANT UPDATE ON test.trials TO author;
GRANT UPDATE ON public.trials TO author;

-- ADMIN
REVOKE ALL ON DATABASE weichware FROM admin;
GRANT SELECT, UPDATE, INSERT, DELETE ON ALL TABLES IN SCHEMA test TO admin;
GRANT SELECT, UPDATE, INSERT, DELETE ON ALL TABLES IN SCHEMA public TO admin;
