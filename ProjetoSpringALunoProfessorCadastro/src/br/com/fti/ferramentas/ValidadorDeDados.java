package br.com.fti.ferramentas;

import br.com.fti.model.Aluno;
import br.com.fti.ferramentas.ConferirCpf;
import br.com.fti.ferramentas.ConferirData;

public class ValidadorDeDados {
	
	public boolean validadorDeDados(Aluno aluno) {
		
		if(		aluno.getNome().equals(null)			||	aluno.getNome().equals("")
			||	aluno.getCpf().equals(null)				||	aluno.getCpf().equals("")	|| ConferirCpf.isCPF(aluno.getCpf()) == false
			||	aluno.getDataNascimento().equals(null)  || 	ConferirData.isDate(aluno.getDataNascimento()) == false
			||	aluno.getTelefone().equals(null)		||	aluno.getTelefone().equals("")
			||	aluno.geteMail().equals(null)			||	aluno.geteMail().equals("")
			||	aluno.getEndereco()		.equals(null)	|| 	aluno.getEndereco().equals("")
			||	aluno.getSexo().equals(null) 			||	aluno.getSexo().equals("")
			||	aluno.getCurso().equals(null)			||  aluno.getCurso().equals("")) {
			
			return false;
			
		} else {
			
			return true;
			
			
		}
		
	}

}
