package com.example.time_riff_backend.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.example.time_riff_backend.model.entity.Album;

public interface AlbumRepository extends JpaRepository<Album, Integer>{
    List<Album> findAllByOrderByReleaseDateAsc();

    @Query("SELECT a FROM Album a WHERE YEAR(a.releaseDate) = :year ORDER BY a.releaseDate ASC")
    List<Album> findByReleaseYear(int year);
}
