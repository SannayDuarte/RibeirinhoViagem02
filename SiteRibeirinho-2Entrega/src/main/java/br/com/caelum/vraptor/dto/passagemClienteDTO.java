package br.com.caelum.vraptor.dto;

import java.util.Date;
import java.util.List;
import java.util.stream.Collectors;

import br.com.caelum.vraptot.model.passagemCliente;



public class passagemClienteDTO {

	private long idCliente;
	private String  nomeCom, sexualidade, senha, email, estado, cidade, bairro, rua, cidadeOrigem, cidadeDestino, mtdViagem;
	private int cpf, rg, celular, cep, valorPas;
	private Date dataDeNascimento, dataViagem;

	public passagemClienteDTO() {
	}

	public passagemClienteDTO(passagemCliente cliente) {
		this.idCliente = cliente.getIdCliente();
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
		this.cidadeOrigem = cliente.getCidadeOrigem();
		this.cidadeDestino = cliente.getCidadeDestino();
		this.valorPas = cliente.getValorPas();
		this.dataViagem = cliente.getDataViagem();
		this.dataDeNascimento = cliente.getDataDeNascimento();
		
		
	}

	public long getIdCliente() {
		return idCliente;
	}

	public void setIdCliente(long idCliente) {
		this.idCliente = idCliente;
	}

	public String getNomeCom() {
		return nomeCom;
	}

	public void setNomeCom(String nomeCom) {
		this.nomeCom = nomeCom;
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

	public String getCidadeOrigem() {
		return cidadeOrigem;
	}

	public void setCidadeOrigem(String cidadeOrigem) {
		this.cidadeOrigem = cidadeOrigem;
	}

	public String getCidadeDestino() {
		return cidadeDestino;
	}

	public void setCidadeDestino(String cidadeDestino) {
		this.cidadeDestino = cidadeDestino;
	}

	public String getMtdViagem() {
		return mtdViagem;
	}

	public void setMtdViagem(String mtdViagem) {
		this.mtdViagem = mtdViagem;
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

	public int getCelular() {
		return celular;
	}

	public void setCelular(int celular) {
		this.celular = celular;
	}

	public int getCep() {
		return cep;
	}

	public void setCep(int cep) {
		this.cep = cep;
	}

	public int getValorPas() {
		return valorPas;
	}

	public void setValorPas(int valorPas) {
		this.valorPas = valorPas;
	}

	public Date getDataDeNascimento() {
		return dataDeNascimento;
	}

	public void setDataDeNascimento(Date dataDeNascimento) {
		this.dataDeNascimento = dataDeNascimento;
	}

	public Date getDataViagem() {
		return dataViagem;
	}

	public void setDataViagem(Date dataViagem) {
		this.dataViagem = dataViagem;
	}
	public static List<passagemClienteDTO> converter(List<passagemCliente> cliente){
		return cliente.stream().map(passagemClienteDTO::new).collect(Collectors.toList());
	}
	
}
