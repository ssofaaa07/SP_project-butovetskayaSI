drop table EVENTS_AND_RESPONSE_OBJ;
drop table ALL_EVENTS;
drop table IMPLEMENTATION_PERIOD;
drop table EXPECTED_RESULT;
drop table FINANCING_SOURCE;



CREATE TABLE IMPLEMENTATION_PERIOD (
    id INTEGER PRIMARY KEY,
    period TEXT NOT NULL
);

CREATE TABLE EXPECTED_RESULT (
    id SERIAL PRIMARY KEY,
    result TEXT NOT NULL
);

CREATE TABLE FINANCING_SOURCE (
    id INTEGER PRIMARY KEY,
    source TEXT NOT NULL
);

CREATE TABLE ALL_EVENTS (
    id TEXT PRIMARY KEY,
    id_aim TEXT REFERENCES STRATEGY_SUB_AIM(id) NOT NULL,
    id_period INTEGER REFERENCES IMPLEMENTATION_PERIOD(id) NOT NULL,
    id_result INTEGER REFERENCES EXPECTED_RESULT(id) NOT NULL,
    id_fin_source INTEGER REFERENCES FINANCING_SOURCE(id),
    id_prog TEXT REFERENCES GOSPROGRAM(id),
    sub_event TEXT NOT NULL
);

CREATE TABLE EVENTS_AND_RESPONSE_OBJ (
    id_event TEXT REFERENCES ALL_EVENTS(id),
    id_response_obj INTEGER REFERENCES response_obj(id)
)