

-------------------------------------------------------------------------------
--  task participant
-------------------------------------------------------------------------------
CREATE TABLE TASK_PARTICIPANT(
	ID BIGINT NOT NULL,
	CATEGORY VARCHAR(200),
	TYPE VARCHAR(200),
	REF VARCHAR(200),
	TASK_ID BIGINT,
        CONSTRAINT PK_TASK_PARTICIPANT PRIMARY KEY(ID),
	CONSTRAINT FK_TASK_PARTICIPANT_TASK FOREIGN KEY(TASK_ID) REFERENCES TASK_INFO(ID)
);

COMMENT ON TABLE TASK_PARTICIPANT IS '任务参与者';
COMMENT ON COLUMN TASK_PARTICIPANT.ID IS '主键';
COMMENT ON COLUMN TASK_PARTICIPANT.CATEGORY IS '分类';
COMMENT ON COLUMN TASK_PARTICIPANT.TYPE IS '类型';
COMMENT ON COLUMN TASK_PARTICIPANT.REF IS '外部引用';
COMMENT ON COLUMN TASK_PARTICIPANT.TASK_ID IS '外键，任务';





