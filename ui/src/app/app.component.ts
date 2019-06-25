import { NgModule }         from '@angular/core';
import { Component } from '@angular/core';
import { HttpClientModule } from '@angular/common/http';


@NgModule({
  imports: [
    HttpClientModule,
  ],
  declarations: [
    AppComponent,
  ],
  bootstrap: [ AppComponent ]
})

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})

export class AppComponent {
  title = 'hotel booking system';
  hotels;
  constructor(private http: HttpClientModule) {
    /*http.get('http://localhost:3000/hotels/show')
      .subscribe(res => this.hotels = res);*/
  }
}
