package br.com.caelum.vraptor.dto;

import java.util.Date;
import java.util.List;
import java.util.stream.Collectors;

import br.com.caelum.vraptot.model.cadastroCliente;


public class cadastroClienteDTO {
	
	private long id;
	private String  nomeCom, sexualidade, senha, email, estado, cidade, bairro, rua;
	private int cpf, rg, celular, cep;
	private Date dataDeNascimento;
	
	public cadastroClienteDTO() {
	}

	public cadastroClienteDTO(cadastroCliente cliente) {
		this.id = cliente.getId();
		this.cpf = cliente.getCpf();
		this.rg = cliente.getRg();
		this.nomeCom = cliente.getNomeCom();
		this.celular = cliente.getCelular();
		this.sexualidade = cliente.getSexualidade();
		this.senha = cliente.getSenha();
		this.email = cliente.getEmail();
		this.cep = cliente.getCep();
		this.estado = cliente.getEstado();
		this.cidade = cliente.getCidade();
		this.bairro = cliente.getBairro();
		this.rua = cliente.getRua();
		this.dataDeNascimento = cliente.getDataDeNascimento();
	}

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

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
	
	public String getSenha() {
		return senha;
	}

	public void setSenha(String senha) {
		this.senha = senha;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
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
	
	public Date geDataDetNascimento() {
		return dataDeNascimento;
	}

	public void setDataDeNascimento(Date dataDeNascimento) {
		this.dataDeNascimento = dataDeNascimento;
	}
	
	public static List<cadastroClienteDTO> converter(List<cadastroCliente> cliente){
		return cliente.stream().map(cadastroClienteDTO::new).collect(Collectors.toList());
	}
	
}
