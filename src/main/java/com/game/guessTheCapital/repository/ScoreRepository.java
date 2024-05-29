package com.game.guessTheCapital.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.game.guessTheCapital.model.Score;

public interface ScoreRepository extends JpaRepository<Score, Long>{

}
