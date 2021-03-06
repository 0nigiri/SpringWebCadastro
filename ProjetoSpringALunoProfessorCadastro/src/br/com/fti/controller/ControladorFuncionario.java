package br.com.fti.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import br.com.fti.dao.FuncionarioDAO;
import br.com.fti.ferramentas.ValidadorDeDados;
import br.com.fti.model.FilhoFuncionario;
import br.com.fti.model.Funcionario;

@Controller
public class ControladorFuncionario{
	
	@RequestMapping("cadastroFuncionario")
	public String form() {
		return "funcionario/cadastroFuncionario";
	}
	

	
	
	@RequestMapping("adicionarFuncionario")
	public String cadastrarFuncionario(Funcionario funcionario, String[] nomeFilho, String[] dataNascimentoFilho,  Model model) {
		
		ValidadorDeDados validator = new ValidadorDeDados();
		
		if (nomeFilho != null && nomeFilho.length > 0 && dataNascimentoFilho != null && dataNascimentoFilho.length > 0) {
			funcionario.setFilhos(formatarFilhos(nomeFilho, dataNascimentoFilho));
		}
		
		if(validator.validadorDeDadosFuncionario(funcionario) == true) {
			System.out.println(validator.validadorDeDadosFuncionario(funcionario));
			FuncionarioDAO funcionarioDAO = new FuncionarioDAO();
			funcionarioDAO.cadastrarFuncionario(funcionario);
			return "redirect:listaFuncionario";
			
		}	else {
			System.out.println(validator.validadorDeDadosFuncionario(funcionario));
			model.addAttribute("funcionario", funcionario);
			return "funcionario/cadastroFuncionario";
		}
		

		
	}
	
	
	private ArrayList<FilhoFuncionario> formatarFilhos(String[] nomeFilho, String[] dataNascimentoFilho) {
		ArrayList<FilhoFuncionario> filhos = new ArrayList<FilhoFuncionario>();
		
		for(int i = 0; i < nomeFilho.length; i++) {
			FilhoFuncionario filho = new FilhoFuncionario();
			filho.setNomeFilho(nomeFilho[i]);
			filho.setDataNascimentoFilho(dataNascimentoFilho[i]);
			filhos.add(filho);
		}
			
		return filhos;
	}




	@RequestMapping("listaFuncionario")
	public String  consultarListaFuncionario(Model model){
		FuncionarioDAO funcionarioDAO = new FuncionarioDAO();
		List<Funcionario> funcionario = funcionarioDAO.consultarListaFuncionario();	
		model.addAttribute("funcionario", funcionario);
		
		return "funcionario/listaFuncionario";
	}
	
	public Funcionario  consultarUnicoFuncionario(int codigo){
		FuncionarioDAO funcionarioDAO = new FuncionarioDAO();
		return funcionarioDAO.consultarFuncionario(codigo);
		
	}
	
	@RequestMapping("deletarFuncionario")
	public String  deletarFuncionario(Funcionario funcionario){
		FuncionarioDAO funcionarioDAO = 	new FuncionarioDAO();
		funcionarioDAO.deletarFuncionario(funcionario.getCodigo());
		return "redirect:listaFuncionario";
		
	}
	
	@RequestMapping("editarFuncionario")
	public String editarFuncionario(int codigo,Model model )  {
		FuncionarioDAO funcionarioDAO = new FuncionarioDAO();
		model.addAttribute("funcionario", funcionarioDAO.consultarFuncionario(codigo));
		return "funcionario/editarFuncionario";
	}
	
	@RequestMapping("finalizarEditarFuncionario")
	public String finalizarEditarFuncionario(Funcionario funcionario, Model model) {

		
		ValidadorDeDados validator = new ValidadorDeDados();
		
		if(validator.validadorDeDadosFuncionario(funcionario) == true) {
			System.out.println(validator.validadorDeDadosFuncionario(funcionario));
			FuncionarioDAO funcionarioDAO = new FuncionarioDAO();
			funcionarioDAO.alterarFuncionario(funcionario);
			
			return "redirect:listaFuncionario";
			
		}	else {
			
			return "funcionario/editarFuncionario";
		}
		
		
		
		
		
	}
	
	
	
	
}