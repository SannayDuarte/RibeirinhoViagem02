package br.com.caelum.vraptot.model;

import java.util.Date;

public class cadastroCliente {

		private long id;
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
		private String rua;
		private String email;
		private String senha;
		
		public long getId() {
			return id;
		}
		public void setId(long id) {
			this.id = id;
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
			return rua;
		}
		public void setRua(String rua) {
			this.rua = rua;
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
		
		public cadastroCliente() {
			
		}
		public cadastroCliente(int id, String nomeCom, int rg, int cpf, Date dataDeNascimento, String email, String sexualidade, 
				int celular , int cep, String estado, String cidade, String bairro, String rua, String senha) {
			this.id=id;
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
			this.rua=rua;
			this.senha=senha;	
		}

}

