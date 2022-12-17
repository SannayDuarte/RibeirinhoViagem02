package br.com.caelum.vraptot.model;

import java.util.Date;

public class passagemCliente {

		private long idCliente;
		private String NomeCom;
		private Date dataDeNascimento;
		private int rg;
		private int cpf;
		private int celular;
		private String sexualidade;
		private int cep;
		private String estado;
		private String cidade;
		private String bairro;
		private String Rua;
		private String CidadeOrigem;
		private String CidadeDestino;
		private Date dataViagem;
		private String MtdViagem;
		private int ValorPas; 
		private String email;
		private String senha;
		
		public long getIdCliente() {
			return idCliente;
		}
		public void setIdCliente(long idCliente) {
			this.idCliente = idCliente;
		}
		public String getNomeCom() {
			return NomeCom;
		}
		public void setNomeCom(String NomeCom) {
			this.NomeCom = NomeCom;
		}
		public Date getDataDeNascimento() {
			return dataDeNascimento;
		}
		public void setDataDeNascimento(Date dataDeNascimento) {
			this.dataDeNascimento = dataDeNascimento;
		}
		public int getRg() {
			return rg;
		}
		public void setRg(int rg) {
			this.rg = rg;
		}
		public int getCpf() {
			return cpf;
		}
		public void setCpf(int cpf) {
			this.cpf = cpf;
		}
		public int getCelular() {
			return celular;
		}
		public void setCelular(int celular) {
			this.celular = celular;
		}
		public String getSexualidade() {
			return sexualidade;
		}
		public void setSexualidade(String sexualidade) {
			this.sexualidade = sexualidade;
		}
		public int getCep() {
			return cep;
		}
		public void setCep(int cep) {
			this.cep = cep;
		}
		public String getEstado() {
			return estado;
		}
		public void setEstado(String estado) {
			this.estado = estado;
		}
		public String getCidade() {
			return cidade;
		}
		public void setCidade(String cidade) {
			this.cidade = cidade;
		}
		public String getBairro() {
			return bairro;
		}
		public void setBairro(String bairro) {
			this.bairro = bairro;
		}
		public String getRua() {
			return Rua;
		}
		public void setRua(String rua) {
			this.Rua = rua;
		}
		public String getCidadeOrigem() {
			return CidadeOrigem;
		}
		public void setCidadeOrigem(String CidadeOrigem) {
			this.CidadeOrigem = CidadeOrigem;
		}
		public String getCidadeDestino() {
			return CidadeDestino;
		}
		public void setCidadeDestino(String CidadeDestino) {
			this.CidadeDestino = CidadeDestino;
		}
		
		public Date getDataViagem() {
			return dataViagem;
		}
		public void setDataViagem(Date dataViagem) {
			this.dataViagem = dataViagem;
		}
		public String getMtdViagem() {
			return MtdViagem;
		}
		public void setMtdViagem(String MtdViagem) {
			this.MtdViagem = MtdViagem;
		}
		public int getValorPas() {
			return ValorPas;
		}
		public void setValorPas(int ValorPas) {
			this.ValorPas = ValorPas;
		}
		public String getEmail() {
			return email;
		}
		public void setEmail(String email) {
			this.email = email;
		}
		
		public String getSenha() {
			return senha;
		}
		public void setSenha(String senha) {
			this.senha = senha;
		}
		public passagemCliente() {
			
		}
		public passagemCliente(int idCliente, String nomeCom, int rg, int cpf, Date dataDeNascimento, String email, String sexualidade, 
				int celular, int cep, String estado, String cidade, String bairro, String rua, String senha, String CidadeOrigem,
		 String CidadeDestino, Date dataViagem, String MtdViagem, int ValorPas) {
			this.idCliente=idCliente;
			this.NomeCom=nomeCom;
			this.rg=rg;
			this.cpf=cpf;
			this.dataDeNascimento=dataDeNascimento;
			this.email=email;
			this.sexualidade=sexualidade;
			this.celular=celular;
			this.cep=cep;
			this.estado=estado;
			this.cidade=cidade;
			this.bairro=bairro;
			this.Rua=rua;
			this.senha=senha;	
			this.CidadeOrigem=CidadeOrigem;	
			this.CidadeDestino=CidadeDestino;	
			this.dataViagem=dataViagem;	
			this.MtdViagem=MtdViagem;	
			this.ValorPas=ValorPas;		
		}

}