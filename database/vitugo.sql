-- Apaga o banco de dados caso exista.
DROP DATABASE IF EXISTS vitugo;

-- Cria o banco de dados
CREATE DATABASE vitugo CHARACTER SET utf8 COLLATE utf8_general_ci;

-- Seleciona banco de dados.
USE vitugo; 

-- Cria tabela de usuários/autores.
CREATE TABLE users (
    user_id INT PRIMARY KEY AUTO_INCREMENT,
    user_name VARCHAR(255),
    user_email VARCHAR(255),
    user_birth DATE,
    user_photo VARCHAR(255),
    user_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    user_profile TEXT,
    user_password VARCHAR(255),
    user_type ENUM('user', 'author', 'admin') DEFAULT 'user',
    user_status ENUM('on', 'off', 'deleted') DEFAULT 'on'
);

-- Cria tabela de artigos
CREATE TABLE articles (
    art_id INT PRIMARY KEY AUTO_INCREMENT,
    art_title VARCHAR(127),
    art_intro VARCHAR(255),
    art_thumb VARCHAR(255),
    art_content TEXT,
    art_author INT,
    art_views int DEFAULT "0",
    art_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    art_status ENUM('on', 'off', 'deleted') DEFAULT 'on',
    FOREIGN KEY (art_author) REFERENCES users (user_id)

);

-- Cria tabela de comentários nos artigos
CREATE TABLE comments (
    cmt_id INT PRIMARY KEY AUTO_INCREMENT,
    cmt_article INT,
    cmt_author INT,
    cmt_comment TEXT,
    cmt_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    cmt_status ENUM('on', 'off', 'deleted') DEFAULT 'on',
    FOREIGN KEY (cmt_article) REFERENCES articles (art_id),
    FOREIGN KEY (cmt_author) REFERENCES users (user_id)
);

-- Cria tabela com contatos do site
CREATE TABLE contacts (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(127),
    email VARCHAR(255),
    subject VARCHAR(255),
    message TEXT,
    date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    status ENUM('on', 'off', 'deleted') DEFAULT 'on'
);

-- Insere dados em 'users'
INSERT INTO users (
    user_name,
    user_email,
    user_birth,
    user_photo,
    user_profile,
    user_password,
    user_type
) VALUES 
(
    'Setembrino Trocatapas',
    'set@brino.com',
    '1990-10-14',
    'https://randomuser.me/api/portraits/lego/6.jpg',
    'Programador, agricultor, enrolador, fazedor de nada.',
    SHA1('Qw3rtyui0P'),
    'author'
),
(
    'Emegarda Sirineuza',
    'emen@siri.com',
    '2000-01-11',
    'https://randomuser.me/api/portraits/lego/3.jpg',
    'Cantora, compositora, arranjadora, arrumadora e operadora.',
    SHA1('Qw3rtyui0P'),
    'user'
),
(
    'Eletricildo Chocante',
    'eletro@choque.com',
    '1981-05-02',
    'https://randomuser.me/api/portraits/lego/5.jpg',
    'Motorista, eletricista, ortopedista e horista.',
    SHA1('Qw3rtyui0P'),
    'admin'
),
(
    'Juanita Malita',
    'nitamalita@gmail.com',
    '1991-10-12',
    'https://randomuser.me/api/portraits/lego/1.jpg',
    'Motorista, eletricista, ortopedista e horista.',
    SHA1('Qw3rtyui0P'),
    'author'
),
(
    'Genesito Malito',
    'genemalito@google.com',
    '2000-11-01',
    'https://randomuser.me/api/portraits/lego/2.jpg',
    'Motorista, eletricista, ortopedista e horista.',
    SHA1('Qw3rtyui0P'),
    'author'
);

-- Insere dados em 'articles'
INSERT INTO articles (
    art_title,
    art_intro,
    art_thumb,
    art_content,
    art_author
) VALUES
(
    'Zeus',
    'Deus dos céus',
    '/img/articles/zeus2.jpg',
    '<img src="/img/articles/zeus.jpg" alt="Imagem aleátória"><p>Zeus era uma das divindades que faziam parte da religiosidade dos gregos antigos, sendo considerado o deus mais poderoso de todos. Residia no Monte Olimpo, regendo o Universo e controlando os céus. Ele comandava os humanos e os outros deuses e era considerado pelos gregos como o deus do trovão, dos céus e do raio.</p>',
    '1'
),
(
    'Hades',
    'Deus do Submundo',
    '/img/articles/hades1.jpg',
    '<img src="/img/articles/hades.jpg"<p>Hades era um dos deuses da mitologia grega, conhecido como o deus do submundo, o lugar para onde vão as almas dos mortos. Era irmão de Zeus e tomou parte na rebelião contra Cronos, o titã que devorava seus filhos.</p>',
    '1'
),
(
    'Poseidon',
    'Deus dos mares.',
    '/img/articles/poseidon1.jpg',
    '<img src="/img/articles/poseidon.jpg"<p>Poseidon era o deus grego dos mares e dos rios. Os gregos consideravam que ele era responsável por catástrofes como enchentes e terremotos. Era filho de Cronos e Reia e foi resgatado do ventre de seu pai pelo seu irmão Zeus. Acredita-se que o culto a Poseidon seja advindo do período micênico</p>',
    '1'
);

-- Insere dados em 'articles'
INSERT INTO articles (
    art_title,
    art_intro,
    art_thumb,
    art_content,
    art_author
) VALUES
(
    'Athena',
    'Deusa da sabedoria',
    '/img/articles/athena1.jpg',
    '<img src="/img/articles/athena.jpg"<p> É, na mitologia grega, a deusa da civilização, da sabedoria, da estratégia em batalha, das artes, da justiça e da habilidade.</p>',
    '4'
);
