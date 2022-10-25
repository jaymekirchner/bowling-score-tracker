package com.jayme.bowling;

import java.util.Objects;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;

import org.hibernate.validator.constraints.Range;

@Entity(name = "game")
@Table(name = "bowling_games", schema = "mydb")
public class Game {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id")
	private Long id;

	@NotBlank(message = "Date cannot be blank")
	private String date;

	@NotNull(message = "Please add a score")
	@Range(min = 0, max = 300, message = "Score must be between 0 and 300")
	private int score;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public int getScore() {
		return score;
	}

	public void setScore(int score) {
		this.score = score;
	}

	@Override
	public int hashCode() {
		return Objects.hash(date, id, score);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj) {
			return true;
		}
		if (!(obj instanceof Game)) {
			return false;
		}
		Game other = (Game) obj;
		return Objects.equals(date, other.date) && Objects.equals(id, other.id) && score == other.score;
	}

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("Game [id=");
		builder.append(id);
		builder.append(", date=");
		builder.append(date);
		builder.append(", score=");
		builder.append(score);
		builder.append("]");
		return builder.toString();
	}
}
