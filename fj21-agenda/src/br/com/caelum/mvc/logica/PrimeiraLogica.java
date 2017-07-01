package br.com.caelum.mvc.logica;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


	public class PrimeiraLogica implements Logica{
		public String executa (HttpServletRequest req,
								HttpServletResponse res) throws Exception{
			
			System.out.println("Executa a logica . . .");
			
			System.out.println("Retorna o nome da pagina jsp . . .");
			return "primeira-logica.jsp";
	}
}
