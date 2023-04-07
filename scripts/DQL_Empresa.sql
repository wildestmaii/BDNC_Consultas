-- Responda com o comando SQL adequado para responder as seguintes consultas:

-- 1) Listar nome e sobrenome ordenado por sobrenome.
SELECT PrimeiroNome AS "Nome", UltimoNome AS "Sobrenome"
	FROM Funcionarios 
		ORDER BY SegundoNome;

-- 2) Listar todos os campos de funcionários ordenados por cidade.
SELECT * FROM Funcionarios
	ORDER BY Cidade;

-- 3) Liste os funcionários que têm salário superior a R$ 1.000,00 ordenados pelo nome completo
SELECT IF(SegundoNome IS NOT NULL, CONCAT(PrimeiroNome, " ", SegundoNome, " ", UltimoNome), CONCAT(PrimeiroNome, " ", UltimoNome)) AS "Nome completo", CONCAT("R$ ", Salario) AS "Salário", Funcao AS "Função"
	FROM Funcionarios WHERE Salario > 1000 
		ORDER BY "Nome completo";

-- 4) Liste a data de nascimento e o primeiro nome dos funcionários ordenados do mais novo para o mais velho
SELECT DataNasci AS "Data de nascimento", PrimeiroNome "Primeiro nome"
	FROM Funcionarios 
		ORDER BY DataNasci DESC;

-- 5) Liste os funcionários como uma lista telefônica, com endereço e cidade
SELECT IF(SegundoNome IS NOT NULL, CONCAT(PrimeiroNome, " ", SegundoNome, " ", UltimoNome), CONCAT(PrimeiroNome, " ", UltimoNome)) AS "Nome completo", Fone, Endereco AS "Endereço", Cidade, CEP
	FROM Funcionarios
		ORDER BY PrimeiroNome, SegundoNome, UltimoNome;

-- 6) Liste o nome completo de todos os funcionários que não tenham segundo nome
SELECT IF(SegundoNome IS NOT NULL, CONCAT(PrimeiroNome, " ", SegundoNome, " ", UltimoNome), CONCAT(PrimeiroNome, " ", UltimoNome)) AS "Nome completo"
	FROM Funcionarios
		WHERE SegundoNome IS NULL;

-- 7) Liste os nomes dos funcionários que moram em Ituiutaba e que exerçam a função de Telefonista
SELECT IF(SegundoNome IS NOT NULL, CONCAT(PrimeiroNome, " ", SegundoNome, " ", UltimoNome), CONCAT(PrimeiroNome, " ", UltimoNome)) AS "Funcionários que moram em Ituiutaba"
	FROM Funcionarios 
		WHERE Cidade = 'Itaiutaba' AND Funcao = 'Telefonista';

-- 8) Liste os nomes dos funcionários que trabalham no departamento 2
SELECT IF(SegundoNome IS NOT NULL, CONCAT(PrimeiroNome, " ", SegundoNome, " ", UltimoNome), CONCAT(PrimeiroNome, " ", UltimoNome)) AS "Nome completo"
	FROM Funcionarios WHERE CodigoDepartamento = 2;

-- 9) Liste o nome e o código do departamento de todos os funcionários que ganham mais do que R$ 2000,00
SELECT PrimeiroNome, SegundoNome, UltimoNome, CodigoDepartamento 
	FROM Funcionarios WHERE Salario > 2000;