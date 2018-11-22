package br.com.fti.model;

import java.util.ArrayList;

public class Funcionario extends Pessoa {
	public String cargo;
	public int codigo;
	public String salario;
	public String valeAlimentacao;
	public String valeRefeicao;
	public String valeTransporte;
	public String disciplina;
	public ArrayList<FilhoFuncionario> filhos;


 




	public ArrayList<FilhoFuncionario> getFilhos() {
		return filhos;
	}

	public void setFilhos(ArrayList<FilhoFuncionario> filhos) {
		this.filhos = filhos;
	}

	public int getCodigo() {
		return codigo;
	}

	public void setCodigo(int codigo) {
		this.codigo = codigo;
	}

	public String getCargo() {
		return cargo;
	}

	public void setCargo(String cargo) {
		this.cargo = cargo;
	}

	public String getSalario() {
		return salario;
	}

	public void setSalario(String salario) {
		this.salario = salario;
	}

	public String getValeAlimentacao() {
		return valeAlimentacao;
	}

	public void setValeAlimentacao(String valeAlimentacao) {
		this.valeAlimentacao = valeAlimentacao;
	}

	public String getValeRefeicao() {
		return valeRefeicao;
	}

	public void setValeRefeicao(String valeRefeicao) {
		this.valeRefeicao = valeRefeicao;
	}

	public String getValeTransporte() {
		return valeTransporte;
	}

	public void setValeTransporte(String valeTransporte) {
		this.valeTransporte = valeTransporte;
	}

	
	
	public String getDisciplina() {
		return disciplina;
	}
	
	public void setDisciplina(String disciplina) {
		this.disciplina = disciplina;
	}
}
