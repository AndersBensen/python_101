CREATE TABLE brewery (
	id INTEGER PRIMARY KEY AUTOINCREMENT,
    name    VARCHAR(256),
    address VARCHAR(256),
    country VARCHAR(256)
); 

CREATE TABLE beer (
	id INTEGER PRIMARY KEY AUTOINCREMENT,
    name    VARCHAR(256),
    alc     FLOAT(4),
    kind   VARCHAR(256),
    brewery_id BIGINT,
    FOREIGN KEY (brewery_id) REFERENCES Brewery(id)
);

INSERT INTO brewery(name, address, country) 
VALUES
('Albani', 'Tværgade 2, 5000 Odense', 'Denmark'),
('Carlsberg', 'Vestre Ringvej 111, 7000 Fredericia', 'Denmark'),
('Heineken', 'Stadhouderskade 78, 1072 AE Amsterdam', 'Netherlands');

INSERT INTO beer(name, alc, kind, brewery_id)
VALUES
('Odense Classic', 4.6, 'Pilsner', 1),
('Odense Pilsner', 4.6, 'Pilsner', 1),
('Mosaic IPA', 5.7, 'IPA', 1),
('Tuborg Pilsner', 4.6, 'Pilsner', 2),
('Tuborg Classic', 4.6, 'Pilsner', 2),
('Tuborg Raa', 4.5, 'Organic Pilsner', 2),
('Red Tuborg', 4.3, 'Pilsner', 2),
('Baltika Dark Brown Ale', 5, 'Brown Ale', 2),
('Brewmasters Collection Irish Red Ale', 4.6, 'Ale', 2),
('Brooklyn Summer Ale', 5, 'Ale', 2),
('Heineken', 4.4, 'Pilsner', 3),
('Sol', 4.4, 'Pilsner', 3);