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
    release_date DATE NOT NULL,
    cover_url VARCHAR(500),
    FOREIGN KEY (band_id) REFERENCES band(id) ON DELETE CASCADE
);

CREATE TABLE band_member (
    id INT AUTO_INCREMENT PRIMARY KEY,
    band_id INT NOT NULL,
    name VARCHAR(255) NOT NULL,
    birth_date DATE NOT NULL,
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
    ('Meshuggah'),
    ('Criminal'),
    ('Sepultura'),
    ('Pentagram Chile'),
    ('Deeds of Flesh'),
    ('Beheaded'),
    ('Symphony X'),
    ('Veil of Maya'),
    ('Animals as Leaders'),
    ('Vildhjarta'),
    ('Korn'),
    ('Slipknot'),
    ('Mudvayne'),
    ('Disturbed'),
    ('Octopus'),
    ('2X'),
    ('Immortal'),
    ('Darkthrone'),
    ('Amon Amarth'),
    ('Children of Bodom'),
    ('Car Bomb'),
    ('Lamb of God'),
    ('Gojira');

-- Inserción de álbumes para cada banda

-- Metallica
INSERT INTO album (band_id, title, release_date, cover_url) VALUES 
    (1, "Kill 'Em All", '1983-07-25', 'https://example.com/kill_em_all.jpg'),
    (1, 'Ride the Lightning', '1984-07-27', 'https://example.com/ride_the_lightning.jpg'),
    (1, 'Master of Puppets', '1986-03-03', 'https://example.com/master_of_puppets.jpg'),
    (1, '...And Justice for All', '1988-08-25', 'https://example.com/and_justice_for_all.jpg'),
    (1, 'Metallica (The Black Album)', '1991-08-12', 'https://example.com/black_album.jpg'),
    (1, 'Load', '1996-06-04', 'https://example.com/load.jpg'),
    (1, 'Reload', '1997-11-18', 'https://example.com/reload.jpg'),
    (1, 'Garage Inc.', '1998-11-24', 'https://example.com/garage_inc.jpg'),
    (1, 'St. Anger', '2003-06-05', 'https://example.com/st_anger.jpg'),
    (1, 'Death Magnetic', '2008-09-12', 'https://example.com/death_magnetic.jpg'),
    (1, 'Hardwired... to Self-Destruct', '2016-11-18', 'https://example.com/hardwired.jpg'),
    (1, '72 Seasons', '2023-04-14', 'https://example.com/72_seasons.jpg');

-- Iron Maiden
INSERT INTO album (band_id, title, release_date, cover_url) VALUES 
    (2, 'Iron Maiden', '1980-04-14', 'https://example.com/iron_maiden.jpg'),
    (2, 'Killers', '1981-02-02', 'https://example.com/killers.jpg'),
    (2, 'The Number of the Beast', '1982-03-22', 'https://example.com/number_of_the_beast.jpg'),
    (2, 'Piece of Mind', '1983-05-16', 'https://example.com/piece_of_mind.jpg'),
    (2, 'Powerslave', '1984-09-03', 'https://example.com/powerslave.jpg'),
    (2, 'Somewhere in Time', '1986-09-29', 'https://example.com/somewhere_in_time.jpg'),
    (2, 'Seventh Son of a Seventh Son', '1988-04-11', 'https://example.com/seventh_son.jpg'),
    (2, 'No Prayer for the Dying', '1990-10-01', 'https://example.com/no_prayer_for_the_dying.jpg'),
    (2, 'Fear of the Dark', '1992-05-11', 'https://example.com/fear_of_the_dark.jpg'),
    (2, 'The X Factor', '1995-10-02', 'https://example.com/the_x_factor.jpg'),
    (2, 'Virtual XI', '1998-03-23', 'https://example.com/virtual_xi.jpg'),
    (2, 'Brave New World', '2000-05-29', 'https://example.com/brave_new_world.jpg'),
    (2, 'Dance of Death', '2003-09-08', 'https://example.com/dance_of_death.jpg'),
    (2, 'A Matter of Life and Death', '2006-08-28', 'https://example.com/a_matter_of_life_and_death.jpg'),
    (2, 'The Final Frontier', '2010-08-13', 'https://example.com/the_final_frontier.jpg'),
    (2, 'The Book of Souls', '2015-09-04', 'https://example.com/the_book_of_souls.jpg'),
    (2, 'Senjutsu', '2021-09-03', 'https://example.com/senjutsu.jpg');

-- Slayer
INSERT INTO album (band_id, title, release_date, cover_url) VALUES 
    (3, 'Show No Mercy', '1983-12-03', 'https://example.com/show_no_mercy.jpg'),
    (3, 'Hell Awaits', '1985-09-16', 'https://example.com/hell_awaits.jpg'),
    (3, 'Reign in Blood', '1986-10-07', 'https://example.com/reign_in_blood.jpg'),
    (3, 'South of Heaven', '1988-07-05', 'https://example.com/south_of_heaven.jpg'),
    (3, 'Seasons in the Abyss', '1990-10-09', 'https://example.com/seasons_in_the_abyss.jpg'),
    (3, 'Divine Intervention', '1994-09-27', 'https://example.com/divine_intervention.jpg'),
    (3, 'Undisputed Attitude', '1996-05-28', 'https://example.com/undisputed_attitude.jpg'),
    (3, 'Diabolus in Musica', '1998-06-09', 'https://example.com/diabolus_in_musica.jpg'),
    (3, 'God Hates Us All', '2001-09-11', 'https://example.com/god_hates_us_all.jpg'),
    (3, 'Christ Illusion', '2006-08-08', 'https://example.com/christ_illusion.jpg'),
    (3, 'World Painted Blood', '2009-11-03', 'https://example.com/world_painted_blood.jpg'),
    (3, 'Repentless', '2015-09-11', 'https://example.com/repentless.jpg');

-- Death
INSERT INTO album (band_id, title, release_date, cover_url) VALUES 
    (4, 'Scream Bloody Gore', '1987-05-25', 'https://example.com/scream_bloody_gore.jpg'),
    (4, 'Leprosy', '1988-08-12', 'https://example.com/leprosy.jpg'),
    (4, 'Spiritual Healing', '1990-02-16', 'https://example.com/spiritual_healing.jpg'),
    (4, 'Human', '1991-10-22', 'https://example.com/human.jpg'),
    (4, 'Individual Thought Patterns', '1993-06-22', 'https://example.com/individual_thought_patterns.jpg'),
    (4, 'Symbolic', '1995-03-21', 'https://example.com/symbolic.jpg'),
    (4, 'The Sound of Perseverance', '1998-09-15', 'https://example.com/the_sound_of_perseverance.jpg');

-- Cannibal Corpse
INSERT INTO album (band_id, title, release_date, cover_url) VALUES 
    (5, 'Eaten Back to Life', '1990-08-17', 'https://example.com/eaten_back_to_life.jpg'),
    (5, 'Butchered at Birth', '1991-07-01', 'https://example.com/butchered_at_birth.jpg'),
    (5, 'Tomb of the Mutilated', '1992-09-22', 'https://example.com/tomb_of_the_mutilated.jpg'),
    (5, 'The Bleeding', '1994-04-12', 'https://example.com/the_bleeding.jpg'),
    (5, 'Vile', '1996-05-21', 'https://example.com/vile.jpg'),
    (5, 'Gallery of Suicide', '1998-04-06', 'https://example.com/gallery_of_suicide.jpg'),
    (5, 'Bloodthirst', '1999-10-19', 'https://example.com/bloodthirst.jpg'),
    (5, 'Gore Obsessed', '2002-02-26', 'https://example.com/gore_obsessed.jpg'),
    (5, 'The Wretched Spawn', '2004-02-24', 'https://example.com/the_wretched_spawn.jpg'),
    (5, 'Kill', '2006-03-21', 'https://example.com/kill.jpg'),
    (5, 'Evisceration Plague', '2009-02-03', 'https://example.com/evisceration_plague.jpg'),
    (5, 'Torture', '2012-03-13', 'https://example.com/torture.jpg'),
    (5, 'A Skeletal Domain', '2014-09-16', 'https://example.com/a_skeletal_domain.jpg'),
    (5, 'Red Before Black', '2017-11-03', 'https://example.com/red_before_black.jpg'),
    (5, 'Violence Unimagined', '2021-04-16', 'https://example.com/violence_unimagined.jpg');

-- Deicide
INSERT INTO album (band_id, title, release_date, cover_url) VALUES 
    (6, 'Deicide', '1990-06-25', 'https://example.com/deicide.jpg'),
    (6, 'Legion', '1992-06-09', 'https://example.com/legion.jpg'),
    (6, 'Once Upon the Cross', '1995-04-18', 'https://example.com/once_upon_the_cross.jpg'),
    (6, 'Serpents of the Light', '1997-10-21', 'https://example.com/serpents_of_the_light.jpg'),
    (6, 'Insineratehymn', '2000-06-27', 'https://example.com/insineratehymn.jpg'),
    (6, 'In Torment in Hell', '2001-09-11', 'https://example.com/in_torment_in_hell.jpg'),
    (6, 'Scars of the Crucifix', '2004-02-03', 'https://example.com/scars_of_the_crucifix.jpg'),
    (6, 'The Stench of Redemption', '2006-08-22', 'https://example.com/the_stench_of_redemption.jpg'),
    (6, 'Till Death Do Us Part', '2008-04-28', 'https://example.com/till_death_do_us_part.jpg'),
    (6, 'To Hell with God', '2011-02-15', 'https://example.com/to_hell_with_god.jpg'),
    (6, 'In the Minds of Evil', '2013-11-25', 'https://example.com/in_the_minds_of_evil.jpg'),
    (6, 'Overtures of Blasphemy', '2018-09-14', 'https://example.com/overtures_of_blasphemy.jpg');

-- Dream Theater
INSERT INTO album (band_id, title, release_date, cover_url) VALUES 
    (7, 'When Dream and Day Unite', '1989-03-06', 'https://example.com/when_dream_and_day_unite.jpg'),
    (7, 'Images and Words', '1992-07-07', 'https://example.com/images_and_words.jpg'),
    (7, 'Awake', '1994-10-04', 'https://example.com/awake.jpg'),
    (7, 'Falling into Infinity', '1997-09-23', 'https://example.com/falling_into_infinity.jpg'),
    (7, 'Metropolis Pt. 2: Scenes from a Memory', '1999-10-26', 'https://example.com/metropolis_pt2.jpg'),
    (7, 'Six Degrees of Inner Turbulence', '2002-01-29', 'https://example.com/six_degrees.jpg'),
    (7, 'Train of Thought', '2003-11-11', 'https://example.com/train_of_thought.jpg'),
    (7, 'Octavarium', '2005-06-07', 'https://example.com/octavarium.jpg'),
    (7, 'Systematic Chaos', '2007-06-04', 'https://example.com/systematic_chaos.jpg'),
    (7, 'Black Clouds & Silver Linings', '2009-06-23', 'https://example.com/black_clouds.jpg'),
    (7, 'A View from the Top of the World', '2021-10-22', 'https://example.com/a_view_from_the_top.jpg');

-- Meshuggah
INSERT INTO album (band_id, title, release_date, cover_url) VALUES 
    (8, 'Contradictions Collapse', '1991-01-01', 'https://example.com/contradictions_collapse.jpg'),
    (8, 'None', '1994-11-01', 'https://example.com/none.jpg'),
    (8, 'Destroy Erase Improve', '1995-07-25', 'https://example.com/destroy_erase_improve.jpg'),
    (8, 'Chaosphere', '1998-11-10', 'https://example.com/chaosphere.jpg'),
    (8, 'Nothing', '2002-08-06', 'https://example.com/nothing.jpg'),
    (8, 'Catch Thirtythree', '2005-05-16', 'https://example.com/catch_thirtythree.jpg'),
    (8, 'obZen', '2008-03-07', 'https://example.com/obzen.jpg'),
    (8, 'Koloss', '2012-03-23', 'https://example.com/koloss.jpg'),
    (8, 'The Violent Sleep of Reason', '2016-10-07', 'https://example.com/the_violent_sleep_of_reason.jpg'),
    (8, 'Immutable', '2022-04-01', 'https://example.com/immutable.jpg');

-- Criminal
INSERT INTO album (band_id, title, release_date, cover_url) VALUES 
    (9, 'Victimized', '1994-06-01', 'https://example.com/victimized.jpg'),
    (9, 'Dead Soul', '1997-09-01', 'https://example.com/dead_soul.jpg'),
    (9, 'Cancer', '2000-03-01', 'https://example.com/cancer.jpg'),
    (9, 'No Gods No Masters', '2004-05-01', 'https://example.com/no_gods_no_masters.jpg'),
    (9, 'Sicario', '2005-09-05', 'https://example.com/sicario.jpg'),
    (9, 'White Hell', '2009-02-01', 'https://example.com/white_hell.jpg'),
    (9, 'Akelarre', '2011-08-19', 'https://example.com/akelarre.jpg'),
    (9, 'Fear Itself', '2016-03-11', 'https://example.com/fear_itself.jpg'),
    (9, 'Sacrificio', '2021-09-17', 'https://example.com/sacrificio.jpg');

-- Sepultura
INSERT INTO album (band_id, title, release_date, cover_url) VALUES 
    (10, 'Morbid Visions', '1986-11-10', 'https://example.com/morbid_visions.jpg'),
    (10, 'Schizophrenia', '1987-10-30', 'https://example.com/schizophrenia.jpg'),
    (10, 'Beneath the Remains', '1989-04-07', 'https://example.com/beneath_the_remains.jpg'),
    (10, 'Arise', '1991-03-25', 'https://example.com/arise.jpg'),
    (10, 'Chaos A.D.', '1993-10-19', 'https://example.com/chaos_ad.jpg'),
    (10, 'Roots', '1996-02-20', 'https://example.com/roots.jpg'),
    (10, 'Against', '1998-10-06', 'https://example.com/against.jpg'),
    (10, 'Nation', '2001-03-20', 'https://example.com/nation.jpg'),
    (10, 'Roorback', '2003-05-27', 'https://example.com/roorback.jpg'),
    (10, 'Dante XXI', '2006-03-14', 'https://example.com/dante_xxi.jpg'),
    (10, 'A-Lex', '2009-01-23', 'https://example.com/a_lex.jpg'),
    (10, 'Kairos', '2011-06-24', 'https://example.com/kairos.jpg'),
    (10, 'The Mediator Between Head and Hands Must Be the Heart', '2013-10-25', 'https://example.com/mediator.jpg'),
    (10, 'Machine Messiah', '2017-01-13', 'https://example.com/machine_messiah.jpg'),
    (10, 'Quadra', '2020-02-07', 'https://example.com/quadra.jpg');

-- Deeds of Flesh
INSERT INTO album (band_id, title, release_date, cover_url) VALUES 
    (12, 'Trading Pieces', '1996-05-05', 'https://example.com/trading_pieces.jpg'),
    (12, 'Inbreeding the Anthropophagi', '1998-07-13', 'https://example.com/inbreeding_the_anthropophagi.jpg'),
    (12, 'Path of the Weakening', '1999-11-17', 'https://example.com/path_of_the_weakening.jpg'),
    (12, 'Mark of the Legion', '2001-08-14', 'https://example.com/mark_of_the_legion.jpg'),
    (12, 'Reduced to Ashes', '2003-06-24', 'https://example.com/reduced_to_ashes.jpg'),
    (12, 'Crown of Souls', '2005-07-17', 'https://example.com/crown_of_souls.jpg'),
    (12, "Of What\'s to Come", '2008-11-18', 'https://example.com/of_whats_to_come.jpg'),
    (12, 'Portals to Canaan', '2013-06-25', 'https://example.com/portals_to_canaan.jpg'),
    (12, 'Nucleus', '2020-12-11', 'https://example.com/nucleus.jpg');

-- Beheaded
INSERT INTO album (band_id, title, release_date, cover_url) VALUES 
    (13, 'Perpetual Mockery', '1998-11-01', 'https://example.com/perpetual_mockery.jpg'),
    (13, 'Resurgence of Oblivion', '2001-09-12', 'https://example.com/resurgence_of_oblivion.jpg'),
    (13, 'Recounts of Disembodiment', '2002-02-12', 'https://example.com/recounts_of_disembodiment.jpg'),
    (13, 'Ominous Bloodline', '2005-04-10', 'https://example.com/ominous_bloodline.jpg'),
    (13, 'Never to Dawn', '2012-11-06', 'https://example.com/never_to_dawn.jpg'),
    (13, 'Beast Incarnate', '2017-01-27', 'https://example.com/beast_incarnate.jpg'),
    (13, 'Only Death Can Save You', '2019-06-14', 'https://example.com/only_death_can_save_you.jpg');

-- Symphony X
INSERT INTO album (band_id, title, release_date, cover_url) VALUES 
    (14, 'Symphony X', '1994-12-01', 'https://example.com/symphony_x.jpg'),
    (14, 'The Damnation Game', '1995-08-01', 'https://example.com/the_damnation_game.jpg'),
    (14, 'The Divine Wings of Tragedy', '1997-03-01', 'https://example.com/the_divine_wings_of_tragedy.jpg'),
    (14, 'Twilight in Olympus', '1998-02-01', 'https://example.com/twilight_in_olympus.jpg'),
    (14, 'V: The New Mythology Suite', '2000-10-10', 'https://example.com/v_the_new_mythology_suite.jpg'),
    (14, 'The Odyssey', '2002-11-05', 'https://example.com/the_odyssey.jpg'),
    (14, 'Paradise Lost', '2007-06-26', 'https://example.com/paradise_lost.jpg'),
    (14, 'Iconoclast', '2011-06-17', 'https://example.com/iconoclast.jpg'),
    (14, 'Underworld', '2015-07-24', 'https://example.com/underworld.jpg');

-- Veil of Maya
INSERT INTO album (band_id, title, release_date, cover_url) VALUES 
    (15, 'All Things Set Aside', '2006-11-07', 'https://example.com/all_things_set_aside.jpg'),
    (15, "The Common Man\'s Collapse", '2008-04-01', 'https://example.com/the_common_mans_collapse.jpg'),
    (15, '[id]', '2010-04-06', 'https://example.com/id.jpg'),
    (15, 'Eclipse', '2012-02-28', 'https://example.com/eclipse.jpg'),
    (15, 'Matriarch', '2015-05-12', 'https://example.com/matriarch.jpg'),
    (15, 'False Idol', '2017-10-20', 'https://example.com/false_idol.jpg');

-- Animals as Leaders
INSERT INTO album (band_id, title, release_date, cover_url) VALUES 
    (16, 'Animals as Leaders', '2009-04-28', 'https://example.com/animals_as_leaders.jpg'),
    (16, 'Weightless', '2011-11-08', 'https://example.com/weightless.jpg'),
    (16, 'The Joy of Motion', '2014-03-25', 'https://example.com/the_joy_of_motion.jpg'),
    (16, 'The Madness of Many', '2016-11-11', 'https://example.com/the_madness_of_many.jpg'),
    (16, 'Parrhesia', '2022-03-25', 'https://example.com/parrhesia.jpg');

-- Vildhjarta
INSERT INTO album (band_id, title, release_date, cover_url) VALUES 
    (17, 'Omnislash', '2009-12-01', 'https://example.com/omnislash.jpg'),
    (17, 'Måsstaden', '2011-11-28', 'https://example.com/masstaden.jpg'),
    (17, 'Thousands of Evils', '2013-09-30', 'https://example.com/thousands_of_evils.jpg'),
    (17, 'Måsstaden Under Vatten', '2021-10-15', 'https://example.com/masstaden_under_vatten.jpg');

-- Korn
INSERT INTO album (band_id, title, release_date, cover_url) VALUES 
    (18, 'Korn', '1994-10-11', 'https://example.com/korn.jpg'),
    (18, 'Life Is Peachy', '1996-10-15', 'https://example.com/life_is_peachy.jpg'),
    (18, 'Follow the Leader', '1998-08-18', 'https://example.com/follow_the_leader.jpg'),
    (18, 'Issues', '1999-11-16', 'https://example.com/issues.jpg'),
    (18, 'Untouchables', '2002-06-11', 'https://example.com/untouchables.jpg'),
    (18, 'Take a Look in the Mirror', '2003-11-21', 'https://example.com/take_a_look_in_the_mirror.jpg'),
    (18, 'See You on the Other Side', '2005-12-06', 'https://example.com/see_you_on_the_other_side.jpg'),
    (18, 'Untitled', '2007-07-31', 'https://example.com/untitled.jpg'),
    (18, 'Korn III: Remember Who You Are', '2010-07-13', 'https://example.com/korn_iii.jpg'),
    (18, 'The Path of Totality', '2011-12-06', 'https://example.com/the_path_of_totality.jpg'),
    (18, 'The Paradigm Shift', '2013-10-08', 'https://example.com/the_paradigm_shift.jpg'),
    (18, 'The Serenity of Suffering', '2016-10-21', 'https://example.com/the_serenity_of_suffering.jpg'),
    (18, 'The Nothing', '2019-09-13', 'https://example.com/the_nothing.jpg'),
    (18, 'Requiem', '2022-02-04', 'https://example.com/requiem.jpg');

-- Slipknot
INSERT INTO album (band_id, title, release_date, cover_url) VALUES 
    (19, 'Mate. Feed. Kill. Repeat.', '1996-10-31', 'https://example.com/mate_feed_kill_repeat.jpg'),
    (19, 'Slipknot', '1999-06-29', 'https://example.com/slipknot.jpg'),
    (19, 'Iowa', '2001-08-28', 'https://example.com/iowa.jpg'),
    (19, 'Vol. 3: (The Subliminal Verses)', '2004-05-25', 'https://example.com/vol_3.jpg'),
    (19, 'All Hope Is Gone', '2008-08-20', 'https://example.com/all_hope_is_gone.jpg'),
    (19, '.5: The Gray Chapter', '2014-10-17', 'https://example.com/gray_chapter.jpg'),
    (19, 'We Are Not Your Kind', '2019-08-09', 'https://example.com/we_are_not_your_kind.jpg'),
    (19, 'The End, So Far', '2022-09-30', 'https://example.com/the_end_so_far.jpg');

-- Disturbed
INSERT INTO album (band_id, title, release_date, cover_url) VALUES 
    (21, 'The Sickness', '2000-03-07', 'https://example.com/the_sickness.jpg'),
    (21, 'Believe', '2002-09-17', 'https://example.com/believe.jpg'),
    (21, 'Ten Thousand Fists', '2005-09-20', 'https://example.com/ten_thousand_fists.jpg'),
    (21, 'Indestructible', '2008-06-03', 'https://example.com/indestructible.jpg'),
    (21, 'Asylum', '2010-08-31', 'https://example.com/asylum.jpg'),
    (21, 'Immortalized', '2015-08-21', 'https://example.com/immortalized.jpg'),
    (21, 'Evolution', '2018-10-19', 'https://example.com/evolution.jpg'),
    (21, 'Divisive', '2022-11-18', 'https://example.com/divisive.jpg');

-- Octopus
INSERT INTO album (band_id, title, release_date, cover_url) VALUES 
    (22, 'Bonsai', '2006-04-21', 'https://example.com/bonsai.jpg'),
    (22, 'Coda', '2008-04-03', 'https://example.com/coda.jpg'),
    (22, 'Into the Void of Fear', '2013-01-17', 'https://example.com/into_the_void_of_fear.jpg');

-- 2X
-- 2X (Metal Chileno) - Solo Álbumes
INSERT INTO album (band_id, title, release_date, cover_url) VALUES 
    (23, 'Pateando Cráneos', '2000-01-01', 'https://example.com/pateando_craneos.jpg'),
    (23, 'Lucha Eterna', '2003-01-01', 'https://example.com/lucha_eterna.jpg'),
    (23, 'El Camino del Guerrero', '2014-01-01', 'https://example.com/el_camino_del_guerrero.jpg'),
    (23, 'Resiste!!', '2018-01-01', 'https://example.com/resiste.jpg');

-- Immortal
INSERT INTO album (band_id, title, release_date, cover_url) VALUES 
    (24, 'Diabolical Fullmoon Mysticism', '1992-07-01', 'https://example.com/diabolical_fullmoon_mysticism.jpg'),
    (24, 'Pure Holocaust', '1993-11-01', 'https://example.com/pure_holocaust.jpg'),
    (24, 'Battles in the North', '1995-05-01', 'https://example.com/battles_in_the_north.jpg'),
    (24, 'Blizzard Beasts', '1997-03-20', 'https://example.com/blizzard_beasts.jpg'),
    (24, 'At the Heart of Winter', '1999-02-28', 'https://example.com/at_the_heart_of_winter.jpg'),
    (24, 'Damned in Black', '2000-04-17', 'https://example.com/damned_in_black.jpg'),
    (24, 'Sons of Northern Darkness', '2002-02-04', 'https://example.com/sons_of_northern_darkness.jpg'),
    (24, 'All Shall Fall', '2009-09-25', 'https://example.com/all_shall_fall.jpg'),
    (24, 'Northern Chaos Gods', '2018-07-06', 'https://example.com/northern_chaos_gods.jpg');

-- Darkthrone
INSERT INTO album (band_id, title, release_date, cover_url) VALUES 
    (25, 'Soulside Journey', '1991-01-13', 'https://example.com/soulside_journey.jpg'),
    (25, 'A Blaze in the Northern Sky', '1992-02-26', 'https://example.com/a_blaze_in_the_northern_sky.jpg'),
    (25, 'Under a Funeral Moon', '1993-06-24', 'https://example.com/under_a_funeral_moon.jpg'),
    (25, 'Transilvanian Hunger', '1994-02-17', 'https://example.com/transilvanian_hunger.jpg'),
    (25, 'Panzerfaust', '1995-06-05', 'https://example.com/panzerfaust.jpg'),
    (25, 'Total Death', '1996-01-15', 'https://example.com/total_death.jpg'),
    (25, 'Ravishing Grimness', '1999-09-29', 'https://example.com/ravishing_grimness.jpg'),
    (25, 'Hate Them', '2003-03-10', 'https://example.com/hate_them.jpg'),
    (25, 'Sardonic Wrath', '2004-09-06', 'https://example.com/sardonic_wrath.jpg'),
    (25, 'The Cult Is Alive', '2006-02-27', 'https://example.com/the_cult_is_alive.jpg'),
    (25, 'F.O.A.D.', '2007-09-24', 'https://example.com/foad.jpg'),
    (25, 'Circle the Wagons', '2010-04-05', 'https://example.com/circle_the_wagons.jpg'),
    (25, 'Arctic Thunder', '2016-10-14', 'https://example.com/arctic_thunder.jpg'),
    (25, 'Old Star', '2019-05-31', 'https://example.com/old_star.jpg'),
    (25, 'Eternal Hails......', '2021-06-25', 'https://example.com/eternal_hails.jpg');

-- Amon Amarth
INSERT INTO album (band_id, title, release_date, cover_url) VALUES 
    (26, 'Once Sent from the Golden Hall', '1998-02-10', 'https://example.com/once_sent_from_the_golden_hall.jpg'),
    (26, 'The Avenger', '1999-09-02', 'https://example.com/the_avenger.jpg'),
    (26, 'The Crusher', '2001-05-08', 'https://example.com/the_crusher.jpg'),
    (26, 'Versus the World', '2002-11-18', 'https://example.com/versus_the_world.jpg'),
    (26, 'Fate of Norns', '2004-09-06', 'https://example.com/fate_of_norns.jpg'),
    (26, 'With Oden on Our Side', '2006-09-22', 'https://example.com/with_oden_on_our_side.jpg'),
    (26, 'Twilight of the Thunder God', '2008-09-17', 'https://example.com/twilight_of_the_thunder_god.jpg'),
    (26, 'Surtur Rising', '2011-03-25', 'https://example.com/surtur_rising.jpg'),
    (26, 'Deceiver of the Gods', '2013-06-25', 'https://example.com/deceiver_of_the_gods.jpg'),
    (26, 'Jomsviking', '2016-03-25', 'https://example.com/jomsviking.jpg'),
    (26, 'Berserker', '2019-05-03', 'https://example.com/berserker.jpg');

-- Children of Bodom
INSERT INTO album (band_id, title, release_date, cover_url) VALUES 
    (27, 'Something Wild', '1997-11-16', 'https://example.com/something_wild.jpg'),
    (27, 'Hatebreeder', '1999-04-26', 'https://example.com/hatebreeder.jpg'),
    (27, 'Follow the Reaper', '2000-10-30', 'https://example.com/follow_the_reaper.jpg'),
    (27, 'Hate Crew Deathroll', '2003-01-07', 'https://example.com/hate_crew_deathroll.jpg'),
    (27, 'Are You Dead Yet?', '2005-09-14', 'https://example.com/are_you_dead_yet.jpg'),
    (27, 'Blooddrunk', '2008-04-09', 'https://example.com/blooddrunk.jpg'),
    (27, 'Relentless Reckless Forever', '2011-03-08', 'https://example.com/relentless_reckless_forever.jpg'),
    (27, 'Halo of Blood', '2013-06-07', 'https://example.com/halo_of_blood.jpg'),
    (27, 'I Worship Chaos', '2015-10-02', 'https://example.com/i_worship_chaos.jpg'),
    (27, 'Hexed', '2019-03-08', 'https://example.com/hexed.jpg');

-- Car Bomb
INSERT INTO album (band_id, title, release_date, cover_url) VALUES 
    (28, 'Centralia', '2007-02-06', 'https://example.com/centralia.jpg'),
    (28, 'w^w^^w^w', '2012-09-25', 'https://example.com/w_w_w_w.jpg'),
    (28, 'Meta', '2016-10-28', 'https://example.com/meta.jpg'),
    (28, 'Mordial', '2019-09-27', 'https://example.com/mordial.jpg');

-- Lamb of God
INSERT INTO album (band_id, title, release_date, cover_url) VALUES 
    (29, 'New American Gospel', '2000-09-26', 'https://example.com/new_american_gospel.jpg'),
    (29, 'As the Palaces Burn', '2003-05-06', 'https://example.com/as_the_palaces_burn.jpg'),
    (29, 'Ashes of the Wake', '2004-08-31', 'https://example.com/ashes_of_the_wake.jpg'),
    (29, 'Sacrament', '2006-08-22', 'https://example.com/sacrament.jpg'),
    (29, 'Wrath', '2009-02-24', 'https://example.com/wrath.jpg'),
    (29, 'Resolution', '2012-01-24', 'https://example.com/resolution.jpg'),
    (29, 'VII: Sturm und Drang', '2015-07-24', 'https://example.com/vii_sturm_und_drang.jpg'),
    (29, 'Lamb of God', '2020-06-19', 'https://example.com/lamb_of_god.jpg'),
    (29, 'Omens', '2022-10-07', 'https://example.com/omens.jpg');

-- Gojira
INSERT INTO album (band_id, title, release_date, cover_url) VALUES 
    (30, 'Terra Incognita', '2001-03-19', 'https://example.com/terra_incognita.jpg'),
    (30, 'The Link', '2003-04-18', 'https://example.com/the_link.jpg'),
    (30, 'From Mars to Sirius', '2005-09-27', 'https://example.com/from_mars_to_sirius.jpg'),
    (30, 'The Way of All Flesh', '2008-10-13', 'https://example.com/the_way_of_all_flesh.jpg'),
    (30, "L\'Enfant Sauvage", '2012-06-26', 'https://example.com/lenfant_sauvage.jpg'),
    (30, 'Magma', '2016-06-17', 'https://example.com/magma.jpg'),
    (30, 'Fortitude', '2021-04-30', 'https://example.com/fortitude.jpg');

-- Metallica
INSERT INTO band_member (band_id, name, birth_date) VALUES
    (1, 'James Hetfield', '1963-08-03');

-- Iron Maiden
INSERT INTO band_member (band_id, name, birth_date) VALUES
    (2, 'Bruce Dickinson', '1958-08-07');

-- Slayer
INSERT INTO band_member (band_id, name, birth_date) VALUES
    (3, 'Tom Araya', '1961-06-06');

-- Death
INSERT INTO band_member (band_id, name, birth_date) VALUES
    (4, 'Chuck Schuldiner', '1967-05-13');

-- Cannibal Corpse
INSERT INTO band_member (band_id, name, birth_date) VALUES
    (5, 'George Fisher', '1969-07-08');

-- Deicide
INSERT INTO band_member (band_id, name, birth_date) VALUES
    (6, 'Glen Benton', '1967-06-18');

-- Dream Theater
INSERT INTO band_member (band_id, name, birth_date) VALUES
    (7, 'James LaBrie', '1963-05-05');

-- Meshuggah
INSERT INTO band_member (band_id, name, birth_date) VALUES
    (8, 'Jens Kidman', '1966-06-08');

-- Criminal
INSERT INTO band_member (band_id, name, birth_date) VALUES
    (9, 'Anton Reisenegger', '1969-01-21');

-- Sepultura
INSERT INTO band_member (band_id, name, birth_date) VALUES
    (10, 'Derrick Green', '1971-01-20');

-- Pentagram Chile
INSERT INTO band_member (band_id, name, birth_date) VALUES
    (11, 'Anton Reisenegger', '1969-01-21');

-- Deeds of Flesh
INSERT INTO band_member (band_id, name, birth_date) VALUES
    (12, 'Erik Lindmark', '1972-08-15');

-- Beheaded
INSERT INTO band_member (band_id, name, birth_date) VALUES
    (13, 'Frank Calleja', '1980-05-12');

-- Symphony X
INSERT INTO band_member (band_id, name, birth_date) VALUES
    (14, 'Russell Allen', '1971-07-19');

-- Veil of Maya
INSERT INTO band_member (band_id, name, birth_date) VALUES
    (15, 'Lukas Magyar', '1988-02-18');

-- Animals as Leaders
INSERT INTO band_member (band_id, name, birth_date) VALUES
    (16, 'Tosin Abasi', '1983-01-07');

-- Vildhjarta
INSERT INTO band_member (band_id, name, birth_date) VALUES
    (17, 'Daniel Ädel', '1985-09-03');

-- Korn
INSERT INTO band_member (band_id, name, birth_date) VALUES
    (18, 'Jonathan Davis', '1971-01-18');

-- Slipknot
INSERT INTO band_member (band_id, name, birth_date) VALUES
    (19, 'Corey Taylor', '1973-12-08');

-- Mudvayne
INSERT INTO band_member (band_id, name, birth_date) VALUES
    (20, 'Chad Gray', '1971-10-16');

-- Disturbed
INSERT INTO band_member (band_id, name, birth_date) VALUES
    (21, 'David Draiman', '1973-03-13');

-- Octopus
INSERT INTO band_member (band_id, name, birth_date) VALUES
    (22, 'Felipe Urra', '1984-11-21');

-- 2X
INSERT INTO band_member (band_id, name, birth_date) VALUES
    (23, 'Mauricio Pezoa', '1977-06-15');

-- Immortal
INSERT INTO band_member (band_id, name, birth_date) VALUES
    (24, 'Abbath Doom Occulta', '1973-06-27');

-- Darkthrone
INSERT INTO band_member (band_id, name, birth_date) VALUES
    (25, 'Nocturno Culto', '1972-03-04');

-- Amon Amarth
INSERT INTO band_member (band_id, name, birth_date) VALUES
    (26, 'Johan Hegg', '1973-04-29');

-- Children of Bodom
INSERT INTO band_member (band_id, name, birth_date) VALUES
    (27, 'Alexi Laiho', '1979-04-08');

-- Car Bomb
INSERT INTO band_member (band_id, name, birth_date) VALUES
    (28, 'Michael Dafferner', '1983-11-10');

-- Lamb of God
INSERT INTO band_member (band_id, name, birth_date) VALUES
    (29, 'Randy Blythe', '1971-02-21');

-- Gojira
INSERT INTO band_member (band_id, name, birth_date) VALUES
    (30, 'Joe Duplantier', '1976-10-19');
