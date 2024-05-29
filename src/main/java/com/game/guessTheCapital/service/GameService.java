package com.game.guessTheCapital.service;

import java.util.List;
import java.util.Random;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.game.guessTheCapital.model.Country;
import com.game.guessTheCapital.model.Score;
import com.game.guessTheCapital.repository.CountryRepository;
import com.game.guessTheCapital.repository.ScoreRepository;

@Service
public class GameService {

	@Autowired
    private CountryRepository countryRepository;

    @Autowired
    private ScoreRepository scoreRepository;

    private Random random = new Random();

//    public Country getRandomCountry() {
//        List<Country> countries = countryRepository.findAll();
//        return countries.get(random.nextInt(countries.size()));
//    }
    
    public String getRandomCountry() {
        List<Country> countries = countryRepository.findAll();
        if (countries.isEmpty()) {
            throw new IllegalStateException("No countries available");
        }
        int randomIndex = random.nextInt(countries.size());
        Country country = countries.get(randomIndex);
        return "id: " + country.getId() + "\nCountry: " + country.getName();
    }

    public boolean checkCapital(Long countryId, String capital) {
        Country country = countryRepository.findById(countryId).orElse(null);
        if (country != null) {
            return country.getCapital().equalsIgnoreCase(capital);
        }
        return false;
    }

    public void updateScore(boolean correct) {
        List<Score> scores = scoreRepository.findAll();
        Score score;
        if (scores.isEmpty()) {
            score = new Score();
            score.setPoints(0);
        } else {
            score = scores.get(0);
        }
        if (correct) {
            score.setPoints(score.getPoints() + 1);
        } else {
            score.setPoints(score.getPoints() - 1);
        }
        scoreRepository.save(score);
    }

    public int getScore() {
        List<Score> scores = scoreRepository.findAll();
        return scores.isEmpty() ? 0 : scores.get(0).getPoints();
    }
    
}
