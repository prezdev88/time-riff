package com.example.time_riff_backend.model;

import java.util.List;

import lombok.Data;

@Data
public class BandsResponse {
    private List<BandDto> bands;
}
