package com.example.time_riff_backend.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.time_riff_backend.model.Band;

public interface BandRepository extends JpaRepository<Band, Integer>{

}
