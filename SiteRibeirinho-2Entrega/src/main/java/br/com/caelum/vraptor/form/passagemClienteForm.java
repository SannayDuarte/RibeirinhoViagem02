package br.com.caelum.vraptor.form;

import java.time.LocalDate;

import javax.validation.constraints.NotNull;

import org.hibernate.validator.constraints.NotBlank;
import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

import br.com.caelum.vraptot.model.passagemCliente;

public class passagemClienteForm {
	@NotNull
	@NotEmpty
	@NotBlank
	private int idCliente;
	@NotNull
	@NotEmpty
	@NotBlank
	private String NomeCom;
	@NotNull
	@NotEmpty
	@NotBlank
	private int rg;
	@NotNull
	@NotEmpty
	@NotBlank
	private int cpf;
	@NotNull
	@NotEmpty
	@NotBlank
	private int celular;
	@NotNull
	@NotEmpty
	@NotBlank
	private String sexualidade;
	@NotNull
	@NotEmpty
	@NotBlank
	private int cep;
	@NotNull
	@NotEmpty
	@NotBlank
	private String estado;
	@NotNull
	@NotEmpty
	@NotBlank
	private String cidade;
	@NotNull
	@NotEmpty
	@NotBlank
	private String bairro;
	@NotNull
	@NotEmpty
	@NotBlank
	private String Rua;
	@NotNull
	@NotEmpty
	@NotBlank
	private String CidadeOrigem;
	@NotNull
	@NotEmpty
	@NotBlank
	private String CidadeDestino;
	@NotNull
	@NotEmpty
	@NotBlank
	private String MtdViagem;
	@NotNull
	@NotEmpty
	@NotBlank
	private int ValorPas;
	@NotNull
	@NotEmpty
	@NotBlank
	private String email;
	@NotNull
	@NotEmpty
	@NotBlank
	private String senha;
	@NotNull
	@NotEmpty
	private LocalDate dataDeNascimento;
	@NotNull
	@NotEmpty
	private LocalDate dataViagem;
	
	public int getIdCliente() {
		return idCliente;
	}
	public void setIdCliente(int idCliente) {
		this.idCliente = idCliente;
	}
	public String getNomeCom() {
		return NomeCom;
	}
	public void setNomeCom(String nomeCom) {
		NomeCom = nomeCom;
	}
	public LocalDate getDataDeNascimento() {
		return dataDeNascimento;
	}
	public void setDataDeNascimento(LocalDate dataDeNascimento) {
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
		Rua = rua;
	}
	public String getCidadeOrigem() {
		return CidadeOrigem;
	}
	public void setCidadeOrigem(String cidadeOrigem) {
		CidadeOrigem = cidadeOrigem;
	}
	public String getCidadeDestino() {
		return CidadeDestino;
	}
	public void setCidadeDestino(String cidadeDestino) {
		CidadeDestino = cidadeDestino;
	}
	public LocalDate getDataViagem() {
		return dataViagem;
	}
	public void setDataViagem(LocalDate dataViagem) {
		this.dataViagem = dataViagem;
	}
	public String getMtdViagem() {
		return MtdViagem;
	}
	public void setMtdViagem(String mtdViagem) {
		MtdViagem = mtdViagem;
	}
	public int getValorPas() {
		return ValorPas;
	}
	public void setValorPas(int valorPas) {
		ValorPas = valorPas;
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
	
	public passagemCliente converter(BCryptPasswordEncoder encoder) {

	    this.setSenha(encoder.encode(senha));
	    return new passagemCliente( );
	  }
    
	
}
