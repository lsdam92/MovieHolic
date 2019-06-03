package com.kitri.dto;

public class FilmDto {

	private String movieNm; 		// 영화명
	private String movieCdYoung; 	// 영화코드(영진원)
	private String movieCdNaver; 	// 영화코드(네이버)
	private String movieImage; 		// 영화 포스터 이미지 주소
	private String genreNm;			// 장르
	private String prdtYear;		// 제작년도

	
	public String getMovieNm() {
		return movieNm;
	}
	
	public void setMovieNm(String movieNm) {
		this.movieNm = movieNm;
	}
	
	public String getMovieCdYoung() {
		return movieCdYoung;
	}
	
	public void setMovieCdYoung(String movieCdYoung) {
		this.movieCdYoung = movieCdYoung;
	}
	
	public String getMovieCdNaver() {
		return movieCdNaver;
	}
	
	public void setMovieCdNaver(String movieCdNaver) {
		this.movieCdNaver = movieCdNaver;
	}
	
	public String getMovieImage() {
		return movieImage;
	}
	
	public void setMovieImage(String movieImage) {
		this.movieImage = movieImage;
	}

	public String getGenreNm() {
		return genreNm;
	}

	public void setGenreNm(String genreNm) {
		this.genreNm = genreNm;
	}
	
	public String getPrdtYear() {
		return prdtYear;
	}

	public void setPrdtYear(String prdtYear) {
		this.prdtYear = prdtYear;
	}

	@Override
	public String toString() {
		return "FilmDto [movieNm=" + movieNm + ", movieCdYoung=" + movieCdYoung + ", movieCdNaver=" + movieCdNaver
				+ ", movieImage=" + movieImage + ", genreNm=" + genreNm + ", prdtYear=" + prdtYear + "]";
	}

	
}
