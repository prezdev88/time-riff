-- init.sql
USE time_riff;

CREATE TABLE band (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL
);

CREATE TABLE album (
    id INT AUTO_INCREMENT PRIMARY KEY,
    band_id INT NOT NULL,
    title VARCHAR(255) NOT NULL,
    release_year YEAR NOT NULL,
    cover_url VARCHAR(500),
    FOREIGN KEY (band_id) REFERENCES band(id) ON DELETE CASCADE
);

-- Inserción de bandas
INSERT INTO band (name) VALUES 
    ('Metallica'),
    ('Iron Maiden'),
    ('Slayer'),
    ('Death'),
    ('Cannibal Corpse'),
    ('Deicide'),
    ('Dream Theater'),
    ('Meshuggah');

-- Inserción de álbumes para cada banda

-- Metallica
INSERT INTO album (band_id, title, release_year, cover_url) VALUES 
    (1, "Kill \'Em All", 1983, 'https://example.com/kill_em_all.jpg'),
    (1, 'Ride the Lightning', 1984, 'https://example.com/ride_the_lightning.jpg'),
    (1, 'Master of Puppets', 1986, 'https://example.com/master_of_puppets.jpg'),
    (1, '...And Justice for All', 1988, 'https://example.com/and_justice_for_all.jpg'),
    (1, 'Metallica (The Black Album)', 1991, 'https://example.com/black_album.jpg'),
    (1, 'Load', 1996, 'https://example.com/load.jpg'),
    (1, 'Reload', 1997, 'https://example.com/reload.jpg'),
    (1, 'Garage Inc.', 1998, 'https://example.com/garage_inc.jpg'),
    (1, 'St. Anger', 2003, 'https://example.com/st_anger.jpg'),
    (1, 'Death Magnetic', 2008, 'https://example.com/death_magnetic.jpg'),
    (1, 'Hardwired... to Self-Destruct', 2016, 'https://example.com/hardwired.jpg'),
    (1, '72 Seasons', 2023, 'https://example.com/72_seasons.jpg');

-- Iron Maiden
INSERT INTO album (band_id, title, release_year, cover_url) VALUES 
    (2, 'Iron Maiden', 1980, 'https://example.com/iron_maiden.jpg'),
    (2, 'Killers', 1981, 'https://example.com/killers.jpg'),
    (2, 'The Number of the Beast', 1982, 'https://example.com/number_of_the_beast.jpg'),
    (2, 'Piece of Mind', 1983, 'https://example.com/piece_of_mind.jpg'),
    (2, 'Powerslave', 1984, 'https://example.com/powerslave.jpg'),
    (2, 'Somewhere in Time', 1986, 'https://example.com/somewhere_in_time.jpg'),
    (2, 'Seventh Son of a Seventh Son', 1988, 'https://example.com/seventh_son.jpg'),
    (2, 'No Prayer for the Dying', 1990, 'https://example.com/no_prayer_for_the_dying.jpg'),
    (2, 'Fear of the Dark', 1992, 'https://example.com/fear_of_the_dark.jpg'),
    (2, 'The X Factor', 1995, 'https://example.com/the_x_factor.jpg'),
    (2, 'Virtual XI', 1998, 'https://example.com/virtual_xi.jpg'),
    (2, 'Brave New World', 2000, 'https://example.com/brave_new_world.jpg'),
    (2, 'Dance of Death', 2003, 'https://example.com/dance_of_death.jpg'),
    (2, 'A Matter of Life and Death', 2006, 'https://example.com/a_matter_of_life_and_death.jpg'),
    (2, 'The Final Frontier', 2010, 'https://example.com/the_final_frontier.jpg'),
    (2, 'The Book of Souls', 2015, 'https://example.com/the_book_of_souls.jpg'),
    (2, 'Senjutsu', 2021, 'https://example.com/senjutsu.jpg');

-- Slayer
INSERT INTO album (band_id, title, release_year, cover_url) VALUES 
    (3, 'Show No Mercy', 1983, 'https://example.com/show_no_mercy.jpg'),
    (3, 'Hell Awaits', 1985, 'https://example.com/hell_awaits.jpg'),
    (3, 'Reign in Blood', 1986, 'https://example.com/reign_in_blood.jpg'),
    (3, 'South of Heaven', 1988, 'https://example.com/south_of_heaven.jpg'),
    (3, 'Seasons in the Abyss', 1990, 'https://example.com/seasons_in_the_abyss.jpg'),
    (3, 'Divine Intervention', 1994, 'https://example.com/divine_intervention.jpg'),
    (3, 'Undisputed Attitude', 1996, 'https://example.com/undisputed_attitude.jpg'),
    (3, 'Diabolus in Musica', 1998, 'https://example.com/diabolus_in_musica.jpg'),
    (3, 'God Hates Us All', 2001, 'https://example.com/god_hates_us_all.jpg'),
    (3, 'Christ Illusion', 2006, 'https://example.com/christ_illusion.jpg'),
    (3, 'World Painted Blood', 2009, 'https://example.com/world_painted_blood.jpg'),
    (3, 'Repentless', 2015, 'https://example.com/repentless.jpg');

-- Death
INSERT INTO album (band_id, title, release_year, cover_url) VALUES 
    (4, 'Scream Bloody Gore', 1987, 'https://example.com/scream_bloody_gore.jpg'),
    (4, 'Leprosy', 1988, 'https://example.com/leprosy.jpg'),
    (4, 'Spiritual Healing', 1990, 'https://example.com/spiritual_healing.jpg'),
    (4, 'Human', 1991, 'https://example.com/human.jpg'),
    (4, 'Individual Thought Patterns', 1993, 'https://example.com/individual_thought_patterns.jpg'),
    (4, 'Symbolic', 1995, 'https://example.com/symbolic.jpg'),
    (4, 'The Sound of Perseverance', 1998, 'https://example.com/the_sound_of_perseverance.jpg');

-- Cannibal Corpse
INSERT INTO album (band_id, title, release_year, cover_url) VALUES 
    (5, 'Eaten Back to Life', 1990, 'https://example.com/eaten_back_to_life.jpg'),
    (5, 'Butchered at Birth', 1991, 'https://example.com/butchered_at_birth.jpg'),
    (5, 'Tomb of the Mutilated', 1992, 'https://example.com/tomb_of_the_mutilated.jpg'),
    (5, 'The Bleeding', 1994, 'https://example.com/the_bleeding.jpg'),
    (5, 'Vile', 1996, 'https://example.com/vile.jpg'),
    (5, 'Gallery of Suicide', 1998, 'https://example.com/gallery_of_suicide.jpg'),
    (5, 'Bloodthirst', 1999, 'https://example.com/bloodthirst.jpg'),
    (5, 'Gore Obsessed', 2002, 'https://example.com/gore_obsessed.jpg'),
    (5, 'The Wretched Spawn', 2004, 'https://example.com/the_wretched_spawn.jpg'),
    (5, 'Kill', 2006, 'https://example.com/kill.jpg'),
    (5, 'Evisceration Plague', 2009, 'https://example.com/evisceration_plague.jpg'),
    (5, 'Torture', 2012, 'https://example.com/torture.jpg'),
    (5, 'A Skeletal Domain', 2014, 'https://example.com/a_skeletal_domain.jpg'),
    (5, 'Red Before Black', 2017, 'https://example.com/red_before_black.jpg'),
    (5, 'Violence Unimagined', 2021, 'https://example.com/violence_unimagined.jpg');

-- Deicide
INSERT INTO album (band_id, title, release_year, cover_url) VALUES 
    (6, 'Deicide', 1990, 'https://example.com/deicide.jpg'),
    (6, 'Legion', 1992, 'https://example.com/legion.jpg'),
    (6, 'Once Upon the Cross', 1995, 'https://example.com/once_upon_the_cross.jpg'),
    (6, 'Serpents of the Light', 1997, 'https://example.com/serpents_of_the_light.jpg'),
    (6, 'Insineratehymn', 2000, 'https://example.com/insineratehymn.jpg'),
    (6, 'In Torment in Hell', 2001, 'https://example.com/in_torment_in_hell.jpg'),
    (6, 'Scars of the Crucifix', 2004, 'https://example.com/scars_of_the_crucifix.jpg'),
    (6, 'The Stench of Redemption', 2006, 'https://example.com/the_stench_of_redemption.jpg'),
    (6, 'Till Death Do Us Part', 2008, 'https://example.com/till_death_do_us_part.jpg'),
    (6, 'To Hell with God', 2011, 'https://example.com/to_hell_with_god.jpg'),
    (6, 'In the Minds of Evil', 2013, 'https://example.com/in_the_minds_of_evil.jpg'),
    (6, 'Overtures of Blasphemy', 2018, 'https://example.com/overtures_of_blasphemy.jpg');

-- Dream Theater
INSERT INTO album (band_id, title, release_year, cover_url) VALUES 
    (7, 'When Dream and Day Unite', 1989, 'https://example.com/when_dream_and_day_unite.jpg'),
    (7, 'Images and Words', 1992, 'https://example.com/images_and_words.jpg'),
    (7, 'Awake', 1994, 'https://example.com/awake.jpg'),
    (7, 'Falling into Infinity', 1997, 'https://example.com/falling_into_infinity.jpg'),
    (7, 'Metropolis Pt. 2: Scenes from a Memory', 1999, 'https://example.com/metropolis_pt2.jpg'),
    (7, 'Six Degrees of Inner Turbulence', 2002, 'https://example.com/six_degrees.jpg'),
    (7, 'Train of Thought', 2003, 'https://example.com/train_of_thought.jpg'),
    (7, 'Octavarium', 2005, 'https://example.com/octavarium.jpg'),
    (7, 'Systematic Chaos', 2007, 'https://example.com/systematic_chaos.jpg'),
    (7, 'Black Clouds & Silver Linings', 2009, 'https://example.com/black_clouds.jpg'),
    (7, 'A View from the Top of the World', 2021, 'https://example.com/a_view_from_the_top.jpg');

-- Meshuggah
INSERT INTO album (band_id, title, release_year, cover_url) VALUES 
    (8, 'Contradictions Collapse', 1991, 'https://example.com/contradictions_collapse.jpg'),
    (8, 'None', 1994, 'https://example.com/none.jpg'),
    (8, 'Destroy Erase Improve', 1995, 'https://example.com/destroy_erase_improve.jpg'),
    (8, 'Chaosphere', 1998, 'https://example.com/chaosphere.jpg'),
    (8, 'Nothing', 2002, 'https://example.com/nothing.jpg'),
    (8, 'Catch Thirtythree', 2005, 'https://example.com/catch_thirtythree.jpg'),
    (8, 'obZen', 2008, 'https://example.com/obzen.jpg'),
    (8, 'Koloss', 2012, 'https://example.com/koloss.jpg'),
    (8, 'The Violent Sleep of Reason', 2016, 'https://example.com/the_violent_sleep_of_reason.jpg'),
    (8, 'Immutable', 2022, 'https://example.com/immutable.jpg');

