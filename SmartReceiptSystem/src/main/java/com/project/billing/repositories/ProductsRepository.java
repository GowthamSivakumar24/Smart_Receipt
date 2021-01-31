package com.project.billing.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
//import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.project.billing.entities.Products;

@Repository
public interface ProductsRepository extends JpaRepository<Products, Integer> {

}
