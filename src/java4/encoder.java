package java4;

public class encoder {
	static double cor;
	static int pq;
	
	//Handler method is just to clean the input coordiante for conversion, current is for decimal upto 9 places converted to 5
	static String handler(double coord) {
		cor=coord;
		
		//Change 10 to suit decimal points
		cor=cor*java.lang.Math.pow(10,10);
		
		pq=(int) (cor/java.lang.Math.pow(10,5));
		String.format("%.5f",cor);
		System.out.println("Coord is "+pq);
		encoder e = new encoder();
		String ansc;
		ansc = e.converter(pq);
		return ansc;
	}
	
	String converter(int ccoord)
	{
		
		 int rem;
		 int num;
		 num=ccoord;
	     // For storing result
	     String str2=""; 
	 
	     // matrix
	     char code[]={'0','1','2','3','4','5','6','7','8','9','A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z','a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z'};
	     while(num>0)
	     {
	       rem=num%62; 
	       str2=code[rem]+str2; 
	       num=num/62;
	     }
	     System.out.println("Encoded is "+str2);
	     return str2;
	   
	}
}
