USE codeup_test_db;
TRUNCATE albums;
ALTER TABLE albums MODIFY artist VARCHAR(24);
ALTER TABLE albums MODIFY name VARCHAR(44);
ALTER TABLE albums MODIFY genre VARCHAR(16);
INSERT INTO albums (artist, name, release_date, sales, genre)
    Values
        ('Michael Jackson','Thriller','1982',50.2,'Pop'),
        ('AC/DC','Back in Black','1980',30.1,'Hard Rock'),
        ('Whitney Houston','The Bodyguard','1992',28.7,'R&B'),
        ('Pink Floyd','The Dark Side of the Moon','1973',24.8,'Progressive Rock'),
        ('Eagles','The greatest Hits(1971-1975)','1976',41.2,'Country Rock'),
        ('Eagles','Hotel California','1976',31.8,'Soft Rock'),
        ('Shania Twain','Come on Over','1997',30.4,'Country'),
        ('Fleetwood Mac','Rumours','1977',29.3,'Soft Rock'),
        ('Bee Gees','Saturday Night Fever','1977',22.1,'Disco'),
        ('Led Zeppelin','Led Zeppelin IV','1971',30.4,'Hard Rock'),
        ('Michael Jackson','Bad','1987',21.1,'Pop'),
        ('Meat Loaf','Bat Out of Hell','1977',22,'Hard Rock'),
        ('Alanis Morisette','Jagged Little Pill','1995',25.4,'Alternative Rock'),
        ('Various Artists','Dirty Dancing','1987',24.1,'Pop'),
        ('Celine Dion','Falling into You','1996',21.1,'Pop'),
        ('Adele','21','2011',27.1,'Pop'),
        ('The Beatles','1','2000',23.2,'Rock'),
        ('Metallica','Metallica','1991',22.7,'Heavy Metal'),
        ('Celine Dion','Let\'s Talk About Love','1997',19.5,'Pop'),
        ('Bob Marley & The Wailers','Legend: The Best of Bob Marley & The Wailers','1984',22.9,'Reggae'),
        ('Guns N\' Roses','Appetite for Destruction','1987',22.8,'Hard Rock'),
        ('Bruce Springsteen','Born in the U.S.A.','1984',22,'Heartland Rock'),
        ('ABBA','Gold: Greatest Hits','1992',21.6,'Pop'),
        ('Dire Straits','Brothers in Arms','1985',21.1,'Roots Rock'),
        ('Santana','Supernatural','1999',20.8,'Latin Rock'),
        ('Madonna','The Immaculate Collection','1990',19.8,'Pop'),
        ('Pink Floyd','The Wall','1979',18.9,'Progressive Rock'),
        ('The Beatles','Sgt. Pepper\'s Lonely Hearts Club Band','1967',18.3,'Rock'),
        ('Michael Jackson','Dangerous','1991',17,'New Jack Swing'),
        ('The Beatles','Abbey Road','1969',16.9,'Rock')