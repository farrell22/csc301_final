/* create tables in the student database */

CREATE TABLE ranks
( rankID INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  beltColor CHAR(50) NOT NULL,
  rankPrinciple CHAR(50) NOT NULL,
  newTechniques INT UNSIGNED
);

CREATE TABLE forms
( formID INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  rankID INT UNSIGNED NOT NULL,
  movements INT UNSIGNED,
  koreanName CHAR(50)
);

CREATE TABLE koreanTerms
( koreanName CHAR(50) NOT NULL PRIMARY KEY,
  englishTranslation CHAR(50),
  description TEXT
);

/* populate tables with insert statements */

INSERT INTO ranks VALUES  
  (NULL, "White", "Courtesy", 14),  
  (NULL, "Orange", "Integrity", 16),  
  (NULL, "Orange-Yellow", "Perseverance", 12),
  (NULL, "Yellow", "Self-Control", 13),  
  (NULL, "Green", "Indomitable Spirit", 16),  
  (NULL, "Purple", "Confidence", 16),
  (NULL, "Blue", "Patriotism", 13),  
  (NULL, "Brown", "Maturity", 13),  
  (NULL, "Red", "Dedication", 10),
  (NULL, "Recommended Black", "Victory", 1);
  
/* white belt 1, orange belt 2, orange-yellow belt 3, yellow belt 4, green belt 5, 
purple belt 6, blue belt 7, brown belt 8, red belt 9, recommended black belt 10 */

INSERT INTO forms VALUES
  (NULL, 1, 18, "Chun-Ji"),
  (NULL, 2, 21, "Dan-Gun"),
  (NULL, 3, 24, "Do-San"),
  (NULL, 4, 27, "Won-Hyo"),
  (NULL, 5, 36, "Yul-Gok"),
  (NULL, 6, 32, "Joong-Gun"),
  (NULL, 7, 35, "Toi-Gye"),
  (NULL, 8, 29, "Hwa-Rang"),
  (NULL, 9, 29, "Choon-Moo"),
  (NULL, 10, 27, "Pil-Sung");
  
/* for all of these belts, rank and form are 1 to 1, but in later belts (black belt degrees)
there are multiple forms per belt. there are also forms that are not associated with a belt.
but for the purposes of this application the first ten ranks beginner to black belt seemed
like a good place to start/finish */ 

INSERT INTO koreanTerms VALUES
  ("Chun-Ji", "Heaven and Earth (the world)", "Chun-ji is the Korean word for 'world', built from blending the words for heaven (cheongug) and earth (jigu). This form is named so to signify the creation of the world or the beginning of human history, in parallel with the beginning of one's martial arts journey. The pattern of movements in Chun-Ji has two beginnings, one representing heaven and the other the earth."),
  ("Dan-Gun", "Dan-Gun (historical figure)", "The orange-belt form is named after the holy Dan-Gun, the legendary founder of Korea in 2,333 B.C."),
  ("Do-San", "Do-San (historical figure)", "Do-San is the pseudonym of the patriot Ahn Chang-Ho (1876-1938). The 24 movements represent his entire life which he devoted to furthering the education of Korea and its independent movement."),
  ("Won-Hyo", "Won-Hyo (historical figure)", "Won-Hyo was the noted monk who introduced Buddhism to the Silla Dynasty in the year of 686 A.D."),
  ("Yul-Gok", "Yul-Gok (historical figure)", "Yul-Gok is the pseudonym of the great philosopher and scholar Yi I (1536-1584 A.D.) nicknamed 'Confucius of Korea'. The directional floor movements made by the martial artist's feet while performing Yul-Gok draw the Korean character for 'scholar'."),
  ("Joong-Gun", "Ahn Joong-Gun (historical figure)", "The purple-belt form is named after the patriot Ahn Joong-Gun who assassinated Hirobumi Ito, the first Japanese governor-general of Korean, known as the man who played the leading part in the Korea-Japan merger. The 32 movements in this pattern represents Mr. Ahn's age when he was executed at Lui-Shung prison in 1910."),
  ("Toi-Gye", "Toi-Gye (historical figure)", "Toi-Gye is the pen name of the noted scholar Yi Hwang (16th century), an authority on neo-Confucianism."),
  ("Hwa-Rang", "Hwa-Rang (organization)", "The brown-belt form is named after the Hwa-Rang youth group of the Silla Dynasty in the early 7th century which became the driving force for the unification of the three kingdoms of Korea."),
  ("Choon-Moo", "Choon-Moo (historical figure)", "Choon-Moo was the name given to the admiral Yi Soon-Sin of the Lee dynasty. He was reputed to have invented the first armored battleship (Kobukson) in 1592, which is said to be the precursor of the present day submarine. The reason why this pattern ends with a left-hand attack is to symbolize his regrettable death, having no chance to show his unrestrained potentiality checked by the forced reservation of his loyalty to the king."),
  ("Pil-Sung", "Personal victory", "Pil-Sung is a phrase in Korean which means something close to personal victory; triumph over adversity or conquering one's own limitations. The movements in the form are of the pattern 3-9-27. Nine represents the highest human attainment represented by the highest single digit number. Three represents the three levels of attainment of the number nine (three levels of beginner, three levels of intermediate and three levels at advanced colored belts). Attainment of the First Degree Black Belt shows mastery of all basic taekwondo techniques. Achieving this rank places one on the path to become a true martial artist.");
  