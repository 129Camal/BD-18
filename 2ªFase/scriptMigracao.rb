require 'json'
require 'mysql2'

DB = 'Agrup424'
HOST = 'localhost'
USERNAME = 'root'
PASSWORD = 'root'

client = Mysql2::Client.new(host: HOST, username: USERNAME, password: PASSWORD, database: DB)
res = []
che = []

elementos = client.query("SELECT E.NIN, E.Nome, E.Idade, E.Sexo, E.DatadeNasc, E.Morada, E.Telemovel, E.Email, E.NoitesdeCampo,
									E.Funcao_Designacao AS Funcao,
									E.Seccao_Designacao AS NomeSeccao,
									Seccao.Simbologia AS Simbologia,
									Seccao.Patrono AS Patrono,
									E.Equipa_idEquipa AS IdEquipa,
									Equipa.Nome AS EquipaNome,
									Equipa.Lema AS Lema,
									Equipa.Grito AS Grito
									FROM Elemento AS E
									INNER JOIN Seccao ON Seccao.Designacao = E.Seccao_Designacao
									INNER JOIN Equipa ON Equipa.idEquipa = E.Equipa_idEquipa;")
 
elementos.each do |elemento|
	result = client.query("SELECT Atividade.Designacao AS Designação, Atividade.Descricao AS Descrição, Atividade.dia AS Dia
						  		FROM Atividade
								WHERE Atividade.Equipa_idEquipa = #{elemento['IdEquipa']}")
	
	res << {
		'Nin'	=> elemento['NIN'],
		'Nome'	=> elemento['Nome'],
		'Idade' => elemento['Idade'],
		'Sexo'	=> elemento['Sexo'],
		'Data de Nascimento'	=> elemento['DatadeNasc'],
		'Morada'	=> elemento['Morada'],
		'Telemovel' => elemento['Telemovel'],
		'Email'	=> elemento['Email'],
		'Noites de Campo' => elemento['NoitesdeCampo'],
		'Função' => elemento['Funcao'],
		'Secção' => {'Designação' => elemento['NomeSeccao'], 'Simbologia' => elemento['Simbologia'], 'Patrono' => elemento['Patrono']},
		'Equipa' => {'Nome' => elemento['EquipaNome'], 'Lema' => elemento['Lema'], 'Grito' => elemento['Grito'],
					 'Atividade' => result.to_a}

	}
end

chefes = client.query("SELECT E.NIN, E.Nome, E.Idade, E.Sexo, E.DatadeNasc, E.Morada, E.Telemovel, E.Email, E.NoitesdeCampo,
									E.Funcao_Designacao AS Funcao FROM Elemento AS E
									WHERE E.Seccao_Designacao IS NULL AND E.Equipa_idEquipa IS NULL")

chefes.each do |chefe|
	
	che << {
		'Nin'	=> chefe['NIN'],
		'Nome'	=> chefe['Nome'],
		'Idade' => chefe['Idade'],
		'Sexo'	=> chefe['Sexo'],
		'Data de Nascimento'	=> chefe['DatadeNasc'],
		'Morada'	=> chefe['Morada'],
		'Telemovel' => chefe['Telemovel'],
		'Email'	=> chefe['Email'],
		'Noites de Campo' => chefe['NoitesdeCampo'],
		'Função' => chefe['Funcao'],
		'Secção' => {'Designação' => nil, 'Simbologia' => nil, 'Patrono' => nil},
		'Equipa' => {'Nome' => nil, 'Lema' => nil, 'Grito' => nil,
					 'Atividade' => nil}

	}
end

res.each do |re| 
puts JSON.pretty_generate(re)
end

che.each do |ch| 
puts JSON.pretty_generate(ch)
end
