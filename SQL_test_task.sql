use testin; 
-- БЛОК СТВОРЕННЯ ТАБЛИЦЬ ТА ДОДАВАННЯ ДАНИХ -------------------------------
-- Таблиця з користувачами сайту
CREATE TABLE users (
    id INT PRIMARY KEY,
    email VARCHAR(100) NOT NULL,
    id_country INT,
    date_reg DATETIME
);

-- Таблиця надісланих листів у розсилці
CREATE TABLE emails_sent (
    id INT PRIMARY KEY,
    id_user INT,
    id_type INT,
    date_sent DATETIME
);

-- Таблиця кліків за листами
CREATE TABLE emails_clicks (
    id INT PRIMARY KEY,
    id_email INT,
    date_click DATETIME
);

-- Таблиця країн
CREATE TABLE countries (
    id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    grp VARCHAR(50)
);


-- Вставка даних в таблицю з користувачами
INSERT INTO users (id, email, id_country, date_reg)
VALUES
    (1, 'user1@example.com', 1, '2022-06-27 10:58:05'),
    (2, 'user2@example.com', 2, '2022-06-28 09:30:00'),
    (3, 'user3@example.com', 1, '2022-06-29 15:45:22');

-- Вставка даних в таблицю надісланих листів у розсилці
INSERT INTO emails_sent (id, id_user, id_type, date_sent)
VALUES
    (1, 1, 1, '2022-06-27 11:30:00'),
    (2, 2, 2, '2022-06-28 12:45:00'),
    (3, 3, 1, '2022-06-29 14:20:00');
    
    -- Вставка даних в таблицю кліків за листами
INSERT INTO emails_clicks (id, id_email, date_click)
VALUES
    (1, 1, '2022-06-27 11:35:00'),
    (2, 2, '2022-06-28 13:00:00'),
    (3, 3, '2022-06-29 15:00:00');

-- Вствка даних в таблицю країн
INSERT INTO countries (id, name, grp)
VALUES
    (1, 'Україна', 'Група 1'),
    (2, 'Сполучені Штати', 'Група 2'),
    (3, 'Канада', 'Група 2');


INSERT INTO countries (id, name, grp)
VALUES 
(4,"Туніс","Група 2"),
(5,"Непал","Група 1"),
(6,"Норвегія","Група 4");

SELECT * FROM users;
SELECT * FROM countries;

DELETE FROM countries
WHERE id >= 24;

INSERT INTO users(id, email, id_country, date_reg)
VALUES 
(9,'user8@example.com',1,'2022-06-28 10:38:09' );

INSERT INTO countries (id, name, grp)
VALUES 
(9,"Румунія","Група 1");

-- Вставка у таблицю юзерс 

INSERT INTO users(id, email, id_country, date_reg)
VALUES 
(4, "user4@example.com",3,"2022-06-27 10:48:05"),
(5, "user5@example.com",3,"2022-06-28 10:58:02"),
(6, "user6@example.com",3,"2022-06-28 10:21:45"),
(7, "user7@example.com",3,"2022-06-27 10:38:09");


-- Вставка даних в таблицю кліків за листами з використанням електронних адрес
INSERT INTO emails_clicks (id, id_email, date_click)
VALUES
    (11, 'user21@example.com', '2024-01-24 11:35:00'),
    (22, 'user12@example.com', '2024-01-25 13:00:00'),
    (31, 'user313@example.com', '2024-01-26 15:00:00'),
    (14, 'user1131@example.com', '2024-01-27 12:30:00'),
    (15, 'user2@example.com', '2024-01-28 14:45:00'),
    (16, 'user3@example.com', '2024-01-29 16:30:00'),
    (17, 'user1@example.com', '2024-01-30 10:15:00'),
    (81, 'user2@example.com', '2024-01-31 11:45:00'),
    (9, 'user3@example.com', '2024-02-01 13:20:00'),
    (10, 'user1@example.com', '2024-02-02 15:00:00');


-- Вставка даних в таблицю кліків за листами з використанням електронних адрес
-- Вставка даних в таблицю надісланих листів у розсилці
INSERT INTO emails_sent (id, id_user, id_type, date_sent)
VALUES
    (1, 1, 1, '2022-06-27 11:30:00'),
    (2, 2, 2, '2022-06-28 12:45:00'),
    (3, 3, 1, '2022-06-29 14:20:00');
    
-- Вставка даних в таблицю кліків за листами за останні два тижні січня 2024 року
INSERT INTO emails_clicks (id, id_email, date_click)
VALUES
    -- За 1-й тиждень
    (4, 4, '2024-01-03 16:00:00'),
    (5, 5, '2024-01-03 18:45:00'),
    (6, 6, '2024-01-04 09:30:00'),
    (7, 7, '2024-01-04 11:10:00'),
    (8, 8, '2024-01-05 14:20:00'),
    (9, 9, '2024-01-06 16:30:00'),
    (10, 10, '2024-01-07 18:00:00'),
    (11, 11, '2024-01-08 11:35:00'),
    (12, 12, '2024-01-09 13:00:00'),
    (13, 13, '2024-01-09 15:00:00'),
    (14, 14, '2024-01-10 16:00:00'),
    (15, 15, '2024-01-10 18:45:00'),
    (16, 16, '2024-01-11 09:30:00'),
    (17, 17, '2024-01-11 11:10:00'),
    (18, 18, '2024-01-12 14:20:00'),
    (19, 19, '2024-01-13 16:30:00'),
    (20, 20, '2024-01-14 18:00:00');

-- Вставка даних в таблицю відправлених листів з використанням електронних адрес
INSERT INTO emails_sent (id, id_user, id_type, date_sent)
VALUES
    -- За 1-й тиждень
    (4, 4, 4, '2024-01-03 15:55:00'),
    (5, 5, 5, '2024-01-03 18:50:00'),
    (6, 6, 6, '2024-01-04 09:35:00'),
    (7, 7, 7, '2024-01-04 11:15:00'),
    (8, 8, 8, '2024-01-05 14:25:00'),
    (9, 9, 9, '2024-01-06 16:35:00'),
    (10, 10, 10, '2024-01-07 18:05:00'),
    (11, 11, 11, '2024-01-08 11:40:00'),
    (12, 12, 12, '2024-01-09 13:05:00'),
    (13, 13, 13, '2024-01-09 15:05:00'),
    (14, 14, 14, '2024-01-10 16:05:00'),
    (15, 15, 15, '2024-01-10 18:50:00'),
    (16, 16, 16, '2024-01-11 09:35:00'),
    (17, 17, 17, '2024-01-11 11:15:00'),
    (18, 18, 18, '2024-01-12 14:25:00'),
    (19, 19, 19, '2024-01-13 16:35:00'),
    (20, 20, 20, '2024-01-14 18:05:00');

-- Вставка даних в таблицю відправлених листів з використанням електронних адрес
INSERT INTO emails_sent (id, id_user, id_type, date_sent)
VALUES
    -- Починаючи з id 21
    (21, 21, 21, '2024-01-15 10:37:00'),
    (22, 22, 22, '2024-01-15 16:42:00'),
    (23, 23, 23, '2024-01-16 09:18:00'),
    (24, 24, 24, '2024-01-17 11:55:00'),
    (25, 25, 25, '2024-01-18 14:28:00'),
    (26, 26, 26, '2024-01-19 16:47:00'),
    (27, 27, 27, '2024-01-20 18:23:00'),
    (28, 28, 28, '2024-01-21 10:11:00'),
    (29, 29, 29, '2024-01-22 12:49:00'),
    (30, 30, 30, '2024-01-23 14:36:00'),
    (31, 31, 31, '2024-01-24 17:03:00'),
    (32, 32, 32, '2024-01-25 09:45:00'),
    (33, 33, 33, '2024-01-26 13:21:00'),
    (34, 34, 34, '2024-01-27 15:48:00'),
    (35, 35, 35, '2024-01-28 17:34:00'),
    (36, 36, 36, '2024-01-29 10:07:00'),
    (37, 37, 37, '2024-01-30 12:39:00'),
    (38, 38, 38, '2024-01-31 14:52:00'),
    (39, 39, 39, '2024-02-01 16:26:00'),
    (40, 40, 40, '2024-02-02 18:04:00');

-- Вставка даних в таблицю кліків за листами з використанням електронних адрес
INSERT INTO emails_clicks (id, id_email, date_click)
VALUES
    (21, 21, '2024-01-15 10:42:00'),
    (22, 22, '2024-01-15 16:56:00'),
    (23, 23, '2024-01-16 09:29:00'),
    (24, 24, '2024-01-17 12:07:00'),
    (25, 25, '2024-01-18 14:41:00'),
    (26, 26, '2024-01-19 17:02:00'),
    (27, 27, '2024-01-20 18:38:00'),
    (28, 28, '2024-01-21 10:24:00'),
    (29, 29, '2024-01-22 12:56:00'),
    (30, 30, '2024-01-23 14:43:00'),
    (31, 31, '2024-01-24 17:12:00'),
    (32, 32, '2024-01-25 09:54:00'),
    (33, 33, '2024-01-26 13:29:00'),
    (34, 34, '2024-01-27 15:56:00'),
    (35, 35, '2024-01-28 17:42:00'),
    (36, 36, '2024-01-29 10:15:00'),
    (37, 37, '2024-01-30 12:47:00'),
    (38, 38, '2024-01-31 15:00:00'),
    (39, 39, '2024-02-01 16:34:00'),
    (40, 40, '2024-02-02 18:12:00');








-- Запит перший ---------------------------------------------------------------
-- Кількість реєстрацій нових користувачів щодня по групах країн -------------- 

SELECT
C.GRP AS COUNTRY_GRP,
    DATE(U.DATE_REG) AS DATE(REG_DATE),
    COUNT(U.ID) AS USERS_DAILY
FROM
    COUNTRIES C
JOIN
    USERS U ON U.ID = C.ID
GROUP BY
    DATE(REG_DATE), COUNTRY_GRP
ORDER BY
    COUNTRY_GRP, DATE(REG_DATE);

-- Виправив  -------------------- ПРАВИЛЬНИЙ ----------------------------------
SELECT
    C.GRP AS COUNTRY_GRP,
    DATE(U.DATE_REG) AS REG_DATE,
    COUNT(U.ID) AS USERS_DAILY
FROM
    COUNTRIES C
JOIN
    USERS U ON U.ID = C.ID
GROUP BY
    REG_DATE, COUNTRY_GRP 
ORDER BY
	REG_DATE, COUNTRY_GRP;


-- Запит другий ---------------------------------------------------------------
-- % листів, клацнутих протягом 10 хвилин після відправки, за типами листів сумарно за останні 7 діб;

use testin;

-- GOOD --------------------------------

SELECT
    es.date_sent AS date_sent,
    ec.date_click AS date_click,
	TIMEDIFF(ec.date_click, es.date_sent) AS time_difference,
	(COUNT(ec.id) / COUNT(es.id)) * 100 AS click_percentage
FROM
    emails_sent es
INNER JOIN
    emails_clicks ec ON es.id = ec.id
WHERE TIMEDIFF(ec.date_click ,es.date_sent) < '00:10:00'
GROUP BY
    date_sent, date_click
ORDER BY
    date_sent, date_click;
    
    
-- --------------------------------------

SELECT
    es.date_sent AS date_sent,
    ec.date_click AS date_click,
    TIMEDIFF(ec.date_click, es.date_sent) AS time_difference,
    (COUNT(ec.id) / COUNT(es.id)) * 100 AS click_percentage
FROM
    emails_sent es
INNER JOIN
    emails_clicks ec ON es.id = ec.id
WHERE
    TIMEDIFF(ec.date_click, es.date_sent) < '00:10:00'
GROUP BY
    es.date_sent, ec.date_click
ORDER BY
    es.date_sent, ec.date_click;
    
    
-- ----------------------


SELECT
    es.id_type,
    (COUNT(ec.id) / COUNT(es.id)) * 100 AS click_percentage
FROM
    emails_sent es
INNER JOIN
    emails_clicks ec ON es.id = ec.id_email
WHERE
    TIMEDIFF(ec.date_click, es.date_sent) < '00:10:00'
    AND es.date_sent BETWEEN NOW() - INTERVAL 7 DAY AND NOW()
GROUP BY
    es.id_type;
    
-- тестовий з вставкою зверху що рахує час вірно


SELECT
    es.id_type AS id_type,
    es.date_sent AS date_sent,
    ec.date_click AS date_click,
    TIMEDIFF(ec.date_click, es.date_sent) AS time_difference
FROM
    emails_sent es
INNER JOIN
    emails_clicks ec ON es.id = ec.id
WHERE
    TIMEDIFF(ec.date_click, es.date_sent) < '00:10:00'
    AND es.date_sent BETWEEN NOW() - INTERVAL 7 DAY AND NOW()
GROUP BY
    es.id_type,es.date_sent, ec.date_click
ORDER BY
    es.id_type,es.date_sent, ec.date_click;

-- зверху майже працює / лишилось тільки відсотки


SELECT id_type, (COUNT(ec.id) / COUNT(es.id)) * 100 AS click_percentage 
FROM emails_sent
WHERE id_type IN
(
SELECT
    es.id_type AS id_type,
    es.date_sent AS date_sent,
    ec.date_click AS date_click,
    TIMEDIFF(ec.date_click, es.date_sent) AS time_difference
    
FROM
    emails_sent es
INNER JOIN
    emails_clicks ec ON es.id = ec.id
WHERE
    TIMEDIFF(ec.date_click, es.date_sent) < '00:10:00'
    AND es.date_sent BETWEEN NOW() - INTERVAL 7 DAY AND NOW()
GROUP BY
    es.id_type, es.date_sent, ec.date_click
ORDER BY
    es.id_type, es.date_sent, ec.date_click
    );

-- зверху заморозив



COUNT(ec.id)/ COUNT(es.id) * 100 AS click_percentage;

SELECT COUNT(ec.id) AS WHOLE from emails_clicks ec;



-- -----------------------------------------------Маємо 7


SELECT
    COUNT(es.id_type) AS count_id_type
    
FROM
    emails_sent es
WHERE
    es.id_type IN (
        SELECT
            es.id_type
        FROM
            emails_sent es
        INNER JOIN
            emails_clicks ec ON es.id = ec.id
        WHERE
            TIMEDIFF(ec.date_click, es.date_sent) < '00:10:00'
            AND es.date_sent BETWEEN NOW() - INTERVAL 7 DAY AND NOW()
        GROUP BY
            es.id_type
    );

use testin;
-- --------------------------------------------------------------------------
-- Близько



SELECT
    COUNT(ec.id) AS WHOLE,
    (
        (
            SELECT
                COUNT(es.id_type)
            FROM
                emails_sent es
            WHERE
                es.id_type IN (
                    SELECT
						es.id_type
                    FROM
                        emails_sent es
                    INNER JOIN
                        emails_clicks ec ON es.id = ec.id
                    WHERE
                        TIMEDIFF(ec.date_click, es.date_sent) < '00:10:00'
                        AND es.date_sent BETWEEN NOW() - INTERVAL 7 DAY AND NOW()
                    GROUP BY
                        es.id_type
                )
        ) 
    )/COUNT(ec.id) AS ratio,  es.id_type
    
FROM
    emails_clicks ec
    
    JOIN emails_sent es ON es.id=ec.id
    GROUP BY es.id_type;


 
-- ------------------------------------ Простіше та ближче. Залишаються відстотки
SELECT
    es.id_type,
    COUNT(ec.id) AS clicked_count,
    COUNT(es.id) AS sent_count,
    (COUNT(ec.id) / COUNT(es.id)) * 100 AS click_ratio
FROM
    emails_sent es
LEFT JOIN
    emails_clicks ec ON es.id = ec.id
WHERE
    es.date_sent BETWEEN NOW() - INTERVAL 7 DAY AND NOW()
    AND ec.date_click IS NOT NULL
    AND TIMEDIFF(ec.date_click, es.date_sent) < '00:10:00'
GROUP BY
    es.id_type;
-- ----------------------------------------------------------

SELECT
    es.id_type,
    COUNT(ec.id) AS clicked_count,
    COUNT(es.id) AS sent_count,
    (COUNT(ec.id) / COUNT(es.id)) * 100 AS click_ratio
FROM
    emails_sent es
LEFT JOIN
    emails_clicks ec ON es.id = ec.id
WHERE
    es.date_sent BETWEEN NOW() - INTERVAL 7 DAY AND NOW()
    AND ec.date_click IS NOT NULL
    AND TIMEDIFF(ec.date_click, es.date_sent) < '00:10:00'
GROUP BY
    es.id_type;


-- --------------------- Спроба використати партиції

SELECT
    es.id_type,
    COUNT(ec.id) AS clicked_count,
    COUNT(es.id) AS sent_count,
    (COUNT(ec.id) * 100.0 / SUM(COUNT(ec.id)) OVER (PARTITION BY es.id_type)) AS click_percentage
FROM
    emails_sent es
LEFT JOIN
    emails_clicks ec ON es.id = ec.id
WHERE
    es.date_sent BETWEEN NOW() - INTERVAL 7 DAY AND NOW()
    AND ec.date_click IS NOT NULL
    AND TIMEDIFF(ec.date_click, es.date_sent) < '00:10:00'
GROUP BY
    es.id_type;



-- Працює вірно ---------------------------------------------------------------

SELECT
    es.id_type,
    (COUNT(ec.id) / SUM(COUNT(ec.id)) OVER ()) * 100 AS precent
FROM
    emails_sent es
LEFT JOIN
    emails_clicks ec ON es.id = ec.id
WHERE
    es.date_sent BETWEEN NOW() - INTERVAL 7 DAY AND NOW()
    AND ec.date_click IS NOT NULL
    AND TIMEDIFF(ec.date_click, es.date_sent) < '00:10:00'
GROUP BY
    es.id_type;




