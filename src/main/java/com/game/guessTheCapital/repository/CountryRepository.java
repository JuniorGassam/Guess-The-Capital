package com.game.guessTheCapital.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.game.guessTheCapital.model.Country;

public interface CountryRepository extends JpaRepository<Country, Long>{

}
