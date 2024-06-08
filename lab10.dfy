// method between (p: int, r:int) returns (q:int)
//     requires r-p > 1
//     ensures p< q < r
//     {
//         q := p + 1;
//     }

//     method Main(){
//         var ok := between(9,12);
//         print ok;
//     } 

//1.1

method Triple (x: int ) returns (r: int)
2 {
3 var y := 2 * x;
4 r := x + y;
5 }

//If x is 10, what value does the method assign to r? 30
method Main()
{
    var t := Triple (18) ;
    print t;

}
// 
//18 *3
