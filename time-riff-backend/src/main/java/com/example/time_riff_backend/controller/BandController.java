package com.example.time_riff_backend.controller;

import java.util.List;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.example.time_riff_backend.model.BandDto;
import com.example.time_riff_backend.model.BandsResponse;
import com.example.time_riff_backend.service.BandService;

import lombok.AllArgsConstructor;

@RestController
@AllArgsConstructor
@RequestMapping("/bands")
public class BandController {

    private final BandService bandService;

    // curl http://localhost:8080/bands
    @GetMapping
    public ResponseEntity<BandsResponse> getAll() {
        BandsResponse bandsResponse = new BandsResponse();
        bandsResponse.setBands(bandService.getAll());
        return ResponseEntity.ok(bandsResponse);
    }
}
