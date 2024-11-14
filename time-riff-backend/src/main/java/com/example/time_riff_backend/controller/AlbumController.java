package com.example.time_riff_backend.controller;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.example.time_riff_backend.model.response.AlbumsResponse;
import com.example.time_riff_backend.service.AlbumService;

import lombok.AllArgsConstructor;

@RestController
@AllArgsConstructor
@RequestMapping("/albums")
@CrossOrigin(origins = "*")
public class AlbumController {

    private final AlbumService albumService;

    // curl http://localhost:8080/albums | jq
    @GetMapping
    public ResponseEntity<AlbumsResponse> getAll() {
        AlbumsResponse albumsResponse = new AlbumsResponse();
        albumsResponse.setAlbums(albumService.getAlbums());
        return ResponseEntity.ok(albumsResponse);
    }

    // curl http://localhost:8080/albums/year/1991 | jq
    @GetMapping("/year/{year}")
    public ResponseEntity<AlbumsResponse> getAllByReleaseYear(@PathVariable("year") int year) {
        AlbumsResponse albumsResponse = new AlbumsResponse();
        albumsResponse.setAlbums(albumService.getAlbumsBy(year));
        return ResponseEntity.ok(albumsResponse);
    }
}
