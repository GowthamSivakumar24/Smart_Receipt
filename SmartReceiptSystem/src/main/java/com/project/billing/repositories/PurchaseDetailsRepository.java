package com.project.billing.repositories;

//import com.smart.receipt.entities.Products;
import com.project.billing.entities.PurchaseDetails;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface PurchaseDetailsRepository extends JpaRepository<PurchaseDetails, Integer> {

}
