import { Component } from '@angular/core';
import { Album } from './model/Album';
import { HttpClient } from '@angular/common/http';
import { AlbumResponse } from './model/AlbumResponse';

@Component({
  selector: 'app-album',
  templateUrl: './album.component.html',
  styleUrl: './album.component.css'
})
export class AlbumComponent {
  albums: Album[] = []

  constructor(private http: HttpClient) {
    console.log("hola");
    this.getData();
  }

  getData() {
    this.http.get<AlbumResponse>('http://localhost:8080/albums').subscribe(data => {
      this.albums = data.albums;
      console.log(this.albums.length);
    });
  }
}
