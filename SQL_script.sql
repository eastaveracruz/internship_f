#USE test;

DROP TABLE IF EXISTS PC;

CREATE TABLE PC (
  ID			int(11) NOT NULL AUTO_INCREMENT,
  NAME			VARCHAR(100),
  OPT			VARCHAR(100),
  QUAN			INT,
  NEED 			BOOLEAN NOT NULL DEFAULT FALSE,
  PRIMARY KEY (ID)
)
  ENGINE = InnoDB
  DEFAULT CHARACTER SET = utf8;

#1
INSERT INTO PC (NAME, OPT, QUAN, NEED) VALUES (
  'материнская плата',
  'ATX',
  5,
  true
);

#2
INSERT INTO PC (NAME, OPT, QUAN, NEED) VALUES (
  'мышь оптическая',
  'игровая',
  20,
  true
);

#3
INSERT INTO PC (NAME, OPT, QUAN, NEED) VALUES (
  'клавиатура',
  'игровая',
  15,
  true
);

#4
INSERT INTO PC (NAME, OPT, QUAN, NEED) VALUES (
  'блок питания',
  '500Вт',
  10,
  true
);

#5
INSERT INTO PC (NAME, OPT, QUAN, NEED) VALUES (
  'монитор',
  '19д',
  24,
  true
);

#6
INSERT INTO PC (NAME, OPT, QUAN, NEED) VALUES (
  'монитор', 
  '22д',
  19,
  true
);

#7
INSERT INTO PC (NAME, OPT, QUAN, NEED) VALUES (
  'ОЗУ', 
  '1Г',
  50,
  true
);

#8
INSERT INTO PC (NAME, OPT, QUAN, NEED) VALUES (
  'ОЗУ', 
  '2Г',
  40,
  true
);

#9
INSERT INTO PC (NAME, OPT, QUAN, NEED) VALUES (
  'ОЗУ', 
  '4Г',
  55,
  true
);

#10
INSERT INTO PC (NAME, OPT, QUAN, NEED) VALUES (
  'ОЗУ', 
  '8Г',
  75,
  true
);

#11
INSERT INTO PC (NAME, OPT, QUAN, NEED) VALUES (
  'процессор', 
  '4 ядра',
  100,
  true
);

#12
INSERT INTO PC (NAME, OPT, QUAN, NEED) VALUES (
  'процессор', '
  8 ядер',
  101,
  true
);

#13
INSERT INTO PC (NAME, OPT, QUAN, NEED) VALUES (
  'процессор', 
  '70 ядер',
  102,
  true
);

#14
INSERT INTO PC (NAME, OPT, QUAN, NEED) VALUES (
  'звуковая карта',
  '2.0',
  44,
  false
);

#15
INSERT INTO PC (NAME, OPT, QUAN, NEED) VALUES (
  'видеокарта',
  'затычка',
  56,
  true
);

#16
INSERT INTO PC (NAME, OPT, QUAN, NEED) VALUES (
  'видеокарта', 
  'игровая',
  422,
  true
);

#17
INSERT INTO PC (NAME, OPT, QUAN, NEED) VALUES (
  'охлаждение',
  'куллер 20Дб',
  75,
  true
);

#18
INSERT INTO PC (NAME, OPT, QUAN, NEED) VALUES (
  'охлаждение',
  'жидкое',
  15,
  false
);

#19
INSERT INTO PC (NAME, OPT, QUAN, NEED) VALUES (
  'охлаждение',
  'пассивное',
  6,
  false
);

#20
INSERT INTO PC (NAME, OPT, QUAN, NEED) VALUES (
  'корпус',
  'малый',
  56,
  true
);

#21
INSERT INTO PC (NAME, OPT, QUAN, NEED) VALUES (
  'корпус',
  'большой',
  56,
  true
);

#22
INSERT INTO PC (NAME, OPT, QUAN, NEED) VALUES (
  'подсветка',
  'зеленая',
  23,
  false
);

#23
INSERT INTO PC (NAME, OPT, QUAN, NEED) VALUES (
  'подсветка',
  'красная',
  29,
  false
);

#24
INSERT INTO PC (NAME, OPT, QUAN, NEED) VALUES (
  'HHD',
  '500Г',
  100,
  true
);

#25
INSERT INTO PC (NAME, OPT, QUAN, NEED) VALUES (
  'HHD',
  '1Т',
  100,
  true
);

#26
INSERT INTO PC (NAME, OPT, QUAN, NEED) VALUES (
  'SSD',
  '120Г',
  100,
  false
);


