--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.1
-- Dumped by pg_dump version 9.6.1

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = ON;
SET check_function_bodies = FALSE;
SET client_min_messages = WARNING;
SET row_security = OFF;

SET search_path = public, pg_catalog;

--
-- Data for Name: albums; Type: TABLE DATA; Schema: public; Owner: music
--

INSERT INTO albums VALUES (1, 'Train of Thought', 1, 1, '84f7a9f5-d798-448c-92f9-a509459a5c2b');
INSERT INTO albums VALUES (2, 'One Day It''ll All Make Sense', 1, 1, '8b9cec60-1eea-4e08-a56e-c2865a2344ea');
INSERT INTO albums VALUES (3, 'Quality', 1, 1, '07041b80-aa46-4f9f-bd7e-d4400d627180');
INSERT INTO albums VALUES (4, 'Internal Affairs', NULL, NULL, NULL);
INSERT INTO albums VALUES (5, 'Enter the Wu-Tang: 36 Chambers', 1, 1, '569fb0dc-b236-4654-80b6-7a25c335754c');
INSERT INTO albums VALUES (6, 'Deep Hearted', NULL, NULL, NULL);
INSERT INTO albums VALUES (7, 'Ceci n''est pas un disque', 1, 1, '9daf6ed5-0691-4ac1-bb72-677afcffd7b1');
INSERT INTO albums VALUES (8, 'Then What Happened?', 1, 1, '5375b028-0d88-4a75-995a-554936d16935');
INSERT INTO albums VALUES (9, 'Re-Entry', NULL, NULL, NULL);
INSERT INTO albums VALUES (10, 'Suprême NTM', 1, 1, 'd6c866bf-1bab-4c35-b538-d4b42c0d93ed');
INSERT INTO albums VALUES (11, 'Paris sous les bombes', 1, 1, '571fb049-c538-4873-bb93-aea3bb8abc61');
INSERT INTO albums VALUES (12, 'Moment of Truth', 1, 1, '6b647876-3eb2-362a-9bcc-d2443ba8db03');
INSERT INTO albums VALUES (13, 'L''amour est mort', 1, 1, '94f53261-8d87-41da-bb25-f9583b8fa033');
INSERT INTO albums VALUES (14, 'Un signe du temps', 1, 1, 'e021ae6c-dacb-498e-b93a-c665dba0bec9');
INSERT INTO albums VALUES (15, 'React', NULL, NULL, NULL);
INSERT INTO albums VALUES (16, 'Opéra Puccino', 1, 1, '1899c734-a5a4-462a-886b-553e8a3efff1');
INSERT INTO albums VALUES (17, 'Jazzmatazz, Volume 2: The New Reality', 1, 1, '4a835514-1b2b-4aec-8a07-00914dbfef4c');
INSERT INTO albums VALUES (18, 'L''Ombre sur la mesure', 1, 2, 'b5ab41c9-9525-4ed8-b6af-a5c9764b8ff1');
INSERT INTO albums VALUES (19, 'Jeanius', NULL, NULL, NULL);
INSERT INTO albums VALUES (20, 'It Was Written', 1, 1, 'dee08d2d-eb6d-4376-988a-07984dbdf738');
INSERT INTO albums VALUES (21, 'Illmatic', 1, 1, '9651aac2-4296-381f-a595-f11e3242c997');
INSERT INTO albums VALUES (22, 'The Score', 1, 1, '66b7e901-a69e-47cf-a8c8-604fbe032728');
INSERT INTO albums VALUES (23, 'Things Fall Apart', 1, 1, '1a3422a3-bedc-3c7a-a984-b0fd51c0e5ec');
INSERT INTO albums VALUES (24, 'Jazzmatazz, Volume 1', 1, 1, 'b249a0bc-6ca9-476c-94c1-67c272ad7a58');
INSERT INTO albums VALUES (25, 'The Hear After', 1, NULL, NULL);
INSERT INTO albums VALUES (26, 'Black Sunday', 1, 1, '08af217f-4b6f-33ee-be39-df41fedd96ba');
INSERT INTO albums VALUES (27, 'Paul''s Boutique', 1, 1, '914a7a25-a239-371a-9a9d-8e162b2fc7ed');
INSERT INTO albums VALUES (28, 'Métèque et mat', 1, 1, '6e17b5fe-3c63-4b79-a5af-f15b2723eb0d');
INSERT INTO albums VALUES (29, 'L''École du micro d''argent', 1, 1, 'cc13070c-f6e2-4566-8378-ee4315e1ac70');
INSERT INTO albums VALUES (30, 'Oro', 1, 1, 'b29aa099-9e19-4a39-8dae-f111cbd7f97d');
INSERT INTO albums VALUES (31, 'New Voice', NULL, NULL, NULL);
INSERT INTO albums VALUES (32, 'A Little Deeper', 1, 1, '34db4e5c-d9b6-3484-8a7a-0482d7045d3c');
INSERT INTO albums VALUES (33, 'As Heard on Radio Soulwax, Part 2', 1, 1, 'f6715ead-ab14-3ccc-808f-ddbbcc438886');
INSERT INTO albums VALUES (34, '(The Story of) Espion', 1, 1, 'cd5cb75d-64bc-421c-8ceb-7c82ab1bebbc');
INSERT INTO albums VALUES (35, 'Nova Tunes 2.4', 1, 1, '1d705ae1-73a5-4178-aa8a-f95c37f6d2c5');
INSERT INTO albums VALUES (36, 'Lunático', 1, 1, '1ce65792-a825-33c6-8cbb-a893350528f4');
INSERT INTO albums VALUES (37, 'Since I Left You', 1, 1, '0ae16051-e092-3919-ba51-976dfc027cc0');
INSERT INTO albums VALUES (38, 'Exit Planet Dust', 1, 1, 'c899ee3a-fd95-3b6c-826d-1aeca00803ed');
INSERT INTO albums VALUES (39, 'We Are the Night', 1, 1, 'a2962b0a-2317-493a-8423-bdd5e1301700');
INSERT INTO albums VALUES (40, 'Push the Button', 1, 1, '4807a2d1-ba87-4444-bb4c-39d405e1534b');
INSERT INTO albums VALUES (41, 'Permutation', 1, 1, 'b8fb5fe6-b732-37ab-865c-781043e9aaab');
INSERT INTO albums VALUES (42, 'P.H.Test/Two', 1, 1, 'a12eb53d-787a-4eda-9e6f-b1aec44b8ad9');
INSERT INTO albums VALUES (43, 'Williams Traffic & the Fugitive', 1, 1, '6795902d-c317-406d-9d76-f5ca84d9aabb');
INSERT INTO albums VALUES (44, 'Triple Zéro Plus', 1, 1, '3165b00b-6b2e-4e62-88f1-a64d252f7ff3');
INSERT INTO albums VALUES (45, '✝', 1, 1, '4642ee19-7790-3c8d-ab5e-d133de942db6');
INSERT INTO albums VALUES (46, 'Original Pirate Material', 1, 1, 'b989ceea-ade1-4b7b-917d-dee0fdb62f92');
INSERT INTO albums VALUES (47, 'Acid Dub Nucleik', 1, 1, '7b7e707b-a505-4159-ab4b-aec5c5a858bc');
INSERT INTO albums VALUES (48, 'La Revancha del Tango', 1, 2, '4c1d592e-9bd4-3698-bdbc-2985aa5fb610');
INSERT INTO albums VALUES (49, 'Isaac Albeniz', NULL, NULL, NULL);
INSERT INTO albums VALUES (50, 'Exodus', 1, 1, '593f09a7-95de-3b3e-9e09-169e91ec630f');
INSERT INTO albums VALUES (51, 'Leave Out A Babylon', NULL, NULL, NULL);
INSERT INTO albums VALUES (52, 'Revolutionary Dream Part #2', NULL, NULL, NULL);
INSERT INTO albums VALUES (53, 'Funky Kingston', 1, 1, 'f59a60e4-376d-3104-b0f5-e40d784bceb7');
INSERT INTO albums VALUES (54, 'Thrust', 1, 1, '07f2f008-b1a8-3601-952e-f494b18bdca5');
INSERT INTO albums VALUES (55, 'Head Hunters', 1, 1, '23ff7ff5-2e82-3af4-b642-9df78d3ab736');
INSERT INTO albums VALUES (56, 'Ella Fitzgerald', 1, 1, '5adcf87a-9cc6-4696-acea-f9990da1bd5f');
INSERT INTO albums VALUES (57, 'Bending New Corners', 1, 1, 'f0f9d67c-b508-483f-ab79-665b1167a3ec');
INSERT INTO albums VALUES (58, 'The Walk of the Giant Turtle', 1, 1, 'f037ba50-f021-4514-80e5-666805f3381b');
INSERT INTO albums VALUES (59, 'The Dawn', 1, 1, 'c718e731-302a-4300-a71d-6b89b0c7a264');
INSERT INTO albums VALUES (60, 'Revisité', 1, 1, '1424a76a-7a22-3a48-a1ea-d322beb4e0b2');
INSERT INTO albums VALUES (61, 'Mantis', 1, 1, 'b2276751-9ce5-3650-93e0-170aa1c309c8');
INSERT INTO albums VALUES
  (62, 'Ethiopiques 4: Ethio Jazz & Musique Instrumentale, 1969-1974', 1, 1, 'aba08d8c-9098-4d62-9a0d-7715968d5205');
INSERT INTO albums VALUES (63, 'Lady in Satin', 1, 1, '8dfb40bb-39ec-368c-ba54-09731a2650df');
INSERT INTO albums VALUES (64, 'Tutu', 1, 1, 'fa17202b-eebc-4f30-bc1f-63e3800ec9de');
INSERT INTO albums VALUES (65, 'Alborada Del Tango', NULL, NULL, NULL);
INSERT INTO albums VALUES (66, 'Piove En San Telmo', NULL, NULL, NULL);
INSERT INTO albums VALUES (67, 'Kongo Magni', 1, 1, '9c5f6d47-9185-4a53-a949-57708afe2ae9');
INSERT INTO albums VALUES (68, 'Miss Perfumado', 1, 1, '217b84ab-0a31-3962-a56c-4f193744951f');
INSERT INTO albums VALUES (69, 'Moffou', NULL, NULL, NULL);
INSERT INTO albums VALUES (70, 'Ondatrópica', 1, 1, '442d9a1d-78cb-44a6-b931-d1197809342e');
INSERT INTO albums VALUES (71, 'La Marmaille nue', 1, 1, '82d848ab-53f5-4701-ad19-dc5c073665f9');
INSERT INTO albums VALUES (72, 'Les Années sombres', 1, 1, '7224d589-ca08-4741-bc82-f4b30abb2e36');
INSERT INTO albums VALUES (73, 'Internationale Shalala', 2, 2, 'c63c5c47-24e8-435e-bb0b-a204c0d3df1c');
INSERT INTO albums VALUES (74, 'Dehors', 1, 1, '181f41bf-318a-428e-b0cd-8f2614facd90');
INSERT INTO albums VALUES (75, 'Kalyma', 1, 1, 'f563f5cb-2c10-49f1-b2de-f0b7dffbfbed');
INSERT INTO albums VALUES (76, 'Feria furiosa', 1, 1, 'b13592ce-a9f9-454e-b6d3-814fcf7c9b04');
INSERT INTO albums VALUES (77, 'OK Computer', 1, 1, '0b6b4ba0-d36f-47bd-b4ea-6a5b91842d29');
INSERT INTO albums VALUES (78, '666.667 Club', 1, 1, '7806dc5a-188d-41ca-8009-27a233898827');
INSERT INTO albums
VALUES (79, 'Jump Back: The Best of the Rolling Stones 1971 - 1993', 1, 1, '0ea1b97e-440b-410e-9e1d-bb6d84e5a28d');
INSERT INTO albums VALUES (80, 'Grace', 1, 1, 'fa218b2a-f2bb-446b-bbfe-fd3987811915');
INSERT INTO albums VALUES (81, 'The Doors', 1, 1, '6c8a82d0-73c7-4eff-b84d-6c20a8f0a4dd');
INSERT INTO albums VALUES (82, 'Waiting for the Sun', 1, 1, '24d5a2fd-2a00-4df9-bcc0-7c0ee2e6f20d');
INSERT INTO albums VALUES (83, 'Blufunk Is a Fact!', 1, 1, '37f517b5-c7f8-39c9-957b-229c3bcf9132');
INSERT INTO albums VALUES (84, 'Roseland NYC Live', 1, 1, '213910e7-279a-3186-81ae-cf330ded96fb');
INSERT INTO albums VALUES (85, 'Midnight Love', 1, 1, '6a18a35f-b80b-4f43-aa76-ce5e6dc0f918');
INSERT INTO albums VALUES (86, 'Caught Up / Still Caught Up', 1, 1, '82e5bafd-053e-479d-8c4a-31180d290d15');
INSERT INTO albums
VALUES (87, 'The Definitive Collection: The Dock of the Bay', 1, 1, '170cb5e9-4314-3f38-92c1-8cfbb8ed1834');
INSERT INTO albums VALUES (88, 'After Laughter Comes Tears: Complete Stax & Volt Singles + Rarities', 1, 1,
                           '8d9bed03-bbc1-432c-90f9-a1d81a608705');
INSERT INTO albums VALUES (89, 'Chamboultou', 1, 1, '3eedc269-23f8-4977-ac1c-08ad61e98382');

--
-- Name: albums_id_seq; Type: SEQUENCE SET; Schema: public; Owner: music
--

SELECT pg_catalog.setval('albums_id_seq', 89, TRUE);

--
-- Data for Name: artists; Type: TABLE DATA; Schema: public; Owner: music
--

INSERT INTO artists VALUES (1, 'Reflection Eternal feat. Mos Def', NULL);
INSERT INTO artists VALUES (2, 'Common feat. Lonnie "Pops" Lynn', NULL);
INSERT INTO artists VALUES (3, 'Talib Kweli feat. Black Thought & Pharoahe Monch', NULL);
INSERT INTO artists VALUES (4, 'Pharoahe Monch', NULL);
INSERT INTO artists VALUES (5, 'Wu-Tang Clan', '0febdcf7-4e1f-4661-9493-b40427de2c13');
INSERT INTO artists VALUES (6, 'Strong Arm Steady', NULL);
INSERT INTO artists VALUES (7, 'Reflection Eternal feat. De La Soul', NULL);
INSERT INTO artists VALUES (8, 'TTC feat. Yara Bravo', NULL);
INSERT INTO artists VALUES (9, 'J-Live feat. Oddisee & Posdanous', NULL);
INSERT INTO artists VALUES (10, 'Reflection Eternal feat. Les Nubians', NULL);
INSERT INTO artists VALUES (11, 'Marley Marl', NULL);
INSERT INTO artists VALUES (12, 'Suprême NTM', '0135e5ec-4ffd-46e5-9c3c-566b3df46a8d');
INSERT INTO artists VALUES (13, 'Gang Starr feat. Inspectah Deck', NULL);
INSERT INTO artists VALUES (14, 'Oxmo Puccino feat. S-Kiv', NULL);
INSERT INTO artists VALUES (15, 'Common feat. Chantay Savage', NULL);
INSERT INTO artists VALUES (16, 'Gang Starr feat. Scarface', NULL);
INSERT INTO artists VALUES (17, 'Nuttea', 'cde7486e-68c3-4867-a3b6-fb88f8ef8b84');
INSERT INTO artists VALUES (18, 'Common feat. Lauryn', NULL);
INSERT INTO artists VALUES (19, 'TTC', '62bd8d93-5e1e-480f-8642-9c346e93ff11');
INSERT INTO artists VALUES (20, 'Oxmo Puccino feat. Diesel & Dad PPDA', NULL);
INSERT INTO artists VALUES (21, 'Talib Kweli feat. Res', NULL);
INSERT INTO artists VALUES (22, 'Talib Kweli feat. Cocoa Brovaz', NULL);
INSERT INTO artists VALUES (23, 'Talib Kweli feat. Mos Def', NULL);
INSERT INTO artists VALUES (24, 'Eric Sermon', NULL);
INSERT INTO artists VALUES (25, 'Oxmo Puccino feat. Intouchable', NULL);
INSERT INTO artists VALUES (26, 'Nuttea feat. Akhenaton', NULL);
INSERT INTO artists VALUES (27, 'Common feat. Erykah Badu', NULL);
INSERT INTO artists VALUES (28, 'J-Live feat. Chali 2na', NULL);
INSERT INTO artists VALUES (29, 'Oxmo Puccino', 'faf5d956-ba11-4e01-9634-2f1c9ec92df5');
INSERT INTO artists VALUES (30, 'Nuttea feat. Luciano', NULL);
INSERT INTO artists VALUES (31, 'Guru feat. Jamiroquai', NULL);
INSERT INTO artists VALUES (32, 'Gang Starr feat. Hannibal', NULL);
INSERT INTO artists VALUES (33, 'Gang Starr feat. K-Ci & JoJo', NULL);
INSERT INTO artists VALUES (34, 'La Rumeur feat. Special Homicide & Sheryo', NULL);
INSERT INTO artists VALUES (35, 'Common feat. De La Soul', NULL);
INSERT INTO artists VALUES (36, 'Common feat. Q-Tip', NULL);
INSERT INTO artists VALUES (37, 'Talib Kweli feat. Bilal', NULL);
INSERT INTO artists VALUES (38, 'Jean Grae', NULL);
INSERT INTO artists VALUES (39, 'Oxmo Puccino avec Akhenaton, Freeman, Le Rat Luciano & Pit Baccardi', NULL);
INSERT INTO artists VALUES (40, 'Suprême NTM feat. Nas', NULL);
INSERT INTO artists VALUES (41, 'Nas', 'cfbc0924-0035-4d6c-8197-f024653af823');
INSERT INTO artists VALUES (42, 'Reflection Eternal', 'abb70fe7-25a6-4f69-970f-e6acd1e3f7cb');
INSERT INTO artists VALUES (43, 'Fugees', 'ea321799-9b1d-4e74-a074-a5facf597d82');
INSERT INTO artists VALUES (44, 'Common feat. Canibus', NULL);
INSERT INTO artists VALUES (45, 'Oxmo Puccino avec K-Reen', NULL);
INSERT INTO artists VALUES (46, 'TTC feat. Dose One & Hi-Tekk le Receleur', NULL);
INSERT INTO artists VALUES (47, 'Oxmo Puccino avec Lino', NULL);
INSERT INTO artists VALUES (48, 'Talib Kweli feat. DJ Quik', NULL);
INSERT INTO artists VALUES (49, 'The Roots', '80b3cf5e-18fe-4c59-98c7-e5bb87210710');
INSERT INTO artists VALUES (50, 'Gang Starr feat. Krumb Snatcha', NULL);
INSERT INTO artists VALUES (51, 'Guru', '215c6ab2-7888-4061-bd56-9fb650328106');
INSERT INTO artists VALUES (52, 'Reflection Eternal feat. Kool G Rap', NULL);
INSERT INTO artists VALUES (53, 'Gang Starr', '9ef8042a-2528-4f5c-b7c1-5e72b1efe170');
INSERT INTO artists VALUES (54, 'J-Live', '1c15deec-f162-48dd-a759-f79cc64f5382');
INSERT INTO artists VALUES (55, 'Common', 'c0a1179b-b14a-4d68-a3c1-1fdab16ed602');
INSERT INTO artists VALUES (56, 'J-Live feat. Oddy Gato', NULL);
INSERT INTO artists VALUES (57, 'Reflection Eternal feat. Vinia Mojica', NULL);
INSERT INTO artists VALUES (58, 'Cypress Hill', '51508c1f-8d07-4a00-9cf1-26c570fe7b78');
INSERT INTO artists VALUES (59, 'Common feat. Black Thought (Tariq)', NULL);
INSERT INTO artists VALUES (60, 'La Rumeur', '3d0e05e9-c1aa-4d57-a8e6-cb6ab5b6d930');
INSERT INTO artists VALUES (61, 'Beastie Boys', '9beb62b2-88db-4cea-801e-162cd344ee53');
INSERT INTO artists VALUES (62, 'Suprême NTM feat. Big Red', NULL);
INSERT INTO artists VALUES (63, 'Akhenaton', '55808e24-5150-4abd-b86b-7c3d7a080da3');
INSERT INTO artists VALUES (64, 'Reflection Eternal feat. Rah Digga & Xzibit', NULL);
INSERT INTO artists VALUES (65, 'Oxmo Puccino feat. Dany Dan', NULL);
INSERT INTO artists VALUES (66, 'Oxmo Puccino feat. Keity Slake', NULL);
INSERT INTO artists VALUES (67, 'Reflection Eternal feat. Piakhan & Supa Dave West', NULL);
INSERT INTO artists VALUES (68, 'TTC feat. La Caution', NULL);
INSERT INTO artists VALUES (69, 'Oxmo Puccino avec Freeman', NULL);
INSERT INTO artists VALUES (70, 'Talib Kweli feat. Novel & Vinia Mojica', NULL);
INSERT INTO artists VALUES (71, 'Talib Kweli', 'bb3cbea2-5ad4-4917-bc84-8a1975d40315');
INSERT INTO artists VALUES (72, 'TTC feat. James Delleck', NULL);
INSERT INTO artists VALUES (73, 'Talib Kweli feat. Kendra Ross', NULL);
INSERT INTO artists VALUES (74, 'Akhenaton avec la Fonky Family', NULL);
INSERT INTO artists VALUES (75, 'Common feat. Cee-Lo', NULL);
INSERT INTO artists VALUES (76, 'Oxmo Puccino feat. Le Célèbre Bauza', NULL);
INSERT INTO artists VALUES (77, 'The Roots feat. Erykah Badu', NULL);
INSERT INTO artists VALUES (78, 'IAM', '7aa4a16e-9d5a-41d3-968e-fae1a2c84d05');
INSERT INTO artists VALUES (79, 'Reflection Eternal feat. Res', NULL);
INSERT INTO artists VALUES (80, 'ChocQuibTown', '82297b90-705c-4bb5-81b7-88d83fd1d0b4');
INSERT INTO artists VALUES (81, 'Kendra Ross', NULL);
INSERT INTO artists VALUES (82, 'Ms. Dynamite', 'c0c5e158-d61d-4043-a0eb-dc6cc1e0a539');
INSERT INTO artists VALUES (83, 'Ms. Dynamite feat. Keon Bryce', NULL);
INSERT INTO artists VALUES (84, 'Ms. Dynamite feat. Kymani Marley', NULL);
INSERT INTO artists VALUES (85, 'Zongamin', '09f50a8b-0f8f-4b86-9805-513d81691a03');
INSERT INTO artists VALUES (86, 'Alphawezen', '499c7cd4-0944-4333-915e-97f76d160087');
INSERT INTO artists VALUES (87, 'DJ Mehdi avec K-OS', NULL);
INSERT INTO artists VALUES (88, 'Carlos Morgan', '085d1d85-582c-4a4c-9ff4-67b3d157ece1');
INSERT INTO artists VALUES (89, 'Lords of Acid', 'b0e81c40-ea89-40b9-95b3-e63d5cad5e67');
INSERT INTO artists VALUES (90, 'Timber Timbre', '89942abd-fdaa-48fc-a8cf-649746303c97');
INSERT INTO artists VALUES (91, 'Garbage', 'f9ef7a22-4262-4596-a2a8-1d19345b8e50');
INSERT INTO artists VALUES (92, 'Gotan Project feat. Juan Carlos Cáceres', NULL);
INSERT INTO artists VALUES (93, '2 Many DJ''s', '82dc508a-dbda-4954-aedc-28895edfa42e');
INSERT INTO artists VALUES (94, 'Kitty, Daisy & Lewis', 'b7ca7429-4ffb-4528-8e7e-6d6b8bd20770');
INSERT INTO artists VALUES (95, 'Mary J. Blige feat. Diddy & Lil Wayne', NULL);
INSERT INTO artists VALUES (96, 'Metronomy', '93eb7110-0bc9-4d3f-816b-4b52ef982ec8');
INSERT INTO artists VALUES (97, 'Danger Mouse & Daniele Luppi feat. Jack White', NULL);
INSERT INTO artists VALUES (98, 'Jeans Team feat. MJ Lan', NULL);
INSERT INTO artists VALUES (99, 'Alexander', 'd20f4214-f5d9-42a9-85e0-88ed80508e04');
INSERT INTO artists VALUES (100, 'Jai Paul', '312183e0-64ff-48df-a9f4-0804ca23a7d3');
INSERT INTO artists VALUES (101, 'The Avalanches', 'a6623d39-2d8e-4f70-8242-0a9553b91e50');
INSERT INTO artists VALUES (102, 'Arbeid Adelt!', 'f0f3e664-c873-4097-94a7-a141fc63e88c');
INSERT INTO artists VALUES (103, 'Gotan Project feat. Jimi Santos', NULL);
INSERT INTO artists VALUES (104, 'Streamer feat. Private Thoughts in Public Places', NULL);
INSERT INTO artists VALUES (105, 'The Chemical Brothers', '1946a82a-f927-40c2-8235-38d64f50d043');
INSERT INTO artists VALUES (106, 'Op:l Bastards', 'bfb9844d-8ba2-4ad7-a463-38247061d9b9');
INSERT INTO artists VALUES (107, 'Tom Fire feat. Matthew McAnuff', NULL);
INSERT INTO artists VALUES (108, 'DJ Mehdi', '66ad8456-1d33-4d7d-b8c3-a8f1a3b1e74f');
INSERT INTO artists VALUES (109, 'ADULT.', 'ee4833d6-d338-4977-8842-85530515d0fa');
INSERT INTO artists VALUES (110, 'DJ Mehdi avec Rim-K et Lil'' Dap', NULL);
INSERT INTO artists VALUES (111, 'The Wildbunch', 'a8fe9d95-15a7-4e3c-8a35-19ca37593633');
INSERT INTO artists VALUES (112, 'Amon Tobin', '630662ea-1c7d-4208-99fd-ba3afec20f0c');
INSERT INTO artists VALUES (113, 'SebastiAn', '4072139a-699c-4011-9bcc-baae6f959390');
INSERT INTO artists VALUES (114, 'Le Peuple de l''Herbe feat. UK Apache', NULL);
INSERT INTO artists VALUES (115, 'Williams Traffic', 'deb887bb-ceac-489c-8cec-62554bcaf994');
INSERT INTO artists VALUES (116, 'Hollie Cook feat. Horseman', NULL);
INSERT INTO artists VALUES (117, 'Dakar & Grinser', '7e21d364-ebce-4dca-95a5-fa54d68d50c1');
INSERT INTO artists VALUES (118, 'Elephanz', '4b5b689e-ce82-4cfb-b64b-a3e79fef136a');
INSERT INTO artists VALUES (119, 'Owiny Sigoma Band', '39c71ad1-21d0-4658-a0b1-308fa343907e');
INSERT INTO artists VALUES (120, 'Le Peuple de l''Herbe feat. Sir Jean', NULL);
INSERT INTO artists VALUES (121, 'The Dø', 'c3477250-bc5f-44e9-aa0a-144dd2d7a935');
INSERT INTO artists VALUES (122, 'Piers Faccini', '99698ee5-9b92-4bea-bdf5-418270d820f4');
INSERT INTO artists VALUES (123, 'Gotan Project feat. Calexico', NULL);
INSERT INTO artists VALUES (124, 'Justice', '860b2707-6153-4e3a-aa57-74d2b42c55b5');
INSERT INTO artists VALUES (125, 'Vitalic', '1f064e2d-aa55-4631-8f62-e2c14bbe1f4e');
INSERT INTO artists VALUES (126, 'Concrete Knives', '75296680-d93b-43ea-b8ac-8695262e4b1d');
INSERT INTO artists VALUES (127, 'Le Peuple de l''Herbe', 'f8bde05b-a677-43d8-ac23-612bbf3c3a0b');
INSERT INTO artists VALUES (128, 'The Streets', '6f607087-9c46-4bb2-a884-e4efc764554c');
INSERT INTO artists VALUES (129, 'DJ Mehdi avec Vinia Mojica', NULL);
INSERT INTO artists VALUES (130, 'DJ Mehdi avec Diams', NULL);
INSERT INTO artists VALUES (131, 'The Velvet Underground', '94b0fb9d-a066-4823-b2ec-af1d324bcfcf');
INSERT INTO artists VALUES (132, 'Le Peuple de l''Herbe feat. JC-001', NULL);
INSERT INTO artists VALUES (133, 'Gotan Project feat. Koxmoz', NULL);
INSERT INTO artists VALUES (134, 'Queen of Japan', '298e90e8-d2d2-41d4-8de7-0b7af819d337');
INSERT INTO artists VALUES (135, 'The Cramps', '96c1edac-1011-4cb8-882c-27248de35071');
INSERT INTO artists VALUES (136, 'Moriarty', '4c32c5f9-3221-447f-aded-4beabcfa1475');
INSERT INTO artists VALUES (137, 'Peaches', '270acfee-1fbe-413e-a0a8-6a35a8b3b66c');
INSERT INTO artists VALUES (138, 'High Tone', '1291f699-f20e-43c1-9d95-761d7db60b79');
INSERT INTO artists VALUES (139, 'Gotan Project', '66cc244d-6f96-4668-a6e9-0f9cd5acc940');
INSERT INTO artists VALUES (140, 'Le Peuple de l''Herbe feat. DJ Duke', NULL);
INSERT INTO artists VALUES (141, 'Cuthead', '7838eb1b-9e70-4e4c-bc2f-a0ddc95011c7');
INSERT INTO artists VALUES (142, 'Quadron', '80088c76-727d-4cbd-88d5-acf176de7502');
INSERT INTO artists VALUES (143, 'Nôze feat. DOP', NULL);
INSERT INTO artists VALUES (144, 'Ural 13 Diktators', '19f13cb4-0cc9-4fd8-803f-fe2561af34fc');
INSERT INTO artists VALUES (145, 'Giuseppe Feola', NULL);
INSERT INTO artists VALUES (146, 'Bob Marley & The Wailers', 'c296e10c-110a-4103-9e77-47bfebb7fb2e');
INSERT INTO artists VALUES (147, 'Sugar Minott', NULL);
INSERT INTO artists VALUES (148, 'Pablo Moses', NULL);
INSERT INTO artists VALUES (149, 'Toots & The Maytals', '29730ee3-e1c7-4e28-9ccd-3a0e6b0e8103');
INSERT INTO artists VALUES (150, 'Herbie Hancock', '27613b78-1b9d-4ec3-9db5-fa0743465fdd');
INSERT INTO artists VALUES (151, 'Ella Fitzgerald', '54799c0e-eb45-4eea-996d-c4d71a63c499');
INSERT INTO artists VALUES (152, 'Erik Truffaz', 'aecd2d93-082b-4d5a-b519-521f2e18f796');
INSERT INTO artists VALUES (153, 'Fèqadu Amdè-Mesqel', '93f39b70-e795-4bcd-8973-0a0407dedd4f');
INSERT INTO artists VALUES (154, 'Billie Holiday', 'd59c4cda-11d9-48db-8bfe-b557ee602aed');
INSERT INTO artists VALUES (155, 'Miles Davis', '561d854a-6a28-4aa7-8c99-323e6ce46c2a');
INSERT INTO artists VALUES (156, 'Girma Hadgu', 'b8d966aa-429e-4757-9323-b34fca462105');
INSERT INTO artists VALUES (157, 'Mulatu Astatqé', '67f0c7ca-14e8-47a3-be0e-bd2f2ffe25bb');
INSERT INTO artists VALUES (158, 'Cuarteto Cedrón', NULL);
INSERT INTO artists VALUES (159, 'Boubacar Traoré', '5cc16125-511c-4669-9e56-651fec2690c3');
INSERT INTO artists VALUES (160, 'Cesária Évora', 'ceafdf2f-bc18-4b99-8c71-d1834b0065c3');
INSERT INTO artists VALUES (161, 'Salif Keita', NULL);
INSERT INTO artists VALUES (162, 'Ondatrópica', '110df860-7524-4075-9816-d661e30b77ed');
INSERT INTO artists VALUES (163, 'Mano Solo', '5febe272-7691-4ea8-a3cf-c6c7f98d9bf1');
INSERT INTO artists VALUES (164, 'Noëmi Waysfeld & Blik', NULL);
INSERT INTO artists VALUES (165, 'Amparanoia', '7c61d54d-90fd-42e2-929a-9398a2a24269');
INSERT INTO artists VALUES (166, 'Radiohead', 'a74b1b7f-71a5-4011-9441-d0b5e4122711');
INSERT INTO artists VALUES (167, 'Noir Désir', 'e6358374-5eea-4205-be22-382ed6df493c');
INSERT INTO artists VALUES (168, 'The Rolling Stones', 'b071f9fa-14b0-4217-8e97-eb41da73f598');
INSERT INTO artists VALUES (169, 'Jeff Buckley', 'e6e879c0-3d56-4f12-b3c5-3ce459661a8e');
INSERT INTO artists VALUES (170, 'The Doors', '9efff43b-3b29-4082-824e-bc82f646f93d');
INSERT INTO artists VALUES (171, 'Keziah Jones', '754932cb-a3df-43c5-99ab-c1a69190e4bc');
INSERT INTO artists VALUES (172, 'Portishead', '8f6bd1e4-fbe1-4f50-aa9b-94c450ec0f11');
INSERT INTO artists VALUES (173, 'Marvin Gaye', 'afdb7919-059d-43c1-b668-ba1d265e7e42');
INSERT INTO artists VALUES (174, 'Millie Jackson', '50e7cc0b-a74e-44b1-a22f-3cd9361d82dd');
INSERT INTO artists VALUES (175, 'Otis Redding', '82b1f5fd-cd31-41a9-b5d4-7e33f0eb9751');
INSERT INTO artists VALUES (176, 'Wendy Rene', 'f1709257-4b4f-4db9-a715-d1b199acbd03');
INSERT INTO artists VALUES (177, 'Têtes Raides', '739162d3-8f9d-4710-8fe1-a73e59690506');

--
-- Name: artists_id_seq; Type: SEQUENCE SET; Schema: public; Owner: music
--

SELECT pg_catalog.setval('artists_id_seq', 177, TRUE);

--
-- Data for Name: genres; Type: TABLE DATA; Schema: public; Owner: music
--

INSERT INTO genres VALUES (1, 'Hip/Hop Rap');
INSERT INTO genres VALUES (2, 'RnB');
INSERT INTO genres VALUES (3, 'Electro');
INSERT INTO genres VALUES (4, 'Classique');
INSERT INTO genres VALUES (5, 'Reggae');
INSERT INTO genres VALUES (6, 'Jazz');
INSERT INTO genres VALUES (7, 'Musique Du Monde');
INSERT INTO genres VALUES (8, 'Chanson Française');
INSERT INTO genres VALUES (9, 'Inclassable');
INSERT INTO genres VALUES (10, 'Rock');
INSERT INTO genres VALUES (11, 'Funk');
INSERT INTO genres VALUES (12, 'Trip Hop');
INSERT INTO genres VALUES (13, 'Soul');
INSERT INTO genres VALUES (14, 'Folk');


--
-- Name: genres_id_seq; Type: SEQUENCE SET; Schema: public; Owner: music
--

SELECT pg_catalog.setval('genres_id_seq', 14, TRUE);

--
-- Data for Name: tracks; Type: TABLE DATA; Schema: public; Owner: music
--

INSERT INTO tracks VALUES (1, 1, 1, 1, 5, 20, 'This Means You', '4d252b9d-6044-4cef-804d-571133870d6d');
INSERT INTO tracks
VALUES (2, 1, 2, 2, 17, 17, 'Pop''s Rap, Part II / Fatherhood', '265c6ffe-db33-45f3-b2d4-90c72088a145');
INSERT INTO tracks VALUES (3, 1, 3, 3, 9, 15, 'Guerrilla Monsoon Rap', 'ffe00c88-3ad4-4968-a60b-20c5e656efb6');
INSERT INTO tracks VALUES (4, 1, 4, 4, 5, NULL, 'Simon Says', NULL);
INSERT INTO tracks VALUES (5, 1, 4, 4, 1, NULL, 'Intro', NULL);
INSERT INTO tracks VALUES (6, 1, 4, 4, 3, NULL, 'Queens', NULL);
INSERT INTO tracks VALUES (7, 1, 4, 4, 12, NULL, 'The Light', NULL);
INSERT INTO tracks VALUES (8, 1, 4, 4, 10, NULL, 'The Next Shit', NULL);
INSERT INTO tracks VALUES (9, 1, 4, 4, 14, NULL, 'The Truth', NULL);
INSERT INTO tracks VALUES (10, 1, 4, 4, 6, NULL, 'Official', NULL);
INSERT INTO tracks VALUES (11, 1, 4, 4, 15, NULL, 'Simon Says [Remix]', NULL);
INSERT INTO tracks VALUES (12, 1, 4, 4, 9, NULL, 'Right Here', NULL);
INSERT INTO tracks VALUES (13, 1, 4, 4, 11, NULL, 'The Ass', NULL);
INSERT INTO tracks VALUES (14, 1, 4, 4, 8, NULL, 'No Mercy', NULL);
INSERT INTO tracks VALUES (15, 1, 4, 4, 13, NULL, 'God Send', NULL);
INSERT INTO tracks VALUES (16, 1, 4, 4, 2, NULL, 'Behind closed doors', NULL);
INSERT INTO tracks VALUES (17, 1, 4, 4, 7, NULL, 'Hell', NULL);
INSERT INTO tracks VALUES (18, 1, 4, 4, 4, NULL, 'Rape', NULL);
INSERT INTO tracks VALUES (19, 1, 5, 5, 12, 14, 'Wu-Tang: 7th Chamber, Part 2', 'cefabebe-428d-46cc-ad50-10ebedbf03dd');
INSERT INTO tracks VALUES (20, 1, 5, 5, 11, 14, 'Tearz', '3d2ed3b2-9120-40d3-8bc1-59a1d0928b81');
INSERT INTO tracks VALUES (21, 1, 5, 5, 9, 14, 'Method Man', '816700a8-2adc-48ac-b421-3152a8715634');
INSERT INTO tracks VALUES (22, 1, 5, 5, 4, 14, 'Wu-Tang: 7th Chamber', '2548d41d-8066-47b9-9ec5-9f7e93b2d865');
INSERT INTO tracks VALUES (23, 1, 5, 5, 10, 14, 'Protect Ya Neck', '095c3491-dea4-4ae0-98e9-3b97514c0c1a');
INSERT INTO tracks VALUES (24, 1, 5, 5, 3, 14, 'Clan in da Front', '103dfa18-001d-45f1-92fc-50a70fd6c72a');
INSERT INTO tracks VALUES (25, 1, 5, 5, 14, 14, 'Conclusion', '72985455-c2b7-4d83-a905-f94733cc5580');
INSERT INTO tracks VALUES (26, 1, 5, 5, 6, 14, 'Da Mystery of Chessboxin''', '6e1eb0ad-0675-4075-b1a5-da7afb6a779c');
INSERT INTO tracks VALUES (27, 1, 5, 5, 8, 14, 'C.R.E.A.M.', 'b0ffce4f-ef8a-4d8b-8dea-61167e1fb75e');
INSERT INTO tracks VALUES (28, 1, 5, 5, 1, 14, 'Bring da Ruckus', '7de6f49b-acf1-45fe-b832-f6212f296a54');
INSERT INTO tracks
VALUES (29, 1, 5, 5, 7, 14, 'Wu-Tang Clan Ain''t Nuthing ta F'' Wit', 'c0ca3139-fbac-4cd1-b449-60fbfff07f82');
INSERT INTO tracks
VALUES (30, 1, 5, 5, 5, 14, 'Can It Be All So Simple / Intermission', '742c5387-36b3-4fbe-8725-d77a9ae248a5');
INSERT INTO tracks VALUES (31, 1, 5, 5, 2, 14, 'Shame on a Nigga', 'e4047184-0c3b-4132-8551-48d2c3344807');
INSERT INTO tracks VALUES (32, 1, 5, 5, 13, 14, 'Method Man (Skunk mix)', '4586e494-84ae-4c54-84a5-f093ecf877f5');
INSERT INTO tracks VALUES (33, 1, 6, 6, 3, 15, 'U Aint Me', NULL);
INSERT INTO tracks VALUES (34, 1, 6, 6, 4, 15, 'Bloody Money', NULL);
INSERT INTO tracks VALUES (35, 1, 6, 6, 14, 15, 'On The Grind', NULL);
INSERT INTO tracks VALUES (36, 1, 6, 6, 10, 15, 'Come And Get Me', NULL);
INSERT INTO tracks VALUES (37, 1, 6, 6, 6, 15, 'Clean Up', NULL);
INSERT INTO tracks VALUES (38, 1, 6, 6, 11, 15, 'Streetlights', NULL);
INSERT INTO tracks VALUES (39, 1, 6, 6, 15, 15, 'Dirty Dirty', NULL);
INSERT INTO tracks VALUES (40, 1, 6, 6, 13, 15, 'Wreckless Words', NULL);
INSERT INTO tracks VALUES (41, 1, 6, 6, 2, 15, 'The Movement', NULL);
INSERT INTO tracks VALUES (42, 1, 6, 6, 12, 15, 'My Homies', NULL);
INSERT INTO tracks VALUES (43, 1, 6, 6, 8, 15, 'I Can''t Wait', NULL);
INSERT INTO tracks VALUES (44, 1, 6, 6, 7, 15, 'One Step', NULL);
INSERT INTO tracks VALUES (45, 1, 6, 6, 1, 15, 'Intro', NULL);
INSERT INTO tracks VALUES (46, 1, 6, 6, 9, 15, 'King In The Deck', NULL);
INSERT INTO tracks VALUES (47, 1, 6, 6, 5, 15, 'Co-Operation', NULL);
INSERT INTO tracks VALUES (48, 1, 1, 7, 15, 20, 'Soul Rebels', '8084b6fc-704c-401f-972f-b072cbc3d13a');
INSERT INTO tracks VALUES (49, 1, 7, 8, 11, 12, 'En soulevant le couvercle', '90137ec1-4543-43c3-9c17-7bdb3337aa98');
INSERT INTO tracks VALUES (50, 1, 8, 9, 3, 13, 'The Upgrade', 'aed5766d-32be-4012-984a-1602e0c0c953');
INSERT INTO tracks VALUES (51, 1, 1, 10, 13, 20, 'Love Language', '20d83cd2-edf6-47f8-a528-a5fac4b4c95c');
INSERT INTO tracks VALUES (52, 1, 9, 11, 9, 16, 'Live Ova Beats', NULL);
INSERT INTO tracks VALUES (53, 1, 9, 11, 8, 16, 'Easy Type Shit (feat. Seven Shawn)', NULL);
INSERT INTO tracks VALUES (54, 1, 9, 11, 2, 16, 'Do U Remember', NULL);
INSERT INTO tracks VALUES (55, 1, 9, 11, 13, 16, 'Big Faces', NULL);
INSERT INTO tracks
VALUES (56, 1, 9, 11, 10, 16, 'Foundation Symphony (feat. Larry 0, Seven Shawn, J. Wells & Miss Man)', NULL);
INSERT INTO tracks VALUES (57, 1, 9, 11, 14, 16, 'What Ruling Means (feat. Kev Brown & Grap Luva)', NULL);
INSERT INTO tracks VALUES (58, 1, 9, 11, 3, 16, 'Three''s Company (feat. Big Daddy Kane)', NULL);
INSERT INTO tracks VALUES (59, 1, 9, 11, 11, 16, 'So Good (feat. J. Wells & Edwin Birdsong)', NULL);
INSERT INTO tracks VALUES (60, 1, 9, 11, 12, 16, 'Hummin'' (feat. Roy Ayers & Edwin Birdsong)', NULL);
INSERT INTO tracks VALUES (61, 1, 9, 11, 7, 16, 'Lost Beat', NULL);
INSERT INTO tracks VALUES (62, 1, 9, 11, 1, 16, 'Intro', NULL);
INSERT INTO tracks VALUES (63, 1, 9, 11, 5, 16, 'Just Funky', NULL);
INSERT INTO tracks VALUES (64, 1, 9, 11, 15, 16, 'What U Hold Down (feat. Troy S.L.U.G.S. & Capone)', NULL);
INSERT INTO tracks VALUES (65, 1, 9, 11, 16, 16, 'NY, NY', NULL);
INSERT INTO tracks VALUES (66, 1, 9, 11, 6, 16, 'Who''s Sicker (feat. The Hemmingways)', NULL);
INSERT INTO tracks VALUES (67, 1, 9, 11, 4, 16, 'Spazz (feat. Solo of Screwball)', NULL);
INSERT INTO tracks VALUES (68, 1, 10, 12, 4, 16, 'That''s My People', '768b5574-5473-4e3e-9986-74527bc4ae1f');
INSERT INTO tracks VALUES (69, 1, 10, 12, 12, 16, 'Pose ton gun', 'b4f9f885-e15b-46ee-98bf-4287b32f7f49');
INSERT INTO tracks VALUES (70, 1, 10, 12, 7, 16, 'Ma Benz', 'b023c26d-bdf5-491c-85f6-5bf90ef06f92');
INSERT INTO tracks VALUES (71, 1, 10, 12, 9, 16, 'On est encore là (I)', 'a69f3b39-416a-4759-9dc2-7b5edc4a4483');
INSERT INTO tracks VALUES (72, 1, 10, 12, 13, 16, 'Respire', '5a5dd789-1ee5-439b-a719-f1a195ea30ad');
INSERT INTO tracks VALUES (73, 1, 10, 12, 6, 16, 'Interlude', '21f335f2-b3d6-4c89-a6eb-3a33ddfefbf0');
INSERT INTO tracks VALUES (74, 1, 10, 12, 10, 16, 'Odeurs de soufre', 'ac370fb4-c545-48d7-9f51-0cb2adcfcdb1');
INSERT INTO tracks VALUES (75, 1, 10, 12, 3, 16, 'Laisse pas traîner ton fils', '29703c75-35df-472a-befe-491fddae0ee5');
INSERT INTO tracks VALUES (76, 1, 10, 12, 5, 16, 'Seine-Saint-Denis Style', 'f89aac8a-a4fb-4fbd-8235-51739e9c99c8');
INSERT INTO tracks VALUES (77, 1, 10, 12, 16, 16, 'Outro', '0244ba34-a75c-4075-8e2b-1ee27ff0d7c8');
INSERT INTO tracks VALUES (78, 1, 10, 12, 11, 16, 'Je vise juste', 'd1f53035-1dc9-4de7-a927-7b1c5fbdc409');
INSERT INTO tracks VALUES (79, 1, 10, 12, 1, 16, 'Intro', 'e32e1152-e6a4-46c3-a473-12200306d1a5');
INSERT INTO tracks VALUES (80, 1, 10, 12, 15, 16, 'Hardcore sur le beat', 'b2c9d4ca-a868-49e8-b204-3dc48611a6c3');
INSERT INTO tracks VALUES (495, 2, 31, 81, 14, 15, 'Very Well', NULL);
INSERT INTO tracks VALUES (81, 1, 10, 12, 2, 16, 'Back dans les bacs', '6f831e5f-d7ba-49a2-9550-5f53ea12ee01');
INSERT INTO tracks VALUES (82, 1, 10, 12, 14, 16, 'On est encore là (II)', 'b261ef55-9481-4d10-8830-bbeb5125faae');
INSERT INTO tracks
VALUES (83, 1, 10, 12, 8, 16, 'C''est arrivé près d''chez toi', 'b1057b70-244c-44ee-af63-43dc94a91b70');
INSERT INTO tracks VALUES (84, 1, 11, 12, 1, 19, 'Intro', '07ef8e79-dc0c-4ccd-93cb-da33fee559ea');
INSERT INTO tracks VALUES (85, 1, 11, 12, 5, 19, 'Qu''est-ce qu''on attend', 'd73f3124-3a14-4722-b05c-828a14652654');
INSERT INTO tracks VALUES (86, 1, 11, 12, 13, 19, 'Sista B. (intermède)', '856b9373-cc6e-4499-b9e0-29e71012009f');
INSERT INTO tracks VALUES (87, 1, 11, 12, 2, 19, 'Plus jamais ça', '558a2c3f-a107-4be3-b62e-56fed08275ad');
INSERT INTO tracks VALUES (88, 1, 11, 12, 10, 19, 'Paris sous les bombes', '3cc51244-ed3d-4293-96b3-6ceb29aaa47a');
INSERT INTO tracks
VALUES (89, 1, 11, 12, 9, 19, 'Paris sous les bombes (intro)', 'ec6f79a3-d7fd-47e3-8ad5-04371e20e51b');
INSERT INTO tracks VALUES (90, 1, 11, 12, 7, 19, 'Le Rêve', '2b1384e5-ab61-4a20-8477-1efac766cd5b');
INSERT INTO tracks VALUES (91, 1, 11, 12, 16, 19, 'Popopop !! (Freestyle)', '8bcab7f1-758b-487f-a2dc-1cbf6cc62183');
INSERT INTO tracks VALUES (92, 1, 11, 12, 3, 19, 'Tout n''est pas si facile', '33e11496-1825-45b3-b78e-2a5308851dbc');
INSERT INTO tracks
VALUES (93, 1, 11, 12, 4, 19, 'Come Again (Pour que ça sonne funk)', 'a3158b38-0a77-4ea9-b01f-23d41d58aad9');
INSERT INTO tracks
VALUES (94, 1, 11, 12, 12, 19, 'Qui paiera les dégâts (DJ.Clyde remix)', '776a0299-a411-409f-b2dc-0be76cb2270b');
INSERT INTO tracks VALUES (95, 1, 11, 12, 11, 19, 'Pass pass le oinj', '5f0c25a7-8124-407e-adae-2bfe30da2695');
INSERT INTO tracks VALUES (96, 1, 11, 12, 6, 19, 'Nouvelle école', '49d8ad7d-890a-4387-a2f4-37b72467048d');
INSERT INTO tracks VALUES (97, 1, 11, 12, 17, 19, 'Outro', '70de12c4-d0ef-4f23-bb04-d3ca3080a18c');
INSERT INTO tracks VALUES (98, 1, 11, 12, 14, 19, 'Est-ce la vie ou moi', 'acbe8c80-cfa2-4888-bcf1-192f4b60aa3a');
INSERT INTO tracks VALUES (99, 1, 11, 12, 8, 19, 'Old Skool', 'ea9a1d01-ef06-4bdc-9f08-ff9fb94c0299');
INSERT INTO tracks VALUES (100, 1, 11, 12, 15, 19, 'La Fièvre', '4a593fe8-c964-4c59-83b6-d7847942d31f');
INSERT INTO tracks VALUES (101, 1, 12, 13, 5, 20, 'Above the Clouds', '23dc9a39-9cd8-4411-8a16-6b4f09a1747f');
INSERT INTO tracks VALUES (102, 1, 13, 14, 20, 22, 'Antidiplomate', '9995d8eb-831e-4896-8f80-1952b0dcf225');
INSERT INTO tracks VALUES (103, 1, 2, 15, 16, 17, 'Reminding Me (of Sef)', '376c5554-1690-4549-be74-c38fb7551202');
INSERT INTO tracks VALUES (104, 1, 12, 16, 18, 20, 'Betrayal', '171af8a8-1a22-45c4-81b4-9c9a919ecf46');
INSERT INTO tracks
VALUES (105, 1, 14, 17, 7, 16, 'Elle te rend dingue (Poom Poom Short)', '79e4cc4c-742d-47e5-a468-178a867e99ab');
INSERT INTO tracks VALUES (106, 1, 14, 17, 14, 16, 'Oh Mama', 'f80ab5c4-892b-4b8b-993b-1a387037fd35');
INSERT INTO tracks VALUES (107, 1, 14, 17, 9, 16, 'Encore une tombe à fleurir', 'fd3cfa00-3ce3-4811-8c52-5507ec00731f');
INSERT INTO tracks VALUES (108, 1, 14, 17, 4, 16, 'Elles dansent', '5a43f755-34a4-43f2-8c5c-3d2a08fc1e72');
INSERT INTO tracks VALUES (109, 1, 14, 17, 3, 16, 'Unité', '2b160bbe-f19f-48e6-8bc5-96d86e8d2495');
INSERT INTO tracks VALUES (110, 1, 14, 17, 16, 16, 'Elle vit sa vie', '5f972dc5-bd4b-478d-8477-87435fd9f4c1');
INSERT INTO tracks VALUES (111, 1, 14, 17, 15, 16, 'Millénaire', 'cfa10854-ac57-477f-88e6-bbfd0a2b348a');
INSERT INTO tracks VALUES (112, 1, 14, 17, 12, 16, 'Trop peu de temps', 'c62ea2bc-3ae7-4dd9-a316-7a941f1cccfb');
INSERT INTO tracks VALUES (113, 1, 14, 17, 5, 16, 'Le Blues du fugitif', '976612be-b386-488d-aab9-155df4e2fc60');
INSERT INTO tracks VALUES (114, 1, 14, 17, 6, 16, 'Interlude (live)', 'fee812d9-17b4-485f-80d1-89fe3cc92258');
INSERT INTO tracks VALUES (115, 1, 14, 17, 13, 16, 'Le Show', 'b22afdb1-16ca-4ee0-92e3-96be59a14077');
INSERT INTO tracks VALUES (116, 1, 14, 17, 10, 16, 'Le monde part en c...', '64e4c7c3-0302-4e00-a981-6c5a3b85ac04');
INSERT INTO tracks VALUES (117, 1, 14, 17, 8, 16, 'Chacun sa vérité', '3674ca1a-e6f1-4b22-b11e-43e494606525');
INSERT INTO tracks
VALUES (118, 1, 14, 17, 1, 16, 'Sonate pour un petit Soundboy', 'c58e724e-3712-4db5-b7a4-c9fb476efb0f');
INSERT INTO tracks VALUES (119, 1, 2, 18, 4, 17, 'Retrospect for Life', '1848381e-e5fb-4b48-bf99-9c18d2994923');
INSERT INTO tracks VALUES (120, 1, 7, 19, 1, 12, 'Nonscience', 'bf00e426-1e03-4dc6-8d99-decaac5d0459');
INSERT INTO tracks VALUES (121, 1, 7, 19, 2, 12, '(Je n''arrive pas à) Danser', '05b2a560-44c0-47c0-9256-c027886b4a82');
INSERT INTO tracks VALUES (122, 1, 7, 19, 6, 12, 'Reconstitution', 'fbfc092d-f772-4638-ad26-61f46e010bae');
INSERT INTO tracks VALUES (123, 1, 7, 19, 12, 12, 'Élémentaire', 'fac604bc-bed2-4598-895e-456c9fbc025d');
INSERT INTO tracks VALUES (124, 1, 7, 19, 4, 12, 'Teste ta compréhension', '76bab801-6e43-486c-bac4-bbc0d5122349');
INSERT INTO tracks VALUES (125, 1, 7, 19, 7, 12, 'Subway', '38beea6b-db98-4049-9581-12eddcb09a58');
INSERT INTO tracks VALUES (126, 1, 7, 19, 3, 12, 'De pauvres riches', 'fc1870ca-9d86-432d-bd34-6ffcd71da1a2');
INSERT INTO tracks VALUES (127, 1, 7, 19, 10, 12, 'Toi-même', 'd3e28490-2407-4d63-990c-1c58bccf4c0a');
INSERT INTO tracks VALUES (128, 1, 13, 20, 18, 22, 'Balance la sauce', 'e8c25ae9-10f8-4e44-baac-ae3f635cbdb6');
INSERT INTO tracks
VALUES (129, 1, 3, 21, 12, 15, 'Where Do We Go (dedicated to Weldon Irvine)', '0f4bcaa5-1fcc-4310-a2b6-2ace3b68981d');
INSERT INTO tracks VALUES (130, 1, 3, 22, 5, 15, 'Gun Music', 'e1bec2d3-d518-40e5-b6f8-d8bcc5b8c713');
INSERT INTO tracks VALUES (131, 1, 3, 23, 7, 15, 'Joy', 'c9e1975b-db7f-4f59-bdf6-47293f7a6dbd');
INSERT INTO tracks VALUES (132, 1, 15, 24, 10, 17, 'Skit II', NULL);
INSERT INTO tracks VALUES (133, 1, 15, 24, 2, 17, 'Here I Iz', NULL);
INSERT INTO tracks VALUES (134, 1, 15, 24, 6, 17, 'Skit I', NULL);
INSERT INTO tracks VALUES (135, 1, 15, 24, 1, 17, 'Intro', NULL);
INSERT INTO tracks VALUES (136, 1, 15, 24, 15, 17, 'Hip Hop Radio', NULL);
INSERT INTO tracks VALUES (137, 1, 15, 24, 9, 17, 'Go Wit Me', NULL);
INSERT INTO tracks VALUES (138, 1, 15, 24, 16, 17, 'Skit IV', NULL);
INSERT INTO tracks VALUES (139, 1, 15, 24, 12, 17, 'Tell Me', NULL);
INSERT INTO tracks VALUES (140, 1, 15, 24, 8, 17, 'Love Iz', NULL);
INSERT INTO tracks VALUES (141, 1, 15, 24, 7, 17, 'To Tha Girlz', NULL);
INSERT INTO tracks VALUES (142, 1, 15, 24, 11, 17, 'Hold Up Dub', NULL);
INSERT INTO tracks VALUES (143, 1, 15, 24, 17, 17, 'Don''t Give Up', NULL);
INSERT INTO tracks VALUES (144, 1, 15, 24, 13, 17, 'Skit III', NULL);
INSERT INTO tracks VALUES (145, 1, 15, 24, 14, 17, 'S.O.D', NULL);
INSERT INTO tracks VALUES (146, 1, 15, 24, 5, 17, 'React', NULL);
INSERT INTO tracks VALUES (147, 1, 15, 24, 4, 17, 'Party Right', NULL);
INSERT INTO tracks VALUES (148, 1, 15, 24, 3, 17, 'We Don''t Care', NULL);
INSERT INTO tracks VALUES (149, 1, 13, 25, 21, 22, 'Les Raisons du crime', '5ce52beb-3204-4797-bebc-34694bb22706');
INSERT INTO tracks VALUES (150, 1, 14, 26, 2, 16, 'N (Haine)', 'c89c5c86-bf72-4427-9169-2b65fb679a22');
INSERT INTO tracks VALUES (151, 1, 2, 27, 10, 17, 'All Night Long', 'f7f77fb5-8069-42a2-9d4e-4e19f5887b44');
INSERT INTO tracks VALUES (152, 1, 8, 28, 10, 13, 'The Zone', '5f3ab454-29f4-4d47-a1af-06fe4b63ccd3');
INSERT INTO tracks VALUES (496, 2, 31, 81, 10, 15, 'You Made The Difference', NULL);
INSERT INTO tracks VALUES (153, 1, 16, 29, 2, 18, 'Black Mafioso (interlude)', 'a5749281-d79f-4ae8-a75e-83882b71cfd0');
INSERT INTO tracks
VALUES (154, 1, 16, 29, 8, 18, 'Peu de gens le savent (interlude)', 'c1ed2d4f-9f48-4e96-89ea-74f88ff2b5ba');
INSERT INTO tracks VALUES (155, 1, 16, 29, 1, 18, 'Visions de vie', '63558d77-2d86-4dc2-bb42-679de2761332');
INSERT INTO tracks VALUES (156, 1, 16, 29, 5, 18, 'Peur noire', '5589db7b-f856-4cae-9834-d5ba771ea1e2');
INSERT INTO tracks VALUES (157, 1, 16, 29, 18, 18, 'Mourir 1000 fois', 'ededf0b8-5ecf-423d-9428-ed9ce86710ac');
INSERT INTO tracks VALUES (158, 1, 16, 29, 11, 18, 'Sacré Samedi soir', '67bc328b-e147-4406-b7e8-85242ede43ed');
INSERT INTO tracks VALUES (159, 1, 16, 29, 9, 18, 'Amour & Jalousie', 'ee21b848-8fcf-432f-95ba-fbdd746fd097');
INSERT INTO tracks
VALUES (160, 1, 16, 29, 14, 18, 'Black Cyrano de Bergerac (interlude)', '6803a6e1-bac0-452a-aff5-41d20c88af0e');
INSERT INTO tracks VALUES (161, 1, 16, 29, 6, 18, 'L''Enfant seul', '86a8b4ef-e591-41f3-960b-313c5c7c8c19');
INSERT INTO tracks VALUES (162, 1, 16, 29, 13, 18, 'Sortilège', 'f1ca7dc0-c505-4df2-bc24-80b057a30fce');
INSERT INTO tracks VALUES (163, 1, 16, 29, 3, 18, 'Hitman', '68170c9e-de65-414b-bcf1-bb1fe35ae601');
INSERT INTO tracks VALUES (164, 1, 16, 29, 7, 18, 'Alias Jon Smoke', '4fe43f1f-3897-419c-92bf-2548602a49d5');
INSERT INTO tracks VALUES (165, 1, 16, 29, 4, 18, 'Qui peut le nier !', '86171a17-8d81-4b2d-b5fa-2c8fc43fd350');
INSERT INTO tracks VALUES (166, 1, 13, 29, 9, 22, 'Décembre 19.97 + 1', 'fad877e2-c91c-4e39-8687-bb01c6cca747');
INSERT INTO tracks VALUES (167, 1, 13, 29, 10, 22, 'Ghettos du monde', '2fb63218-a475-4146-84fd-965888e18025');
INSERT INTO tracks VALUES (168, 1, 13, 29, 8, 22, 'Le Laid', 'e4440897-71d1-4873-ba6b-619128bffd84');
INSERT INTO tracks VALUES (169, 1, 13, 29, 16, 22, 'Souvenirs', '04fab886-11d4-4c11-a383-fed9c656e74e');
INSERT INTO tracks VALUES (170, 1, 13, 29, 1, 22, 'Je vous l''ai dit', '0e81e5c9-5017-4610-a163-f579d1c516ba');
INSERT INTO tracks VALUES (171, 1, 13, 29, 3, 22, 'Demain peut-être', '99fc4643-5d5a-47bb-b268-c215eb1a3063');
INSERT INTO tracks VALUES (172, 1, 13, 29, 22, 22, 'L''amour est mort', 'dd91ebfd-9846-462c-be01-1bf4f551d6d6');
INSERT INTO tracks VALUES (173, 1, 13, 29, 7, 22, 'Boule de neige 2001', '3944882c-19ba-4138-9328-ea7f34fc781a');
INSERT INTO tracks VALUES (174, 1, 13, 29, 6, 22, 'J''ai mal au mic', '21ecd07b-694b-4cfe-8fca-a4a9fa7837cf');
INSERT INTO tracks VALUES (175, 1, 13, 29, 5, 22, 'Le Tango des belles dames', '10b04386-867a-42bd-a897-0ec3e56af2d2');
INSERT INTO tracks VALUES (176, 1, 13, 29, 19, 22, 'Guerilla', '7c804bc9-55d5-476b-8f91-cb3ea79fe58f');
INSERT INTO tracks VALUES (177, 1, 13, 29, 4, 22, 'La Valse de Jéricho', '00d7ad16-f49f-4c19-816c-234ed8d59a3e');
INSERT INTO tracks VALUES (178, 1, 13, 29, 12, 22, 'S''13-6.35', '1defff37-8385-44dd-ad8f-8c6753dfcb30');
INSERT INTO tracks VALUES (179, 1, 13, 29, 11, 22, 'Nuit de stress', '6bc8d2b5-84c1-491d-8044-1d837c4b7391');
INSERT INTO tracks VALUES (180, 1, 13, 29, 17, 22, 'Mine de cristal', '985d801d-8275-4ecb-ad2b-67638d9f38ac');
INSERT INTO tracks VALUES (181, 1, 13, 29, 2, 22, 'Quand j''arrive...', '96397580-47ee-46c7-bb2c-2005c093af69');
INSERT INTO tracks VALUES (182, 1, 14, 30, 11, 16, 'The Key', 'f4655476-cc0a-4861-a2d0-e5ab9e8a9ca0');
INSERT INTO tracks VALUES (183, 1, 17, 31, 9, 20, 'Lost Souls', '2a567441-6ccc-41ca-9307-4f13ef201922');
INSERT INTO tracks VALUES (184, 1, 12, 32, 7, 20, 'Itz a Set Up', '87272f76-2f4e-47ba-ba87-e2b9c8d6f905');
INSERT INTO tracks VALUES (185, 1, 12, 33, 4, 20, 'Royalty', '6479d225-d691-4d7a-b8fb-b0f65a8bbbf2');
INSERT INTO tracks VALUES (186, 1, 18, 34, 18, 19, 'À les écouter tous', '0648d1de-6587-4516-bab5-f98b3b8f21cd');
INSERT INTO tracks
VALUES (187, 1, 2, 35, 5, 17, 'Gettin'' Down at the Amphitheater', 'bdf07099-d791-4790-afce-bda1e7c19922');
INSERT INTO tracks
VALUES (188, 1, 2, 36, 14, 17, 'Stolen Moments, Part III (intro/outro)', '6c30829f-7037-4a60-bcc0-0fb3bc801a55');
INSERT INTO tracks VALUES (189, 1, 3, 37, 6, 15, 'Waitin'' for the DJ', 'ebd585b6-3415-45f6-ba07-0f42b5898eff');
INSERT INTO tracks VALUES (190, 1, 3, 37, 8, 15, 'Talk to You (Lil Darlin'')', '91a99316-e8a0-419c-a643-0619383c7a43');
INSERT INTO tracks VALUES (191, 1, 19, 38, 10, 13, 'This World', NULL);
INSERT INTO tracks VALUES (192, 1, 19, 38, 7, 13, 'Think about it', NULL);
INSERT INTO tracks VALUES (193, 1, 19, 38, 3, 13, 'Don''t Rush Me', NULL);
INSERT INTO tracks VALUES (194, 1, 19, 38, 4, 13, 'My Story', NULL);
INSERT INTO tracks VALUES (195, 1, 19, 38, 1, 13, 'Intro', NULL);
INSERT INTO tracks VALUES (196, 1, 19, 38, 11, 13, 'Love Thirst', NULL);
INSERT INTO tracks VALUES (197, 1, 19, 38, 5, 13, 'The Time Is Now', NULL);
INSERT INTO tracks VALUES (198, 1, 19, 38, 2, 13, '2-32''S', NULL);
INSERT INTO tracks VALUES (199, 1, 19, 38, 12, 13, 'Desperada', NULL);
INSERT INTO tracks VALUES (200, 1, 19, 38, 6, 13, 'Billy Killer', NULL);
INSERT INTO tracks VALUES (201, 1, 19, 38, 9, 13, 'American Pimp', NULL);
INSERT INTO tracks VALUES (202, 1, 19, 38, 8, 13, '#8', NULL);
INSERT INTO tracks VALUES (203, 1, 19, 38, 13, 13, 'Smashmouth', NULL);
INSERT INTO tracks VALUES (204, 1, 16, 39, 10, 18, '24 heures à vivre', '02459133-9057-4125-ab32-dd831cb1881d');
INSERT INTO tracks
VALUES (205, 1, 11, 40, 19, 19, 'Affirmative Action (Saint-Denis Style remix)', '9943f6e3-f021-4426-950d-2f2e847da5fa');
INSERT INTO tracks VALUES (206, 1, 20, 41, 6, 15, 'Take It in Blood', '027a4bca-b6d8-4b8f-b4c3-7574503578a3');
INSERT INTO tracks VALUES (207, 1, 20, 41, 7, 15, 'Nas Is Coming', 'cd69fa78-7fcc-45d7-aa00-8a12f6a99333');
INSERT INTO tracks VALUES (208, 1, 20, 41, 10, 15, 'Black Girl Lost', '49cead63-7949-4d68-87df-bdf02c05e4e1');
INSERT INTO tracks VALUES (209, 1, 20, 41, 5, 15, 'Watch Dem Niggas', 'c5d1197d-de99-478d-b5b7-b95cf8c13fee');
INSERT INTO tracks VALUES (210, 1, 20, 41, 13, 15, 'Live Nigga Rap', '33197767-e97f-4b99-95c7-39b906f7ae00');
INSERT INTO tracks VALUES (211, 1, 20, 41, 1, 15, 'Album Intro', 'dbf03169-8fad-41d9-8c37-13723e42643b');
INSERT INTO tracks VALUES (212, 1, 20, 41, 4, 15, 'I Gave You Power', 'df37b563-3eef-44ee-b165-24f1b76539d2');
INSERT INTO tracks VALUES (213, 1, 20, 41, 15, 15, 'Silent Murder', '879a7a87-b045-481d-b4cd-b8e72476617a');
INSERT INTO tracks VALUES (214, 1, 20, 41, 11, 15, 'Suspect', '74f3cf41-1d90-4221-89e5-d5ea6cbb9809');
INSERT INTO tracks VALUES (215, 1, 20, 41, 2, 15, 'The Message', '4b687b49-465a-4fea-b9ef-d90ebffe9e24');
INSERT INTO tracks VALUES (216, 1, 20, 41, 3, 15, 'Street Dreams', '1ec5fc9c-680b-4261-aa0e-c2ecf85ba752');
INSERT INTO tracks VALUES (217, 1, 20, 41, 9, 15, 'The Set Up', '1d37ce6a-3ca5-427b-9aef-c9e2daf7bb4a');
INSERT INTO tracks
VALUES (218, 1, 20, 41, 14, 15, 'If I Ruled the World (Imagine That)', '0582cf0c-cb97-4a8b-82a1-7d85bce0531c');
INSERT INTO tracks VALUES (219, 1, 20, 41, 8, 15, 'Affirmative Action', 'be9c3f99-ddc4-44e9-8c5d-6605f71510aa');
INSERT INTO tracks VALUES (220, 1, 20, 41, 12, 15, 'Shootouts', '979b34ad-741c-472f-abde-c2e43059ea16');
INSERT INTO tracks VALUES (221, 1, 21, 41, 1, 10, 'The Genesis', '35cd7342-74d2-4fe5-8e03-88edfa1cb1e1');
INSERT INTO tracks VALUES (222, 1, 21, 41, 3, 10, 'Life''s a Bitch', 'cf2ccc2a-3396-4676-9d06-e0ce49633c62');
INSERT INTO tracks VALUES (223, 1, 21, 41, 10, 10, 'It Ain''t Hard to Tell', '307ca877-7764-42cc-b77e-23f0a416e614');
INSERT INTO tracks VALUES (224, 1, 21, 41, 7, 10, 'One Love', 'ab69fe00-6917-4b4d-9c6d-5c9361d240f3');
INSERT INTO tracks VALUES (225, 1, 21, 41, 4, 10, 'The World Is Yours', '767825e6-72a9-4488-8f70-1ebb3e88365b');
INSERT INTO tracks VALUES (226, 1, 21, 41, 8, 10, 'One Time 4 Your Mind', '7ffc4bc2-e81d-4844-9c7d-d2e4c3ce4f5b');
INSERT INTO tracks VALUES (227, 1, 21, 41, 2, 10, 'N.Y. State of Mind', 'ee9eaab7-99e5-4ffe-8876-5b6882ef3d23');
INSERT INTO tracks VALUES (228, 1, 21, 41, 9, 10, 'Represent', '90f9b911-5ece-4762-a9bf-8d921a8c3f98');
INSERT INTO tracks
VALUES (229, 1, 21, 41, 6, 10, 'Memory Lane (Sittin'' in da Park)', '5c1ee415-be84-4d23-a15d-5f568e8cea25');
INSERT INTO tracks VALUES (230, 1, 21, 41, 5, 10, 'Halftime', '0cc75068-5de4-4b4e-872a-410c193db4ed');
INSERT INTO tracks VALUES (231, 1, 1, 42, 2, 20, 'Move Somethin''', '86d59346-3530-4195-a91c-0f4d41439e83');
INSERT INTO tracks VALUES (232, 1, 1, 42, 10, 20, 'Name of the Game', '765a646e-8a6e-4818-b3eb-50b2573e1ca4');
INSERT INTO tracks VALUES (233, 1, 1, 42, 12, 20, 'On My Way', '3e04284b-33ac-4b37-b87b-5dc71e280210');
INSERT INTO tracks VALUES (234, 1, 1, 42, 17, 20, 'Big Del from da Natti', 'e5f13b17-e465-421a-b002-aa2ada79e11d');
INSERT INTO tracks VALUES (235, 1, 1, 42, 14, 20, 'Love Speakeasy', '8e4150ad-25fb-4a2d-a7db-4875ffe9eebb');
INSERT INTO tracks VALUES (236, 1, 1, 42, 3, 20, 'Some Kind of Wonderful', '095b15aa-b57b-46b6-8863-0309bfff9322');
INSERT INTO tracks VALUES (237, 1, 1, 42, 7, 20, 'Memories Live', '2d151798-9872-4afb-a6b8-102c83be1b32');
INSERT INTO tracks VALUES (238, 1, 1, 42, 19, 20, 'Good Mourning', '9ea51ebd-8254-43d4-8c11-faa32e156f80');
INSERT INTO tracks VALUES (239, 1, 1, 42, 16, 20, 'Eternalists', 'd504f857-bc36-410b-ab50-2c365f3fecd4');
INSERT INTO tracks VALUES (240, 1, 1, 42, 1, 20, 'Experience Dedication', 'e11b0187-7052-434b-9057-ab4c9f19333e');
INSERT INTO tracks
VALUES (241, 1, 1, 42, 20, 20, 'Expansion Outro / For Women', 'b5cc92ec-9377-403d-9965-85c7ead33d10');
INSERT INTO tracks VALUES (242, 1, 1, 42, 8, 20, 'African Dream', '11e593ed-957b-4102-9bad-1da643027e2d');
INSERT INTO tracks
VALUES (243, 1, 22, 43, 14, 17, 'Fu-Gee-La (Refugee Camp remix)', '73afd4a1-4679-44d3-a2bf-8c48d9525987');
INSERT INTO tracks VALUES (244, 1, 22, 43, 3, 17, 'Ready or Not', 'b6115d1d-6aca-4b3e-aa34-b6ac53858b02');
INSERT INTO tracks VALUES (245, 1, 22, 43, 13, 17, 'Manifest/Outro', '98b1efc5-e0bc-4a0c-9c53-f4dad8c70cd9');
INSERT INTO tracks VALUES (246, 1, 22, 43, 9, 17, 'The Score', 'ad0b280c-b661-405c-8a03-3730facb3659');
INSERT INTO tracks VALUES (247, 1, 22, 43, 2, 17, 'How Many Mics', 'f77db1be-cbde-4bc8-bbaf-7c40ad3386bc');
INSERT INTO tracks
VALUES (248, 1, 22, 43, 17, 17, 'Fu-Gee-La (Refugee Camp Global mix)', 'c90a7533-a831-4fce-b038-45a863afd6d8');
INSERT INTO tracks
VALUES (249, 1, 22, 43, 15, 17, 'Fu-Gee-La (Sly & Robbie mix)', 'c2be1ee1-d4ee-4f44-905f-36017b4de672');
INSERT INTO tracks VALUES (250, 1, 22, 43, 6, 17, 'Fu-Gee-La', '46919d36-ca3d-4196-be75-f2391188d3a3');
INSERT INTO tracks VALUES (251, 1, 22, 43, 8, 17, 'Killing Me Softly', '26e6f0c2-33b2-4024-a233-9e0dead277c0');
INSERT INTO tracks VALUES (252, 1, 22, 43, 16, 17, 'Mista Mista', '85cac5db-99b9-463c-baa1-f5e010c39777');
INSERT INTO tracks VALUES (253, 1, 22, 43, 4, 17, 'Zealots', 'b8341c06-4800-49b3-8e93-1cd4c9351009');
INSERT INTO tracks VALUES (254, 1, 22, 43, 12, 17, 'No Woman, No Cry', 'ee3e8c87-b5df-4e9f-85b2-99eac2484671');
INSERT INTO tracks VALUES (255, 1, 22, 43, 11, 17, 'Cowboys', '7edec53d-9e9f-485c-b1e8-86a06b8267cb');
INSERT INTO tracks VALUES (256, 1, 22, 43, 5, 17, 'The Beast', '2c365083-014b-46b1-9978-92a1c6d504c8');
INSERT INTO tracks VALUES (257, 1, 22, 43, 10, 17, 'The Mask', '2b66c347-f014-433c-9551-6ba94a54df44');
INSERT INTO tracks VALUES (258, 1, 22, 43, 1, 17, 'Red Intro', '02658fd2-ba20-4959-8ff7-30e8dcb97a83');
INSERT INTO tracks VALUES (259, 1, 22, 43, 7, 17, 'Family Business', 'a8ca449b-8c86-497b-ace4-ef985d279037');
INSERT INTO tracks
VALUES (260, 1, 2, 44, 15, 17, 'Making a Name for Ourselves', 'cb0d9697-7708-4000-a7db-6db1bc4b31c5');
INSERT INTO tracks VALUES (261, 1, 16, 45, 15, 18, 'Mensongeur', 'fe6851ae-6efb-4750-80d2-74c41c82e7b1');
INSERT INTO tracks VALUES (262, 1, 16, 45, 12, 18, 'Le jour où tu partiras', '3e43cb84-3007-4ac7-9c82-f9f3626b0125');
INSERT INTO tracks VALUES (263, 1, 7, 46, 5, 12, 'Pas d''armure', 'c4178499-7e69-4748-9ba8-235f80b168fc');
INSERT INTO tracks VALUES (264, 1, 16, 47, 17, 18, 'La Loi du point final', '3d8025d7-378a-482e-b5a9-e2a11ed3c807');
INSERT INTO tracks VALUES (265, 1, 3, 48, 10, 15, 'Put It in the Air', '8986ce32-a17d-494f-9a55-d5fe46d2c94f');
INSERT INTO tracks VALUES (266, 1, 23, 49, 9, 18, 'Double Trouble', 'b110f947-af84-4ef0-8cf6-bb5575f078f7');
INSERT INTO tracks
VALUES (267, 1, 23, 49, 8, 18, 'Ain''t Sayin'' Nothin'' New', '7e525b8d-c005-486e-8127-137a2d50a640');
INSERT INTO tracks VALUES (268, 1, 23, 49, 6, 18, 'Dynamite!', '6c381013-5b0b-4b4f-ac8d-588d3b7e7245');
INSERT INTO tracks
VALUES (269, 1, 23, 49, 2, 18, 'Table of Contents, Parts 1 & 2', '06b27c80-1f93-4e47-a9c3-3fc64f61065f');
INSERT INTO tracks VALUES (270, 1, 23, 49, 4, 18, 'Step Into the Realm', '19b5ba1f-312b-4540-9760-dcc3735effec');
INSERT INTO tracks VALUES
  (271, 1, 23, 49, 14, 18, '3rd Acts: ? vs. Scratch 2... Electric Boogaloo', '4beef0a2-bf45-4356-87de-78de3ac8863f');
INSERT INTO tracks VALUES (272, 1, 23, 49, 3, 18, 'The Next Movement', '88f248ac-2df4-4664-b7ea-570b1e1ac4d8');
INSERT INTO tracks VALUES (273, 1, 23, 49, 5, 18, 'The Spark', '3b1e856e-1a39-4c41-b5af-a5b16cc83293');
INSERT INTO tracks VALUES (274, 1, 23, 49, 13, 18, 'Adrenaline!', '2d8084d9-880c-4417-a3cc-fbfc39690bdc');
INSERT INTO tracks VALUES (275, 1, 23, 49, 7, 18, 'Without a Doubt', '4bb8e8ee-bf22-4d18-97fb-9ce830c36383');
INSERT INTO tracks
VALUES (276, 1, 23, 49, 10, 18, 'Act Too (The Love of My Life)', '0d4ea887-b3a9-47cc-9e67-03236eb7edc2');
INSERT INTO tracks
VALUES (277, 1, 23, 49, 1, 18, 'Act Won (Things Fall Apart)', 'b3caafda-756b-4e97-a27f-5762d1be644f');
INSERT INTO tracks
VALUES (278, 1, 23, 49, 17, 18, 'The Return to Innocence Lost', 'd2edc6e9-bbf3-4558-90a7-b8769f09c531');
INSERT INTO tracks VALUES (279, 1, 23, 49, 11, 18, '100% Dundee', '896ee3b5-7925-435e-aea3-c74f9184eefb');
INSERT INTO tracks VALUES (280, 1, 23, 49, 18, 18, 'Act Fore... The End?', '13e6931b-e9b4-4dd9-b766-514db65abc50');
INSERT INTO tracks VALUES (281, 1, 23, 49, 16, 18, 'Don''t See Us', '58728040-774f-450e-b3eb-cce08ad59224');
INSERT INTO tracks VALUES (282, 1, 23, 49, 12, 18, 'Diedre vs. Dice', 'c9df7b92-0e99-4949-8a24-3f4b10ca840d');
INSERT INTO tracks VALUES (283, 1, 12, 50, 16, 20, 'Make ''em Pay', '62d6d79c-87fa-48e4-baa2-3c22f6271065');
INSERT INTO tracks VALUES (284, 1, 24, 51, 1, 12, 'Introduction', '73e40c7e-59d5-4f24-bc8f-ad33b4f2df7a');
INSERT INTO tracks VALUES (285, 1, 24, 51, 7, 12, 'Respectful Dedications', 'b80bb40a-2b96-4464-88ba-03bd976b2862');
INSERT INTO tracks VALUES (286, 1, 24, 51, 5, 12, 'No Time to Play', 'a0686a62-158d-4b34-b625-28259e66f651');
INSERT INTO tracks VALUES (287, 1, 24, 51, 2, 12, 'Loungin''', 'd8b9ddbe-5757-43e6-8ad9-9939d1492b1d');
INSERT INTO tracks VALUES (288, 1, 24, 51, 12, 12, 'Sights in the City', '124a9521-d38a-46d7-8841-9501f7868826');
INSERT INTO tracks VALUES (289, 1, 24, 51, 3, 12, 'When You''re Near', 'eba193bf-e6b2-4bb0-b18e-8e2da392a67d');
INSERT INTO tracks VALUES (497, 2, 31, 81, 4, 15, 'Interlude - Keep It Loose', NULL);
INSERT INTO tracks VALUES (290, 1, 24, 51, 4, 12, 'Transit Ride', 'c082b81d-016b-4dba-9be6-80551e180fa8');
INSERT INTO tracks VALUES (291, 1, 24, 51, 10, 12, 'Slicker Than Most', 'f97cdb51-7f0a-4af3-adb3-83c6f234d096');
INSERT INTO tracks VALUES (292, 1, 24, 51, 9, 12, 'Trust Me', '5ea0e4f3-a699-4140-8fa1-c660d5e12f99');
INSERT INTO tracks VALUES (293, 1, 24, 51, 6, 12, 'Down the Backstreets', '5b7f2ea6-49bd-485a-88e0-908173f6d4e3');
INSERT INTO tracks VALUES (294, 1, 24, 51, 11, 12, 'Le bien, le mal', 'bea9be60-2d96-4ad2-8955-c48fabfdd165');
INSERT INTO tracks VALUES (295, 1, 24, 51, 8, 12, 'Take a Look (at Yourself)', 'e8912bfc-838d-4c36-87ec-f1d84ef45474');
INSERT INTO tracks VALUES (296, 1, 17, 51, 17, 20, 'Count Your Blessings', '9d6daa8c-b2f8-4de7-8996-76f78a5c1e75');
INSERT INTO tracks
VALUES (297, 1, 17, 51, 5, 20, 'Skit A (Interview) / Watch What You Say', '3345cbe5-688f-47cc-b884-556cf19360c0');
INSERT INTO tracks VALUES (298, 1, 17, 51, 12, 20, 'Respect the Architect', '5b91b3d3-b03b-433f-a207-cf93b20f4b06');
INSERT INTO tracks
VALUES (299, 1, 17, 51, 16, 20, 'Jazzalude IV / Maintaining Focus', 'c37ad12c-e304-4789-955a-ccc9541246e5');
INSERT INTO tracks VALUES (300, 1, 17, 51, 1, 20, 'Intro (Light It Up) / Jazzalude I / New Reality Style',
                           '3407d787-b543-4866-8671-399bd25863df');
INSERT INTO tracks
VALUES (301, 1, 17, 51, 6, 20, 'Jazzalude II - Defining Purpose', '3aff50e7-c7a9-48d0-bbc8-905936ebf8a6');
INSERT INTO tracks VALUES (302, 1, 17, 51, 2, 20, 'Lifesaver', '679c9e76-9e24-4ce3-85dc-466826abfe3a');
INSERT INTO tracks VALUES (303, 1, 17, 51, 13, 20, 'Feel the Music', 'ee5562f4-5ca8-41ae-ad74-5a0b972d1013');
INSERT INTO tracks
VALUES (304, 1, 17, 51, 11, 20, 'Jazzalude III / Hip Hop as a Way of Life', 'f56e754d-0dbf-4e6b-9e29-51fa22ef18a8');
INSERT INTO tracks VALUES (305, 1, 17, 51, 15, 20, 'The Traveler', '52adee88-80dd-4c14-b705-053d66bd96d3');
INSERT INTO tracks VALUES (306, 1, 17, 51, 3, 20, 'Living in This World', 'cce35fd7-2ef1-44e2-bcd7-905f2ba269a4');
INSERT INTO tracks
VALUES (307, 1, 17, 51, 8, 20, 'Insert A (Mental Relaxation) / Medicine', '954e6433-3848-4d90-adac-fa4c827b6c68');
INSERT INTO tracks VALUES (308, 1, 17, 51, 18, 20, 'Choice of Weapons', '6468faf0-3885-4dde-9a15-b571aa3d91a8');
INSERT INTO tracks VALUES (309, 1, 17, 51, 7, 20, 'For You', '274c8ff2-38a3-4e80-884f-ab3ca831efd3');
INSERT INTO tracks VALUES (310, 1, 17, 51, 14, 20, 'Young Ladies', '1925f88e-5473-475e-a9a2-faedf4c570c3');
INSERT INTO tracks VALUES (311, 1, 17, 51, 4, 20, 'Looking Through Darkness', '74a57a2e-e27c-4827-92f3-5aee6cf13a7b');
INSERT INTO tracks
VALUES (312, 1, 17, 51, 20, 20, 'Skit B (Alot on My Mind) / Revelation', 'f14f5aa6-b6ab-4988-ba7a-6d6b41a83526');
INSERT INTO tracks VALUES (313, 1, 17, 51, 19, 20, 'Something in the Past', 'add09dc6-9b15-4f6e-a634-115dc569e1da');
INSERT INTO tracks
VALUES (314, 1, 17, 51, 10, 20, 'Insert B (The Real Deal) / Nobody Knows', 'aa5c10cb-b038-4f75-9c4c-9921cbdf8570');
INSERT INTO tracks VALUES (315, 1, 1, 52, 11, 20, 'Ghetto Afterlife', 'ee4a913c-246c-402c-9ecb-5963e0452207');
INSERT INTO tracks VALUES (316, 1, 12, 53, 13, 20, 'She Knowz What She Wantz', '4d0a2758-daad-4f5e-8166-9df1527dc0f8');
INSERT INTO tracks VALUES (317, 1, 12, 53, 11, 20, 'The Rep Grows Bigga', 'e00d3aff-e8fc-4814-8020-73db19460775');
INSERT INTO tracks VALUES (318, 1, 12, 53, 19, 20, 'Next Time', '2af33d98-fefb-415f-8d73-3f3348910775');
INSERT INTO tracks VALUES (319, 1, 12, 53, 20, 20, 'In Memory of...', '981d88cd-1c4e-4a60-93b9-60daec255261');
INSERT INTO tracks VALUES (320, 1, 12, 53, 6, 20, 'JFK 2 LAX', 'f270ee9e-a4e0-448c-9329-e348b9ef6635');
INSERT INTO tracks VALUES (321, 1, 12, 53, 14, 20, 'New York Strait Talk', '8fe1c4a2-f968-4f18-9547-813deda55256');
INSERT INTO tracks VALUES (322, 1, 12, 53, 3, 20, 'Work', '8b5aa95d-87bd-422e-b277-70859a943d22');
INSERT INTO tracks VALUES (323, 1, 12, 53, 15, 20, 'My Advice 2 You', '047f3a93-6eb3-411d-a887-77fe9a9f8d70');
INSERT INTO tracks VALUES (324, 1, 12, 53, 8, 20, 'Moment of Truth', '5286d7f4-6855-4b0a-abfd-ec402d5ec83e');
INSERT INTO tracks VALUES (325, 1, 12, 53, 2, 20, 'Robbin Hood Theory', '66cd0b0f-aba1-472f-a141-81c36be1a5db');
INSERT INTO tracks VALUES (326, 1, 12, 53, 12, 20, 'What I''m Here 4', 'b8a04677-09b3-41cd-b886-229e0bbbfedd');
INSERT INTO tracks VALUES (327, 1, 12, 53, 1, 20, 'You Know My Steez', '0b4bb8da-fece-40f9-ba42-84f53e0b8533');
INSERT INTO tracks VALUES (328, 1, 8, 54, 4, 13, 'It Don''t Stop', 'da756b6b-080c-45d0-9071-dc2fd60b7e24');
INSERT INTO tracks VALUES (329, 1, 8, 54, 11, 13, 'We Are!', 'bd9f865f-991f-4707-a5d6-4d6679f7849a');
INSERT INTO tracks VALUES (330, 1, 8, 54, 2, 13, 'Be No Slave', '6ea00214-37a1-48af-a612-8b24d41c59e5');
INSERT INTO tracks VALUES (331, 1, 8, 54, 1, 13, 'One to 31', '65420e54-f50a-4109-b0fd-7a896d4055da');
INSERT INTO tracks VALUES (332, 1, 8, 54, 8, 13, 'What You Holdin''?', '8e334e92-dc11-4912-a2d5-b9886a9505d4');
INSERT INTO tracks VALUES (333, 1, 8, 54, 5, 13, 'The Understanding', 'b6a6c451-6ecf-451a-bb70-a24a87d0dff6');
INSERT INTO tracks VALUES (334, 1, 8, 54, 9, 13, 'Ooweee', '1b4f33ed-34c5-4f68-9251-4e832b7deda8');
INSERT INTO tracks VALUES (335, 1, 8, 54, 12, 13, 'Simmer Down', 'c951d132-0cc7-421d-a534-0609f4473a46');
INSERT INTO tracks VALUES (336, 1, 8, 54, 6, 13, 'The Last Third', 'c2a36184-a60e-4352-b94f-11d0a31bb5fc');
INSERT INTO tracks VALUES (337, 1, 8, 54, 13, 13, 'You Out There', 'ac34fdbd-bcd7-4c2c-b2e3-d19ab484ba6f');
INSERT INTO tracks VALUES (338, 1, 25, 54, 7, 13, 'Audio Visual', NULL);
INSERT INTO tracks VALUES (339, 1, 25, 54, 4, 13, 'Do My Thing (featuring Cvees)', NULL);
INSERT INTO tracks VALUES (340, 1, 25, 54, 13, 13, 'After', NULL);
INSERT INTO tracks VALUES (341, 1, 25, 54, 1, 13, 'Here (featuring Soulive)', NULL);
INSERT INTO tracks VALUES (342, 1, 25, 54, 2, 13, 'Aaw Yeah', NULL);
INSERT INTO tracks VALUES (343, 1, 25, 54, 8, 13, 'Brooklyn Public Part 1', NULL);
INSERT INTO tracks VALUES (344, 1, 25, 54, 6, 13, 'The Sidewalks', NULL);
INSERT INTO tracks VALUES (345, 1, 25, 54, 10, 13, 'Harder', NULL);
INSERT INTO tracks VALUES (346, 1, 25, 54, 5, 13, 'Whoever', NULL);
INSERT INTO tracks VALUES (347, 1, 25, 54, 11, 13, 'Coming Home (featuring Dwele)', NULL);
INSERT INTO tracks VALUES (348, 1, 25, 54, 12, 13, 'Weather The Storm', NULL);
INSERT INTO tracks VALUES (349, 1, 25, 54, 9, 13, 'Listening (featuring Kola Rock)', NULL);
INSERT INTO tracks VALUES (350, 1, 25, 54, 3, 13, 'Fire Water', NULL);
INSERT INTO tracks VALUES (351, 1, 2, 55, 11, 17, 'Stolen Moments, Part I', '878293ee-afa0-4255-a52b-a85e5dc01566');
INSERT INTO tracks VALUES (352, 1, 2, 55, 8, 17, 'My City', 'ed00ef48-f8f0-4571-9fd5-4aae6e5bbed4');
INSERT INTO tracks VALUES (353, 1, 2, 55, 13, 17, '1''2 Many...', 'f4d5ce04-0524-469c-b158-9206dea608c7');
INSERT INTO tracks VALUES (354, 1, 2, 55, 2, 17, 'Invocation', '748ca42e-b38a-4972-8f1d-a18b6d47ee61');
INSERT INTO tracks VALUES (355, 1, 2, 55, 9, 17, 'Hungry', '7254e688-88b1-48d0-bd2e-81a292af5555');
INSERT INTO tracks VALUES (356, 1, 2, 55, 6, 17, 'Food for Funk', '44b1c5a0-ec66-4739-bbbc-1c8efd9893b5');
INSERT INTO tracks VALUES (357, 1, 2, 55, 1, 17, 'Introspective', '70f9a8e0-82da-4080-bf6c-f9e7fc226e25');
INSERT INTO tracks VALUES (358, 1, 2, 55, 3, 17, 'Real Nigga Quotes', '21fd208e-47bd-4e4a-8545-787d826f34a1');
INSERT INTO tracks VALUES (359, 1, 8, 56, 7, 13, 'Ole', 'a9f0d8ec-c9a5-495c-bae2-ab496104f0b5');
INSERT INTO tracks VALUES (360, 1, 1, 57, 4, 20, 'The Blast', '3cfa3d18-a0f3-4eeb-a4ad-4deeb0cc2a67');
INSERT INTO tracks VALUES (361, 1, 26, 58, 10, 14, 'Hits From the Bong', '737e3e7c-f502-41f4-a1e2-ec52d11691f7');
INSERT INTO tracks VALUES (362, 1, 26, 58, 5, 14, 'Lick a Shot', 'b810b19f-3cf2-425d-ad84-5e368d90052b');
INSERT INTO tracks VALUES (363, 1, 26, 58, 12, 14, 'A to the K', 'f2a1592c-d5af-4faa-966a-d95a555bee54');
INSERT INTO tracks VALUES (364, 1, 26, 58, 8, 14, '3 Lil'' Putos', 'eccf1662-0e82-4b38-88b3-939ab76d66b6');
INSERT INTO tracks
VALUES (365, 1, 26, 58, 2, 14, 'I Ain''t Goin'' Out Like That', '92f1979a-e5e8-4968-9b9a-54e9cc2cf32e');
INSERT INTO tracks VALUES (366, 1, 26, 58, 14, 14, 'Break ''em Off Some', '3ab4db3d-f2cf-41e4-9e64-14fef45aa155');
INSERT INTO tracks VALUES (367, 1, 26, 58, 1, 14, 'I Wanna Get High', 'bdab6db0-2fd6-4166-a5fa-fbf2ff213793');
INSERT INTO tracks VALUES (368, 1, 26, 58, 6, 14, 'Cock the Hammer', '28e97437-e8d6-45a3-9c3b-2b604970964e');
INSERT INTO tracks VALUES (369, 1, 26, 58, 7, 14, 'Lock Down (interlude)', 'ee2c7099-baf1-4dce-8a8f-58814661604c');
INSERT INTO tracks
VALUES (370, 1, 26, 58, 11, 14, 'What Go Around Come Around, Kid', '0b7a867c-75b1-406f-b6d8-c909f154b1d4');
INSERT INTO tracks VALUES (371, 1, 26, 58, 9, 14, 'Legalize It', '56f72775-c4d4-4bf4-9b75-a442999f34d8');
INSERT INTO tracks VALUES (372, 1, 26, 58, 4, 14, 'When the Shit Goes Down', 'ab64bfdf-806f-46f4-a891-fe95b45cd51c');
INSERT INTO tracks VALUES (373, 1, 26, 58, 13, 14, 'Hand on the Glock', 'd21c25d6-3073-4736-9932-e84d42aa9924');
INSERT INTO tracks VALUES (374, 1, 26, 58, 3, 14, 'Insane in the Brain', '29c3d007-4a1f-422a-957e-712a94c99764');
INSERT INTO tracks VALUES (375, 1, 2, 59, 12, 17, 'Stolen Moments, Part II', '1d5fa19c-f261-46a0-a17f-64f950c4644f');
INSERT INTO tracks
VALUES (376, 1, 18, 60, 7, 19, 'Le coffre-fort ne suivra pas le corbillard', 'b921025f-44c3-488d-a429-bfe50e322554');
INSERT INTO tracks
VALUES (377, 1, 18, 60, 2, 19, 'Les Coulisses de l''angoisse', '06909d96-3ea9-445f-80f9-cdb5ee5eee3f');
INSERT INTO tracks VALUES (378, 1, 18, 60, 12, 19, 'Le cuir usé d''une valise', 'b6ff01c5-b90a-43b3-a7ae-4eef3a3c1c1d');
INSERT INTO tracks VALUES (379, 1, 18, 60, 6, 19, 'Interlude 1', 'f050407d-13b1-49b0-ac77-0040a32d8baf');
INSERT INTO tracks VALUES (380, 1, 18, 60, 11, 19, '365 cicatrices', 'b9c3da6f-389f-41b7-9abc-1a936675bbcf');
INSERT INTO tracks VALUES (381, 1, 18, 60, 5, 19, 'Le Prédateur isolé', '9b64b0b2-4e06-42a5-8f5b-4ee6e1a7f87d');
INSERT INTO tracks VALUES (382, 1, 18, 60, 17, 19, 'On frappera', '395eefa2-3d54-4481-ae17-c483bb98c007');
INSERT INTO tracks VALUES (383, 1, 18, 60, 19, 19, 'Sortie', 'd990afb5-99cf-4010-a4d1-8cb94c0847b6');
INSERT INTO tracks VALUES (384, 1, 18, 60, 9, 19, 'Premier matin de Novembre', 'b2317e1e-ef50-4316-822e-9ac116fa3402');
INSERT INTO tracks VALUES (385, 1, 18, 60, 14, 19, 'Moha', '469d6bbe-4840-42fb-b6ed-e7ff3965b38d');
INSERT INTO tracks VALUES (386, 1, 18, 60, 15, 19, 'À 20000 lieues de la mer', '2a3bb458-0bb7-4c28-ad8f-fea328c09a27');
INSERT INTO tracks VALUES (387, 1, 18, 60, 16, 19, 'Le Silence de ma rue', 'ea9b5638-8e5b-41ef-ab8e-2bd47a7e6ddf');
INSERT INTO tracks VALUES (388, 1, 18, 60, 1, 19, 'Entrée', 'fba45a7c-fa7c-4501-b187-9647ba6aed6d');
INSERT INTO tracks
VALUES (389, 1, 18, 60, 8, 19, 'Les Petites annonces du carnage', '44782f73-fdbf-428b-aab8-dfff966bd1ae');
INSERT INTO tracks VALUES (390, 1, 18, 60, 13, 19, 'Interlude 2', 'bbee7764-a08a-47a6-9c9f-dec2cfc9fbff');
INSERT INTO tracks VALUES (391, 1, 18, 60, 4, 19, 'Je connais tes cauchemars', '664383ad-4758-4555-8d1d-c8e253486caf');
INSERT INTO tracks VALUES (392, 1, 18, 60, 10, 19, 'Écoute le sang parler', '9b6c7f7b-48ec-4edb-b27b-ebdde33a3994');
INSERT INTO tracks VALUES (393, 1, 18, 60, 3, 19, 'L''Ombre sur la mesure', '460cfa01-11a7-4480-bc08-54a87575ec96');
INSERT INTO tracks VALUES (394, 1, 27, 61, 18, 23, 'A Year and a Day', '3d7ba6ff-8f1e-4ba3-81f7-f47066a8aa20');
INSERT INTO tracks VALUES (395, 1, 27, 61, 3, 23, 'Johnny Ryall', '3da46caa-acf2-4c70-9700-1857b12d1f93');
INSERT INTO tracks VALUES (396, 1, 27, 61, 21, 23, 'Lay It on Me', '8cc392d5-e01e-4c9a-83d0-4385c0fb17f2');
INSERT INTO tracks VALUES (397, 1, 27, 61, 13, 23, 'Shadrach', '50e3cd8c-d1e9-4989-a536-111856824433');
INSERT INTO tracks VALUES (398, 1, 27, 61, 8, 23, 'Hey Ladies', '03cc8612-0a03-416f-9b49-cde52cfd8762');
INSERT INTO tracks VALUES (399, 1, 27, 61, 15, 23, '59 Chrystie Street', 'e1699aad-f859-4af6-a39d-a4694e05a529');
INSERT INTO tracks VALUES (400, 1, 27, 61, 23, 23, 'A.W.O.L.', '57a18130-09cc-43d5-991d-6420e91e7325');
INSERT INTO tracks VALUES (401, 1, 27, 61, 1, 23, 'To All the Girls', 'f63084b5-981c-4b51-af5c-e76d0c54a12f');
INSERT INTO tracks VALUES (402, 1, 27, 61, 6, 23, 'The Sounds of Science', '175b5759-0dff-4738-9edc-9d8416528a05');
INSERT INTO tracks
VALUES (403, 1, 27, 61, 10, 23, 'Looking Down the Barrel of a Gun', '60d89e3f-dcae-410d-a50e-2ff1d4d6a964');
INSERT INTO tracks VALUES (404, 1, 27, 61, 19, 23, 'Hello Brooklyn', '7127a891-963b-4569-8903-18bded9504b7');
INSERT INTO tracks VALUES (405, 1, 27, 61, 14, 23, 'Ask for Janice', 'fa63828f-d220-4fa6-af36-2414d8db973c');
INSERT INTO tracks VALUES (406, 1, 27, 61, 17, 23, 'Stop That Train', 'ceea8aeb-810c-4a99-9170-fe4b6d9a9716');
INSERT INTO tracks VALUES (407, 1, 27, 61, 22, 23, 'Mike on the Mic', 'ca0f3f3c-c15e-4c83-83ec-38a9f4252bd2');
INSERT INTO tracks VALUES (408, 1, 27, 61, 9, 23, '5-Piece Chicken Dinner', '49a097f4-3fa5-48b5-ac49-dc3902af0ffe');
INSERT INTO tracks VALUES (409, 1, 27, 61, 7, 23, '3-Minute Rule', 'c8dd9280-1401-407f-8b6b-046a0631d996');
INSERT INTO tracks VALUES (410, 1, 27, 61, 11, 23, 'Car Thief', '379f15e7-0407-4329-8dce-435a5de87175');
INSERT INTO tracks VALUES (411, 1, 27, 61, 2, 23, 'Shake Your Rump', 'bae3b5f2-f939-4232-89f5-91ba49672ad5');
INSERT INTO tracks VALUES (412, 1, 27, 61, 5, 23, 'High Plains Drifter', 'e4116661-9f6d-4aa8-a2f9-f46dfefd58c1');
INSERT INTO tracks VALUES (413, 1, 27, 61, 16, 23, 'Get on the Mic', 'aff026d2-77cd-4a96-bc0a-3c6f078a2d5a');
INSERT INTO tracks VALUES (414, 1, 27, 61, 20, 23, 'Dropping Names', '7944072f-7bca-44e1-b707-086ffb57561d');
INSERT INTO tracks VALUES (415, 1, 27, 61, 4, 23, 'Egg Man', '10c16cdc-3a08-4d80-9b7c-6826d4c4aaea');
INSERT INTO tracks VALUES (416, 1, 27, 61, 12, 23, 'What Comes Around', '7150fc7e-2f09-486a-b9c3-0aae34276b65');
INSERT INTO tracks VALUES (417, 1, 11, 62, 18, 19, 'Come Again 2 (remix)', '9a319e1f-8bcd-4d22-963b-e9fb2c04e041');
INSERT INTO tracks VALUES (418, 1, 28, 63, 2, 20, 'Le Calme comme essence', 'eca5ea62-7a44-49e3-bdb0-e1e4944740f9');
INSERT INTO tracks VALUES (419, 1, 28, 63, 16, 20, 'Prométhée', 'e57f7a97-cfda-463f-b972-58fe7dbd31b2');
INSERT INTO tracks
VALUES (420, 1, 28, 63, 6, 20, 'Assedic : 3 heures du matin', 'b372c427-c657-447d-aee3-3e39f58d9a72');
INSERT INTO tracks VALUES (421, 1, 28, 63, 5, 20, 'Métèque et mat', 'df065716-5df0-4c03-a8db-87b01670e061');
INSERT INTO tracks VALUES (422, 1, 28, 63, 9, 20, 'La Face B', 'ef14d4f1-afb5-4cb5-9436-ab782538522e');
INSERT INTO tracks
VALUES (423, 1, 28, 63, 19, 20, 'Bad Boys de Marseille, Part 2', 'a7aee26a-f823-4125-ac2b-8fa91b432560');
INSERT INTO tracks VALUES (424, 1, 28, 63, 13, 20, 'Dirigé vers l''est', '6726aeda-fecb-42dd-9476-e18cf20cb049');
INSERT INTO tracks VALUES (425, 1, 28, 63, 3, 20, 'Je ne suis pas à plaindre', '30bd324e-3dee-4076-98b7-afc765c4b4df');
INSERT INTO tracks VALUES (426, 1, 28, 63, 17, 20, 'Un brin de haine', '0d9938ae-ce22-4ad2-90a5-f8dce6b5c8d2');
INSERT INTO tracks VALUES (427, 1, 28, 63, 12, 20, 'Lettre aux hirondelles', '9973080c-9145-4a3e-b307-cdf12b77ee78');
INSERT INTO tracks VALUES (428, 1, 28, 63, 10, 20, 'Di polipo', 'dceb5deb-5994-41dc-9ef1-2177bef1cbe2');
INSERT INTO tracks
VALUES (429, 1, 28, 63, 8, 20, 'Au fin fond d''une contrée...', 'dbc9951d-7bd0-4669-86da-eece90ba9ea8');
INSERT INTO tracks VALUES (430, 1, 28, 63, 1, 20, 'La Cosca', 'b77e338e-1eac-4466-93e6-5ef67fab32e3');
INSERT INTO tracks
VALUES (431, 1, 28, 63, 7, 20, 'Éclater un type des Assedic', '2498fbf4-d27d-43b6-a573-1ec164e9f54b');
INSERT INTO tracks
VALUES (432, 1, 28, 63, 18, 20, 'Je combats avec mes démons', '613ef6b5-25de-4e0d-b93b-ff1946c4128e');
INSERT INTO tracks VALUES (433, 1, 28, 63, 14, 20, 'Je suis peut-être...', '5f94fb46-91b0-4a18-98c5-c7b73fadcdaf');
INSERT INTO tracks VALUES (434, 1, 28, 63, 4, 20, 'La Vie de rêve', 'e23b564b-dc4b-47bf-90bf-3f6a50ca64b9');
INSERT INTO tracks VALUES (435, 1, 28, 63, 11, 20, 'L''Americano', '71a54cae-1359-42fb-b395-5d864431d1d0');
INSERT INTO tracks VALUES (436, 1, 28, 63, 20, 20, 'J''ai pas de face', 'ee0c76c2-cda3-4c72-a2f7-34466ec6c219');
INSERT INTO tracks VALUES (437, 1, 1, 64, 9, 20, 'Down for the Count', '6d845ba4-e845-4b40-86f5-be4da84a0562');
INSERT INTO tracks VALUES (438, 1, 13, 65, 15, 22, 'À ton enterrement', '657f4f76-b0bd-4f86-8ec1-97620a6c2de4');
INSERT INTO tracks VALUES (439, 1, 13, 66, 14, 22, 'Fais-le pour moi', '7bca9166-e4dd-4da3-a618-4f1b097aaa68');
INSERT INTO tracks VALUES (440, 1, 1, 67, 18, 20, 'Touch You', '63ff591f-f086-43f4-a66e-40f244b22469');
INSERT INTO tracks VALUES (441, 1, 7, 68, 8, 12, 'Pollutions', 'b823defb-127d-4d1b-b571-fd40e6a8f653');
INSERT INTO tracks
VALUES (442, 1, 16, 69, 16, 18, 'La Lettre (Tant de choses à dire)', '237ec200-454f-4f28-bd24-d8b4bda22209');
INSERT INTO tracks VALUES (443, 1, 3, 70, 13, 15, 'Stand to the Side', '8c187d17-4ba1-42e4-8653-9f608d4d8293');
INSERT INTO tracks VALUES (444, 1, 3, 71, 2, 15, 'Rush', 'd58794eb-506d-4158-be73-ffe1ae650752');
INSERT INTO tracks VALUES (445, 1, 3, 71, 11, 15, 'The Proud', '5fa8183c-6a4b-4dbb-824b-59e5968dc485');
INSERT INTO tracks VALUES (446, 1, 3, 71, 4, 15, 'Shock Body', 'c6f04eeb-1f93-4ddb-adc7-cf1fe703b509');
INSERT INTO tracks VALUES (447, 1, 3, 71, 14, 15, 'Good to You', '315d152b-cc01-46e6-8e33-80c4a61e686c');
INSERT INTO tracks VALUES (448, 1, 3, 71, 3, 15, 'Get By', '7fe9deeb-ce40-4e1c-9f63-8c654dcb495a');
INSERT INTO tracks VALUES (449, 1, 3, 71, 1, 15, 'Keynote Speaker', 'a58dfce5-855a-4704-9556-b506ba7bfa41');
INSERT INTO tracks
VALUES (450, 1, 7, 72, 9, 12, 'Soudaine montée d''adrénaline dans l''éloge', 'ab2e5b40-b4fa-4869-8e7d-e1afa943a9b2');
INSERT INTO tracks VALUES (451, 1, 3, 73, 15, 15, 'Won''t You Stay', 'c35c41b7-1bf0-4421-8e80-fe14ecec3b27');
INSERT INTO tracks VALUES (452, 1, 28, 74, 15, 20, 'Bad Boys de Marseille', '61f280af-118d-40d7-a34d-cead388191f7');
INSERT INTO tracks
VALUES (453, 1, 2, 75, 7, 17, 'G.O.D. (Gaining One''s Definition)', 'b5827efe-d348-49c5-a32e-35eb39d5b53f');
INSERT INTO tracks VALUES (454, 1, 13, 76, 13, 22, 'Premier suicide', 'bfb52ed6-cbf1-4af9-8d0f-c3ec0cf7b282');
INSERT INTO tracks VALUES (455, 1, 23, 77, 15, 18, 'You Got Me', 'cefcb6a8-4770-44b1-a1d2-5cb536b051cf');
INSERT INTO tracks VALUES (456, 1, 29, 78, 15, 16, 'Independenza', 'b5cdd915-1668-484d-9d3b-35b11b83a98d');
INSERT INTO tracks VALUES (457, 1, 29, 78, 7, 16, 'L''Empire du côté obscur', 'd1a83a22-eb71-4385-981c-e6ba40a90bde');
INSERT INTO tracks
VALUES (458, 1, 29, 78, 6, 16, 'Elle donne son corps avant son nom', '5b36d64f-6500-456c-8853-fb225d8f6cbc');
INSERT INTO tracks VALUES (459, 1, 29, 78, 5, 16, 'Petit Frère', '03dde3c2-1932-4d00-b7d8-53c9f49370e4');
INSERT INTO tracks VALUES (460, 1, 29, 78, 8, 16, 'Regarde', '7cd48f4a-721c-4a90-8096-267a49d6ac3a');
INSERT INTO tracks VALUES (461, 1, 29, 78, 3, 16, 'Nés sous la même étoile', 'c6e6f9dc-c89e-48fe-9eb4-8ccb46d6a2df');
INSERT INTO tracks VALUES (462, 1, 29, 78, 16, 16, 'Demain, c''est loin', 'f1e5c309-cbf9-41a1-841f-9b166ed01176');
INSERT INTO tracks
VALUES (463, 1, 29, 78, 10, 16, 'Quand tu allais, on revenait', '8baa9167-15d5-4227-ae68-a9fc9fdb61f5');
INSERT INTO tracks
VALUES (464, 1, 29, 78, 12, 16, 'Un bon son brut pour les truands', '03b953ff-617e-45d8-8a19-ebd2ba955f87');
INSERT INTO tracks
VALUES (465, 1, 29, 78, 1, 16, 'L''École du micro d''argent', '5d5b092e-da50-45e1-9c0c-59ddf150b3f5');
INSERT INTO tracks VALUES (466, 1, 29, 78, 9, 16, 'L''Enfer', '63b210d2-4a1d-4774-9559-d2bb968ac77f');
INSERT INTO tracks VALUES (467, 1, 29, 78, 11, 16, 'Chez le mac', '5cc21de3-813d-455d-ac29-65b328d91796');
INSERT INTO tracks VALUES (468, 1, 29, 78, 14, 16, 'Un cri court dans la nuit', '65cb1c9f-841d-4f81-a83b-d32fbb1a660d');
INSERT INTO tracks VALUES (469, 1, 29, 78, 2, 16, 'Dangereux', '12f01a19-6ad4-4309-b297-3df78ce4e4fd');
INSERT INTO tracks VALUES (470, 1, 29, 78, 4, 16, 'La Saga', 'f8c74f2c-bef1-405d-822f-1f001b474635');
INSERT INTO tracks VALUES (471, 1, 29, 78, 13, 16, 'Bouger la tête', '610a33b2-b660-4834-8be3-09cab45cffc5');
INSERT INTO tracks VALUES (472, 1, 1, 79, 6, 20, 'Too Late', '8c7701c8-b658-4667-9697-1248c6da37fc');
INSERT INTO tracks VALUES (473, 1, 30, 80, 4, 14, 'Pescao envenenao', 'c2c38805-79eb-40dc-a30d-254a0206fe4c');
INSERT INTO tracks
VALUES (474, 1, 30, 80, 13, 14, 'Somos Pacífico (remix by Richard Blair)', '8a682ed8-f9c5-4f49-bfa4-92cd32b5dacf');
INSERT INTO tracks VALUES (475, 1, 30, 80, 8, 14, 'Te saco a corré', '74821b7b-e862-4584-81ae-b7954c6382e1');
INSERT INTO tracks VALUES (476, 1, 30, 80, 14, 14, 'Somos Pacífico (salsa version by Banda la República)',
                           'dbfe5405-cd8b-44cc-b418-d197c488faa6');
INSERT INTO tracks
VALUES (477, 1, 30, 80, 1, 14, 'El bombo (Toquemen el bombo)', '7d2ea622-7765-4e66-8512-ee1a349b72d7');
INSERT INTO tracks VALUES (478, 1, 30, 80, 11, 14, 'Los tenis', '5053b08b-939a-4a57-9b63-29c2791a33f4');
INSERT INTO tracks VALUES (479, 1, 30, 80, 2, 14, 'Son berejú', '7833a806-b56c-4ff1-9733-f665a90d88f1');
INSERT INTO tracks VALUES (480, 1, 30, 80, 12, 14, 'Infiel', '24460035-41d6-47e5-8180-556fe424e150');
INSERT INTO tracks VALUES (481, 1, 30, 80, 3, 14, 'Somos Pacífico', '97bef0b0-f690-454b-a915-f97647427070');
INSERT INTO tracks VALUES (482, 1, 30, 80, 9, 14, 'Oro', '7b9f9be5-20c0-4f62-96ed-cee22f498722');
INSERT INTO tracks VALUES (483, 1, 30, 80, 10, 14, 'La calle o la casa', '0285cf49-1f33-407d-b8fa-3f4f3a77b7e4');
INSERT INTO tracks VALUES (484, 1, 30, 80, 5, 14, 'San Antonio', '0d977363-2e67-4df1-a991-c7dc306e202c');
INSERT INTO tracks VALUES (485, 2, 31, 81, 5, 15, '1st Time', NULL);
INSERT INTO tracks VALUES (486, 2, 31, 81, 12, 15, 'HAS2B', NULL);
INSERT INTO tracks VALUES (487, 2, 31, 81, 7, 15, 'Can I Keep It? (feat. Talib Kweli and Tiye Phoenix)', NULL);
INSERT INTO tracks VALUES (488, 2, 31, 81, 8, 15, 'Teo''s Intro', NULL);
INSERT INTO tracks VALUES (489, 2, 31, 81, 2, 15, 'I''m So Okay', NULL);
INSERT INTO tracks VALUES (490, 2, 31, 81, 1, 15, 'New Voice', NULL);
INSERT INTO tracks VALUES (491, 2, 31, 81, 13, 15, 'Interlude - Keep It Tight', NULL);
INSERT INTO tracks VALUES (492, 2, 31, 81, 6, 15, 'I Got U', NULL);
INSERT INTO tracks VALUES (493, 2, 31, 81, 11, 15, 'Why Can''t I See?', NULL);
INSERT INTO tracks VALUES (494, 2, 31, 81, 3, 15, 'Real Deal', NULL);
INSERT INTO tracks VALUES (498, 2, 31, 81, 15, 15, 'Man You Love Blues', NULL);
INSERT INTO tracks VALUES (499, 2, 31, 81, 9, 15, 'Send Me Somebody To Love', NULL);
INSERT INTO tracks VALUES (500, 2, 32, 82, 15, 15, 'A Little Deeper', '8f478b60-c4f0-4ef1-860d-d261ba428ea3');
INSERT INTO tracks VALUES (501, 2, 32, 82, 12, 15, 'Now U Want My Love', '90f28601-5577-49b7-b084-3d9edb0da397');
INSERT INTO tracks VALUES (502, 2, 32, 82, 5, 15, 'Brother', '95eecb0f-21bb-480b-ad13-7883fd44756c');
INSERT INTO tracks VALUES (503, 2, 32, 82, 4, 15, 'Put Him Out', '566cf621-5fca-44dd-97cf-5bfa0cd84b51');
INSERT INTO tracks VALUES (504, 2, 32, 82, 9, 15, 'Watch Over Them', '2e882bc2-ec91-42d1-b894-79f5410b844e');
INSERT INTO tracks VALUES (505, 2, 32, 82, 2, 15, 'Dy-na-mi-tee', 'b21c78e9-6b2e-4e23-95d1-2ea535ef7149');
INSERT INTO tracks VALUES (506, 2, 32, 82, 7, 15, 'Sick ''n'' Tired', '0ed6c63c-5e86-4f06-a779-7b728e4d3b4a');
INSERT INTO tracks VALUES (507, 2, 32, 82, 8, 15, 'Afraid 2 Fly', '2952fe13-eb46-45de-8647-2b373d7d41e3');
INSERT INTO tracks VALUES (508, 2, 32, 82, 1, 15, 'Natural High (interlude)', '2eeeb617-cb14-436a-8d88-a00f9f9e75ad');
INSERT INTO tracks VALUES (509, 2, 32, 82, 11, 15, 'Krazy Krush', '244ba615-c60a-41bc-ac43-2af035153305');
INSERT INTO tracks
VALUES (510, 2, 32, 82, 6, 15, 'It Takes More (Bloodshy main mix)', 'a2c51cf4-6e19-47b2-b470-5e2c719fd96a');
INSERT INTO tracks VALUES (511, 2, 32, 82, 13, 15, 'Gotta Let U Know', 'e04f9efc-e4eb-4777-a286-6b73c4421c8f');
INSERT INTO tracks VALUES (512, 2, 32, 82, 14, 15, 'All I Ever', '55845ae9-fce2-40df-817a-f29787fc76ab');
INSERT INTO tracks VALUES (513, 2, 32, 83, 3, 15, 'Anyway U Want It', '9005088c-ffe9-4690-abd6-5eab8c630be8');
INSERT INTO tracks VALUES (514, 2, 32, 84, 10, 15, 'Seed Will Grow', '517444ae-8334-40d7-b416-1d7b176f3120');
INSERT INTO tracks VALUES (515, 3, 33, 85, 11, 30, 'Serious Trouble', '1e950cb9-feb5-4fca-89d3-76aaeb2dc72c');
INSERT INTO tracks
VALUES (516, 3, 33, 86, 15, 30, 'Into the Stars (Firebirds remix)', '619e6b49-491e-4bd4-b6e6-f6b4246f57c6');
INSERT INTO tracks VALUES (517, 3, 34, 87, 6, 12, 'Fooling You', '177a20c9-be21-42d9-ba9f-42a52f64d67e');
INSERT INTO tracks VALUES (518, 3, 33, 88, 14, 30, 'Shake Your Body', '9471993f-95e7-4f2e-8eb3-097dd2b52237');
INSERT INTO tracks
VALUES (519, 3, 33, 89, 29, 30, 'I Sit on Acid (Soulwax remix)', '1116e076-ad53-4563-a021-4189d63f0f8a');
INSERT INTO tracks VALUES (520, 3, 35, 90, 18, 19, 'Black Water', '6a4a62ff-9b05-4b22-8a55-5842f48aa23b');
INSERT INTO tracks VALUES
  (521, 3, 33, 91, 12, 30, 'Androgyny (Thee Glitz mix by Felix da Housecat)', '827f0256-d100-4bbf-8347-a81dd50523e3');
INSERT INTO tracks VALUES (522, 3, 36, 92, 2, 12, 'Notas', '280ae59d-e4a5-440c-9ba9-79705bb16e32');
INSERT INTO tracks VALUES (523, 3, 33, 93, 28, 30, 'The Beach vs. Sandwiches (New Order vs. Detroit Grand Pubahs)',
                           '15c07130-c186-4b47-b33f-52120c4cb528');
INSERT INTO tracks VALUES
  (524, 3, 33, 93, 9, 30, 'Joe le Taxi vs. Crush on You (Hanayo with Jürgen Paape vs. The Jets)',
   '04e25f39-c823-406c-96ce-654bd49943b3');
INSERT INTO tracks VALUES (525, 3, 33, 93, 4, 30,
                           'J''aime regarder les Mecs vs. Dance to the Music vs. Oh Sheila (Polyester vs. Sly & The Family Stone vs. Ready for the World)',
                           '7393f1f0-5601-45e7-a8ae-7baf11d464f8');
INSERT INTO tracks VALUES
  (526, 3, 33, 93, 17, 30, 'Independent Women, Part 1 vs. Dreadlock Holiday (Destiny''s Child vs. 10cc)',
   'b229edd2-fe1e-4582-8679-0061ab43083d');
INSERT INTO tracks VALUES (527, 3, 33, 93, 1, 30,
                           'Peter Gunn (live) vs. Where''s Your Head At (Head-a-Pella) (Emerson, Lake & Palmer vs. Basement Jaxx)',
                           '922d82f5-2afa-433f-91ed-02946125d18a');
INSERT INTO tracks
VALUES (528, 3, 33, 93, 18, 30, '9 to 5 vs. Eple (Dolly Parton vs. Röyksopp)', '8ee90442-ae60-476d-a3c5-cb4e03a718a1');
INSERT INTO tracks VALUES
  (529, 3, 33, 93, 7, 30, 'The ''O'' Medley vs. Silverscreen-Shower Scene (Bobby O vs. Felix da Housecat)',
   'ffa8bf74-4581-441a-a0fa-7f7cb8a759a5');
INSERT INTO tracks VALUES
  (530, 3, 33, 93, 8, 30, 'No Fun vs. Push It (The Stooges vs. Salt-N-Pepa)', '99708382-021d-4ef4-addd-25065aa49071');
INSERT INTO tracks VALUES (531, 3, 33, 93, 16, 30, 'Concepts vs. 99 Luftballons (Interstellar vs. Nena)',
                           '1aa494b9-49d3-4f3b-be61-b6e4b5b1493a');
INSERT INTO tracks VALUES (532, 3, 33, 93, 13, 30,
                           'Disc Jockey''s Delight, Volume 2 vs. Kaw-Liga (Prairie mix) (Frank Delour vs. The Residents)',
                           'a1989129-8004-431b-bb84-a54b0edb3c98');
INSERT INTO tracks VALUES (533, 3, 33, 93, 10, 30,
                           'Funkacise vs. Motocross Madness vs. French Kiss (Funkacise Gang vs. Soul Grabber vs. Lil'' Louis & The World)',
                           '05d002c8-1cf3-42e8-8fb9-4952ee71c528');
INSERT INTO tracks VALUES
  (534, 3, 33, 93, 21, 30, 'I Wish vs. My Gigolo vs. Cannonball (Skee-Lo vs. Maurice Fulton vs. The Breeders)',
   'b09d7a15-fc74-40c7-9eb6-00a70d35e0cd');
INSERT INTO tracks VALUES (535, 3, 35, 94, 8, 19, 'I''m So Sorry', '54b929b9-96b4-4f0c-a031-a9d7723b788b');
INSERT INTO tracks VALUES (536, 3, 35, 95, 1, 19, 'Someone to Love Me (Naked)', '12c7337e-be6d-48bb-9e4e-5c14f20d3a7c');
INSERT INTO tracks VALUES (537, 3, 35, 96, 2, 19, 'The Look', '1d5108b6-58e5-4992-bb24-f60b8757635f');
INSERT INTO tracks VALUES (538, 3, 35, 97, 5, 19, 'Two Against One', 'e7f5ff96-10a9-441d-a4ab-b02a875af5e7');
INSERT INTO tracks VALUES (539, 3, 33, 98, 20, 30, 'Keine Melodien', '5fb7d019-f39c-44d5-bf17-f2ac42be513e');
INSERT INTO tracks VALUES (540, 3, 35, 99, 10, 19, 'Truth', '92e5e487-1d4d-4a90-8d5a-2a49d7996074');
INSERT INTO tracks VALUES (541, 3, 35, 100, 7, 19, 'Btstu', '090b2c23-2527-4196-9c3e-f4e38eb11bd8');
INSERT INTO tracks VALUES (542, 3, 37, 101, 15, 18, 'Summer Crane', 'ffd07a99-1036-4af2-b1ed-16190c89969b');
INSERT INTO tracks VALUES (543, 3, 37, 101, 14, 18, 'Etoh', '8e7d252b-884a-4779-8f12-2123e0006019');
INSERT INTO tracks VALUES (544, 3, 37, 101, 4, 18, 'Two Hearts in 3/4 Time', '84bf3dbd-c178-484a-84a8-68f6cc457b59');
INSERT INTO tracks VALUES (545, 3, 37, 101, 10, 18, 'Electricity', '94b904ef-183c-4f07-b88e-185841487869');
INSERT INTO tracks VALUES (546, 3, 37, 101, 18, 18, 'Extra Kings', '6f27d243-51ea-4cd3-b29d-fa5e0b8f3ff9');
INSERT INTO tracks VALUES (547, 3, 37, 101, 1, 18, 'Since I Left You', 'e23a282a-a94f-417d-b06d-efc9bcef34d6');
INSERT INTO tracks VALUES (548, 3, 37, 101, 13, 18, 'Frontier Psychiatrist', 'ea8095ef-700b-4a06-9f40-9b22120c3d32');
INSERT INTO tracks VALUES (549, 3, 37, 101, 16, 18, 'Little Journey', 'c465e851-4076-407d-a320-d226f69a8810');
INSERT INTO tracks VALUES (550, 3, 37, 101, 12, 18, 'Pablo''s Cruise', '2cf86494-c51d-498e-b5bb-489480ae0967');
INSERT INTO tracks VALUES (551, 3, 37, 101, 7, 18, 'Close to You', '8c4c8630-8124-4078-87d4-fff9ec9e1ee6');
INSERT INTO tracks VALUES (552, 3, 37, 101, 5, 18, 'Avalanche Rock', '8382e3be-737f-4d98-b126-358a99403053');
INSERT INTO tracks VALUES (553, 3, 37, 101, 3, 18, 'Radio', '3d87585c-9eb8-4919-b3a0-c914a00a141f');
INSERT INTO tracks VALUES (554, 3, 37, 101, 9, 18, 'A Different Feeling', '781e254e-60b2-476a-9ec1-00f725879013');
INSERT INTO tracks VALUES (555, 3, 37, 101, 17, 18, 'Live at Dominoes', '71899b25-34ec-4482-84d1-7837f961f646');
INSERT INTO tracks VALUES (556, 3, 37, 101, 6, 18, 'Flight Tonight', '4e163912-4df0-449d-bd7d-2ae3bf446f08');
INSERT INTO tracks VALUES (557, 3, 37, 101, 11, 18, 'Tonight', 'dfa1a4da-99ee-4163-9840-2d8d00375d41');
INSERT INTO tracks VALUES (558, 3, 37, 101, 2, 18, 'Stay Another Season', '7821ecb7-06e4-425a-a8cb-fa079e138861');
INSERT INTO tracks VALUES (559, 3, 37, 101, 8, 18, 'Diners Only', '40d04e49-e902-41ec-9d62-4857fbefe11a');
INSERT INTO tracks VALUES (560, 3, 33, 102, 19, 30, 'Death Disco', 'cfd3911b-1ef0-4efb-868d-0c4c44c6d4bb');
INSERT INTO tracks VALUES (561, 3, 36, 103, 11, 12, 'Domingo', '753e544f-510b-45ed-916c-a1a14e8c1e53');
INSERT INTO tracks VALUES (562, 3, 33, 104, 30, 30, 'Start Button', 'ecfb1414-866a-4a58-ab78-fddcd907e4d7');
INSERT INTO tracks VALUES (563, 3, 38, 105, 11, 11, 'Alive Alone', 'f3368a88-f3a5-4a2a-b573-615e03da8a7a');
INSERT INTO tracks VALUES (564, 3, 38, 105, 9, 11, 'Life Is Sweet', '7d7d22d0-2835-4527-9b6e-717de5998f57');
INSERT INTO tracks VALUES (565, 3, 38, 105, 5, 11, 'Fuck Up Beats', 'e19af04d-40da-4a0e-9b8a-058244b266bd');
INSERT INTO tracks VALUES (566, 3, 38, 105, 3, 11, 'Song to the Siren', 'ad76764e-e522-4cb1-9c2c-7009c5fa08c9');
INSERT INTO tracks VALUES (567, 3, 38, 105, 8, 11, 'One Too Many Mornings', '752319ad-b3cc-4439-856e-9f09e18e21eb');
INSERT INTO tracks VALUES (568, 3, 38, 105, 7, 11, 'Chico''s Groove', '6d3e6a9b-2460-4cfb-84f7-c9394ec24b3e');
INSERT INTO tracks
VALUES (569, 3, 38, 105, 10, 11, 'Playground for a Wedgeless Firm', '7f0550cc-e6e4-46d9-b96b-858ea4405dee');
INSERT INTO tracks
VALUES (570, 3, 38, 105, 4, 11, 'Three Little Birdies Down Beats', '2fd615de-8780-4c89-a26b-2214ee7c973e');
INSERT INTO tracks VALUES (571, 3, 38, 105, 6, 11, 'Chemical Beats', '730a12a9-e40d-4766-bde5-685e108da8bb');
INSERT INTO tracks VALUES (572, 3, 38, 105, 2, 11, 'In Dust We Trust', 'd10d105c-1b96-4dda-8880-61dabd26b953');
INSERT INTO tracks VALUES (573, 3, 38, 105, 1, 11, 'Leave Home', 'ffa5ae0a-8ac3-4d58-9271-18e7dc70d4a2');
INSERT INTO tracks VALUES (574, 3, 39, 105, 11, 12, 'Harpoons', '251816a2-ca9d-4940-b64c-bba167b2b2d6');
INSERT INTO tracks VALUES (575, 3, 39, 105, 3, 12, 'All Rights Reversed', '5184419c-583b-42d4-afb4-94519a0ed606');
INSERT INTO tracks VALUES (576, 3, 39, 105, 5, 12, 'Do It Again', 'f305efbc-625b-4024-993b-95683c29e00e');
INSERT INTO tracks VALUES (577, 3, 39, 105, 1, 12, 'No Path to Follow', '04c3c148-9d7b-43f1-ac25-b48ac677f127');
INSERT INTO tracks VALUES (578, 3, 39, 105, 10, 12, 'Battle Scars', '10805ace-454c-4a04-a141-4087e9f3709e');
INSERT INTO tracks VALUES (579, 3, 39, 105, 8, 12, 'Burst Generator', 'b2777865-414f-4871-ab96-e4644eb64d4a');
INSERT INTO tracks VALUES (580, 3, 39, 105, 7, 12, 'The Salmon Dance', '3b190847-7a1d-41fc-bfe5-876e3091418e');
INSERT INTO tracks
VALUES (581, 3, 39, 105, 12, 12, 'The Pills Won''t Help You Now', 'b5efd8db-893c-4bc6-9b7f-62dc93736ac0');
INSERT INTO tracks VALUES (582, 3, 39, 105, 4, 12, 'Saturate', '9559e30a-efed-476d-9b86-1fa6dd52d940');
INSERT INTO tracks VALUES (583, 3, 39, 105, 6, 12, 'Das Spiegel', '0ecd9c44-f358-4e34-8844-3b368c014721');
INSERT INTO tracks
VALUES (584, 3, 39, 105, 9, 12, 'A Modern Midnight Conversation', '78d9b6e6-cdfd-451a-a08a-1915f7060767');
INSERT INTO tracks VALUES (585, 3, 39, 105, 2, 12, 'We Are the Night', '6d0f865b-7db9-428b-947d-2a0a886fd481');
INSERT INTO tracks VALUES (586, 3, 40, 105, 4, 11, 'Hold Tight London', '5efe0991-3407-4abc-b3fb-b76da1a6ef2f');
INSERT INTO tracks VALUES (587, 3, 40, 105, 8, 11, 'Close Your Eyes', '0e90381b-9a7b-48b3-a03c-78092c6c2ed8');
INSERT INTO tracks VALUES (588, 3, 40, 105, 7, 11, 'Left Right', '83b3ee17-1b4c-4fa1-9dfb-e3b1995705b4');
INSERT INTO tracks VALUES (589, 3, 40, 105, 2, 11, 'The Boxer', 'a607e814-0f8b-4e25-846a-a025e71280e7');
INSERT INTO tracks VALUES (590, 3, 40, 105, 10, 11, 'Marvo Ging', 'f0abb4c9-0627-4d32-a912-aeafb597f617');
INSERT INTO tracks VALUES (591, 3, 40, 105, 5, 11, 'Come Inside', 'd6f030ee-7c6a-4a0b-a8e7-9e0baa01e157');
INSERT INTO tracks VALUES (592, 3, 40, 105, 9, 11, 'Shake Break Bounce', '6db45219-f66d-4897-a7e2-8ff60a96defe');
INSERT INTO tracks VALUES (593, 3, 40, 105, 6, 11, 'The Big Jump', '6fb230ff-77e5-4951-bcd7-356feb0c7876');
INSERT INTO tracks VALUES (594, 3, 40, 105, 11, 11, 'Surface to Air', 'c5a5f775-e9d5-4c17-b4df-cf760b870209');
INSERT INTO tracks VALUES (595, 3, 40, 105, 1, 11, 'Galvanize', 'bac8e50d-d899-4518-9268-b2a8b384eb92');
INSERT INTO tracks VALUES (596, 3, 40, 105, 3, 11, 'Believe', '6db56e37-00ff-4a9f-9ced-7b5b8655447e');
INSERT INTO tracks VALUES (597, 3, 33, 106, 24, 30, 'Don''t Bring Me Down', '364b9d6b-0853-4508-8260-f1d002803720');
INSERT INTO tracks VALUES (598, 3, 35, 107, 3, 19, 'Brainwash', 'b57b182e-7239-4326-8ba5-b0879abc8297');
INSERT INTO tracks VALUES (599, 3, 34, 108, 2, 12, 'North Star', 'fd8db44f-afd8-4840-aeac-b925252ba28b');
INSERT INTO tracks VALUES (600, 3, 34, 108, 11, 12, 'She''s So Mad', '4ba40d90-da0d-41e1-b36d-58bc15a9d806');
INSERT INTO tracks VALUES (601, 3, 34, 108, 7, 12, 'Aneis', '1d8e32a4-06df-4bc0-8395-6e0442d19fd6');
INSERT INTO tracks VALUES (602, 3, 34, 108, 1, 12, 'Be Blessed, Be Back', '96512201-fdc5-4985-be10-946a6c792a56');
INSERT INTO tracks VALUES (603, 3, 34, 108, 10, 12, 'Along the Way', 'd70264c8-0d1c-474c-a7b4-656f2ebc4695');
INSERT INTO tracks VALUES (604, 3, 34, 108, 12, 12, 'Bonus Tracks', '964ecefe-e0ef-4341-8971-404e78dbe055');
INSERT INTO tracks VALUES (605, 3, 34, 108, 9, 12, 'Breakaway', '4842ecf9-efb6-49d7-8a4d-43321d261f8d');
INSERT INTO tracks VALUES (606, 3, 34, 108, 4, 12, 'I Spy', 'dacf65c5-53e7-4a1a-9fbc-60db6549f25e');
INSERT INTO tracks VALUES (607, 3, 33, 109, 25, 30, 'Hand to Phone', '1d111ac2-248e-4032-8fa8-ede7e84223fb');
INSERT INTO tracks VALUES (608, 3, 34, 110, 3, 12, 'About Me', '39d4edd8-2c6a-45b5-8b42-e3dab4c7b42b');
INSERT INTO tracks VALUES (609, 3, 33, 111, 23, 30, 'Danger! High Voltage', '8098e520-abf9-4666-bf2f-0c58c13ab695');
INSERT INTO tracks VALUES (610, 3, 41, 112, 12, 12, 'Nova', '0d0b3fe8-4a66-4e34-a4a1-a1392b60bdbd');
INSERT INTO tracks VALUES (611, 3, 41, 112, 11, 12, 'Toys', 'ddc371cb-35f3-4e04-b78e-482372e88356');
INSERT INTO tracks VALUES (612, 3, 41, 112, 3, 12, 'Reanimator', 'e4abf8cc-9cd4-48f9-9c2c-c5492fa92eda');
INSERT INTO tracks VALUES (613, 3, 41, 112, 5, 12, 'Nightlife', 'ecad72ab-170b-4a79-bfc1-685bfc2b8d74');
INSERT INTO tracks VALUES (614, 3, 41, 112, 6, 12, 'Escape', 'c70f93cb-b916-4286-a1fc-d6780a350b91');
INSERT INTO tracks VALUES (615, 3, 41, 112, 7, 12, 'Switch', '2946d85d-471a-4e0f-94c3-7eef627b3673');
INSERT INTO tracks VALUES (616, 3, 41, 112, 2, 12, 'Bridge', 'dd13b7a1-f403-448e-adaf-18699837b88c');
INSERT INTO tracks VALUES (617, 3, 41, 112, 8, 12, 'People Like Frank', '5d4e1d65-4bc4-4f74-8730-1b409d3aa82a');
INSERT INTO tracks VALUES (618, 3, 41, 112, 10, 12, 'Fast Eddie', '1dcc9f4f-adb0-400a-b3bd-80c10bad82e8');
INSERT INTO tracks VALUES (619, 3, 41, 112, 1, 12, 'Like Regular Chickens', '5ab32de0-a91e-40a7-bd05-91f1b08c506e');
INSERT INTO tracks VALUES (620, 3, 41, 112, 9, 12, 'Sultan Drops', '82ce8a10-a768-47ed-af3a-135bf4edf58e');
INSERT INTO tracks VALUES (621, 3, 41, 112, 4, 12, 'Sordid', '39010e2e-ff3f-4cdf-97df-3cc26044e949');
INSERT INTO tracks VALUES (622, 3, 35, 113, 4, 19, 'Embody', '1afc0557-640d-4861-a31f-2068f7ba5779');
INSERT INTO tracks VALUES (623, 3, 42, 114, 3, 15, 'No Escape', 'f77ae4b2-1a80-42d1-8f24-ef114439e1af');
INSERT INTO tracks VALUES (624, 3, 43, 115, 2, 12, 'Slow Down', '61fe514d-970c-4b2a-99ae-a69440f17028');
INSERT INTO tracks VALUES (625, 3, 43, 115, 11, 12, 'Da Mistake', '2226631a-8b85-42b3-b891-131823e8692f');
INSERT INTO tracks VALUES (626, 3, 43, 115, 10, 12, 'Eastside', '2e232f90-a67a-4d86-b7d2-e33af8d1917f');
INSERT INTO tracks VALUES (627, 3, 43, 115, 1, 12, 'La Fugitive', 'c585176c-a827-4857-90a1-4c2b895a2f9d');
INSERT INTO tracks VALUES (628, 3, 43, 115, 6, 12, 'Free at Last', '7bad2319-97be-4915-b542-143bfd6c5790');
INSERT INTO tracks VALUES (629, 3, 43, 115, 7, 12, 'I Man Dub', '1b399c6a-d495-4437-8a9f-924831924c8a');
INSERT INTO tracks VALUES (630, 3, 43, 115, 5, 12, 'When I''m Good I''m So Good, When I''m Bad I''m Better',
                           '5a8990f5-c604-4c39-b0a4-20b448d200cb');
INSERT INTO tracks VALUES (631, 3, 43, 115, 9, 12, 'The Day After', '55def6e2-0923-422c-b025-f98e5453f02b');
INSERT INTO tracks VALUES (632, 3, 43, 115, 12, 12, 'New York/Barbes', 'e3524823-31c2-428c-80de-947988f2586f');
INSERT INTO tracks VALUES (633, 3, 43, 115, 8, 12, 'Reflection', '32d19e5c-eaf5-402e-963d-7a0c4a214e44');
INSERT INTO tracks VALUES (634, 3, 43, 115, 4, 12, 'Doxa', 'a2dad853-b2bc-4ad0-ac40-e30cfee48534');
INSERT INTO tracks VALUES (635, 3, 43, 115, 3, 12, 'Rainbow Dub', 'cadb17dd-d121-492c-ae05-2b6bdd2f4b41');
INSERT INTO tracks VALUES (636, 3, 35, 116, 17, 19, 'Body Beat', '1a38c2d4-8ad0-45b5-8395-7265e6ca2481');
INSERT INTO tracks VALUES (637, 3, 33, 117, 5, 30, 'I Wanna Be Your Dog', '407b1844-2d53-4fcc-8b5d-deb66b282fcf');
INSERT INTO tracks VALUES (638, 3, 35, 118, 9, 19, 'Stereo', 'f48bd112-af39-4bb8-9416-514c5863bb4a');
INSERT INTO tracks VALUES (639, 3, 35, 119, 12, 19, 'Wires', 'ff7b4fe8-9bcf-4e62-a2a9-35a4bd4d0a60');
INSERT INTO tracks VALUES (640, 3, 44, 120, 2, 13, 'P.H. Theme', '947d0179-5a30-4401-819b-587a67d088f8');
INSERT INTO tracks VALUES (641, 3, 35, 121, 19, 19, 'Slippery Slope', '3e3b430c-781c-4b0c-86d6-ab76df95808d');
INSERT INTO tracks VALUES (642, 3, 35, 122, 15, 19, 'Tribe', '782f9902-e4f8-42ca-a1e8-d585091b0869');
INSERT INTO tracks VALUES (643, 3, 36, 123, 1, 12, 'Amor Porteño', 'f8c53b77-e5ef-4ac8-ba5c-a9617d750247');
INSERT INTO tracks VALUES (644, 3, 45, 124, 3, 12, 'D.A.N.C.E.', 'd18a1284-d6a1-42d9-b0c1-b247e9f27b80');
INSERT INTO tracks VALUES (645, 3, 45, 124, 9, 12, 'DVNO', 'c19a4565-62ca-4926-b91c-e650612b963b');
INSERT INTO tracks VALUES (646, 3, 45, 124, 12, 12, 'One Minute to Midnight', 'a359ce7b-39b0-493a-8aee-0e1cb60ac0ec');
INSERT INTO tracks VALUES (647, 3, 45, 124, 4, 12, 'Newjack', 'b63614d4-cea7-4cb3-85e6-047a1e60735f');
INSERT INTO tracks VALUES (648, 3, 45, 124, 8, 12, 'Tthhee Ppaarrttyy', '88d1915a-5a30-48d3-9b4f-da0ccb21b790');
INSERT INTO tracks VALUES (649, 3, 45, 124, 2, 12, 'Let There Be Light', '5e10ccfe-eb20-4c51-95cb-b5edc143556e');
INSERT INTO tracks VALUES (650, 3, 45, 124, 11, 12, 'Waters of Nazareth', '27e69c28-a383-41d0-9fa1-b97cb745ce97');
INSERT INTO tracks VALUES (651, 3, 45, 124, 1, 12, 'Genesis', 'a405352d-6f33-482c-a1be-0b5b2c966b63');
INSERT INTO tracks VALUES (652, 3, 45, 124, 10, 12, 'Stress', '6662c57d-240c-471a-b360-fcba24b03142');
INSERT INTO tracks VALUES (653, 3, 45, 124, 6, 12, 'Phantom, Part II', '8da1caed-9b21-49a7-a95f-f328f26e66de');
INSERT INTO tracks VALUES (654, 3, 45, 124, 5, 12, 'Phantom', 'e0bc2ebe-3ee2-4ee1-8bcb-9e95c0547b1f');
INSERT INTO tracks VALUES (655, 3, 45, 124, 7, 12, 'Valentine', '6ad051b4-6d12-4545-9f4f-54fa36e04fa4');
INSERT INTO tracks VALUES (656, 3, 33, 125, 26, 30, 'La Rock 01', 'b66f0d76-dbaf-4421-97b9-38aa7e2032b1');
INSERT INTO tracks VALUES (657, 3, 35, 126, 16, 19, 'Brand New Start', 'cf981f20-2ffd-4233-95c9-bb278d1a7795');
INSERT INTO tracks VALUES (658, 3, 44, 127, 10, 13, 'Sexual Attraction', '35c8f092-567a-479e-a37a-cf5adcfc74cd');
INSERT INTO tracks VALUES (659, 3, 44, 127, 7, 13, 'Armaggeddon', '005cd0cc-0a81-4e00-853f-c33944f049cb');
INSERT INTO tracks VALUES (660, 3, 44, 127, 13, 13, 'Raggamatik', 'c73010ed-ff75-41e1-8465-547dc8d14267');
INSERT INTO tracks
VALUES (661, 3, 44, 127, 12, 13, 'Groovambar (Space 1999 mix)', '803cfb07-ccbb-4c2f-b277-e45785091abc');
INSERT INTO tracks VALUES (662, 3, 44, 127, 9, 13, 'Groovambar', '297b132e-4168-425a-bbb1-b1de87c350ce');
INSERT INTO tracks VALUES (663, 3, 44, 127, 4, 13, 'Luv'' Bit', '0002ae03-8041-4b24-8f96-bf284f0a3f07');
INSERT INTO tracks VALUES (664, 3, 44, 127, 5, 13, 'Elektro M.J.', '64af71cc-058a-40c2-aa39-47f62780cfa5');
INSERT INTO tracks VALUES (665, 3, 44, 127, 3, 13, 'Romantic', '8bd243ea-6069-4d16-aa20-1d141cc3a8f4');
INSERT INTO tracks VALUES (666, 3, 44, 127, 8, 13, 'Reggaematic', '4b67f40c-1d9a-4c98-8007-86ba6bf5086a');
INSERT INTO tracks
VALUES (667, 3, 44, 127, 11, 13, 'P.H. Theme (Dub Party mix)', 'ebd797e8-c346-40a9-84c1-4ffb21f117dc');
INSERT INTO tracks VALUES (668, 3, 44, 127, 1, 13, 'Radio', '3967d8d1-ddec-4b74-a7f2-0a33f52e8d00');
INSERT INTO tracks VALUES (669, 3, 42, 127, 14, 15, 'Interlude', '31f5fa77-b25f-4eeb-9ea2-49173e5375ef');
INSERT INTO tracks VALUES (670, 3, 42, 127, 2, 15, 'Delice', 'd9ad398e-0219-4f6f-bccf-553698eddf69');
INSERT INTO tracks VALUES (671, 3, 42, 127, 1, 15, 'Intro', '195dff6b-bb41-42e0-b318-7c68667a4e9b');
INSERT INTO tracks VALUES (672, 3, 42, 127, 9, 15, 'Lion Youth', 'bc138a26-36a6-4aee-8f4d-fe1c7d9d17f0');
INSERT INTO tracks VALUES (673, 3, 42, 127, 5, 15, 'Blunted', 'f32402fa-de32-4ab9-b9ab-68dafe413a33');
INSERT INTO tracks VALUES (674, 3, 42, 127, 12, 15, 'Transmissions', 'a0f745f0-08ad-4a50-910d-b30a24a2d1a3');
INSERT INTO tracks VALUES (675, 3, 42, 127, 13, 15, 'Maison en dur', 'ae5e737b-5fb2-402f-913e-cbf3f1260329');
INSERT INTO tracks VALUES (676, 3, 42, 127, 11, 15, 'Parkside Souvenirs', 'bbab829a-3874-4782-b7df-7418637dee16');
INSERT INTO tracks VALUES (677, 3, 42, 127, 15, 15, '1 rythme 2 chiens', '6d1a9475-07e0-4d01-a7b5-604e695e58d9');
INSERT INTO tracks VALUES (678, 3, 42, 127, 4, 15, 'Escape Dub', 'f59660ad-8b5d-47c7-b70b-002c7d292cd1');
INSERT INTO tracks VALUES (679, 3, 42, 127, 8, 15, 'Les Rues de St Paul', '093c51cc-c01a-4804-8f07-e42e8abd0859');
INSERT INTO tracks VALUES (680, 3, 42, 127, 6, 15, 'Inspiration', 'd1f6f5ff-6ef7-476a-a807-a7c7c07c750d');
INSERT INTO tracks VALUES (681, 3, 46, 128, 12, 14, 'Weak Become Heroes', '7a78e227-10b7-4228-b312-e91cc8de28a0');
INSERT INTO tracks VALUES (682, 3, 46, 128, 6, 14, 'Geezers Need Excitement', '6a6d1e9b-e27a-4703-b366-b9adb34c3ec5');
INSERT INTO tracks VALUES (683, 3, 46, 128, 9, 14, 'Don''t Mug Yourself', '8f1b00cb-ef32-4930-adea-ff31f599c08f');
INSERT INTO tracks VALUES (684, 3, 46, 128, 2, 14, 'Has It Come to This?', 'e288ec6d-d60e-425a-81b2-aa821bce7992');
INSERT INTO tracks VALUES (685, 3, 46, 128, 14, 14, 'Stay Positive', 'f97261a4-536c-4f65-9566-2fda4589adcc');
INSERT INTO tracks VALUES (686, 3, 46, 128, 11, 14, 'The Irony of It All', 'addae2f7-35aa-4227-9597-89ebf7b77b9f');
INSERT INTO tracks VALUES (687, 3, 46, 128, 8, 14, 'Too Much Brandy', '4532f0cb-a961-45e7-b126-b38768292744');
INSERT INTO tracks
VALUES (688, 3, 46, 128, 3, 14, 'Let''s Push Things Forward', '202a39be-509f-4a79-b6e1-1472d193de37');
INSERT INTO tracks VALUES (689, 3, 46, 128, 13, 14, 'Who Dares Wins', '3e281c49-620a-4062-a9bf-3cefe43b9947');
INSERT INTO tracks VALUES (690, 3, 46, 128, 7, 14, 'It''s Too Late', 'eee91dd6-2a57-428d-aace-e02960e8e906');
INSERT INTO tracks VALUES (691, 3, 46, 128, 1, 14, 'Turn the Page', '2d76a84f-5e3f-4c90-9ed5-30643742f1b4');
INSERT INTO tracks VALUES (692, 3, 46, 128, 10, 14, 'Who Got the Funk?', 'e86ae4a7-2799-48c8-982d-808c8542bc45');
INSERT INTO tracks VALUES (693, 3, 46, 128, 5, 14, 'Same Old Thing', '9ee7ec6c-090b-4960-8c72-9fbe971b1f94');
INSERT INTO tracks VALUES (694, 3, 46, 128, 4, 14, 'Sharp Darts', '0cee178a-ed28-4098-aa60-4c0bcbd15944');
INSERT INTO tracks VALUES (695, 3, 34, 129, 5, 12, 'Anything Is Possible', '7e30261f-751c-4a72-bb25-cdd207533925');
INSERT INTO tracks VALUES (696, 3, 34, 130, 8, 12, 'Partir', '021c11a9-56f5-44f4-91ab-e08d98fa5821');
INSERT INTO tracks VALUES (769, 5, 51, 147, 2, 14, 'Rastaman Chant', NULL);
INSERT INTO tracks VALUES (697, 3, 33, 131, 3, 30, 'I''m Waiting for the Man', '3bfebd74-b40e-4fef-b45b-4752672655e8');
INSERT INTO tracks VALUES (698, 3, 42, 132, 7, 15, '20 Years Gone', '536ddacf-23ca-430e-a26e-263bc5873b92');
INSERT INTO tracks VALUES (699, 3, 42, 132, 10, 15, 'Mr Nice', '6ee6fa15-238c-4876-9039-def2deb8c943');
INSERT INTO tracks VALUES (700, 3, 36, 133, 6, 12, 'Mi Confesión', 'eb125082-c806-4cf4-a841-64446080609c');
INSERT INTO tracks
VALUES (701, 3, 33, 134, 27, 30, 'I Was Made for Loving You', '0e07efac-79c2-4c6a-aa3c-98f7bf9d6aaa');
INSERT INTO tracks VALUES (702, 3, 33, 135, 22, 30, 'Human Fly', '0d2c6ff1-b3dd-4232-9ac0-04cd3b9f890b');
INSERT INTO tracks VALUES (703, 3, 35, 136, 13, 19, 'I Will Do', '4033e3e0-3502-472b-9178-03d45b3f199e');
INSERT INTO tracks VALUES (704, 3, 33, 137, 2, 30, 'Fuck the Pain Away', '8be4e91c-1c39-4b35-83b5-5b45624840eb');
INSERT INTO tracks
VALUES (705, 3, 47, 138, 8, 10, 'V.C.F. Ramble (Electro Exp.)', '4e27d0a3-0c0b-4314-abdf-e2697b31c84d');
INSERT INTO tracks VALUES (706, 3, 47, 138, 4, 10, 'Bad Weather (Massive dub)', '67949935-336a-456a-abf2-0647cc1bad49');
INSERT INTO tracks VALUES (707, 3, 47, 138, 1, 10, 'Taniotoshi (HP906 dub)', 'bca38364-b4e9-4004-a83b-a31702327dea');
INSERT INTO tracks VALUES (708, 3, 47, 138, 2, 10, 'Short Visit (Steppa dub)', '8a07893a-80e4-440e-abac-99d9c9bfb872');
INSERT INTO tracks
VALUES (709, 3, 47, 138, 5, 10, 'Worse & Worse (Dark Down dub)', '308067fc-a4ee-49ba-b5fe-acab6db7e82c');
INSERT INTO tracks VALUES (710, 3, 47, 138, 7, 10, 'Buck Up (Sci-Fi dub)', '43700872-aad4-425d-a75e-6aa25fcaa054');
INSERT INTO tracks
VALUES (711, 3, 47, 138, 3, 10, 'Do Be Dub Addict (Sterming Jungle)', '0432f724-e241-4168-8132-27775d016231');
INSERT INTO tracks
VALUES (712, 3, 47, 138, 9, 10, 'Enter the Dragon (Drum Ersatz)', 'b87ec78b-ab2c-4b3e-b3a9-5b6d906ec5df');
INSERT INTO tracks
VALUES (713, 3, 47, 138, 6, 10, 'Spiral Snake (Hundalini dub)', '9ae087b8-7b80-4cbd-8048-53ec6a0ddca8');
INSERT INTO tracks VALUES (714, 3, 47, 138, 10, 10, 'Hard Working (Final dub)', 'e775c970-bbd4-4a18-b6c9-0f69299eb873');
INSERT INTO tracks VALUES (715, 3, 48, 139, 10, 10, 'Vuelvo al sur', 'f6f5b9c7-f947-4e5a-9f32-968d10216b93');
INSERT INTO tracks VALUES (716, 3, 48, 139, 6, 10, 'Una música brutal', '4cbaa8fd-522f-4e1a-82b8-15194bf956ad');
INSERT INTO tracks VALUES (717, 3, 48, 139, 7, 10, 'El capitalismo foráneo', '0253950b-bc95-4742-a6d8-ee5cb19e0bab');
INSERT INTO tracks VALUES (718, 3, 48, 139, 2, 10, 'Época', '6d7d4289-c47a-45e0-b1b1-4900205f9cf2');
INSERT INTO tracks VALUES (719, 3, 48, 139, 8, 10, 'Last Tango in Paris', 'c70de981-eff8-4de6-bad3-c930df0df010');
INSERT INTO tracks VALUES (720, 3, 48, 139, 9, 10, 'La del ruso', 'b0614a42-17b6-4ed8-81d0-d71422483505');
INSERT INTO tracks VALUES (721, 3, 48, 139, 4, 10, 'Tríptico', 'd16b82a1-ddd9-4ff7-85c6-5c9687687be8');
INSERT INTO tracks
VALUES (722, 3, 48, 139, 5, 10, 'Santa María (del Buen Ayre)', '631439aa-26e4-4513-a1e0-a87f12b4d838');
INSERT INTO tracks VALUES (723, 3, 48, 139, 1, 10, 'Queremos paz', 'ef3762d2-086b-4f26-9033-7916b3a5b07c');
INSERT INTO tracks VALUES (724, 3, 48, 139, 3, 10, 'Chunga''s Revenge', '90f74029-93cd-4cf4-a8df-67b3c392fe4d');
INSERT INTO tracks VALUES (725, 3, 36, 139, 9, 12, 'Criminal', '5995d97c-d199-47cc-a9ac-48ac2f42b08a');
INSERT INTO tracks VALUES (726, 3, 36, 139, 10, 12, 'Arrabal', '160f6fb2-7535-482d-9415-639cc10f9cb6');
INSERT INTO tracks VALUES (727, 3, 36, 139, 5, 12, 'Lunático', '25bfcfd0-7c4d-416a-ad9d-669c096e877f');
INSERT INTO tracks VALUES (728, 3, 36, 139, 8, 12, 'La Vigüela', 'dc55f73f-2b3f-4003-99be-136adbfd2fe3');
INSERT INTO tracks VALUES (729, 3, 36, 139, 4, 12, 'Celos', '0e011769-d065-433c-85dc-1440a1e1bafc');
INSERT INTO tracks VALUES (730, 3, 36, 139, 7, 12, 'Tango Canción', '62e33f92-40f5-4df7-9ec7-ddbb8c7b45ec');
INSERT INTO tracks VALUES (731, 3, 36, 139, 3, 12, 'Diferente', 'a6ef3f77-c75e-4660-9c13-8d8e6e2a6af5');
INSERT INTO tracks VALUES (732, 3, 36, 139, 12, 12, 'Paris, Texas', 'e5f296dc-5115-41bb-bfa6-c92bf1402b6d');
INSERT INTO tracks VALUES (733, 3, 44, 140, 6, 13, 'Herbman Skank', 'f0c55091-10bd-4203-9cde-2f54b14cc8af');
INSERT INTO tracks
VALUES (734, 3, 35, 141, 11, 19, 'The Sinner (Nova''s Edit)', '11ae30dc-04cd-4057-b7fb-7ee17f386247');
INSERT INTO tracks VALUES (735, 3, 35, 142, 6, 19, 'Slippin', '6722c700-f2d4-4c1b-afba-44cbc6748760');
INSERT INTO tracks VALUES (736, 3, 35, 143, 14, 19, 'In the Black of My Ship', 'd4354b97-afac-48df-a8a9-b521d991b45f');
INSERT INTO tracks VALUES (737, 3, 33, 144, 6, 30, 'Disko Kings', '0ca3e49b-d63d-46ee-bca4-f054638d5a9f');
INSERT INTO tracks VALUES (738, 4, 49, 145, 9, 11, 'Castilla (Seguidillas)', NULL);
INSERT INTO tracks VALUES (739, 4, 49, 145, 3, 11, 'Sevilla (Sevillanas)', NULL);
INSERT INTO tracks VALUES (740, 4, 49, 145, 10, 11, 'Cataluna', NULL);
INSERT INTO tracks VALUES (741, 4, 49, 145, 5, 11, 'Cordoba', NULL);
INSERT INTO tracks VALUES (742, 4, 49, 145, 7, 11, 'Cuba (Capricho)', NULL);
INSERT INTO tracks VALUES (743, 4, 49, 145, 6, 11, 'Inconnu', NULL);
INSERT INTO tracks VALUES (744, 4, 49, 145, 1, 11, 'Aragon (Fantasia)', NULL);
INSERT INTO tracks VALUES (745, 4, 49, 145, 8, 11, 'Asturias (Leyenda)', NULL);
INSERT INTO tracks VALUES (746, 4, 49, 145, 4, 11, 'Granada (Serenata)', NULL);
INSERT INTO tracks VALUES (747, 4, 49, 145, 2, 11, 'Oriental', NULL);
INSERT INTO tracks VALUES (748, 4, 49, 145, 11, 11, 'Bajo la palmera', NULL);
INSERT INTO tracks VALUES (749, 5, 50, 146, 4, 12, 'The Heathen', 'efd33029-9dae-4a94-99bf-13868531cb9f');
INSERT INTO tracks VALUES (750, 5, 50, 146, 3, 12, 'Guiltiness', '492d2bc3-eba9-4a2d-96a1-756fc5dc6d14');
INSERT INTO tracks VALUES (751, 5, 50, 146, 9, 12, 'Three Little Birds', '33b9b9fd-15a1-4e1f-a10a-3d15df5e58f0');
INSERT INTO tracks
VALUES (752, 5, 50, 146, 12, 12, 'Punky Reggae Party (long version)', 'cfd90954-89a3-4d28-9537-808cd3a7b1c4');
INSERT INTO tracks VALUES (753, 5, 50, 146, 2, 12, 'So Much Things to Say', 'f88b36f7-9ab9-46b1-8ae7-0492de4a3846');
INSERT INTO tracks VALUES (754, 5, 50, 146, 11, 12, 'Jamming (long version)', '10f630a0-90e5-4e9d-9c82-849ce03ba8fd');
INSERT INTO tracks VALUES (755, 5, 50, 146, 8, 12, 'Turn Your Lights Down Low', '1dc2cb5f-5521-426d-a312-6b80c4f1a17b');
INSERT INTO tracks VALUES (756, 5, 50, 146, 6, 12, 'Jamming', '755ea925-c364-4e59-b21f-8d0f4f73f821');
INSERT INTO tracks VALUES (757, 5, 50, 146, 7, 12, 'Waiting in Vain', '4d8ca8d4-6254-4967-b4db-53e5844e79d0');
INSERT INTO tracks VALUES (758, 5, 50, 146, 5, 12, 'Exodus', '4ee2ff88-ac68-4dee-9f7f-da99f6600415');
INSERT INTO tracks
VALUES (759, 5, 50, 146, 10, 12, 'One Love / People Get Ready', '11edb3ed-6f6b-4ce5-b2cc-917710577745');
INSERT INTO tracks VALUES (760, 5, 50, 146, 1, 12, 'Natural Mystic', 'd8b155c4-a5fc-4b9e-9cec-a683fd84202c');
INSERT INTO tracks VALUES (761, 5, 51, 147, 8, 14, 'Where Is The Love', NULL);
INSERT INTO tracks VALUES (762, 5, 51, 147, 4, 14, 'Jah Give His Love To Me', NULL);
INSERT INTO tracks VALUES (763, 5, 51, 147, 5, 14, 'Practice What U Preach', NULL);
INSERT INTO tracks VALUES (764, 5, 51, 147, 14, 14, 'Virtuous Dub', NULL);
INSERT INTO tracks VALUES (765, 5, 51, 147, 7, 14, 'Jah Is With Us', NULL);
INSERT INTO tracks VALUES (766, 5, 51, 147, 6, 14, 'Peaceful Valley', NULL);
INSERT INTO tracks VALUES (767, 5, 51, 147, 12, 14, 'Got To Find The Dub', NULL);
INSERT INTO tracks VALUES (768, 5, 51, 147, 10, 14, 'Virtuous Woman, Spiritual Man', NULL);
INSERT INTO tracks VALUES (770, 5, 51, 147, 9, 14, 'African Herbsman', NULL);
INSERT INTO tracks VALUES (771, 5, 51, 147, 13, 14, 'Peaceful Dub', NULL);
INSERT INTO tracks VALUES (772, 5, 51, 147, 11, 14, 'Leave Out A Babylon', NULL);
INSERT INTO tracks VALUES (773, 5, 51, 147, 1, 14, 'Easy Mr Bush', NULL);
INSERT INTO tracks VALUES (774, 5, 51, 147, 3, 14, 'Why Worry', NULL);
INSERT INTO tracks VALUES (775, 5, 52, 148, 13, 14, 'Live To Love "Dub"', NULL);
INSERT INTO tracks VALUES (776, 5, 52, 148, 3, 14, 'Give I Fe I Name', NULL);
INSERT INTO tracks VALUES (777, 5, 52, 148, 9, 14, 'Corrupted Man', NULL);
INSERT INTO tracks VALUES (778, 5, 52, 148, 8, 14, 'I Man A Grasshopper', NULL);
INSERT INTO tracks VALUES (779, 5, 52, 148, 1, 14, 'I Love I Bring', NULL);
INSERT INTO tracks VALUES (780, 5, 52, 148, 11, 14, 'Lonely Singer', NULL);
INSERT INTO tracks VALUES (781, 5, 52, 148, 12, 14, 'Don''t Force Me "Dub"', NULL);
INSERT INTO tracks VALUES (782, 5, 52, 148, 14, 14, 'Rastaman "Dub"', NULL);
INSERT INTO tracks VALUES (783, 5, 52, 148, 6, 14, 'Revolutionary Dream', NULL);
INSERT INTO tracks VALUES (784, 5, 52, 148, 5, 14, 'Come Mek Me Run', NULL);
INSERT INTO tracks VALUES (785, 5, 52, 148, 4, 14, 'We Should Be In Angola', NULL);
INSERT INTO tracks VALUES (786, 5, 52, 148, 2, 14, 'Be Not A Dread', NULL);
INSERT INTO tracks VALUES (787, 5, 52, 148, 7, 14, 'Where Am I', NULL);
INSERT INTO tracks VALUES (788, 5, 52, 148, 10, 14, 'Blood Money', NULL);
INSERT INTO tracks VALUES (789, 5, 53, 149, 7, 8, 'Funky Kingston', '22e50074-e27c-47cb-be01-179894ba5e8f');
INSERT INTO tracks VALUES (790, 5, 53, 149, 8, 8, 'It Was Written Down', '0482b48e-e3ed-4b74-ae6e-0d22bb47b77c');
INSERT INTO tracks VALUES (791, 5, 53, 149, 4, 8, 'I Can''t Believe', 'ebe1b3df-b6c4-4fb7-b9b9-d5bba11b3613');
INSERT INTO tracks VALUES (792, 5, 53, 149, 5, 8, 'Redemption Song', '27a8d78b-390d-4870-b2b2-21c6e68ff154');
INSERT INTO tracks VALUES (793, 5, 53, 149, 1, 8, 'Sit Right Down', '17c3473b-ddde-4470-94c4-6d964dc0c06a');
INSERT INTO tracks VALUES (794, 5, 53, 149, 2, 8, 'Pomp and Pride', 'ac660f6a-a2ab-45b0-a992-c7b396b54594');
INSERT INTO tracks VALUES (795, 5, 53, 149, 3, 8, 'Louie Louie', '51e4be76-4fed-4962-80ca-ebb7111d4cc3');
INSERT INTO tracks VALUES (796, 5, 53, 149, 6, 8, 'Daddy''s Home', '52e3f87a-c930-4c7f-8268-4cee8f5acd95');
INSERT INTO tracks VALUES (797, 6, 54, 150, 2, 4, 'Actual Proof', '2e88d2a1-bf75-4338-8869-24acd4682734');
INSERT INTO tracks VALUES (798, 6, 54, 150, 1, 4, 'Palm Grease', '6b917c0d-4cb4-479b-8981-2977f5a2d89f');
INSERT INTO tracks VALUES (799, 6, 54, 150, 3, 4, 'Butterfly', '40f27b22-38b0-43c7-8b3d-6dfa9f698532');
INSERT INTO tracks VALUES (800, 6, 54, 150, 4, 4, 'Spank-a-Lee', 'f5b59948-7e7a-4df8-922c-121de02bfb84');
INSERT INTO tracks VALUES (801, 6, 55, 150, 4, 4, 'Vein Melter', 'a5dcc78c-7f10-45ee-b33e-56e69d023be9');
INSERT INTO tracks VALUES (802, 6, 55, 150, 2, 4, 'Watermelon Man', 'de86fef7-3973-404c-ba44-0d38c4a510c1');
INSERT INTO tracks VALUES (803, 6, 55, 150, 1, 4, 'Chameleon', '1df11035-0a12-4bce-ab72-41bbd0f9fde3');
INSERT INTO tracks VALUES (804, 6, 55, 150, 3, 4, 'Sly', 'aba0c047-a912-4fa9-8744-8e6fc175b3ba');
INSERT INTO tracks VALUES (805, 6, 56, 151, 2, 12, 'Rock It for Me', '1c42eb6b-b3a3-4dbd-981b-efcf811f502b');
INSERT INTO tracks
VALUES (806, 6, 56, 151, 7, 12, 'Crying My Heart Out for You', '1c5c420a-5e57-4025-b984-fc7f64f91c3c');
INSERT INTO tracks VALUES (807, 6, 56, 151, 8, 12, 'Cryin'' Mood', '24a507ad-1b4e-4034-bd9d-52fdeaa99622');
INSERT INTO tracks VALUES (808, 6, 56, 151, 5, 12, 'A Little Bit Later On', '75fb6bb6-ba75-49e5-9e45-4aa86eecf789');
INSERT INTO tracks
VALUES (809, 6, 56, 151, 3, 12, 'If You Should Ever Leave Me', '46f5fd2d-038c-4f0a-a84a-c67fc5196e55');
INSERT INTO tracks VALUES (810, 6, 56, 151, 4, 12, 'Everybody''s Wrong but Me', '1c5643cb-12b4-4fe5-83d4-921438b1d2a6');
INSERT INTO tracks VALUES (811, 6, 56, 151, 6, 12, 'I Want to Be Happy', '59b87d4b-9232-464c-898b-09dea8d09462');
INSERT INTO tracks VALUES (812, 6, 56, 151, 1, 12, 'Wack Dust', '28ae05ea-ba0a-42d3-90e6-8083d6bfac63');
INSERT INTO tracks VALUES (813, 6, 56, 151, 9, 12, 'If You Only Knew', '70054df4-77c4-44b9-97c4-b60a43a6d7fe');
INSERT INTO tracks
VALUES (814, 6, 56, 151, 11, 12, 'Sing Me a Swing Song (and Let Me Dance)', '2c0764fc-25f2-4107-87f1-9d00f5541bb8');
INSERT INTO tracks
VALUES (815, 6, 56, 151, 12, 12, 'Under the Spell of the Blues', '767962de-56f1-4b72-8111-5bea41b106a9');
INSERT INTO tracks
VALUES (816, 6, 56, 151, 10, 12, 'The Darktown Strutters'' Ball', 'abf1d5a5-c095-484b-bffe-499642d93c5d');
INSERT INTO tracks VALUES (817, 6, 57, 152, 3, 10, 'More', '7dcbb49a-0731-44a1-b820-2709c05aea5a');
INSERT INTO tracks VALUES (818, 6, 57, 152, 6, 10, 'Bending New Corners', '32787f34-f57d-4c9e-a1dc-13e9141be3ae');
INSERT INTO tracks VALUES (819, 6, 57, 152, 1, 10, 'Sweet Mercy', '598d4b8c-9710-4b3c-964c-2edad7219a56');
INSERT INTO tracks VALUES (820, 6, 57, 152, 9, 10, 'Friendly Fire', 'b33722fb-0457-434a-8c04-2d03f515784c');
INSERT INTO tracks VALUES (821, 6, 57, 152, 10, 10, 'And', '838112a1-9873-408f-a666-fe458f4b7299');
INSERT INTO tracks VALUES (822, 6, 57, 152, 5, 10, 'Siegfried', 'a6edbb00-8136-4199-8635-efe5f4f4c1f3');
INSERT INTO tracks VALUES (823, 6, 57, 152, 7, 10, 'Betty', 'd8b829bd-bf57-4f47-ba37-c62b0db29a98');
INSERT INTO tracks VALUES (824, 6, 57, 152, 4, 10, 'Less', '1c5ad433-06b6-4064-8cf3-d302137986df');
INSERT INTO tracks VALUES (825, 6, 57, 152, 2, 10, 'Arroyo', '66acad4e-2e0f-4d48-8818-cc658e98ef54');
INSERT INTO tracks VALUES (826, 6, 57, 152, 8, 10, 'Minaret', '593cdeed-235a-4a30-bb30-8baee1019964');
INSERT INTO tracks VALUES (827, 6, 58, 152, 6, 10, 'Next Door', 'ee483350-5d4a-463d-a4fa-9c746c1037b6');
INSERT INTO tracks VALUES (828, 6, 58, 152, 8, 10, 'Wilfried', '60337cc7-cd42-4094-913e-d99460855287');
INSERT INTO tracks VALUES (829, 6, 58, 152, 3, 10, 'King B', '2b11496c-7b69-4dba-9436-4216f0e3ac5a');
INSERT INTO tracks VALUES (830, 6, 58, 152, 1, 10, 'Scody, Part 1', 'ea887b0e-3618-426f-9ec7-fd1cc296f502');
INSERT INTO tracks VALUES (831, 6, 58, 152, 7, 10, 'Belle de nuit', 'c37e4459-4090-44f9-bf48-e83ff3fdd885');
INSERT INTO tracks VALUES (832, 6, 58, 152, 4, 10, 'Flamingos', '673416e2-6dbd-4e65-b46d-6847b5354978');
INSERT INTO tracks
VALUES (833, 6, 58, 152, 10, 10, 'The Walk of the Giant Turtle', '916c0a0c-7f96-41be-9f8c-fa67f0eefa02');
INSERT INTO tracks VALUES (834, 6, 58, 152, 9, 10, 'Seven Skies', '8af8c0c3-1f81-4129-9804-5666dd7a827b');
INSERT INTO tracks VALUES (835, 6, 58, 152, 5, 10, 'Turiddu', '4cc329e9-2101-4d6b-be5c-a018f36fb1d0');
INSERT INTO tracks VALUES (836, 6, 58, 152, 2, 10, 'Scody, Part 2', '9af5b9bd-d297-4b5f-a015-719670fe3621');
INSERT INTO tracks VALUES (837, 6, 59, 152, 5, 8, 'Slim Pickings', '3b08eddf-acf3-491b-b047-c640aa31d4b7');
INSERT INTO tracks VALUES (838, 6, 59, 152, 4, 8, 'Wet in Paris', '689bed94-484e-4bd7-97d4-278f73adec61');
INSERT INTO tracks VALUES (839, 6, 59, 152, 8, 8, 'Free Stylin''', 'a718d96b-e52e-4917-b719-d91fb87c1050');
INSERT INTO tracks VALUES (840, 6, 59, 152, 7, 8, 'The Mask', '8c1f2af7-92e0-469c-9668-e05ee849f628');
INSERT INTO tracks VALUES (841, 6, 59, 152, 1, 8, 'Bukowsky-Chapter 1', '773773a9-d159-4d33-a676-64740005aa38');
INSERT INTO tracks VALUES (842, 6, 59, 152, 2, 8, 'Yuri''s Choice', 'f2a216ab-c873-4e66-bfba-88e44be9e4ef');
INSERT INTO tracks VALUES (843, 6, 59, 152, 3, 8, 'The Dawn', '99c4987f-09b3-4cc6-ad2f-b307723392b1');
INSERT INTO tracks VALUES (844, 6, 59, 152, 6, 8, 'Round-Trip', 'eb6b6e6c-3fc1-475c-b13d-3e34ba5ccc74');
INSERT INTO tracks
VALUES (845, 6, 60, 152, 7, 7, 'The Dawn, Part II (Mobile in Motion remix)', '051e1e2a-50e2-4427-aea3-8e8a9db873e7');
INSERT INTO tracks
VALUES (846, 6, 60, 152, 2, 7, 'Less (Pierre Audétat remix)', '242ea842-255e-478c-9648-1a8097d5773a');
INSERT INTO tracks
VALUES (847, 6, 60, 152, 6, 7, 'Sweet Mercy (Bugge Wesseltoft remix)', 'fe779f81-7057-4670-b309-fac4ebb3b647');
INSERT INTO tracks VALUES (848, 6, 60, 152, 5, 7, 'Siegfried (Goo remix)', 'f802555d-2dde-48cb-8bd9-4bf634a564cd');
INSERT INTO tracks
VALUES (849, 6, 60, 152, 3, 7, 'Bending New Corners (Alex Gopher remix)', '8d84bc33-0777-4e4b-8e06-dbebd9ebffc0');
INSERT INTO tracks VALUES (850, 6, 60, 152, 4, 7, 'More (Pierre Henry remix)', 'c321be84-7f72-4056-baf4-b5e50209d53b');
INSERT INTO tracks
VALUES (851, 6, 60, 152, 1, 7, 'The Dawn, Part I (Mobile in Motion remix)', 'f29353fa-9fc3-46ac-9e75-e7c9fdfa64b0');
INSERT INTO tracks VALUES (852, 6, 61, 152, 1, 11, 'The Point', '28eb8ef6-db43-45b2-9c0e-7b441cfeebd6');
INSERT INTO tracks VALUES (853, 6, 61, 152, 11, 11, 'Tahun Bahu', '42c4949b-269e-4360-88d2-05cec2e9207d');
INSERT INTO tracks VALUES (854, 6, 61, 152, 6, 11, 'Parlophone', '62335315-7f25-4570-ad9a-ecd9c7a6ad63');
INSERT INTO tracks VALUES (855, 6, 61, 152, 8, 11, 'Mantis', '57f59f82-ef5a-435e-9e2b-cb2fe3f1dc9e');
INSERT INTO tracks VALUES (856, 6, 61, 152, 7, 11, 'Magrouni', '420b09f2-bfa3-43cc-81b7-99f53bc96821');
INSERT INTO tracks VALUES (857, 6, 61, 152, 10, 11, 'Mare Mosso', '3db23238-e92d-47ab-aea5-81dbb39a3b56');
INSERT INTO tracks VALUES (858, 6, 61, 152, 3, 11, 'Saisir', '7508b3f1-d197-41e1-97a0-0bdb6625f1b0');
INSERT INTO tracks VALUES (859, 6, 61, 152, 5, 11, 'Nina Valeria', '0e9c6b70-2b05-436c-b7b3-73a0d120cf3d');
INSERT INTO tracks VALUES (860, 6, 61, 152, 9, 11, 'Yasmina', '4ce12570-3a0e-4241-acfd-eed82a24b29d');
INSERT INTO tracks VALUES (861, 6, 61, 152, 2, 11, 'La Mémoire du silence', '27fa4d00-b9d1-4d8d-8537-b00fe3248395');
INSERT INTO tracks VALUES (862, 6, 61, 152, 4, 11, 'No Fear', 'bf401757-75d5-4955-ab1b-c7cbef4b9ed4');
INSERT INTO tracks VALUES (863, 6, 62, 153, 8, 14, 'Asmarina (My Asmara)', '44b9640b-79de-4233-89a5-c8e2b4556443');
INSERT INTO tracks VALUES (864, 6, 63, 154, 1, 17, 'I''m a Fool to Want You', '8afbc524-24c4-4c12-98a0-8cbb6d1f5ae4');
INSERT INTO tracks VALUES (865, 6, 63, 154, 7, 17, 'You''ve Changed', 'c7245c02-3520-4d9b-a469-28d302874631');
INSERT INTO tracks
VALUES (866, 6, 63, 154, 14, 17, 'I''m a Fool to Want You (alternate take 2)', '814eac1c-455f-4618-8147-90d7ceee0949');
INSERT INTO tracks VALUES (867, 6, 63, 154, 17, 17, '[silence]', '639b780f-aa09-41b8-ad69-395833387988');
INSERT INTO tracks VALUES (868, 6, 63, 154, 8, 17, 'It''s Easy to Remember', 'cec73999-1838-4d89-bf46-c3250e81213f');
INSERT INTO tracks
VALUES (869, 6, 63, 154, 15, 17, 'The End of a Love Affair: The Audio Story', '87a2dcad-042f-4114-ba14-0f102af93196');
INSERT INTO tracks
VALUES (870, 6, 63, 154, 13, 17, 'I''m a Fool to Want You (take 3)', '8afbc524-24c4-4c12-98a0-8cbb6d1f5ae4');
INSERT INTO tracks VALUES (871, 6, 63, 154, 2, 17, 'For Heaven''s Sake', 'a158ed34-81fb-484f-98da-40354879f8fe');
INSERT INTO tracks VALUES (872, 6, 63, 154, 10, 17, 'Glad to Be Unhappy', '909d0890-f6f9-4a7f-b84c-7f1140b28741');
INSERT INTO tracks
VALUES (873, 6, 63, 154, 4, 17, 'I Get Along Without You Very Well', 'ae401c5a-95b6-4d49-a295-c6eaa2bf147b');
INSERT INTO tracks
VALUES (874, 6, 63, 154, 3, 17, 'You Don''t Know What Love Is', '8d13f47c-942b-4ca7-b445-c35e5d413903');
INSERT INTO tracks VALUES (875, 6, 63, 154, 6, 17, 'Violets for Your Furs', '58d7f170-4fc7-4ed9-87c0-2e89f2f46ae3');
INSERT INTO tracks VALUES (876, 6, 63, 154, 9, 17, 'But Beautiful', '659c6c8a-8691-4b8b-b451-4153b7fb62ed');
INSERT INTO tracks VALUES (877, 6, 63, 154, 5, 17, 'For All We Know', 'f3d77983-6a4d-4414-a0d9-9770cba3ad57');
INSERT INTO tracks VALUES (878, 6, 63, 154, 11, 17, 'I''ll Be Around', 'e81a24f8-926d-4e17-b4e8-3e86ba265d7c');
INSERT INTO tracks
VALUES (879, 6, 63, 154, 12, 17, 'The End of a Love Affair (mono)', '7344bb08-771b-4d3e-8e6c-8a22f585c1fc');
INSERT INTO tracks
VALUES (880, 6, 63, 154, 16, 17, 'The End of a Love Affair (stereo)', '22c41267-b0c7-4814-9d86-43322b605b15');
INSERT INTO tracks VALUES (881, 6, 64, 155, 4, 8, 'Splatch', '2df82be3-9fa5-49e3-9633-8c0b7497cb51');
INSERT INTO tracks VALUES (882, 6, 64, 155, 5, 8, 'Backyard Ritual', '2d941de1-8cc4-4678-8f2d-5fce5a9a37a2');
INSERT INTO tracks VALUES (883, 6, 64, 155, 8, 8, 'Full Nelson', '75d0d82d-4940-41db-bbcd-529212ba74cf');
INSERT INTO tracks VALUES (884, 6, 64, 155, 2, 8, 'Tomaas', 'c01272f0-a8d7-4ccf-ac58-3fd4b640b663');
INSERT INTO tracks VALUES (885, 6, 64, 155, 1, 8, 'Tutu', 'aaf4cc61-3dcc-4900-a62c-532f0c82360c');
INSERT INTO tracks VALUES (886, 6, 64, 155, 6, 8, 'Perfect Way', 'f075464b-621b-47ca-bc3e-5fa19331219a');
INSERT INTO tracks VALUES (887, 6, 64, 155, 7, 8, 'Don''t Lose Your Mind', '77058974-93cd-4444-94c5-c827aefd9039');
INSERT INTO tracks VALUES (888, 6, 64, 155, 3, 8, 'Portia', 'df7d7beb-989b-4005-9936-2c88e3d9c925');
INSERT INTO tracks VALUES
  (889, 6, 62, 156, 13, 14, 'Ené Alantchi Alnorem (I Can''t Live Without You)', '987af490-9be5-4086-a73f-b23ce40350cb');
INSERT INTO tracks VALUES (890, 6, 62, 157, 9, 14, 'Yèkatit (February)', '79c2137c-a920-4b88-b377-d1c5bd8a7353');
INSERT INTO tracks VALUES (891, 6, 62, 157, 4, 14, 'Tezeta (Nostalgia)', '307a218e-ebd6-4b62-b360-3a1ef6f1a75e');
INSERT INTO tracks VALUES
  (892, 6, 62, 157, 3, 14, 'Kasalèfkut Hulu (From All the Time I Have Passed)', 'ca0f09a2-1d6d-4be4-be12-1f9cc42fa3ca');
INSERT INTO tracks VALUES (893, 6, 62, 157, 12, 14, 'Sabyé (My Saba)', '5a439813-7acb-488b-bd48-5c794ea4a269');
INSERT INTO tracks VALUES (894, 6, 62, 157, 11, 14, 'Tezetayé Antchi Lidj (Baby, My Unforgettable Remembrance)',
                           '8a8bf193-2c7e-4a32-890a-c7234875a07f');
INSERT INTO tracks
VALUES (895, 6, 62, 157, 1, 14, 'Yèkèrmo Sèw (A Man of Experience and Wisdom)', '9cd10816-7bec-4da8-8a86-94aedd9ceefa');
INSERT INTO tracks VALUES (896, 6, 62, 157, 6, 14, 'Munayé (My Muna)', '9cad3c7a-2f0b-495b-ad19-d55f4ba8327c');
INSERT INTO tracks VALUES
  (897, 6, 62, 157, 2, 14, 'Mètché Dershé (When Am I Going to Reach There?)', '4942ecb8-c906-4a07-82c1-bcf638b15842');
INSERT INTO tracks VALUES (898, 6, 62, 157, 10, 14, 'Nètsanèt (Liberty)', '20844d32-b79e-4331-91c5-12598c71bd24');
INSERT INTO tracks VALUES (899, 6, 62, 157, 7, 14, 'Gubèlyé (My Gubel)', '3c306153-8671-45d3-a09a-18ebe81c72cc');
INSERT INTO tracks VALUES (900, 6, 62, 157, 14, 14, 'Dèwèl (Bell)', 'e0ac128f-e593-4f8b-94ef-4da62e3bfc42');
INSERT INTO tracks VALUES (901, 7, 65, 158, 4, 13, 'Qué Noche!', NULL);
INSERT INTO tracks VALUES (902, 7, 65, 158, 3, 13, 'La Ultima Cita', NULL);
INSERT INTO tracks VALUES (903, 7, 65, 158, 11, 13, 'Doña María', NULL);
INSERT INTO tracks VALUES (904, 7, 65, 158, 1, 13, 'El Porteñito', NULL);
INSERT INTO tracks VALUES (905, 7, 65, 158, 10, 13, 'Cordón De Oro', NULL);
INSERT INTO tracks VALUES (906, 7, 65, 158, 2, 13, 'El Marne', NULL);
INSERT INTO tracks VALUES (907, 7, 65, 158, 9, 13, 'Flor de lino', NULL);
INSERT INTO tracks VALUES (908, 7, 65, 158, 6, 13, 'Los Mareados', NULL);
INSERT INTO tracks VALUES (909, 7, 65, 158, 7, 13, 'A Evaristo Carriego', NULL);
INSERT INTO tracks VALUES (910, 7, 65, 158, 5, 13, 'Naranjo en flor', NULL);
INSERT INTO tracks VALUES (911, 7, 65, 158, 13, 13, 'Milonga De Mis Amores', NULL);
INSERT INTO tracks VALUES (912, 7, 65, 158, 12, 13, 'El Baquiano', NULL);
INSERT INTO tracks VALUES (913, 7, 65, 158, 8, 13, 'El Ultimo Organito', NULL);
INSERT INTO tracks VALUES (914, 7, 66, 158, 3, 14, 'Candombe Para El Que Hasta Ayer Reía', NULL);
INSERT INTO tracks VALUES (915, 7, 66, 158, 8, 14, 'Virgencita Criolla', NULL);
INSERT INTO tracks VALUES (916, 7, 66, 158, 7, 14, 'Milonga de la Mufiña', NULL);
INSERT INTO tracks VALUES (917, 7, 66, 158, 10, 14, 'Mares', NULL);
INSERT INTO tracks VALUES (918, 7, 66, 158, 5, 14, 'La Luna Que Yira', NULL);
INSERT INTO tracks VALUES (919, 7, 66, 158, 4, 14, 'A Rosalia', NULL);
INSERT INTO tracks VALUES (920, 7, 66, 158, 11, 14, 'Floreo', NULL);
INSERT INTO tracks VALUES (921, 7, 66, 158, 6, 14, 'Milongazo', NULL);
INSERT INTO tracks VALUES (922, 7, 66, 158, 13, 14, 'A Lola Mora', NULL);
INSERT INTO tracks VALUES (923, 7, 66, 158, 2, 14, 'Los Adioses', NULL);
INSERT INTO tracks VALUES (924, 7, 66, 158, 9, 14, 'Milonga para Amar', NULL);
INSERT INTO tracks VALUES (925, 7, 66, 158, 12, 14, 'La Celesita del Tiempo', NULL);
INSERT INTO tracks VALUES (926, 7, 66, 158, 1, 14, 'Piove En San Telmo', NULL);
INSERT INTO tracks VALUES (927, 7, 66, 158, 14, 14, 'Flaca', NULL);
INSERT INTO tracks VALUES (928, 7, 67, 159, 3, 9, 'Kanou', '74ea1087-0e92-4b2f-a719-146668e6eea7');
INSERT INTO tracks VALUES (929, 7, 67, 159, 7, 9, 'Indépendance', 'e8ba6ac7-3f67-457b-a572-21c63a98337c');
INSERT INTO tracks VALUES (930, 7, 67, 159, 1, 9, 'Djonkana', '47d372a8-eae8-423c-9adc-9be5d404afd0');
INSERT INTO tracks VALUES (931, 7, 67, 159, 2, 9, 'Kongo Magni', '96e24da9-f420-420b-a1f3-66e954d39bc9');
INSERT INTO tracks VALUES (932, 7, 67, 159, 4, 9, 'Horonia', '21f1cab6-5177-4482-b656-ea2d8f20ecac');
INSERT INTO tracks VALUES (933, 7, 67, 159, 9, 9, 'Sénékéla', 'ecd73f55-b345-4736-84f1-00f98b846652');
INSERT INTO tracks VALUES (934, 7, 67, 159, 6, 9, 'Kar Kar / Vincent', '57253880-cd15-4998-9d4b-4d8c1206f188');
INSERT INTO tracks VALUES (935, 7, 67, 159, 5, 9, 'Dounia Tabolo', '4c4b4a77-aab9-420c-b781-cef971d80a9d');
INSERT INTO tracks VALUES (936, 7, 67, 159, 8, 9, 'Sougourouni Saba', 'f48592f1-be22-434a-ae7f-3b86dfdbccd1');
INSERT INTO tracks VALUES (937, 7, 68, 160, 10, 14, 'Recordaï', '95dada7b-ad83-493a-a1e7-0632cf73c1fa');
INSERT INTO tracks VALUES (938, 7, 68, 160, 8, 14, 'Vida tem um so vida', '39408999-c5f5-456a-bf6b-da6780d41659');
INSERT INTO tracks VALUES (939, 7, 68, 160, 4, 14, 'Direito di nasce', 'b4b7a16a-d783-48ad-a9c7-9961729d2147');
INSERT INTO tracks VALUES (940, 7, 68, 160, 9, 14, 'Morabeza', 'a036540a-95e1-404b-9a66-7db928fb2d3f');
INSERT INTO tracks VALUES (941, 7, 68, 160, 5, 14, 'Luz dum estrela', 'a35753c4-7e83-4713-8635-8bcaedb57c4c');
INSERT INTO tracks VALUES (942, 7, 68, 160, 3, 14, 'Cumpade ciznone', '19dc351e-a248-4e09-bea6-f14589af46da');
INSERT INTO tracks VALUES (943, 7, 68, 160, 6, 14, 'Angola', '35795a6a-ba8b-43b3-a86f-5c35aa73f90c');
INSERT INTO tracks VALUES (944, 7, 68, 160, 7, 14, 'Miss perfumado', 'c4e6810e-9acd-4f1a-906b-5c0d88e98d2e');
INSERT INTO tracks VALUES (945, 7, 68, 160, 12, 14, 'Barbincor', 'e2df6a17-d4fd-4f87-a3c4-f919a053d3e7');
INSERT INTO tracks VALUES (946, 7, 68, 160, 11, 14, 'Lua nha testemunha', '5b3e66bc-0db0-46cd-a3ec-ab349246e2ab');
INSERT INTO tracks VALUES (947, 7, 68, 160, 2, 14, 'Bia', '3f18fc48-ee63-407c-94bb-a495d5e5a2f1');
INSERT INTO tracks VALUES (948, 7, 68, 160, 13, 14, 'Tortura', 'e3ebdf32-4f30-422b-b65e-4e929c149a7b');
INSERT INTO tracks VALUES (949, 7, 68, 160, 14, 14, 'Angola (remix)', 'e2fd0459-938b-48cf-8eea-13d728ff2d8f');
INSERT INTO tracks VALUES (950, 7, 68, 160, 1, 14, 'Sodade', 'f16edae0-861b-4825-9692-a5cda82fc7b4');
INSERT INTO tracks VALUES (951, 7, 69, 161, 6, 10, 'Moussolou', NULL);
INSERT INTO tracks VALUES (952, 7, 69, 161, 4, 10, 'Katolon', NULL);
INSERT INTO tracks VALUES (953, 7, 69, 161, 8, 10, 'Ananamin', NULL);
INSERT INTO tracks VALUES (954, 7, 69, 161, 3, 10, 'Madan', NULL);
INSERT INTO tracks VALUES (955, 7, 69, 161, 10, 10, 'Here', NULL);
INSERT INTO tracks VALUES (956, 7, 69, 161, 2, 10, 'Iniagige', NULL);
INSERT INTO tracks VALUES (957, 7, 69, 161, 5, 10, 'Souvent', NULL);
INSERT INTO tracks VALUES (958, 7, 69, 161, 9, 10, 'Koukou', NULL);
INSERT INTO tracks VALUES (959, 7, 69, 161, 7, 10, 'Baba', NULL);
INSERT INTO tracks VALUES (960, 7, 69, 161, 1, 10, 'Yamore', NULL);
INSERT INTO tracks VALUES (961, 7, 70, 162, 2, 19, 'Punkero Sonidero', '12f72d3f-d763-467e-a013-174406f62f10');
INSERT INTO tracks VALUES (962, 7, 70, 162, 7, 19, 'Linda Mañana', '81b2638a-4dd6-43b0-bf37-6683a0223ee3');
INSERT INTO tracks VALUES (963, 7, 70, 162, 8, 19, 'Ska Fuentes', '09375c08-52b9-40bc-817a-9836b46613ca');
INSERT INTO tracks VALUES (964, 7, 70, 162, 3, 19, 'I Ron Man', '5f734f81-3dd6-4e6c-92e6-931da327c294');
INSERT INTO tracks VALUES (965, 7, 70, 162, 17, 19, 'Cumbia Espacial', 'c285b40e-2bdf-4a4c-beeb-51f82f139358');
INSERT INTO tracks VALUES (966, 7, 70, 162, 5, 19, 'Locomotora Borracha', '02a6457f-c576-4424-8ce3-6b480a10cc59');
INSERT INTO tracks VALUES (967, 7, 70, 162, 9, 19, '3 Reyes de La Terapia', 'df9c203a-2374-4d42-b33a-ae5915498d92');
INSERT INTO tracks VALUES (968, 7, 70, 162, 6, 19, 'Remando', '3d6169da-3a9d-458d-bae9-6d65078c8eef');
INSERT INTO tracks VALUES (969, 7, 70, 162, 11, 19, 'Descarga Trópica', 'fff4f501-ff4e-4041-8c72-aaccea3f87df');
INSERT INTO tracks VALUES (970, 7, 70, 162, 4, 19, 'Suena', 'c2e36d2d-5d3e-4f60-9df6-01cb633cc875');
INSERT INTO tracks VALUES (971, 7, 70, 162, 10, 19, 'Bomba Trópica', 'c1b0468b-74a9-45bb-a2ea-0d6e4f2f3c25');
INSERT INTO tracks VALUES (972, 7, 70, 162, 16, 19, 'Dos Lucecitas', 'affc4e25-e2e8-411e-a746-8421169f46f2');
INSERT INTO tracks VALUES (973, 7, 70, 162, 18, 19, 'Donde Suena El Bombo', 'c21ba19e-0037-415a-9ade-eefa90496f3a');
INSERT INTO tracks VALUES (974, 7, 70, 162, 1, 19, 'Tiene Sabor, Tiene Sazón', 'df19bed4-a5c4-47e5-8583-d23579767f0c');
INSERT INTO tracks VALUES (975, 7, 70, 162, 12, 19, 'Libya', '4d4e050b-1ed5-4d00-9ec0-5a47e461630c');
INSERT INTO tracks VALUES (976, 7, 70, 162, 15, 19, 'Rap-Maya', '3e3a8cb7-d632-4d6c-9ad3-7cbce3bdc085');
INSERT INTO tracks VALUES (977, 7, 70, 162, 13, 19, 'Gaita Trópica', '1b54e01b-0fd0-484b-838b-f3a4f05509a2');
INSERT INTO tracks VALUES (978, 7, 70, 162, 14, 19, 'Curro Fuentes', 'd2ace493-71b4-48a7-b5a6-2f7fdeddf9ae');
INSERT INTO tracks VALUES (979, 7, 70, 162, 19, 19, 'Swing de Gillian', '2fac4458-78dd-454a-a6db-0d917ae4a142');
INSERT INTO tracks VALUES (980, 8, 71, 163, 8, 15, 'Julie', '865e86dd-62f3-40e8-b65d-d0538b9fc43a');
INSERT INTO tracks VALUES (981, 8, 71, 163, 4, 15, 'Sacré Cœur', '8bd72ec7-5872-4085-8697-808bc9af768e');
INSERT INTO tracks VALUES (982, 8, 71, 163, 1, 15, 'La barre est dure', '6d6cd79f-11d1-4500-b130-900e569d3b7e');
INSERT INTO tracks VALUES (983, 8, 71, 163, 2, 15, 'Allo Paris', '05e2ad12-9dcd-41f1-8268-8ae200acf335');
INSERT INTO tracks VALUES (984, 8, 71, 163, 10, 15, 'Toujours quand tu dors', '87b64907-6100-4354-88a4-3a651294a13b');
INSERT INTO tracks VALUES (985, 8, 71, 163, 6, 15, '15 ans du matin', 'acc7f2e6-f9cd-40fd-aec6-26a80781b829');
INSERT INTO tracks VALUES (986, 8, 71, 163, 5, 15, 'Chacun sa peine', '880ce3bd-b9ba-4557-b261-b1bff5631331');
INSERT INTO tracks VALUES (987, 8, 71, 163, 12, 15, 'Le Monde entier', 'd12d8ed6-a853-434c-b1e8-d5ca8b34ba4c');
INSERT INTO tracks VALUES (988, 8, 71, 163, 14, 15, 'On boira de la bière', 'ef974c26-2f4c-4c33-9e32-d4bf762df797');
INSERT INTO tracks VALUES (989, 8, 71, 163, 11, 15, 'Au creux de ton bras', 'ed15d929-14b1-4c6e-9df0-e2fac9e26f15');
INSERT INTO tracks VALUES (990, 8, 71, 163, 13, 15, 'La Lune', 'b9ce8848-2eb4-441a-9f1b-316746879b1f');
INSERT INTO tracks VALUES (991, 8, 71, 163, 3, 15, 'Je marche seul', '9175006f-1637-4a0c-8025-4e0a1c454d02');
INSERT INTO tracks VALUES (992, 8, 71, 163, 7, 15, 'Pas du gâteau', '01aa24a1-6924-40bb-86a3-d59a77a629ad');
INSERT INTO tracks VALUES (993, 8, 71, 163, 9, 15, 'Allez viens', '7b81de1f-9dce-4927-b784-161581389d99');
INSERT INTO tracks VALUES (994, 8, 71, 163, 15, 15, 'Trop de silence', '83629aeb-1220-427e-a401-42767bcf2e2f');
INSERT INTO tracks VALUES (995, 8, 72, 163, 6, 17, 'Dis moi', '9236ae19-9053-431d-94d4-dd22e5652495');
INSERT INTO tracks VALUES (996, 8, 72, 163, 12, 17, 'Les Poissons', 'da062ea9-868f-443e-ac78-869b78b898a9');
INSERT INTO tracks VALUES (997, 8, 72, 163, 2, 17, 'Tango', 'cdf4a5ca-9d84-44e4-930e-69b0336f9d03');
INSERT INTO tracks VALUES (998, 8, 72, 163, 5, 17, 'Paris boulevards', '794a28b0-a164-4fd2-a1d3-2815fcc1a9ec');
INSERT INTO tracks VALUES (999, 8, 72, 163, 4, 17, 'Y''a maldonne', '1e90ea7c-2e61-4c0d-bf2b-51a810072c69');
INSERT INTO tracks VALUES (1000, 8, 72, 163, 13, 17, 'Mes amis d''enfance', '28c7b9e0-1273-4325-9527-83bfc006800c');
INSERT INTO tracks VALUES (1001, 8, 72, 163, 15, 17, 'Je reviens', '88101c78-af72-4cbd-9464-76d3a2c4f165');
INSERT INTO tracks VALUES (1002, 8, 72, 163, 1, 17, 'C''est en vain', 'd44fd814-f112-40a1-9a98-1e279a036215');
INSERT INTO tracks VALUES (1003, 8, 72, 163, 10, 17, 'Une image', '81cdc17f-366e-4cf6-b307-378463a07698');
INSERT INTO tracks VALUES (1004, 8, 72, 163, 14, 17, 'Le Limon', 'af999eb3-6b75-4599-bbaf-95bc265ffff1');
INSERT INTO tracks VALUES (1005, 8, 72, 163, 7, 17, 'Tu t''envoles', '8251a476-f04a-4914-abf3-91fbd50b04e2');
INSERT INTO tracks VALUES (1006, 8, 72, 163, 11, 17, 'À pas de géant', 'd1d73e57-8ef7-40b2-88b6-a11ebfaf0d6a');
INSERT INTO tracks VALUES (1007, 8, 72, 163, 16, 17, 'Tous les jours', '34f137d9-198c-445a-a211-5a28b091db25');
INSERT INTO tracks VALUES (1008, 8, 72, 163, 17, 17, 'Pont d''Austerlitz', 'ac9cf4a5-b6f9-4e8e-b776-0d9022a9aff2');
INSERT INTO tracks VALUES (1009, 8, 72, 163, 9, 17, 'Quand tu me diras', '53bd80b6-9c4f-48de-9091-3af7ce1843e6');
INSERT INTO tracks VALUES (1010, 8, 72, 163, 8, 17, 'Barbès-Clichy', 'a85a728f-fa2f-4dd2-9d88-2509fab32469');
INSERT INTO tracks VALUES (1011, 8, 72, 163, 3, 17, 'Soir de retour', '76dcd85d-ef69-4c7b-bb0a-aada8da7ef46');
INSERT INTO tracks VALUES (1012, 8, 73, 163, 4, 11, 'À pas de géant', 'b8f1dcba-e63a-44a6-9ddd-03898c3f1f9c');
INSERT INTO tracks VALUES (1013, 8, 73, 163, 2, 11, 'Te souviens-tu', '3fc10d5c-1369-4661-9ab9-0f9f42c1a212');
INSERT INTO tracks VALUES (1014, 8, 73, 163, 10, 11, 'Novembre', 'c86413a7-5a71-46e8-8d76-cfb8c9ea5b6f');
INSERT INTO tracks VALUES (1015, 8, 73, 163, 8, 11, 'Le Drapeau', '6ec605b3-a832-438e-9cdb-b78f7294a174');
INSERT INTO tracks VALUES (1016, 8, 73, 163, 3, 11, 'Tango', '28d3428c-0051-4671-87df-fbc1a36d3e02');
INSERT INTO tracks VALUES (1017, 8, 73, 163, 8, 11, 'Une image', '25d8b3d1-8124-4bff-992e-f4da1be31c49');
INSERT INTO tracks VALUES (1018, 8, 73, 163, 11, 11, 'C''est en vain', '1e5b046a-f3d8-4f4f-b582-e86dd8afd8ec');
INSERT INTO tracks VALUES (1019, 8, 73, 163, 1, 11, 'Soir de retour', '52e3101f-39b2-4426-8f77-a8cdbd89f996');
INSERT INTO tracks VALUES (1020, 8, 73, 163, 6, 11, 'Trop de silence', '32240ff6-ce1c-45fe-82fa-d54a6e546f38');
INSERT INTO tracks VALUES (1021, 8, 73, 163, 5, 11, 'Le Monde entier', 'f96c0267-5e3d-465f-8d95-00741d7e43ac');
INSERT INTO tracks VALUES (1022, 8, 73, 163, 10, 11, 'Julie', '2dd77bed-a593-4ce6-a4fd-0fac7c66b0f0');
INSERT INTO tracks VALUES (1023, 8, 73, 163, 7, 11, 'La Lune', '327ba744-075a-45c3-b94d-a02224ef326c');
INSERT INTO tracks VALUES (1024, 8, 73, 163, 1, 11, 'Je reviens', 'b9857c3f-b6a6-4cff-8aa2-e4fee795966e');
INSERT INTO tracks VALUES (1025, 8, 73, 163, 9, 11, 'Allez viens', 'e18e7dd8-49cf-4faa-96f1-451d375c7f79');
INSERT INTO tracks VALUES (1026, 8, 73, 163, 2, 11, 'Les Fées', '937c83a0-ef7d-47a1-a3a2-52fe656b6ee4');
INSERT INTO tracks VALUES (1027, 8, 73, 163, 5, 11, 'Sacré Cœur', 'a82ffb35-9bb0-46d4-a1c9-4580d3a178b8');
INSERT INTO tracks VALUES (1028, 8, 73, 163, 11, 11, 'Sha La La', 'fc905c9b-07de-4e74-95fe-e202709ba8de');
INSERT INTO tracks VALUES (1029, 8, 73, 163, 3, 11, 'Tu t''envoles', '17400a00-4db6-4548-9fcb-953ac6e6898e');
INSERT INTO tracks VALUES (1030, 8, 73, 163, 6, 11, 'Janvier', '35375d6f-47c4-4888-a0fa-27c45f27868f');
INSERT INTO tracks VALUES (1031, 8, 73, 163, 4, 11, 'Le Limon', '8d9db3a2-e32d-4b01-90fe-c185b8dcc8e1');
INSERT INTO tracks VALUES (1032, 8, 73, 163, 7, 11, 'Dis-moi', 'f3de8b54-e977-4216-8f0c-28d1c6ce5506');
INSERT INTO tracks VALUES (1033, 8, 73, 163, 9, 11, 'Je suis venu vous voir', '7c1e3e48-97a4-4861-ac8d-51758b10c6f7');
INSERT INTO tracks VALUES (1034, 8, 74, 163, 9, 13, 'Le Périph', 'c533bf44-9153-485a-9645-5c3d0211d793');
INSERT INTO tracks VALUES (1035, 8, 74, 163, 11, 13, 'Les Hommes seuls', '2473f9ac-eefe-42ba-8002-13f78055f9fc');
INSERT INTO tracks
VALUES (1036, 8, 74, 163, 7, 13, 'Les Habitants du feu rouge', '8b845810-94ab-423d-b04e-2ed4168b63aa');
INSERT INTO tracks VALUES (1037, 8, 74, 163, 6, 13, 'Là-bas', '6a03b8ba-dfff-41a7-bb22-32305804ba77');
INSERT INTO tracks VALUES (1038, 8, 74, 163, 13, 13, 'Les Enfants rouges', 'dac094a6-58ed-41a6-ae2f-89548d2bc858');
INSERT INTO tracks VALUES (1039, 8, 74, 163, 4, 13, 'Pour gagner', 'b284c3ab-360d-4c60-89a1-e0650e138b3e');
INSERT INTO tracks VALUES (1040, 8, 74, 163, 3, 13, 'El Mungo', '5560f38f-4519-4234-8769-97bf2a81fd61');
INSERT INTO tracks VALUES (1041, 8, 74, 163, 5, 13, 'Les Gitans', '1b1b1ca8-474c-4a73-805c-27fbbf018588');
INSERT INTO tracks VALUES (1042, 8, 74, 163, 8, 13, 'Canal du midi', 'ab6f4ba3-9179-4709-8634-7590ed075060');
INSERT INTO tracks VALUES (1043, 8, 74, 163, 10, 13, 'Soif de la vie', '1173d6d9-61e4-462a-a449-b8722682d8df');
INSERT INTO tracks VALUES (1044, 8, 74, 163, 2, 13, 'Je taille ma route', 'c8758678-5407-4762-b089-78d076e6e446');
INSERT INTO tracks VALUES (1045, 8, 74, 163, 12, 13, 'Métro', 'ec65847c-3cb3-458f-9553-882bb634f037');
INSERT INTO tracks VALUES (1046, 8, 74, 163, 1, 13, 'Des pays', '05e097f1-b0c0-4cb9-ba99-924fedc52ef5');
INSERT INTO tracks VALUES (1047, 9, 75, 164, 8, 14, 'Et toi tu ris', '77324abd-029d-4ec8-8ac3-06b2ecc9e6e6');
INSERT INTO tracks
VALUES (1048, 9, 75, 164, 12, 14, 'Le mariage des lesbiennes', 'a147e5e5-2fb4-4eb2-a4be-71ab68f4dcc9');
INSERT INTO tracks VALUES (1049, 9, 75, 164, 11, 14, 'Le ruisseau', '07c8b482-9fa5-4e18-8664-113b81520bb9');
INSERT INTO tracks
VALUES (1050, 9, 75, 164, 10, 14, 'Unter dayne vayse shtern', 'ba15d57c-ab19-495a-b63d-e6a5cdab8cf4');
INSERT INTO tracks VALUES (1051, 9, 75, 164, 4, 14, 'Belz', '46913737-c90e-4aa8-98f9-f21f59d15f17');
INSERT INTO tracks VALUES (1052, 9, 75, 164, 14, 14, 'Avreml marvikher', 'df37f0f8-ba6e-49b8-b54d-9c4deca40c7e');
INSERT INTO tracks
VALUES (1053, 9, 75, 164, 6, 14, 'Quand nous nous sommes rencontrés', '6ac814cf-209f-444d-8e77-cd1ebef3af43');
INSERT INTO tracks VALUES (1054, 9, 75, 164, 7, 14, 'Train arrête-toi', '84274c93-762f-44b2-b121-a9a685ac8ef3');
INSERT INTO tracks VALUES (1055, 9, 75, 164, 1, 14, 'Le costume neuf', '92976cc0-2312-4f8f-96ce-6a0ad87ae78f');
INSERT INTO tracks VALUES (1056, 9, 75, 164, 2, 14, 'Kalyma', 'befd53c3-de2c-4d6c-bb1d-3c1858e4e9a5');
INSERT INTO tracks VALUES (1057, 10, 76, 165, 7, 12, 'Desperado', '436dfe07-493e-4c48-b62c-5d7a8122eb5f');
INSERT INTO tracks VALUES (1058, 10, 76, 165, 8, 12, 'Puerto claridad', 'fe55f239-655c-40ab-869a-bf96a23139e4');
INSERT INTO tracks VALUES (1059, 10, 76, 165, 1, 12, 'Furia feriosa', '00b40b23-28dd-4ccc-9266-c617634152f2');
INSERT INTO tracks VALUES (1060, 10, 76, 165, 3, 12, 'El destino', '4903297f-6c52-4510-98bf-71b38019cb30');
INSERT INTO tracks VALUES (1061, 10, 76, 165, 10, 12, 'Tomasa', 'f2074110-9a86-4dea-9241-0c5e5d468c11');
INSERT INTO tracks VALUES (1062, 10, 76, 165, 9, 12, 'Juan Negro', 'b1e1e5be-0893-406b-a730-748faa6abd49');
INSERT INTO tracks VALUES (1063, 10, 76, 165, 6, 12, 'La maldición', '7f036540-8abe-4361-b0cd-0c472d3a3584');
INSERT INTO tracks VALUES (1064, 10, 76, 165, 2, 12, '¿Qué será de mí?', '6a415b22-7128-4c49-ba0f-c05e06a50eee');
INSERT INTO tracks VALUES (1065, 10, 76, 165, 12, 12, 'Tu canción de amor', '7536152f-7040-4253-9af3-dc648b9976a5');
INSERT INTO tracks VALUES (1066, 10, 76, 165, 11, 12, 'Caravane', '7fa30dea-8591-460a-9e95-cad7434a03dc');
INSERT INTO tracks VALUES (1067, 10, 76, 165, 4, 12, 'Especies', 'bb47037f-8694-4f7b-a0a3-b1fa182cee22');
INSERT INTO tracks VALUES (1068, 10, 76, 165, 5, 12, 'La pared', '9d6cadec-ff1d-46ab-918d-6a304366e0fa');
INSERT INTO tracks VALUES (1069, 10, 77, 166, 6, 12, 'Karma Police', '9e2ad5bc-c6f9-40d2-a36f-3122ee2072a3');
INSERT INTO tracks VALUES (1070, 10, 77, 166, 1, 12, 'Airbag', '4a7fea2e-545b-4c63-bc9a-9943cc3a29d7');
INSERT INTO tracks VALUES (1071, 10, 77, 166, 4, 12, 'Exit Music (for a Film)', '23c3c36b-9449-4484-9040-6ef2125999aa');
INSERT INTO tracks VALUES (1072, 10, 77, 166, 10, 12, 'No Surprises', '980a426e-623e-4ea5-98c7-008d037a0508');
INSERT INTO tracks VALUES (1073, 10, 77, 166, 7, 12, 'Fitter Happier', '5838f978-0822-4e28-874f-e1511324ec3a');
INSERT INTO tracks VALUES (1074, 10, 77, 166, 12, 12, 'The Tourist', '610c0012-6eb4-42a0-b759-3a2532ce0f15');
INSERT INTO tracks
VALUES (1075, 10, 77, 166, 3, 12, 'Subterranean Homesick Alien', 'bd82738d-163c-4b1a-bfaf-7acffe30e68a');
INSERT INTO tracks VALUES (1076, 10, 77, 166, 8, 12, 'Electioneering', 'ba0a796c-bd1f-4d4b-85a8-918f217a204a');
INSERT INTO tracks VALUES (1077, 10, 77, 166, 9, 12, 'Climbing Up the Walls', 'c7225576-001e-423c-adc1-58f0985dcb27');
INSERT INTO tracks VALUES (1078, 10, 77, 166, 5, 12, 'Let Down', '47b02a82-c3bf-4647-b894-dd1c8f608e7f');
INSERT INTO tracks VALUES (1079, 10, 77, 166, 2, 12, 'Paranoid Android', '9f9cf187-d6f9-437f-9d98-d59cdbd52757');
INSERT INTO tracks VALUES (1080, 10, 77, 166, 11, 12, 'Lucky', '79047824-f821-4b1a-9893-e0cea1c947dd');
INSERT INTO tracks VALUES (1081, 10, 78, 167, 6, 13, 'Comme elle vient', '82733544-156d-4800-aab0-81a6f5bbc7ec');
INSERT INTO tracks VALUES (1082, 10, 78, 167, 10, 13, 'Lazy', '8b21130f-922c-42ab-9ce2-04d5c62d4150');
INSERT INTO tracks VALUES (1083, 10, 78, 167, 4, 13, 'À ton étoile', '6d5c333b-d927-4a32-8263-f9c4750b4a4a');
INSERT INTO tracks VALUES (1084, 10, 78, 167, 11, 13, 'À la longue', '71ab2cf1-1919-429e-a6cd-1eb5e9784718');
INSERT INTO tracks VALUES (1085, 10, 78, 167, 5, 13, 'Ernestine', 'ea5aca6d-3870-41d6-9186-bc7d8c5be495');
INSERT INTO tracks VALUES (1086, 10, 78, 167, 13, 13, 'Song for JLP', '1cc001c3-73a8-4d20-9a9c-8336d8c93555');
INSERT INTO tracks VALUES (1087, 10, 78, 167, 1, 13, '666.667 Club', '83cd3abf-38f8-4ce6-ad71-efa5f1c5bffa');
INSERT INTO tracks VALUES (1088, 10, 78, 167, 7, 13, 'Prayer for a Wanker', '0d7d0990-e3a2-4eed-a336-91129a8e1e90');
INSERT INTO tracks VALUES (1089, 10, 78, 167, 3, 13, 'Un jour en France', '4d963a1d-cd2b-4870-95d6-34d064c86d97');
INSERT INTO tracks
VALUES (1090, 10, 78, 167, 12, 13, 'Septembre, en attendant', '72c77b18-b99b-4f11-b8f5-27734f2a09af');
INSERT INTO tracks VALUES (1091, 10, 78, 167, 2, 13, 'Fin de siècle', '480657c5-ba45-4903-bd19-867b68b78dc9');
INSERT INTO tracks VALUES (1092, 10, 78, 167, 9, 13, 'L''Homme pressé', '10afc3dc-09a9-4d02-a169-5a39c5bf274d');
INSERT INTO tracks VALUES (1093, 10, 78, 167, 8, 13, 'Les Persiennes', '8537e91e-ad77-4a6a-9cd9-d5022c0f6910');
INSERT INTO tracks VALUES (1094, 10, 79, 168, 7, 18, 'Tumbling Dice', '6c3cf3d5-8634-4c70-aa4a-f2bf8245f3f3');
INSERT INTO tracks VALUES (1095, 10, 79, 168, 14, 18, 'Beast of Burden', 'c1037261-ee18-433b-919c-d9a8fc222110');
INSERT INTO tracks VALUES (1096, 10, 79, 168, 3, 18, 'Harlem Shuffle', '04b96206-6e30-4a24-be83-5693686c1358');
INSERT INTO tracks VALUES (1097, 10, 79, 168, 12, 18, 'Emotional Rescue', 'e39a7b9c-d3f5-4963-a763-ce534f64dec1');
INSERT INTO tracks VALUES (1098, 10, 79, 168, 11, 18, 'Hot Stuff', '3a487a01-2841-4be9-a4fa-6daa489d6484');
INSERT INTO tracks VALUES (1099, 10, 79, 168, 9, 18, 'Rock and a Hard Place', '56113341-47af-4368-9854-7c7027dbc1a6');
INSERT INTO tracks VALUES (1100, 10, 79, 168, 1, 18, 'Start Me Up', '0b095f1f-4927-4b86-a2f7-a1b1abf5bac7');
INSERT INTO tracks
VALUES (1101, 10, 79, 168, 4, 18, 'It''s Only Rock ''n'' Roll', '9984f26d-7708-40df-b272-64a3a6b34106');
INSERT INTO tracks VALUES (1102, 10, 79, 168, 2, 18, 'Brown Sugar', '8d2338a2-4acc-4d99-b2a7-1151f428cab6');
INSERT INTO tracks VALUES (1103, 10, 79, 168, 15, 18, 'Waiting on a Friend', '41fbb4bc-9a89-4f65-9e55-19cf6298fb8b');
INSERT INTO tracks
VALUES (1104, 10, 79, 168, 18, 18, 'Undercover of the Night', 'b704cd65-d8d2-47cd-b346-56b3e18c43b8');
INSERT INTO tracks VALUES (1105, 10, 79, 168, 17, 18, 'Bitch', 'e91fb80e-a339-43a3-a14e-a682c6c041c7');
INSERT INTO tracks VALUES (1106, 10, 79, 168, 13, 18, 'Respectable', 'dc6f8dac-ee9e-4caa-96cf-83b7512653fc');
INSERT INTO tracks VALUES (1107, 10, 79, 168, 8, 18, 'Fool to Cry', '076ce741-811e-45e2-9e43-b447fcf3394b');
INSERT INTO tracks VALUES (1108, 10, 79, 168, 5, 18, 'Mixed Emotions', '87722e8b-38e7-4c35-a0bc-67b7bc801f9f');
INSERT INTO tracks VALUES (1109, 10, 79, 168, 6, 18, 'Angie', '51d64ed0-0dd0-471d-9b07-786d715a17da');
INSERT INTO tracks VALUES (1110, 10, 79, 168, 10, 18, 'Miss You', '77c7c420-fbc5-4008-a00c-d8137eaaf4a5');
INSERT INTO tracks VALUES (1111, 10, 79, 168, 16, 18, 'Wild Horses', '1674d24d-8b74-4e65-94e5-e38527f593a9');
INSERT INTO tracks VALUES (1112, 10, 80, 169, 5, 11, 'So Real', '1e587065-3298-4828-9cb4-7c8949bc6a18');
INSERT INTO tracks VALUES (1113, 10, 80, 169, 2, 11, 'Grace', '71feb283-9a0d-491d-a40b-8ccae7fc728b');
INSERT INTO tracks VALUES (1114, 10, 80, 169, 8, 11, 'Corpus Christi Carol', '50fd6b05-c0a1-4125-9246-c326b8029d02');
INSERT INTO tracks VALUES (1115, 10, 80, 169, 4, 11, 'Lilac Wine', '026a33b3-cd65-4eaf-b761-8f4a67c3ace2');
INSERT INTO tracks VALUES (1116, 10, 80, 169, 9, 11, 'Eternal Life', 'e23161fe-1fc4-47a5-ac4f-4d7b20eb952b');
INSERT INTO tracks
VALUES (1117, 10, 80, 169, 7, 11, 'Lover, You Should''ve Come Over', 'a15695cc-32d6-4e09-8515-24d1e6f9dac6');
INSERT INTO tracks VALUES (1118, 10, 80, 169, 3, 11, 'Last Goodbye', '3156ff92-7e8f-4cd7-9ebc-b11b9373479b');
INSERT INTO tracks VALUES (1119, 10, 80, 169, 1, 11, 'Mojo Pin', '19dcc05e-6f91-42e3-b549-d80135d8b45a');
INSERT INTO tracks VALUES (1120, 10, 80, 169, 6, 11, 'Hallelujah', 'da1308d1-6037-4ba1-b6fc-a643a4201140');
INSERT INTO tracks VALUES (1121, 10, 80, 169, 10, 11, 'Dream Brother', '985f5dbc-11d1-46aa-b3cf-be334574fe8d');
INSERT INTO tracks VALUES (1122, 10, 80, 169, 11, 11, 'Forget Her', '4149cd6f-64e8-48b6-bbc5-79e34cfabb87');
INSERT INTO tracks VALUES (1123, 10, 81, 170, 8, 14, 'I Looked at You', '529c8244-a51d-47c5-8967-0a8960f5d254');
INSERT INTO tracks VALUES (1124, 10, 81, 170, 10, 14, 'Take It As It Comes', 'c95889a8-0de0-4b90-8fda-ed5fcf6cbae1');
INSERT INTO tracks VALUES (1125, 10, 81, 170, 11, 14, 'The End', '5def06b5-8646-48ac-989c-d11a6d43d364');
INSERT INTO tracks
VALUES (1126, 10, 81, 170, 1, 14, 'Break On Through (to the Other Side)', 'e6d65731-b96d-41f5-9f52-753168b9b025');
INSERT INTO tracks VALUES (1127, 10, 81, 170, 2, 14, 'Soul Kitchen', '7a8dee53-c863-4a4b-9724-96bbee8cf073');
INSERT INTO tracks VALUES (1128, 10, 81, 170, 3, 14, 'The Crystal Ship', '03531d9f-2ded-4e8c-af6e-e82a2a943723');
INSERT INTO tracks VALUES (1129, 10, 81, 170, 6, 14, 'Light My Fire', 'a3316ed7-e956-42d7-8b61-a0e4a2a4d3c8');
INSERT INTO tracks VALUES (1130, 10, 81, 170, 9, 14, 'End of the Night', '8ae39aad-e377-498c-8c7e-67d7648f2741');
INSERT INTO tracks
VALUES (1131, 10, 81, 170, 14, 14, 'Indian Summer (8/19/66 vocal)', '8f8015bb-bf21-49aa-a27b-baae7d3241c8');
INSERT INTO tracks
VALUES (1132, 10, 81, 170, 13, 14, 'Moonlight Drive (version 2)', '55d9a51e-54d3-4744-8e4f-38471601eb2f');
INSERT INTO tracks VALUES (1133, 10, 81, 170, 4, 14, 'Twentieth Century Fox', 'dc4be80c-473a-4530-bfe4-5f3423af31b1');
INSERT INTO tracks
VALUES (1134, 10, 81, 170, 5, 14, 'Alabama Song (Whisky Bar)', 'd2cf69b8-af9d-4061-bd43-972a66415e9c');
INSERT INTO tracks VALUES (1135, 10, 81, 170, 7, 14, 'Back Door Man', '1976f693-f35f-4534-b341-31d51f46b208');
INSERT INTO tracks
VALUES (1136, 10, 81, 170, 12, 14, 'Moonlight Drive (version 1)', 'b33c9cd4-ee64-4498-b312-7c5df9b2321c');
INSERT INTO tracks VALUES (1137, 10, 82, 170, 4, 16, 'Summer''s Almost Gone', '74fefed8-f79c-4413-8415-abae5fc1390e');
INSERT INTO tracks
VALUES (1138, 10, 82, 170, 13, 16, 'Not to Touch the Earth (dialogue)', '300747c4-f53e-4a5c-aa98-b67bab9b920e');
INSERT INTO tracks
VALUES (1139, 10, 82, 170, 14, 16, 'Not to Touch the Earth (take 1)', '193aa37a-a9df-4732-b21c-482e326a3120');
INSERT INTO tracks VALUES (1140, 10, 82, 170, 10, 16, 'Yes, the River Knows', '62fd0367-ab52-482c-b380-068fbaf0d547');
INSERT INTO tracks VALUES (1141, 10, 82, 170, 5, 16, 'Wintertime Love', '3fec3609-7b57-4466-8350-3d02b9306915');
INSERT INTO tracks VALUES (1142, 10, 82, 170, 8, 16, 'My Wild Love', '5e9d9cac-2d38-4e2e-91b7-a3b6dcfc0677');
INSERT INTO tracks VALUES (1143, 10, 82, 170, 6, 16, 'The Unknown Soldier', '8491141f-72af-4fc3-b363-608236fff1b4');
INSERT INTO tracks
VALUES (1144, 10, 82, 170, 15, 16, 'Not to Touch the Earth (take 2)', '71f7efe6-4b86-4fae-86ff-ee4c70d35de8');
INSERT INTO tracks VALUES (1145, 10, 82, 170, 3, 16, 'Not to Touch the Earth', '4009ba96-3966-434f-93ea-94219ead19f5');
INSERT INTO tracks
VALUES (1146, 10, 82, 170, 12, 16, 'Albinoni''s Adagio in G Minor', '05246b17-f84d-4cec-b49f-1bc64f2047bf');
INSERT INTO tracks VALUES (1147, 10, 82, 170, 2, 16, 'Love Street', '8a4f00d2-b816-45dc-a0b2-7d01cce864fb');
INSERT INTO tracks VALUES (1148, 10, 82, 170, 11, 16, 'Five to One', 'b192de82-d849-4d57-b505-9ebddc66f5cf');
INSERT INTO tracks VALUES (1149, 10, 82, 170, 1, 16, 'Hello, I Love You', 'd3386782-aac0-487d-9e13-90ba506487e0');
INSERT INTO tracks VALUES (1150, 10, 82, 170, 16, 16, 'Celebration of the Lizard (An Experiment/Work in Progress)',
                           'bef93b11-49d3-48fe-87a6-b90db29a760d');
INSERT INTO tracks VALUES (1151, 10, 82, 170, 7, 16, 'Spanish Caravan', '32df1485-7232-4447-8352-01033adb213a');
INSERT INTO tracks
VALUES (1152, 10, 82, 170, 9, 16, 'We Could Be So Good Together', '7dbd8fe0-f4f8-4c63-9cb8-81160de6d730');
INSERT INTO tracks VALUES (1153, 11, 83, 171, 11, 12, 'The Invisible Ladder', '72ffbb7b-9903-4900-8b45-09746acea05c');
INSERT INTO tracks VALUES (1154, 11, 83, 171, 8, 12, 'Free Your Soul', '6f3c1ba1-9ad1-45c8-ac45-4233d9f2e90c');
INSERT INTO tracks
VALUES (1155, 11, 83, 171, 1, 12, 'The Wisdom Behind the Smile (Cash)', '4c84d8b1-f377-4e07-898d-9afd20060d4d');
INSERT INTO tracks VALUES (1156, 11, 83, 171, 3, 12, 'Rhythm Is Love', '8a0adc5e-4fa7-47c0-88e9-e11a39ffa3e4');
INSERT INTO tracks
VALUES (1157, 11, 83, 171, 4, 12, 'Runaway (Slavery Days Are Over)', '1b0cb642-cb15-4c04-885e-53ab376278af');
INSERT INTO tracks
VALUES (1158, 11, 83, 171, 9, 12, 'A Curious Kinda Subconscious', 'cba1e6e1-8592-4dfa-82eb-1c5b3f1ffdaa');
INSERT INTO tracks
VALUES (1159, 11, 83, 171, 2, 12, 'Walkin'' Naked Thru'' a Bluebell Field', '29e6078a-1fc8-4961-bfa6-0ad2cd1d2a2b');
INSERT INTO tracks
VALUES (1160, 11, 83, 171, 10, 12, 'The Waxing + The Waning', '145434a8-0d18-4abc-964a-f95cc6afde5b');
INSERT INTO tracks VALUES (1161, 11, 83, 171, 7, 12, 'Frinigro Interstellar', '390d5a3c-a967-4b86-9624-20291d167d63');
INSERT INTO tracks
VALUES (1162, 11, 83, 171, 6, 12, 'The Funderlying Undermentals', '4bdbb3fb-b24d-44e3-be05-6500e65c4f0b');
INSERT INTO tracks
VALUES (1163, 11, 83, 171, 12, 12, 'Pleasure Is Kisses Within', '2418967a-2c6f-409e-90d9-c4f15411c09b');
INSERT INTO tracks VALUES (1164, 11, 83, 171, 5, 12, 'Where''s Life?', '9d2648f2-0051-47de-aea2-079330f40ad3');
INSERT INTO tracks VALUES (1165, 12, 84, 172, 5, 11, 'Only You', '4b8928cd-19e3-4b11-bf08-a1b35c0414d6');
INSERT INTO tracks VALUES (1166, 12, 84, 172, 3, 11, 'All Mine', 'd5050499-3035-4daf-8493-ba0aafe1836d');
INSERT INTO tracks VALUES (1167, 12, 84, 172, 8, 11, 'Glory Box', '6c7fadb6-2cca-4a20-b8df-9994e7008cb2');
INSERT INTO tracks VALUES (1168, 12, 84, 172, 11, 11, 'Strangers', '6b770b21-5c8f-4a93-8f90-11bc6de33ee8');
INSERT INTO tracks VALUES (1169, 12, 84, 172, 2, 11, 'Cowboys', 'db45ed76-f5bf-430f-a19f-fbe3cd1c77d3');
INSERT INTO tracks VALUES (1170, 12, 84, 172, 9, 11, 'Sour Times', '2a37ad88-330c-4e31-abc6-331e20621805');
INSERT INTO tracks VALUES (1171, 12, 84, 172, 4, 11, 'Mysterons', '322a32ae-3487-4a4b-a9d9-f7a6e30c10f3');
INSERT INTO tracks VALUES (1172, 12, 84, 172, 6, 11, 'Half Day Closing', 'fb97d8d6-3952-459b-8b3a-d404dd68af21');
INSERT INTO tracks VALUES (1173, 12, 84, 172, 1, 11, 'Humming', 'dadee897-854d-4d6e-a375-fcd5586b0c74');
INSERT INTO tracks VALUES (1174, 12, 84, 172, 7, 11, 'Over', '9eb6ea8d-89ce-4566-978f-d0367a20efb0');
INSERT INTO tracks VALUES (1175, 12, 84, 172, 10, 11, 'Roads', 'cf8ebc20-e0d4-4881-ab54-804d97e75aa4');
INSERT INTO tracks VALUES (1176, 13, 85, 173, 2, 8, 'Sexual Healing', '4258d226-f0e4-40dd-9e72-5f1221b39e26');
INSERT INTO tracks VALUES (1177, 13, 85, 173, 7, 8, 'Joy', '1aee1a3a-43ea-4003-a1d4-5ca030dc0604');
INSERT INTO tracks VALUES (1178, 13, 85, 173, 3, 8, 'Rockin'' After Midnight', '8b4430db-b66c-473e-9265-5903222286dd');
INSERT INTO tracks VALUES (1179, 13, 85, 173, 1, 8, 'Midnight Lady', 'b10ae5bd-5cf1-4215-8a47-6c40e326b93b');
INSERT INTO tracks VALUES (1180, 13, 85, 173, 5, 8, 'Turn on Some Music', 'd8ba2528-a50c-45f2-b7be-c8c2c42c9a1d');
INSERT INTO tracks VALUES (1181, 13, 85, 173, 4, 8, '''Til Tomorrow', 'cd591f0c-72ea-4c15-a0e9-2b323c7c0099');
INSERT INTO tracks VALUES (1182, 13, 85, 173, 6, 8, 'Third World Girl', '1e133522-0288-478b-9373-30d6d996375a');
INSERT INTO tracks VALUES (1183, 13, 85, 173, 8, 8, 'My Love is Waiting', 'cd814017-a92b-4d1b-ad29-c84d404cf90b');
INSERT INTO tracks
VALUES (1184, 13, 86, 174, 11, 17, 'Making the Best of a Bad Situation', '924d50aa-33e9-4c35-b547-4c769c3a7769');
INSERT INTO tracks
VALUES (1185, 13, 86, 174, 17, 17, 'I Still Love You (You Still Love Me)', '8269d5dc-1dc4-4cfc-88aa-893f9354eb30');
INSERT INTO tracks VALUES (1186, 13, 86, 174, 2, 17, 'The Rap', 'a8c099e0-e54d-4143-9a5a-440799d24864');
INSERT INTO tracks
VALUES (1187, 13, 86, 174, 4, 17, 'All I Want Is a Fighting Chance', '4cbfa4e4-b0bb-4531-a337-5f08f8034109');
INSERT INTO tracks VALUES (1188, 13, 86, 174, 5, 17, 'I''m Tired of Hiding', '33cf3a50-e96b-41de-b03b-ebe2a25f84ab');
INSERT INTO tracks
VALUES (1189, 13, 86, 174, 14, 17, 'Do What Makes You Satisfied', 'f229ae97-78ce-47f4-a842-64680014870c');
INSERT INTO tracks VALUES (1190, 13, 86, 174, 16, 17, 'Leftovers', 'c477f399-49bc-4f15-aaab-732539d96757');
INSERT INTO tracks VALUES (1191, 13, 86, 174, 12, 17, 'The Memory of a Wife', '54d0b5b4-0520-47cb-b22d-f415f365e64e');
INSERT INTO tracks VALUES (1192, 13, 86, 174, 10, 17, 'Loving Arms', 'df98cf1a-b8f2-4315-9da9-1e93e2bdaba1');
INSERT INTO tracks VALUES
  (1193, 13, 86, 174, 8, 17, 'I''m Through Trying to Prove My Love to You', '12745f9a-ec93-4939-8109-1b6fe575ced9');
INSERT INTO tracks VALUES (1194, 13, 86, 174, 3, 17, '(If Loving You Is Wrong) I Don''t Want to Be Right (reprise)',
                           'cda27b5d-b03d-4651-bbd7-9def1de3c98e');
INSERT INTO tracks VALUES (1195, 13, 86, 174, 13, 17, 'Tell Her It''s Over', 'f0b891da-6af8-4cd5-b6a5-bdbcbe94884c');
INSERT INTO tracks
VALUES (1196, 13, 86, 174, 7, 17, 'So Easy Going, So Hard to Come Back', '173908b9-1690-41df-8008-f9318dc8650f');
INSERT INTO tracks
VALUES (1197, 13, 86, 174, 6, 17, 'It''s All Over but the Shouting', '3a7274b4-aea7-4b1b-a11b-d9cdd6a07f81');
INSERT INTO tracks VALUES (1198, 13, 86, 174, 1, 17, '(If Loving You Is Wrong) I Don''t Want to Be Right',
                           '736f60ca-a51b-4fdc-a213-10808f8442e0');
INSERT INTO tracks VALUES (1199, 13, 86, 174, 9, 17, 'Summer (The First Time)', '0097cb4a-5ca1-4b32-ad58-12f3fac56fb5');
INSERT INTO tracks VALUES
  (1200, 13, 86, 174, 15, 17, 'You Can''t Stand the Thought of Another Me', '13b33b20-0129-40f5-9035-306fe18ba7df');
INSERT INTO tracks
VALUES (1201, 13, 87, 175, 18, 20, 'Try a Little Tenderness', '0109653e-af59-452d-9794-f5ef64408155');
INSERT INTO tracks
VALUES (1202, 13, 87, 175, 17, 20, 'I''ve Been Loving You Too Long', '99b46378-956e-4c42-8373-e556cab361a6');
INSERT INTO tracks VALUES (1203, 13, 87, 175, 2, 20, 'Mr. Pitiful', '7db3e206-015b-46f5-a442-d23ca3eab4a6');
INSERT INTO tracks VALUES (1204, 13, 87, 175, 16, 20, 'A Change Is Gonna Come', 'b8ecedf8-22dd-49b8-9ecf-a1e5f297a16b');
INSERT INTO tracks
VALUES (1205, 13, 87, 175, 13, 20, 'That''s How Strong My Love Is', 'd6728398-fa57-4249-b86f-0ef075261d53');
INSERT INTO tracks VALUES (1206, 13, 87, 175, 12, 20, 'These Arms of Mine', '0abbdf25-30d8-48f5-a47f-83a1544accf8');
INSERT INTO tracks
VALUES (1207, 13, 87, 175, 20, 20, '(Sittin'' on) The Dock of the Bay', '01a99371-8e31-4380-924b-142146219676');
INSERT INTO tracks VALUES (1208, 13, 87, 175, 11, 20, 'My Lover''s Prayer', '0ee97930-7f37-485d-a233-eafd43699f48');
INSERT INTO tracks VALUES (1209, 13, 87, 175, 15, 20, 'My Girl', '2109edab-bf43-4091-ba26-1fcd2c122fb3');
INSERT INTO tracks VALUES (1210, 13, 87, 175, 14, 20, 'Cigarettes and Coffee', '81edb115-a084-4675-be45-fd0ea5451843');
INSERT INTO tracks VALUES (1211, 13, 87, 175, 6, 20, 'I Can''t Turn You Loose', '8cf1107e-ed66-411c-828b-68c09857ac59');
INSERT INTO tracks
VALUES (1212, 13, 87, 175, 10, 20, 'Fa-Fa-Fa-Fa-Fa (Sad Song)', '69bf91b4-6a6c-485b-abb8-e4cb2de39b55');
INSERT INTO tracks VALUES (1213, 13, 87, 175, 9, 20, 'Tramp', '94fa08be-9d8a-417e-af75-0fa64324bb0c');
INSERT INTO tracks VALUES (1214, 13, 87, 175, 8, 20, 'Hard to Handle', 'ea659313-9cd3-44a2-9c51-bbdb96e58bca');
INSERT INTO tracks VALUES (1215, 13, 87, 175, 19, 20, 'Pain in My Heart', 'c011c12b-a2bc-43fe-9a71-0801204d3630');
INSERT INTO tracks
VALUES (1216, 13, 87, 175, 4, 20, '(I Can''t Get No) Satisfaction', 'a7d721da-06b6-4331-9fd5-6a2acec0b531');
INSERT INTO tracks VALUES (1217, 13, 87, 175, 3, 20, 'Love Man', 'dfa55408-8bd5-4a17-8f75-7f7174bc4de5');
INSERT INTO tracks VALUES (1218, 13, 87, 175, 5, 20, 'Security', 'ad8c43a4-eace-479a-b711-1f7421956450');
INSERT INTO tracks VALUES (1219, 13, 87, 175, 1, 20, 'Respect', 'aa41c497-751d-4872-8f55-5751a57a08f8');
INSERT INTO tracks VALUES (1220, 13, 87, 175, 7, 20, 'Shake', '3d4887fa-2225-4385-8c27-2c3abdac92e1');
INSERT INTO tracks
VALUES (1221, 13, 88, 176, 15, 22, 'He Hasn''t Failed Me Yet', '4f5d49df-ce66-4bb4-8744-5d992a6c8435');
INSERT INTO tracks
VALUES (1222, 13, 88, 176, 6, 22, 'What Will Tomorrow Bring', '1f418e51-4b2d-42a9-9712-688940ccbd51');
INSERT INTO tracks VALUES (1223, 13, 88, 176, 12, 22, 'Last Love', 'fd8deb23-bb02-4990-abef-10a362103ba1');
INSERT INTO tracks VALUES (1224, 13, 88, 176, 2, 22, 'Gone for Good', '92523e7a-ba1c-4082-a8b2-ef6342b701d7');
INSERT INTO tracks VALUES (1225, 13, 88, 176, 11, 22, 'Crowded Park', '154e0508-ef1d-4827-b46d-becccd7503ab');
INSERT INTO tracks VALUES (1226, 13, 88, 176, 9, 22, 'Give You What I Got', 'e0829329-3b42-4bb3-a9eb-15bfe9fa67d7');
INSERT INTO tracks VALUES (1227, 13, 88, 176, 10, 22, 'Crying All by Myself', '33d7b0e6-8167-4bbb-a875-59304d8762cc');
INSERT INTO tracks VALUES (1228, 13, 88, 176, 22, 22, 'Young and Foolish', '794786af-67a4-4f9c-9fc1-0343733f86cc');
INSERT INTO tracks VALUES (1229, 13, 88, 176, 13, 22, 'Love at First Sight', '11c91963-f8d8-4780-8edc-878b0c12e90e');
INSERT INTO tracks VALUES (1230, 13, 88, 176, 5, 22, 'I Wish I Were That Girl', '7e9771d7-24b5-4e74-903a-ab60b5a6e8a6');
INSERT INTO tracks VALUES (1231, 13, 88, 176, 18, 22, 'Young Man', 'a90c9455-4300-4f89-b6e5-172f861c766c');
INSERT INTO tracks VALUES (1232, 13, 88, 176, 14, 22, 'She''s Moving Away', 'c558b1f1-a8c3-4992-a24e-839dd9559fac');
INSERT INTO tracks VALUES (1233, 13, 88, 176, 20, 22, 'First Kiss', '14e2900d-dffa-4460-884a-457284685045');
INSERT INTO tracks VALUES (1234, 13, 88, 176, 16, 22, 'Please Don''t Leave Me', 'b35c5bad-3b12-4c56-82c3-8f4441a137e7');
INSERT INTO tracks VALUES (1235, 13, 88, 176, 21, 22, 'Reap What You Sow', '0699d713-9d19-4992-9bdf-e91e1d1f25e9');
INSERT INTO tracks VALUES (1236, 13, 88, 176, 8, 22, 'Deep in My Heart', '57ca2008-cb69-444d-9e62-a6affca395e3');
INSERT INTO tracks VALUES (1237, 13, 88, 176, 3, 22, 'Your Love Is All I Need', '2540990a-35fa-40cc-bb88-fad1fde8f056');
INSERT INTO tracks VALUES (1238, 13, 88, 176, 19, 22, 'Can''t Stay Away', '402f20d6-6683-470b-ab1f-428b2e34db36');
INSERT INTO tracks VALUES (1239, 13, 88, 176, 17, 22, 'The Same Guy', '7ccfdde8-336a-43bc-8690-4d3e62641e47');
INSERT INTO tracks
VALUES (1240, 13, 88, 176, 4, 22, 'After Laughter Comes Tears', 'e4789e1c-6474-4b9c-a9a8-25a35c441000');
INSERT INTO tracks VALUES (1241, 13, 88, 176, 1, 22, 'Bar-B-Q', '8d36f70f-1ace-49a8-af9c-0c421083a8db');
INSERT INTO tracks
VALUES (1242, 13, 88, 176, 7, 22, 'Wondering (When My Love Is Coming Home)', 'c26b6de6-4e47-4b3b-aee7-96dbebac9aa3');
INSERT INTO tracks VALUES (1243, 14, 89, 177, 9, 13, 'Dans la gueule du Loup', '537e5728-362b-4662-ba05-8849d5509158');
INSERT INTO tracks VALUES (1244, 14, 89, 177, 5, 13, 'Oublie cette chanson', '0e5aa6bb-e6aa-424c-8dd0-3734020c8da0');
INSERT INTO tracks VALUES (1245, 14, 89, 177, 11, 13, 'Écris-moi', '76884561-f114-456b-8f70-61d2c8e0d067');
INSERT INTO tracks VALUES (1246, 14, 89, 177, 3, 13, 'Les Roseaux', '82e59006-94e1-4fc2-806b-9b8aa3e45b5f');
INSERT INTO tracks VALUES (1247, 14, 89, 177, 1, 13, 'Du boulot', '4878af9f-3f15-4803-8e63-290dffeae083');
INSERT INTO tracks VALUES (1248, 14, 89, 177, 4, 13, 'Chamboultou', '21b97576-af8b-48bb-adb1-33e6f40cee93');
INSERT INTO tracks VALUES (1249, 14, 89, 177, 6, 13, 'Le Créditeur', '30eec2eb-09d9-4031-b3b3-96e4229dc558');
INSERT INTO tracks VALUES (1250, 14, 89, 177, 7, 13, 'Le cœur a sa mémoire', '31726ae1-6040-4909-ae58-79a003f1b0f8');
INSERT INTO tracks VALUES (1251, 14, 89, 177, 8, 13, 'Parazite', 'c331c2e2-03fb-443b-a309-917112c15c74');
INSERT INTO tracks VALUES (1252, 14, 89, 177, 10, 13, 'Guignol', '381de107-0b2f-48c2-8502-101b49501702');
INSERT INTO tracks VALUES (1253, 14, 89, 177, 12, 13, 'Mon slip', 'a1d151d4-3ec4-457d-8d57-9f6e87103515');
INSERT INTO tracks VALUES (1254, 14, 89, 177, 13, 13, 'Vent chante', '370b1c5d-cc12-49e6-9689-12a260ce60ea');
INSERT INTO tracks VALUES (1255, 14, 89, 177, 2, 13, 'Les Hirondelles', '15c1b240-7af3-4a5b-beb1-45e1138ae8bd');

--
-- Name: tracks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: music
--

SELECT pg_catalog.setval('tracks_id_seq', 1255, TRUE);

--
-- PostgreSQL database dump complete
--

