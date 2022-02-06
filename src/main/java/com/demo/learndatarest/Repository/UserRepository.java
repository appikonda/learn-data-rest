package com.demo.learndatarest.Repository;

import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

import com.demo.learndatarest.model.User;

@RepositoryRestResource(collectionResourceRel = "users", path = "users")
public interface UserRepository extends PagingAndSortingRepository<User, Long>{
	
	//Page<User> findAllByUsername(@Param("username") String username, Pageable page);
}