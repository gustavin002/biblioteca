/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.main.biblioteca.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;
import java.sql.Date;

@Entity
@Table(name = "emprestimo")
public class EmprestimoDTO {
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    
    @Column(name = "id_emprestimo")
    private int idEmprestimo;
    
    @Column(name = "data_retirada")
    private Date DataRetirada;
    
    @Column(name = "data_devolucao")
    private Date dataDevolucao;
    
    @ManyToOne
    @JoinColumn(name = "livro", referencedColumnName = "id_livro", nullable = false)
    private LivroDTO livro;
    
    @JoinColumn(name = "usuario", referencedColumnName = "id_usuario", nullable = false)
    private UsuarioDTO usuario;
    
}
