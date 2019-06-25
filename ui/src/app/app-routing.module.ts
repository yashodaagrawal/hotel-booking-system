import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import { HotelListComponent } from './hotel-list/hotel-list.component';

const routes: Routes = [
  { path: 'hotels' , component: HotelListComponent }
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }


