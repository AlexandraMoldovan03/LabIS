//1.1

// method Triple (x: int ) returns (r: int)
// {
//  var y := 2 * x;
// r := x + y;
// }

//If x is 10, what value does the method assign to r? 30
// method Main()
//  {
//     var t := Triple (18) ;
//      print t;

//  }

//18 *3


//1.2
// method Triple (x: int ) returns (r: int)
//  {
//  var y := 2 * x;
//  r := x + y;
//  assert r == 3 * x+1;
//  }

//What is the result? rezultatul este aceasi
//Change the asserted condition to 3*x+1. What is now the result?   o sa dea o eroare

//1.3

// method Triple (x: int ) returns (r: int)
//  {
//  var y := 2 * x;
//  r := x + y;
//  assert r == 10 * x;
//  assert r > 5;
//  assert false ;
//  }
 //Run it in the Dafny IDE. What do you observe? Change the second assertion to make the verifier
//complain about the first two assertions but not about the third.
//primul assert nu e adevarat si al doilea era True dar am schimbat ca r este mai mare decat 5 iar al treilea assert s-a facut true

//1.4
//  method Triple (x: int ) returns (r: int)
//  {
//  if x == 0{
//  r := 0;
//  } else {
//  var y := 2 * x;
//  r := x + y;
//  }
//  assert r == 3 * x;
//  }


// method Triple (x: int ) returns (r: int)
//  {
//  if {
// case x < 18 =>
// var a, b := 2 * x, 4 * x;
//  r := (a+b) / 2;
//  case 0 <= x =>
//  var y := 2 * x;
//  r := x + y;
//  }
//  assert r == 3 * x;
//  }



//1.5
method Caller ()
 {
 var result := Triple (18) ;
 assert result < 100;
 }


 method Main()
 {
    var t := Triple (18) ;
     print t;

 }

//   method Triple (x: int ) returns (r: int)
// ensures r == 3 * x
//  {
//  var y := 2 * x;
//  r := x + y;
//  }

 method Triple (x: int ) returns (r: int)
 requires x % 2 == 0
 ensures r == 3 * x
 {
 var y := x / 2;
 r := 6 * y;
 }
 //1. What is the result of the verifier in each of the 3 examples?
 //Toate variantele de triple au acelasi rezultatul
//2. Explain the role of the precondition and postcondition.
//rolul preconditiei este ca valorile ce sunt rulate pentru cod sa functioneze 