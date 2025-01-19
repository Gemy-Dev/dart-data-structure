class FibonacciNumber {
   // this for the sencod method
   // this for itiration count
  int _count=18;
  // result from substract
  int _recFibo=0;

// using loop for fibonacci 
  int fiboLoop({int prev=0,int curent=1,int count=18}){
   int newFibo=0;
  
   
    for(int i=0;i<count;i++){
       newFibo=prev+curent;
      prev=curent;
      curent=newFibo;
    }


    return newFibo;
  }


// recursion fibo that call it self it like loop
  int recursionFibo({int prev=0,int curent=1, }){

    
    if  (_count>=1){
      _recFibo=prev+curent;
      prev=curent;
      curent=_recFibo;
      _count--;
      recursionFibo(prev:prev, curent:curent);
    }
    
    return _recFibo;
  }

// this recursion Fibo not good choise for larg fibo becase it double it self every time

  int recursionFiboWithNth(int n){
    if (n<=1){
      return n;
    }
    else{
      return recursionFiboWithNth(n-1)+recursionFiboWithNth(n-2);
    }

  }
}