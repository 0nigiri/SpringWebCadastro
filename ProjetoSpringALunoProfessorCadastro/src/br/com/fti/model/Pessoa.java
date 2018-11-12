package br.com.fti.model;

public class Pessoa {
	
	public String nome;
	public String cpf;
	public String cpf1;
	public String cpf2;
	public String dataNascimento;
	public String endereco;
	public String sexo;
	public String telefone;
	public String telefone1;
	public String telefone2;
	public String eMail;
	



	public String getCpf1() {
		
		cpf1 = this.getCpf().substring(0, 9);
		return cpf1;
	}

	public void setCpf1(String cpf1) {
		this.cpf1 = cpf1;
	}

	public String getCpf2() {
		cpf2 = this.getCpf().substring(9, 11);
		return cpf2;
	}

	public void setCpf2(String cpf2) {
		this.cpf2 = cpf2;
	}
	
	
	
	public String getTelefone1() {
		telefone1 = this.getTelefone().substring(0, 2);
		return telefone1;
	}
	
	public void setTelefone1(String telefone1) {
		this.telefone1 = telefone1;
	}

	public String getTelefone2() {
		telefone2 = this.getTelefone().substring(2,11);
		return telefone2;
	}

	public void setTelefone2(String telefone2) {
		this.telefone2 = telefone2;
	}


	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String  getCpf() {
		return cpf;
	}

	public void setCpf(String cpf) {
		this.cpf = cpf;
	}

	
	public String getDataNascimento() {
		return dataNascimento;
	}

	public void setDataNascimento(String dataNascimento) {
		this.dataNascimento = dataNascimento;
	}


	public String getEndereco() {
		return endereco;
	}

	public void setEndereco(String endereco) {
		this.endereco = endereco;
	}

	public String getSexo() {
		return sexo;
	}

	public void setSexo(String sexo) {
		this.sexo = sexo;
	}

	public String getTelefone() {
		return telefone;
	}

	public void setTelefone(String telefone) {
		this.telefone = telefone;
	}

	public String geteMail() {
		return eMail;
	}

	public void seteMail(String eMail) {
		this.eMail = eMail;
	}

	
	
}
