-- Responda com o comando SQL adequado para responder as seguintes consultas:

-- 1) Listar nome e sobrenome ordenado por sobrenome.
SELECT PrimeiroNome, UltimoNome
	FROM Funcionarios ORDER BY SegundoNome;

-- 2) Listar todos os campos de funcionários ordenados por cidade.
SELECT * FROM Funcionarios ORDER BY Cidade;

-- 3) Liste os funcionários que têm salário superior a R$ 1.000,00 ordenados pelo nome completo
SELECT PrimeiroNome, SegundoNome, UltimoNome, Salario, Funcao
	FROM funcionarios WHERE Salario > 1000 ORDER BY PrimeiroNome, SegundoNome, UltimoNome;

-- 4) Liste a data de nascimento e o primeiro nome dos funcionários ordenados do mais novo para o mais velho
SELECT DataNasci, PrimeiroNome, SegundoNome, UltimoNome
	FROM Funcionarios 
		ORDER BY DataNasci DESC;

-- 5) Liste os funcionários como uma lista telefônica, com enedeço e cidade
SELECT PrimeiroNome, SegundoNome, UltimoNome, Fone, Endereco, Cidade, CEP
	FROM Funcionarios 
		ORDER BY PrimeiroNome, SegundoNome, UltimoNome;

-- 6) Liste o nome completo de todos os funcionários que não tenham segundo nome
SELECT PrimeiroNome, UltimoNome
	FROM Funcionarios
		WHERE SegundoNome IS NULL;

-- 7) Liste os nomes dos funcionários que moram em Ituiutaba e que exerçam a função de Telefonista
SELECT PrimeiroNome, SegundoNome, UltimoNome 
	FROM Funcionarios 
		WHERE Cidade = 'Itaiutaba' AND Funcao = 'Telefonista';

-- 8) Liste os nomes dos funcionários que trabalham no departamento 2
SELECT PrimeiroNome, SegundoNome, UltimoNome 
	FROM Funcionarios WHERE CodigoDepartamento = 2;

-- 9) Liste o nome e o código do departamento de todos os funcionários que ganham mais do que R$ 2000,00
SELECT PrimeiroNome, SegundoNome, UltimoNome, CodigoDepartamento 
	FROM Funcionarios WHERE Salario > 2000;