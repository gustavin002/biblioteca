/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.main.biblioteca.repository;

import com.main.biblioteca.model.UsuarioDTO;
import org.hibernate.internal.util.Optional;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

@Repository
public interface UsuarioRepository extends JpaRepository<UsuarioDTO, Integer> {
    
    @Query("SELECT u FROM usuarioDTO u where u.email = ?1 and u.senha = ?2")
    UsuarioDTO findByEmailAndPassword(String email, String senha);
    
    @Query("SELECT u FROM usuarioDTO u where u.email = ?1")
    Optional<UsuarioDTO> findByEmail(String email);
    
}
