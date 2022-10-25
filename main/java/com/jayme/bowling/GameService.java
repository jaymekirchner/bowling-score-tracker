package com.jayme.bowling;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class GameService {

	@Autowired
	private GameRepository repo;
	
	public void save(Game game) {
		repo.save(game);
	}
	
	public List<Game> listAll() {
		return repo.findAll();
	}
	
	public Game get(long id) {
		return repo.findById(id).get();
	}
	
	public Optional<Game> findById(long id) {
		return repo.findById(id);
	}

	public void delete(long id) {
		repo.deleteById(id);
		
	}

	
}
