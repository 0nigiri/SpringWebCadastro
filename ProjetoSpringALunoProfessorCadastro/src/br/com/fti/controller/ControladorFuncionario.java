package br.com.fti.controller;

import java.util.List;

import br.com.fti.dao.FuncionarioDAO;
import br.com.fti.model.Funcionario;

public class ControladorFuncionario{


	public List<Funcionario> consultarListaFuncionario(){
		FuncionarioDAO funcionarioDAO = new FuncionarioDAO();
		return funcionarioDAO.consultarListaFuncionario();
		
	}
	
	public Funcionario  consultarUnicoFuncionario(int codigo){
		FuncionarioDAO funcionarioDAO = new FuncionarioDAO();
		return funcionarioDAO.consultarFuncionario(codigo);
		
	}
	
	
	public Funcionario  deletarFuncionario(int codigo){
		FuncionarioDAO funcionarioDAO = new FuncionarioDAO();
		funcionarioDAO.deletarFuncionario(codigo);
		return null;
		
	}
	
	
	public void cadastrarFuncionario(Funcionario funcionario) {
		FuncionarioDAO funcionarioDAO = new FuncionarioDAO();
		funcionarioDAO.cadastrarFuncionario(funcionario);
		
	}
	
	public void editarFuncionario(Funcionario funcionario, int index) {
		FuncionarioDAO funcionarioDAO = new FuncionarioDAO();
		funcionarioDAO.alterarFuncionario(funcionario);
	}
}
