import 'package:flutter/material.dart';

import 'models/enderco.dart';
import 'models/user.dart';

class CadastroPessoaScreen extends StatefulWidget {
  @override
  _CadastroPessoaScreenState createState() => _CadastroPessoaScreenState();
}

class _CadastroPessoaScreenState extends State<CadastroPessoaScreen> {
  final _formKey = GlobalKey<FormState>();
  final _pessoa = Pessoa(
      nome: '',
      sobrenome: '',
      rg: '',
      cpf: '',
      dataNascimento: '',
      estadoCivil: '',
      email: '',
      sexo: '',
      telefone: '');
  final _endereco = Endereco(
      estado: '', cidade: '', cep: '', bairro: '', rua: '', numero: '');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cadastro de Pessoas'),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              Icon(
                Icons.person_2_outlined,
                size: 100.0,
                color: Colors.blue,
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Nome'),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Por favor, insira o nome';
                  }
                  return null;
                },
                onSaved: (value) => _pessoa.nome = value!,
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Sobrenome'),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Por favor, insira o sobrenome';
                  }
                  return null;
                },
                onSaved: (value) => _pessoa.sobrenome = value!,
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'RG'),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Por favor, insira o RG';
                  }
                  return null;
                },
                onSaved: (value) => _pessoa.rg = value!,
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'CPF'),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Por favor, insira o CPF';
                  }
                  return null;
                },
                onSaved: (value) => _pessoa.cpf = value!,
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Data de Nascimento'),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Por favor, insira a data de nascimento';
                  }
                  return null;
                },
                onSaved: (value) => _pessoa.dataNascimento = value!,
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'telefone'),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Por favor, insira o telefone';
                  }
                  return null;
                },
                onSaved: (value) => _pessoa.telefone = value!,
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Estado civil'),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Por favor, insira seu estado civil';
                  }
                  return null;
                },
                onSaved: (value) => _pessoa.estadoCivil = value!,
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'CEP'),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Por favor, insira o CEP';
                  }
                  return null;
                },
                onSaved: (value) => _endereco.cep = value!,
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Estado'),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Por favor, insira o estado';
                  }
                  return null;
                },
                onSaved: (value) => _endereco.estado = value!,
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Cidade'),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Por favor, insira a cidade';
                  }
                  return null;
                },
                onSaved: (value) => _endereco.cidade = value!,
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Rua/Avenida'),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Por favor, insira a rua/avenida';
                  }
                  return null;
                },
                onSaved: (value) => _endereco.rua = value!,
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Bairro'),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Por favor, insira o bairro';
                  }
                  return null;
                },
                onSaved: (value) => _endereco.bairro = value!,
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Número'),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Por favor, insira o número';
                  }
                  return null;
                },
                onSaved: (value) => _endereco.numero = value!,
              ),
              SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState!.save();
                  }
                },
                child: Text('Salvar'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: CadastroPessoaScreen(),
  ));
}
