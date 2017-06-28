-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Máquina: localhost
-- Data de Criação: 01-Jun-2017 às 12:10
-- Versão do servidor: 5.5.47-0ubuntu0.14.04.1
-- versão do PHP: 5.5.9-1ubuntu4.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de Dados: `LPTI2017`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `Aluno`
--

CREATE TABLE IF NOT EXISTS `Aluno` (
  `CodigoAluno` int(11) NOT NULL AUTO_INCREMENT,
  `CodigoTurma` int(11) NOT NULL,
  `Nome` varchar(60) CHARACTER SET utf8 NOT NULL,
  `Matricula` varchar(12) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`CodigoAluno`),
  KEY `CodigoTurma` (`CodigoTurma`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `Curso`
--

CREATE TABLE IF NOT EXISTS `Curso` (
  `CodigoCurso` int(11) NOT NULL AUTO_INCREMENT,
  `Descricao` varchar(60) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`CodigoCurso`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Extraindo dados da tabela `Curso`
--

INSERT INTO `Curso` (`CodigoCurso`, `Descricao`) VALUES
(1, 'Edificações'),
(2, 'Informática'),
(3, 'Mecatrônica');

-- --------------------------------------------------------

--
-- Estrutura da tabela `Dimensao`
--

CREATE TABLE IF NOT EXISTS `Dimensao` (
  `CodigoDimensao` int(11) NOT NULL AUTO_INCREMENT,
  `CodigoQuestionario` int(11) NOT NULL,
  `Descricao` varchar(20) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`CodigoDimensao`),
  KEY `CodigoQuestionario` (`CodigoQuestionario`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `Disciplina`
--

CREATE TABLE IF NOT EXISTS `Disciplina` (
  `CodigoDisciplina` int(11) NOT NULL AUTO_INCREMENT,
  `Descricao` varchar(20) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`CodigoDisciplina`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `DisciplinaCurso`
--

CREATE TABLE IF NOT EXISTS `DisciplinaCurso` (
  `CodigoDC` int(11) NOT NULL AUTO_INCREMENT,
  `CodigoDisciplina` int(11) DEFAULT NULL,
  `CodigoCurso` int(11) DEFAULT NULL,
  PRIMARY KEY (`CodigoDC`),
  KEY `CodigoDisciplina` (`CodigoDisciplina`),
  KEY `CodigoCurso` (`CodigoCurso`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `DisciplinaUsuarioTurma`
--

CREATE TABLE IF NOT EXISTS `DisciplinaUsuarioTurma` (
  `CodigoDUT` int(11) NOT NULL AUTO_INCREMENT,
  `CodigoDisciplina` int(11) NOT NULL,
  `CodigoUsuario` int(11) NOT NULL,
  `CodigoTurma` int(11) NOT NULL,
  PRIMARY KEY (`CodigoDUT`),
  KEY `CodigoDisciplina` (`CodigoDisciplina`),
  KEY `CodigoUsuario` (`CodigoUsuario`),
  KEY `CodigoTurma` (`CodigoTurma`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `DUTQuestionario`
--

CREATE TABLE IF NOT EXISTS `DUTQuestionario` (
  `CodigoDUTQuestionario` int(11) NOT NULL AUTO_INCREMENT,
  `CodigoDisciplina` int(11) NOT NULL,
  `CodigoUsuario` int(11) NOT NULL,
  `CodigoTurma` int(11) NOT NULL,
  `CodigoQuestionario` int(11) NOT NULL,
  PRIMARY KEY (`CodigoDUTQuestionario`),
  KEY `CodigoDisciplina` (`CodigoDisciplina`),
  KEY `CodigoUsuario` (`CodigoUsuario`),
  KEY `CodigoTurma` (`CodigoTurma`),
  KEY `CodigoQuestionario` (`CodigoQuestionario`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `Pergunta`
--

CREATE TABLE IF NOT EXISTS `Pergunta` (
  `CodigoPergunta` int(11) NOT NULL AUTO_INCREMENT,
  `CodigoDimensao` int(11) NOT NULL,
  `Pergunta` varchar(40) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`CodigoPergunta`),
  KEY `CodigoDimensao` (`CodigoDimensao`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `Questionario`
--

CREATE TABLE IF NOT EXISTS `Questionario` (
  `CodigoQuestionario` int(11) NOT NULL AUTO_INCREMENT,
  `CodigoTurma` int(11) NOT NULL,
  PRIMARY KEY (`CodigoQuestionario`),
  KEY `CodigoTurma` (`CodigoTurma`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `QuestionarioTurma`
--

CREATE TABLE IF NOT EXISTS `QuestionarioTurma` (
  `CodigoQT` int(11) NOT NULL AUTO_INCREMENT,
  `CodigoQuestionario` int(11) NOT NULL,
  `CodigoTurma` int(11) NOT NULL,
  PRIMARY KEY (`CodigoQT`),
  KEY `CodigoQuestionario` (`CodigoQuestionario`),
  KEY `CodigoTurma` (`CodigoTurma`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `Resposta`
--

CREATE TABLE IF NOT EXISTS `Resposta` (
  `CodigoResposta` int(11) NOT NULL AUTO_INCREMENT,
  `CodigoPergunta` int(11) NOT NULL,
  `CodigoUsuario` int(11) NOT NULL,
  `CodigoAluno` int(11) NOT NULL,
  `Resposta` binary(1) NOT NULL,
  `RespostaAberta` text CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`CodigoResposta`),
  KEY `CodigoPergunta` (`CodigoPergunta`),
  KEY `CodigoUsuario` (`CodigoUsuario`),
  KEY `CodigoAluno` (`CodigoAluno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `Turma`
--

CREATE TABLE IF NOT EXISTS `Turma` (
  `CodigoTurma` int(11) NOT NULL AUTO_INCREMENT,
  `CodigoCurso` int(11) NOT NULL,
  `Descricao` varchar(60) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`CodigoTurma`),
  KEY `CodigoCurso` (`CodigoCurso`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Extraindo dados da tabela `Turma`
--

INSERT INTO `Turma` (`CodigoTurma`, `CodigoCurso`, `Descricao`) VALUES
(1, 1, '1° Edificações Integrado'),
(2, 1, '2° Edificações Integrado'),
(3, 1, '3° Edificações Integrado'),
(4, 1, '1° Edificações Subsequente'),
(5, 1, '2° Edificações Subsequente'),
(6, 2, '1° Informática Integrado'),
(7, 2, '2° Informática Integrado'),
(8, 2, '3° Informática Integrado'),
(9, 2, '1° Informática Subsequente'),
(10, 2, '2° Informática Subsequente'),
(11, 3, '1° Mecatrônica Integrado'),
(12, 3, '2° Mecatrônica Integrado'),
(13, 3, '3° Mecatrônica Integrado'),
(14, 3, '1° Mecatrônica Subsequente'),
(15, 3, '2° Mecatrônica Subsequente');

-- --------------------------------------------------------

--
-- Estrutura da tabela `Usuario`
--

CREATE TABLE IF NOT EXISTS `Usuario` (
  `Codigo` int(11) NOT NULL AUTO_INCREMENT,
  `Nome` varchar(60) CHARACTER SET utf8 NOT NULL,
  `Login` varchar(20) CHARACTER SET utf8 NOT NULL,
  `Senha` varchar(40) CHARACTER SET utf8 NOT NULL,
  `Tipo` tinyint(1) NOT NULL,
  PRIMARY KEY (`Codigo`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Extraindo dados da tabela `Usuario`
--

INSERT INTO `Usuario` (`Codigo`, `Nome`, `Login`, `Senha`, `Tipo`) VALUES
(2, 'Joyce', 'coordenacao', '123456', 1);

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `Aluno`
--
ALTER TABLE `Aluno`
  ADD CONSTRAINT `Aluno_ibfk_1` FOREIGN KEY (`CodigoTurma`) REFERENCES `Turma` (`CodigoTurma`);

--
-- Limitadores para a tabela `Dimensao`
--
ALTER TABLE `Dimensao`
  ADD CONSTRAINT `Dimensao_ibfk_1` FOREIGN KEY (`CodigoQuestionario`) REFERENCES `Questionario` (`CodigoQuestionario`);

--
-- Limitadores para a tabela `DisciplinaCurso`
--
ALTER TABLE `DisciplinaCurso`
  ADD CONSTRAINT `DisciplinaCurso_ibfk_1` FOREIGN KEY (`CodigoDisciplina`) REFERENCES `Disciplina` (`CodigoDisciplina`),
  ADD CONSTRAINT `DisciplinaCurso_ibfk_2` FOREIGN KEY (`CodigoCurso`) REFERENCES `Curso` (`CodigoCurso`);

--
-- Limitadores para a tabela `DisciplinaUsuarioTurma`
--
ALTER TABLE `DisciplinaUsuarioTurma`
  ADD CONSTRAINT `DisciplinaUsuarioTurma_ibfk_1` FOREIGN KEY (`CodigoDisciplina`) REFERENCES `Disciplina` (`CodigoDisciplina`),
  ADD CONSTRAINT `DisciplinaUsuarioTurma_ibfk_2` FOREIGN KEY (`CodigoUsuario`) REFERENCES `Usuario` (`Codigo`),
  ADD CONSTRAINT `DisciplinaUsuarioTurma_ibfk_3` FOREIGN KEY (`CodigoTurma`) REFERENCES `Turma` (`CodigoTurma`);

--
-- Limitadores para a tabela `DUTQuestionario`
--
ALTER TABLE `DUTQuestionario`
  ADD CONSTRAINT `DUTQuestionario_ibfk_1` FOREIGN KEY (`CodigoDisciplina`) REFERENCES `Disciplina` (`CodigoDisciplina`),
  ADD CONSTRAINT `DUTQuestionario_ibfk_2` FOREIGN KEY (`CodigoUsuario`) REFERENCES `Usuario` (`Codigo`),
  ADD CONSTRAINT `DUTQuestionario_ibfk_3` FOREIGN KEY (`CodigoTurma`) REFERENCES `Turma` (`CodigoTurma`),
  ADD CONSTRAINT `DUTQuestionario_ibfk_4` FOREIGN KEY (`CodigoQuestionario`) REFERENCES `Questionario` (`CodigoQuestionario`);

--
-- Limitadores para a tabela `Pergunta`
--
ALTER TABLE `Pergunta`
  ADD CONSTRAINT `Pergunta_ibfk_1` FOREIGN KEY (`CodigoDimensao`) REFERENCES `Dimensao` (`CodigoDimensao`);

--
-- Limitadores para a tabela `Questionario`
--
ALTER TABLE `Questionario`
  ADD CONSTRAINT `Questionario_ibfk_1` FOREIGN KEY (`CodigoTurma`) REFERENCES `Turma` (`CodigoTurma`);

--
-- Limitadores para a tabela `QuestionarioTurma`
--
ALTER TABLE `QuestionarioTurma`
  ADD CONSTRAINT `QuestionarioTurma_ibfk_1` FOREIGN KEY (`CodigoQuestionario`) REFERENCES `Questionario` (`CodigoQuestionario`),
  ADD CONSTRAINT `QuestionarioTurma_ibfk_2` FOREIGN KEY (`CodigoTurma`) REFERENCES `Turma` (`CodigoTurma`);

--
-- Limitadores para a tabela `Resposta`
--
ALTER TABLE `Resposta`
  ADD CONSTRAINT `Resposta_ibfk_1` FOREIGN KEY (`CodigoPergunta`) REFERENCES `Pergunta` (`CodigoPergunta`),
  ADD CONSTRAINT `Resposta_ibfk_2` FOREIGN KEY (`CodigoUsuario`) REFERENCES `Usuario` (`Codigo`),
  ADD CONSTRAINT `Resposta_ibfk_3` FOREIGN KEY (`CodigoAluno`) REFERENCES `Aluno` (`CodigoAluno`);

--
-- Limitadores para a tabela `Turma`
--
ALTER TABLE `Turma`
  ADD CONSTRAINT `Turma_ibfk_1` FOREIGN KEY (`CodigoCurso`) REFERENCES `Curso` (`CodigoCurso`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
