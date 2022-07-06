-- Your database schema. Use the Schema Designer at http://localhost:8001/ to add some tables.
CREATE TYPE QuestionCategory AS ENUM ('ENDURABILITY', 'PERCEIVED_USABILITY', 'AESTHETIC_APPEAL', 'NOVELTY', 'FELT_INVOLVEMENT', 'FOCUSED_ATTENTION', 'CONFIDENCE', 'SOCIAL_AWARENESS', 'SOCIAL_REGULATION', 'GENERAL', 'SELF_EFFICACY', 'GROWTH_MINDSET', 'MARKETING', 'CODING_CONFIDENCE', 'EMOTIONAL_REGULATION', 'SELF_REGULATION', 'CO_REGULATION', 'TIME_MANAGEMENT', 'TASK_MANAGEMENT');
CREATE TYPE ResponseCategory AS ENUM ('FIVE_OPTIONS_POSTIVE_UP', 'FIVE_OPTIONS_NEGATIVE_UP', 'NEUTRAL');
CREATE TYPE OptionCategory AS ENUM ('CAT_1_OPTIONS_6', 'CAT_2_OPTIONS_6', 'CAT_3_OPTIONS_5', 'CAT_4_OPTIONS_5', 'CAT_5_OPTIONS_5', 'CAT_6_OPTIONS_5', 'CAT_7_OPTIONS_5', 'CAT_8_OPTIONS_5');
CREATE TABLE questions (
    id UUID DEFAULT uuid_generate_v4() PRIMARY KEY NOT NULL,
    category QuestionCategory NOT NULL,
    qstn_desc TEXT NOT NULL,
    opt_category OptionCategory NOT NULL,
    rspn_category ResponseCategory NOT NULL,
    active BOOLEAN DEFAULT false NOT NULL
);
CREATE TABLE responses (
    id UUID DEFAULT uuid_generate_v4() PRIMARY KEY NOT NULL,
    survey_id UUID NOT NULL,
    question_id UUID NOT NULL,
    option_id UUID NOT NULL,
    email TEXT NOT NULL
);
CREATE TABLE surveys (
    id UUID DEFAULT uuid_generate_v4() PRIMARY KEY NOT NULL,
    survey_name TEXT NOT NULL,
    survey_category QuestionCategory NOT NULL,
    active BOOLEAN DEFAULT false NOT NULL
);
CREATE TABLE users (
    id UUID DEFAULT uuid_generate_v4() PRIMARY KEY NOT NULL,
    email TEXT NOT NULL,
    user_group TEXT NOT NULL,
    user_role TEXT NOT NULL,
    password_hash TEXT NOT NULL,
    locked_at TIMESTAMP WITH TIME ZONE DEFAULT NULL,
    failed_login_attempts INT DEFAULT 0 NOT NULL
);
CREATE TABLE options (
    id UUID DEFAULT uuid_generate_v4() PRIMARY KEY NOT NULL,
    category OptionCategory NOT NULL,
    option_desc TEXT NOT NULL,
    option_weight INT NOT NULL,
    option_seq INT NOT NULL,
    active BOOLEAN DEFAULT true NOT NULL
);
CREATE TABLE survey_questions (
    id UUID DEFAULT uuid_generate_v4() PRIMARY KEY NOT NULL,
    survey_id UUID NOT NULL,
    question_id UUID NOT NULL
);
ALTER TABLE responses ADD CONSTRAINT responses_ref_option_id FOREIGN KEY (option_id) REFERENCES options (id) ON DELETE NO ACTION;
ALTER TABLE responses ADD CONSTRAINT responses_ref_question_id FOREIGN KEY (question_id) REFERENCES questions (id) ON DELETE NO ACTION;
ALTER TABLE responses ADD CONSTRAINT responses_ref_survey_id FOREIGN KEY (survey_id) REFERENCES surveys (id) ON DELETE NO ACTION;
ALTER TABLE survey_questions ADD CONSTRAINT survey_questions_ref_question_id FOREIGN KEY (question_id) REFERENCES questions (id) ON DELETE NO ACTION;
ALTER TABLE survey_questions ADD CONSTRAINT survey_questions_ref_survey_id FOREIGN KEY (survey_id) REFERENCES surveys (id) ON DELETE NO ACTION;
