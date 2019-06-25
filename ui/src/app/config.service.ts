import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';


@Injectable({
  providedIn: 'root'
})
export class ConfigService {

  constructor(private http: HttpClient) {

  }
  url = 'http://localhost:3000';
  /*getConfig() {
    return this.http.get(this.url);
  }*/
  getHotels() {
    return this
      .http
      .get(`${this.url}/hotels/show`);

  }
}
