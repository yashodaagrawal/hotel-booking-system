import { Component, OnInit } from '@angular/core';
import { ConfigService } from '../config.service';

@Component({
  selector: 'app-hotel-list',
  templateUrl: './hotel-list.component.html',
  styleUrls: ['./hotel-list.component.css']
})
export class HotelListComponent implements OnInit {

  hotels;

  constructor(public configService: ConfigService) { }

  ngOnInit() {
    this.configService.getHotels().subscribe((data) => {
      console.log(data);
      this.hotels = data;
    });
  }

}

