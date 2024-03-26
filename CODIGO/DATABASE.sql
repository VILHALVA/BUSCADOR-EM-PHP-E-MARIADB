-- Copiando estrutura do banco de dados para search
CREATE DATABASE IF NOT EXISTS `search`;
USE `search`;

-- Copiando estrutura para tabela search.suggestions
CREATE TABLE `suggestions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `word` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
);

-- Copiando dados para a tabela search.suggestions: ~7 rows (aproximadamente)
INSERT INTO `suggestions` (`id`, `word`) VALUES
    (1, 'Lascados com L'),
    (2, 'Cadê a minha picanha?'),
    (3, 'Dando uma lambda no C#'),
    (4, 'Opinião antidemocrática'),
    (5, 'Água molhada'),
    (6, 'Cheiro de chuva'),
    (7, 'Preguiça ninja'),
    (8, 'Festival de memes'),
    (9, 'Risada de hiena'),
    (10, 'Gato comilão'),
    (11, 'Sono profundo'),
    (12, 'Despertador rebelde'),
    (13, 'Sexta-feira 13'),
    (14, 'Céu de brigadeiro'),
    (15, 'Dança da galinha'),
    (16, 'Papagaio tagarela'),
    (17, 'Bolo queimado'),
    (18, 'Exercício de preguiça'),
    (19, 'Café sem açúcar'),
    (20, 'Abraço de urso');


