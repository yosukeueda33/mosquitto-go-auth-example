CREATE TABLE app_user (
  id SERIAL PRIMARY KEY,
  username VARCHAR(255) UNIQUE NOT NULL,
  hash VARCHAR(255) NOT NULL
);

-- Pre-inserted data
INSERT INTO app_user (username, hash) VALUES (
    'user1',
    '$2y$10$PU/qFWHZanUMGYb/Y86U5uQuHgd31QWu4e10.UKGTUe5xpVoKyxZK'
    ); -- htpasswd -bnBC 10 "" password1 | tr -d ':\n'
INSERT INTO app_user (username, hash) VALUES (
    'user2',
    '$2y$10$heK/EtaT56.zAIvu.PTsxOip9/S2.lMWIimRJdNKQQRyD1bfg5DMG'
    ); -- htpasswd -bnBC 10 "" password2 | tr -d ':\n'
INSERT INTO app_user (username, hash) VALUES (
    'user3',
    '$2y$10$D4RLlLWqb/vpSLQyYM98t.UOxCcYsHcfSHLZ2a7A4HsyRYhQsXIli'
    ); -- htpasswd -bnBC 10 "" password3 | tr -d ':\n'

