from flask import Flask, render_template
from flask.globals import request
from flask.helpers import url_for
from flask_mysqldb import MySQL
from werkzeug.utils import redirect

app = Flask(__name__)

app.config['MYSQL_HOST'] = 'localhost'
app.config['MYSQL_USER'] = 'root'
app.config['MYSQL_PASSWORD'] = ''
app.config['MYSQL_DB'] = 'coding_for_hope'

mysql = MySQL(app)

@app.route('/')
def dashboard():
	# Selecionando todos os registros de organizações parceiras
	cur = mysql.connection.cursor()
	cur.execute('SELECT * FROM organizacao_parceira')
	parceiros = cur.fetchall()
	cur.close

	# Selecionando todos os registros de doadores
	cur = mysql.connection.cursor()
	cur.execute('SELECT * FROM doador')
	doadores = cur.fetchall()
	cur.close

	return render_template('dashboard.html', parceiros=parceiros, doadores=doadores)

@app.route('/ajax_api/organizacoes_parceiras')
def organizacoes_parceiras():
	# Selecionando todos os registros de organizações parceiras
	cur = mysql.connection.cursor()
	cur.execute('SELECT * FROM organizacao_parceira')
	parceiros = cur.fetchall()
	cur.close

	dados_parceiros = []
	for organizacao_parceira in parceiros:
		dict_parceiro = {
			'id': organizacao_parceira[0],
			'nome': organizacao_parceira[1],
			'tipo': organizacao_parceira[2],
			'cnpj': organizacao_parceira[3],
			'email': organizacao_parceira[4],
			'cep': organizacao_parceira[5],
			'endereco': organizacao_parceira[6],
			'numero': organizacao_parceira[7],
			'bairro': organizacao_parceira[8],
			'cidade': organizacao_parceira[9],
			'estado': organizacao_parceira[10],
			'telefone': organizacao_parceira[11],
			'celular': organizacao_parceira[12],
			'visita_agendada': organizacao_parceira[13],
		}
		dados_parceiros.append(dict_parceiro)
	return {'data': [parceiro for parceiro in dados_parceiros]}


@app.route('/ajax_api/doadores')
def doadores():
	# Selecionando todos os registros de doadores
	cur = mysql.connection.cursor()
	cur.execute('SELECT * FROM doador')
	doadores = cur.fetchall()
	cur.close

	dados_doadores = []
	for doador in doadores:
		dict_doador = {
			'id': doador[0],
			'nome': doador[1],
			'sobrenome': doador[2],
			'genero': doador[3],
			'data de nascimento': doador[4],
			'rg': doador[5],
			'cpf': doador[6],
			'email': doador[7],
			'cep': doador[8],
			'endereco': doador[9],
			'numero': doador[10],
			'bairro': doador[11],
			'cidade': doador[12],
			'estado': doador[13],
			'celular': doador[14]
		}
		dados_doadores.append(dict_doador)
	return {'data': [doador for doador in dados_doadores]}

@app.route('/adicionar_organizacao_parceira', methods=['POST'])
def adicionar_organizacao_parceira():
	nome = request.form['nome']
	tipo = request.form['tipo']
	cnpj = request.form['cnpj']
	email = request.form['email']
	cep = request.form['cep']
	endereco = request.form['endereco']
	numero = request.form['numero']
	bairro = request.form['bairro']
	cidade = request.form['cidade']
	estado = request.form['estado']
	telefone = request.form['telefone']
	celular = request.form['celular']

	cur = mysql.connection.cursor()
	cur.execute("INSERT INTO organizacao_parceira (nome, tipo, cnpj, email, cep, endereco, numero, bairro, cidade, estado, telefone, celular) VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s)", (nome, tipo, cnpj, email, cep, endereco, numero, bairro, cidade, estado, telefone, celular))
	mysql.connection.commit()
	cur.close
	return redirect(url_for('dashboard'))

@app.route('/adicionar_doador', methods=['POST'])
def adicionar_doador():
	nome = request.form['nome']
	sobrenome = request.form['sobrenome']
	genero = request.form['genero']
	data_de_nascimento = request.form['data_de_nascimento']
	rg = request.form['rg']
	cpf = request.form['cpf']
	email = request.form['email']
	cep = request.form['cep']
	endereco = request.form['endereco']
	numero = request.form['numero']
	bairro = request.form['bairro']
	cidade = request.form['cidade']
	estado = request.form['estado']
	celular = request.form['celular']

	cur = mysql.connection.cursor()
	cur.execute("INSERT INTO doador (nome, sobrenome, genero, data_de_nascimento, rg, cpf, email, cep, endereco, numero, bairro, cidade, estado, celular) VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s)", (nome, sobrenome, genero, data_de_nascimento, rg, cpf, email, cep, endereco, numero, bairro, cidade, estado, celular))
	mysql.connection.commit()
	cur.close
	return redirect(url_for('dashboard'))

	

if __name__ == '__main__':
	app.run(debug=True)

