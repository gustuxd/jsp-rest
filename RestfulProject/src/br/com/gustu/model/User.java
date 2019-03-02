package br.com.gustu.model;

public class User {
	private int id;
	private String nome;
	private String sobrenome;
	private String email;

	public int getId() {
		return this.id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getNome() {
		return this.nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getSobrenome() {
		return this.sobrenome;
	}

	public void setSobrenome(String sobrenome) {
		this.sobrenome = sobrenome;
	}

	public String getEmail() {
		return this.email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String toString() {
		return "User [userid=" + this.id + ", firstName=" + this.nome + ", lastName=" + this.sobrenome + ", email="
				+ this.email + "]";
	}
}