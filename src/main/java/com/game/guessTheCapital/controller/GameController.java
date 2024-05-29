package com.game.guessTheCapital.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.game.guessTheCapital.model.Country;
import com.game.guessTheCapital.service.GameService;

@RestController
@RequestMapping("/game")
public class GameController {
	
	@Autowired
    private GameService gameService;

    @GetMapping("/country")
    public String getRandomCountry() {
        return gameService.getRandomCountry();
    }

    @PostMapping("/guess")
    public String guessCapital(@RequestParam Long countryId, @RequestParam String capital) {
        boolean correct = gameService.checkCapital(countryId, capital);
        gameService.updateScore(correct);
        return correct ? "Correct!" : "Wrong!";
    }

    @GetMapping("/score")
    public int getScore() {
        return gameService.getScore();
    }
    
    @GetMapping("/**")
    public String handleInvalidURL() {
        return "URL non valide. Veuillez vérifier l'URL et réessayer.";
    }

}
