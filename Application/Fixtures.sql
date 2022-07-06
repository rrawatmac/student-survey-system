

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;


SET SESSION AUTHORIZATION DEFAULT;

ALTER TABLE public.options DISABLE TRIGGER ALL;

INSERT INTO public.options (id, category, option_desc, option_weight, option_seq, active) VALUES ('3b108c71-a1ab-47c1-9cc1-26ded665cf6c', 'CAT_1_OPTIONS_6', 'From school', 1, 1, true);
INSERT INTO public.options (id, category, option_desc, option_weight, option_seq, active) VALUES ('5ea8020d-f341-4bd6-8422-b2f1c6ff9f7a', 'CAT_1_OPTIONS_6', 'From a friend', 1, 2, true);
INSERT INTO public.options (id, category, option_desc, option_weight, option_seq, active) VALUES ('8aa481ee-b57f-4266-8b2b-27f189a54553', 'CAT_1_OPTIONS_6', 'From Social Media', 1, 3, true);
INSERT INTO public.options (id, category, option_desc, option_weight, option_seq, active) VALUES ('44dc00ae-da18-412f-bbab-67a2ee2b3c96', 'CAT_1_OPTIONS_6', 'From parents', 1, 4, true);
INSERT INTO public.options (id, category, option_desc, option_weight, option_seq, active) VALUES ('9960ee68-33d5-4f60-a511-c142765fc470', 'CAT_1_OPTIONS_6', 'Internet search', 1, 5, true);
INSERT INTO public.options (id, category, option_desc, option_weight, option_seq, active) VALUES ('f27b1244-b15d-4d91-a0a0-e247f9852d34', 'CAT_1_OPTIONS_6', 'Other', 1, 6, true);
INSERT INTO public.options (id, category, option_desc, option_weight, option_seq, active) VALUES ('df6ed9f6-88a6-4b95-83ba-e79d0f849b8d', 'CAT_2_OPTIONS_6', 'It''s fun!', 1, 1, true);
INSERT INTO public.options (id, category, option_desc, option_weight, option_seq, active) VALUES ('0259fb15-5cd7-467a-be92-aa83a58d1249', 'CAT_2_OPTIONS_6', 'I want to something new', 1, 2, true);
INSERT INTO public.options (id, category, option_desc, option_weight, option_seq, active) VALUES ('fcf61a5c-a98b-4f70-8a3f-e95aa9c06314', 'CAT_2_OPTIONS_6', 'I want to make a game', 1, 3, true);
INSERT INTO public.options (id, category, option_desc, option_weight, option_seq, active) VALUES ('b56c8903-dfc6-4022-b0f0-d2cadab9fa84', 'CAT_2_OPTIONS_6', 'I want to ge a coder', 1, 4, true);
INSERT INTO public.options (id, category, option_desc, option_weight, option_seq, active) VALUES ('3bb30de9-f69e-4beb-99da-a4505f710c48', 'CAT_2_OPTIONS_6', 'As a friend activity', 1, 5, true);
INSERT INTO public.options (id, category, option_desc, option_weight, option_seq, active) VALUES ('60cd2c44-17a0-4cad-bee6-b0d18277db3f', 'CAT_2_OPTIONS_6', 'I''m trapped in a dungeon', 1, 6, true);
INSERT INTO public.options (id, category, option_desc, option_weight, option_seq, active) VALUES ('beff8a40-421f-4649-b069-aef16b82b14e', 'CAT_3_OPTIONS_5', 'Definitely', 1, 1, true);
INSERT INTO public.options (id, category, option_desc, option_weight, option_seq, active) VALUES ('c7aaeaae-04d0-4526-9c9c-349e33cdde10', 'CAT_3_OPTIONS_5', 'Probably', 1, 2, true);
INSERT INTO public.options (id, category, option_desc, option_weight, option_seq, active) VALUES ('b268a2df-e691-4173-910b-d0778750ab92', 'CAT_3_OPTIONS_5', 'Maybe', 1, 3, true);
INSERT INTO public.options (id, category, option_desc, option_weight, option_seq, active) VALUES ('f2e7264e-2518-49b0-939f-afae6f82823a', 'CAT_3_OPTIONS_5', 'Probably not', 1, 4, true);
INSERT INTO public.options (id, category, option_desc, option_weight, option_seq, active) VALUES ('833b82e9-2a09-4248-a4c8-cbbefdb4aae1', 'CAT_3_OPTIONS_5', 'Definitely not', 1, 5, true);
INSERT INTO public.options (id, category, option_desc, option_weight, option_seq, active) VALUES ('3de24880-ca9b-4c53-bfe3-23243e7b8c91', 'CAT_4_OPTIONS_5', 'Always', 1, 1, true);
INSERT INTO public.options (id, category, option_desc, option_weight, option_seq, active) VALUES ('38b275f5-01cd-4bf1-9ccb-aa5655d2dd8e', 'CAT_4_OPTIONS_5', 'Usually', 1, 2, true);
INSERT INTO public.options (id, category, option_desc, option_weight, option_seq, active) VALUES ('230cc4a2-2588-44ed-904c-aca140690603', 'CAT_4_OPTIONS_5', 'Sometimes', 1, 3, true);
INSERT INTO public.options (id, category, option_desc, option_weight, option_seq, active) VALUES ('aacce9a6-3732-4c8e-9e32-66e6dd48d1a4', 'CAT_4_OPTIONS_5', 'Rarely', 1, 4, true);
INSERT INTO public.options (id, category, option_desc, option_weight, option_seq, active) VALUES ('a4a768da-553c-4da3-8f3c-176a46834132', 'CAT_4_OPTIONS_5', 'Never', 1, 5, true);
INSERT INTO public.options (id, category, option_desc, option_weight, option_seq, active) VALUES ('9eed0168-fbee-4823-b2c4-c81c16abce24', 'CAT_5_OPTIONS_5', 'Always', 1, 1, true);
INSERT INTO public.options (id, category, option_desc, option_weight, option_seq, active) VALUES ('73d6efd7-588d-4837-b55d-415f7408786c', 'CAT_5_OPTIONS_5', 'Usually', 1, 2, true);
INSERT INTO public.options (id, category, option_desc, option_weight, option_seq, active) VALUES ('67ca652c-0c5a-474c-ac08-e53d71596066', 'CAT_5_OPTIONS_5', 'Sometimes', 1, 3, true);
INSERT INTO public.options (id, category, option_desc, option_weight, option_seq, active) VALUES ('23c5446c-15ff-42be-9001-53e00e2a6b84', 'CAT_5_OPTIONS_5', 'Rarely', 1, 4, true);
INSERT INTO public.options (id, category, option_desc, option_weight, option_seq, active) VALUES ('e1f5d27c-9812-47bd-bfc6-b54c9a617275', 'CAT_5_OPTIONS_5', 'Never', 1, 5, true);
INSERT INTO public.options (id, category, option_desc, option_weight, option_seq, active) VALUES ('a046a5bb-1c96-43d4-8d29-8281a9f410fb', 'CAT_6_OPTIONS_5', 'Being creative', 1, 1, true);
INSERT INTO public.options (id, category, option_desc, option_weight, option_seq, active) VALUES ('028fde70-5bd3-4168-9a47-3752d25a8ad6', 'CAT_6_OPTIONS_5', 'Making friends', 1, 2, true);
INSERT INTO public.options (id, category, option_desc, option_weight, option_seq, active) VALUES ('fb6361d0-01b2-4734-9bb8-d1310d867468', 'CAT_6_OPTIONS_5', 'Learning a new skill', 1, 3, true);
INSERT INTO public.options (id, category, option_desc, option_weight, option_seq, active) VALUES ('2344ce8d-be1e-45dd-9d7e-84ba17b1177a', 'CAT_6_OPTIONS_5', 'Being challenged', 1, 4, true);
INSERT INTO public.options (id, category, option_desc, option_weight, option_seq, active) VALUES ('55e9bac6-28f4-426c-bc10-8d431c8b4669', 'CAT_6_OPTIONS_5', 'Other/I don''t know', 1, 5, true);
INSERT INTO public.options (id, category, option_desc, option_weight, option_seq, active) VALUES ('819b71bb-3db5-4ec4-b524-de36619732f4', 'CAT_7_OPTIONS_5', 'Too fast', 1, 1, true);
INSERT INTO public.options (id, category, option_desc, option_weight, option_seq, active) VALUES ('c2786271-bb55-468d-94a5-d6f64b80a013', 'CAT_7_OPTIONS_5', 'Fast', 1, 2, true);
INSERT INTO public.options (id, category, option_desc, option_weight, option_seq, active) VALUES ('2636ea5e-0115-4c56-b73d-218564dea1db', 'CAT_7_OPTIONS_5', 'Just right', 1, 3, true);
INSERT INTO public.options (id, category, option_desc, option_weight, option_seq, active) VALUES ('0987a8c0-ea98-4061-9b48-544fb59d190d', 'CAT_7_OPTIONS_5', 'Slow', 1, 4, true);
INSERT INTO public.options (id, category, option_desc, option_weight, option_seq, active) VALUES ('ccdf327c-03ee-4d8d-a604-1d7fd0ade114', 'CAT_7_OPTIONS_5', 'Too slow', 1, 5, true);
INSERT INTO public.options (id, category, option_desc, option_weight, option_seq, active) VALUES ('97b679e8-cf3b-404c-b2c3-db327a532169', 'CAT_8_OPTIONS_5', 'Exactly', 1, 1, true);
INSERT INTO public.options (id, category, option_desc, option_weight, option_seq, active) VALUES ('1b0a4b99-443a-4cf8-ad42-5b3d3cd3d3c8', 'CAT_8_OPTIONS_5', 'Mostly', 1, 2, true);
INSERT INTO public.options (id, category, option_desc, option_weight, option_seq, active) VALUES ('a197846d-5613-423a-b84f-da16bf01179d', 'CAT_8_OPTIONS_5', 'Somewhat', 1, 3, true);
INSERT INTO public.options (id, category, option_desc, option_weight, option_seq, active) VALUES ('0a42dc11-9988-449e-96d6-f5dd8cb7b18a', 'CAT_8_OPTIONS_5', 'A little', 1, 4, true);
INSERT INTO public.options (id, category, option_desc, option_weight, option_seq, active) VALUES ('0d7a6b5b-a496-49e3-afd0-5ec92bb69c5e', 'CAT_8_OPTIONS_5', 'I was surprised! ', 1, 5, true);


ALTER TABLE public.options ENABLE TRIGGER ALL;


ALTER TABLE public.responses DISABLE TRIGGER ALL;



ALTER TABLE public.responses ENABLE TRIGGER ALL;


ALTER TABLE public.survey_questions DISABLE TRIGGER ALL;

INSERT INTO public.survey_questions (id, survey_id, question_id) VALUES ('92e6bb8b-f1cb-4b2a-81af-bc35de2f3e1b', '679abf01-1a73-4a18-a1b3-88efa5ee6f9d', '7c5b4fec-2883-4ae9-a574-9dd33abc11ec');
INSERT INTO public.survey_questions (id, survey_id, question_id) VALUES ('cf6f2f15-f79b-4989-8493-42f7a247a9f1', '679abf01-1a73-4a18-a1b3-88efa5ee6f9d', '7ab2a112-9604-4a18-b840-7dd71bf99083');


ALTER TABLE public.survey_questions ENABLE TRIGGER ALL;


ALTER TABLE public.users DISABLE TRIGGER ALL;

INSERT INTO public.users (id, email, user_group, user_role, password_hash, locked_at, failed_login_attempts) VALUES ('71fce9ea-d46e-4691-bc11-7ca064135e4f', 'ruchikarawat31@gmail.com', 'Group_1', 'Admin', 'sha256|17|PwnhDcgh9ceO0vIDL592yw==|V0LwYFCaK9pl4UCtcPnOOVh83stsVHvqixKbXhqlOdM=', NULL, 0);


ALTER TABLE public.users ENABLE TRIGGER ALL;

ALTER TABLE public.questions DISABLE TRIGGER ALL;
INSERT INTO public.questions (id, category, qstn_desc, opt_category, rspn_category, active) VALUES ('7c5b4fec-2883-4ae9-a574-9dd33abc11ec', 'FELT_INVOLVEMENT', 'How likely are you to recommend this activity to a friend?', 'CAT_1_OPTIONS_6', 'FIVE_OPTIONS_POSTIVE_UP', true);
INSERT INTO public.questions (id, category, qstn_desc, opt_category, rspn_category, active) VALUES ('7ab2a112-9604-4a18-b840-7dd71bf99083', 'FELT_INVOLVEMENT', 'All team members, including me, contributed meaningfully.', 'CAT_2_OPTIONS_6', 'FIVE_OPTIONS_POSTIVE_UP', true);
INSERT INTO public.questions (category, qstn_desc, opt_category, rspn_category, active) VALUES ('FELT_INVOLVEMENT', 'Would friends in your class like to create a <Mystery game> together in the same way?', 'CAT_5_OPTIONS_5', 'FIVE_OPTIONS_POSTIVE_UP', true);
INSERT INTO public.questions (category, qstn_desc, opt_category, rspn_category, active) VALUES ('MARKETING', 'How did you hear about us?', 'CAT_1_OPTIONS_6', 'NEUTRAL', true);
INSERT INTO public.questions (category, qstn_desc, opt_category, rspn_category, active) VALUES ('MARKETING', 'Why do you want to learn coding?', 'CAT_2_OPTIONS_6', 'NEUTRAL', true);
INSERT INTO public.questions (category, qstn_desc, opt_category, rspn_category, active) VALUES ('MARKETING', 'Would you recommend our camps or classes to a friend?', 'CAT_3_OPTIONS_5', 'FIVE_OPTIONS_NEGATIVE_UP', true);
INSERT INTO public.questions (category, qstn_desc, opt_category, rspn_category, active) VALUES ('MARKETING', 'Did you get help right away when you needed it?', 'CAT_4_OPTIONS_5', 'FIVE_OPTIONS_NEGATIVE_UP', true);
INSERT INTO public.questions (category, qstn_desc, opt_category, rspn_category, active) VALUES ('MARKETING', 'Did you have enough time to finish your work?', 'CAT_4_OPTIONS_5', 'FIVE_OPTIONS_NEGATIVE_UP', true);
INSERT INTO public.questions (category, qstn_desc, opt_category, rspn_category, active) VALUES ('MARKETING', 'What did you like the most?', 'CAT_6_OPTIONS_5', 'NEUTRAL', true);
INSERT INTO public.questions (category, qstn_desc, opt_category, rspn_category, active) VALUES ('MARKETING', 'Did the teacher explained things...', 'CAT_7_OPTIONS_5', 'FIVE_OPTIONS_NEGATIVE_UP', true);
INSERT INTO public.questions (category, qstn_desc, opt_category, rspn_category, active) VALUES ('MARKETING', 'Were things the way you expected?', 'CAT_8_OPTIONS_5', 'FIVE_OPTIONS_NEGATIVE_UP', true);


ALTER TABLE public.questions ENABLE TRIGGER ALL;
