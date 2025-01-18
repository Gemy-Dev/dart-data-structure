class FibonacciNumber {
  int _count=18;
  int _recFibo=0;


  int fiboLoop({int prev=0,int curent=1,int count=18}){
   int newFibo=0;
  
   
    for(int i=0;i<count;i++){
       newFibo=prev+curent;
      prev=curent;
      curent=newFibo;
    }


    return newFibo;
  }



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

  int recursionFiboWithNth(int n){
    if (n<=1){
      return n;
    }
    else{
      return recursionFiboWithNth(n-1)+recursionFiboWithNth(n-2);
    }

  }
}