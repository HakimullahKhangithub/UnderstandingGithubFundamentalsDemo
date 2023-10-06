public class addof2numbers {
    
   
    public static void addtion()
        
        {
            integer a =1;
            integer b =2 ;
            integer c ;
            c=a+b; 
            system.debug('Additon of 2numbers' +c);
        }
     
    
      public static void addtions(integer x, integer y)
        
        {
            integer z ;
            z=x+y; 
            system.debug('Additon of 2numbers  ' +z);
        }
  
    
       public static integer Eddtions(integer s, integer t)
        
        {
            integer u ;
            u=s+t; 
            system.debug('Additon of 2numbers  ' +u);
            return u;
        }
    
     public static String Method1()
        
        {
            String r;
            r='Sample Code';
            system.debug( 'Calling from Method1 ' +r);
            return r;
        }
    
      public static String CallingfomMethod1to2()
        
        {
            String q;
            q=Method1();
            system.debug( 'CallingfomMethod1to2 ' +q);
            return q;
        }
    
     public static string CallingfomMethod1asinputargs(String Method1)
        
        {
          system.debug( 'CallingfomMethod1toinputargs ' +Method1);
          return Method1 ;
        }
}
