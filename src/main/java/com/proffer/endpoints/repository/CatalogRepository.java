package com.proffer.endpoints.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.proffer.endpoints.entity.Catalog;

public interface CatalogRepository extends JpaRepository<Catalog, Long> {

	Catalog save(Catalog catalog);

	@Query(value = "SELECT * from catalog limit 8", nativeQuery = true)
	List<Catalog> findFirstEight();

	@Query(value = "SELECT * from catalog order by item_name limit 5", nativeQuery = true)
	List<Catalog> findRandomEight();
}
