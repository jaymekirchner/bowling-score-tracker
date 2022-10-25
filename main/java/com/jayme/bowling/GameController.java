package com.jayme.bowling;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class GameController {

	@Autowired
	GameService gameService;
	
	
	@RequestMapping({"/", "/home", "/games"})
	public String showIntroPage(Model model) {
		List<Game> listOfGames = gameService.listAll();
		int average = calculateAverage(listOfGames);
				
		model.addAttribute("games", listOfGames);
		model.addAttribute("currentAverage", average);
		return "index";
	}
	
	
	@RequestMapping("/add-game")
	public String showAddCoursePage(Model model) {
		model.addAttribute("game", new Game());
		return "game-add-form";
	}
	
	@PostMapping("/add-game")
	public String submitAddGamePage(@Valid @ModelAttribute(name="game") Game game, BindingResult bindingResult, Model model) {
		
		if(bindingResult.hasErrors()) {
			model.addAttribute("game", game);
			return "game-add-form";
		}
		else {
//			model.addAttribute("task", "added");
			gameService.save(game);
			return "redirect:/";
		}
	}
	
//	@RequestMapping("/edit-course/{id}")
//	public ModelAndView showEditCoursePage(@PathVariable(name="id") long id, Model model) {
//		ModelAndView mav = new ModelAndView("course-edit-form");
//		Course courseToEdit = courseService.get(id);
//		mav.addObject("course", courseToEdit);
//		return mav;
//		
//	}
//	
//	@PostMapping("/edit-course/{id}")
//	public String submitEditCoursePage(@Valid @ModelAttribute(name="course") Course course, 
//			BindingResult bindingResult, Model model, @PathVariable(name="id") long id) {
//		
//		boolean courseExists = isNewCourse(course);
//
//		if (!courseExists) {
//			System.out.println("1");
//			model.addAttribute("courseExists", "Course already exists");
//			return "course-edit-form";
//		}
//		
//		if(bindingResult.hasErrors()) {
//			System.out.println("2");
//			model.addAttribute("course", course);
//			return "course-edit-form";
//		}
//		else {
//			System.out.println("3");
//			model.addAttribute("task", "updated");
//			courseService.save(course);
//			return "course-success";
//		}
//	}
	
	
	@RequestMapping("/delete/{id}")
	public String deleteGame(@PathVariable(name="id") long id) {
		gameService.delete(id);
		return "redirect:/";
	}
	
	private int calculateAverage(List<Game> listOfGames) {
		if (listOfGames.isEmpty()) {
			return 0;
		} 
		else {
			int sum = 0;
			int size = listOfGames.size();
			
			for(Game game : listOfGames) {
				sum += game.getScore();
			}
			
			return (sum / size);
		}
	}


	
	
}
