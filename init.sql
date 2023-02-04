CREATE TABLE schedule (
    id SERIAL PRIMARY KEY,
    gis_code VARCHAR(255) NOT NULL,
    first_name TEXT NOT NULL,
    last_name TEXT NOT NULL,
    prefer_name TEXT NOT NULL,
    dietary_requirement TEXT NOT NULL,
    day1_lunch TEXT NOT NULL,
    day1_keynote TEXT NOT NULL,
    day2_lunch TEXT NOT NULL,
    day2_keynote TEXT NOT NULL,
    day3_critical TEXT NOT NULL,
    day3_lunch TEXT NOT NULL,
    day4_mentor TEXT NOT NULL,
    day4_lunch TEXT NOT NULL,
    day5_presentation TEXT NOT NULL,
    day5_lunch TEXT NOT NULL,
    round1 TEXT NOT NULL,
    round2 TEXT NOT NULL,
    round3 TEXT NOT NULL
);

COPY schedule (gis_code, first_name, last_name, prefer_name, dietary_requirement, day1_lunch, day1_keynote, day2_lunch, day2_keynote, day3_critical, day3_lunch, day4_mentor, day4_lunch, day5_presentation, day5_lunch, round1, round2, round3) FROM '/var/lib/postgresql/csv/schedule.csv' DELIMITER ',' CSV HEADER;