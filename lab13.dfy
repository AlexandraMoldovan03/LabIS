//1
//A
method testa (x: int , y: int ) returns (z: int )
{
assume (x==y) ;
z:=x-y;
assert (z ==0) ;
}
//aceasta metoda asuma faptul ca x are aceasi valoare ca si y, deci diferenta lor da mereu 0

//B
method testb (x:int) 
{
    var y:=x;
    assume (true);
    y:= 100;
    assert (y == 100);
}
//aceasta metoda verifica operatia pe care i-o dam sa o faca, adica x:=100

//C
method testc (x:int) 
{
     var y := x;

    assume (0 <= y);
    assume (y < 100);

    y := y+1;

    assert (0 <= y);
    assert (y <= 100);
}
//aceasta metoda este adevarata fiindca ne asumam ca y este initial mai mic strict decat 100 iar assert ul il verificam ca y sa fie mai mic sau egal cu 100, motiv pentru care este adevarat 


//2
//A
method test2a (x: int, y:int)
requires y>=0
{
    var z:=x;
    assume (true);
    z := 2*y;
    assert (y <=z );
}  
//acest assert does not hold pentru ca y ar putea fi negativ, motiv pentru care ar trebui sa adaugam un require

//B
method test2B (x:int)
requires x!=0
{
    var y:= x;
    assume (0<=y);
    y:=y-1;
    assert (0<=y);
}
//acest asert does not hold pentru ca x este un numar integ, deci poate fi si 0, iar daca din 0 scadem -1 atunci x devine -1 si devine implicit mai mic decat 0. 
//Pentru a rezolva aceasta eroare trebuie sa avem un requires x este diferit de valoarea 0


//3
//A
method test3A (x:int)
{
    var y:= x;
    assume (0<=y);
    assume (y<100);
    y:=2*y;
    assert (y<=200);
}

//b
method test3B (x:int, N:int)
{
    var y:= x;
    assume (0<=y);
    assume (y<N);
    y:=y+1;
    assert (y<=N);

}


//4
//A
method test4A (x:int)
{
    
}
