<?php

  class HelloWorldController extends BaseController{

    public static function index(){
      // make-metodi renderöi app/views-kansiossa sijaitsevia tiedostoja
   	  View::make('home.html');
    }

    public static function sandbox(){
      // Testaa koodiasi täällä
        $query = DB::connection()->prepare('SELECT * FROM Kayttaja;');
        $query->execute();
      echo 'Hello World!';
    }
    
    public static function hi() {
//         $query = DB::connection()->prepare('SELECT * FROM Kaytt');
//        $query->execute();
        View::make('helloworld.twig');
    }
    
  }
