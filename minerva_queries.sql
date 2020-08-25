-- Creating table for so_qa (Stack Overflow Questions & Answers):
CREATE TABLE so_qa (
    questioner_id int PRIMARY KEY,
    question_asked_date text,
    question_score int,
    question_title text,
    question_text text,
    id int,
    answerer_id int,
    question_answered_date text,
    answer_score int,
    answer_text text
);

SELECT * FROM so_qa;

DROP TABLE if exists so_QA;
DROP TABLE if exists so_qa;
