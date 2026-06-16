.read setup.sql
 
-- create tables
CREATE TABLE albums (
    album_id        INTEGER NOT NULL,
    name            VARCHAR(15) NOT NULL,
    category        VARCHAR(10) NOT NULL,
    description     VARCHAR(40) NOT NULL,
    number_photos   INTEGER NOT NULL,
    upc             VARCHAR(12) NOT NULL,

PRIMARY KEY (album_id),
CHECK (category IN ('Animals', 'Cars', 'Castles', 'Towns', 'Surfing')),
CHECK (number_photos >= 0 AND number_photos <= 120),
CHECK (length(upc) = 12)
);

CREATE TABLE photos (
    photo_id    INTEGER NOT NULL,
    album_id    INTEGER NOT NULL,
    title       VARCHAR(20) NOT NULL,
    image       VARCHAR(30) NOT NULL,

PRIMARY KEY (photo_id),
FOREIGN KEY (album_id) REFERENCES albums(album_id)
);
  
-- add data
INSERT INTO albums VALUES (121, 'BMW Cars', 'Cars', 'Photos of BMW Cars', 25, '078635678413');
INSERT INTO albums VALUES (122, 'Glenrothes', 'Towns', 'Photos from around Glenrothes', 4, '786936897678');
INSERT INTO albums VALUES (123, 'Scottish Castles', 'Castles', 'Photos of Scottish Castles', 17, '034000006861');


INSERT INTO photos VALUES (23, 122, 'Thirsty Hippos', 'hippos_pmckay.jpg');
INSERT INTO photos VALUES (24, 122, 'Glenrothes Irises', 'irises_mharris.jpg');
INSERT INTO photos VALUES (31, 123, 'Newark Castle at Night', 'newark_at_night.png');
INSERT INTO photos VALUES (32, 122, 'Pond at Riverside Park', 'riverside_park_pong.jpg');

-- check table data

SELECT *
FROM albums, photos
WHERE albums.album_id = photos.album_id;

-- end with a blank line
.print
