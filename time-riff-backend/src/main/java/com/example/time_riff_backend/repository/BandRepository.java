package com.example.time_riff_backend.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.time_riff_backend.model.entity.Band;

public interface BandRepository extends JpaRepository<Band, Integer>{

}
