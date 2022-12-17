package br.com.caelum.vraptor.form;

import java.time.LocalDate;

import javax.validation.constraints.NotNull;

import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

import br.com.caelum.vraptot.model.cadastroCliente;


public class cadastroClienteForm {

	@NotNull
	@org.hibernate.validator.constraints.NotEmpty
	@org.hibernate.validator.constraints.NotBlank
	private int cpf;
	@NotNull
	@org.hibernate.validator.constraints.NotEmpty
	@org.hibernate.validator.constraints.NotBlank
	private int rg;
	@NotNull
	@org.hibernate.validator.constraints.NotEmpty
	@org.hibernate.validator.constraints.NotBlank
	private String nomeCom;
	@NotNull
	@NotEmpty
	private String sexualidade;
	@NotNull
	@org.hibernate.validator.constraints.NotEmpty
	@org.hibernate.validator.constraints.NotBlank
	private int celular;
	@NotNull
	@NotEmpty
	private String email;
	@NotNull
	@NotEmpty
	private String senha;
	@NotNull
	@NotEmpty
	private String cep;
	@NotNull
	@NotEmpty
	private String estado;
	@NotNull
	@NotEmpty
	private String cidade;
	@NotNull
	@NotEmpty
	private String bairro;
	@NotNull
	@NotEmpty
	private String rua;
	@NotNull
	@NotEmpty
	private LocalDate dataDeNascimento;
	
	public int getCpf() {
		return cpf;
	}
	public void setCpf(int cpf) {
		this.cpf = cpf;
	}
	public int getRg() {
		return rg;
	}
	public void setRg(int rg) {
		this.rg = rg;
	}
	public String getNomeCom() {
		return nomeCom;
	}
	public void setNomeCom(String nomeCom) {
		this.nomeCom = nomeCom;
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
	public String getCep() {
		return cep;
	}
	public void setCep(String cep) {
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
	public LocalDate getDataDeNascimento() {
		return dataDeNascimento;
	}
	public void setDataDeNascimento(LocalDate dataDeNascimento) {
		this.dataDeNascimento = dataDeNascimento;
	}
	
	public cadastroCliente converter(BCryptPasswordEncoder encoder) {

	    this.setSenha(encoder.encode(senha));
	    return new cadastroCliente( );
	  }
}
