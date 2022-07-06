ALTER TABLE questions DROP COLUMN rspn_category;
ALTER TABLE questions ADD COLUMN opt_category OptionCategory NOT NULL;
