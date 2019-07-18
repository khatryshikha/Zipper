package java4;

public class decoder {
	static int converter(String code) {
		String a;
		a = code;
		char digit;
		char code1[]={'0','1','2','3','4','5','6','7','8','9','A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z','a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z'};
		int i,k;
		int nos[] = new int[4];
		for (i=0;i<4;i++)
		{
			nos[i]=0;
		}
		for (i=0;i<4;i++)
		{
			digit = a.charAt(i);
			for (k=0;k<62;k++)
			{
				if(code1[k]==digit) {
					nos[i]=k;
				}
			}
		}
		double coord;
		coord=0;
		for (i=0;i<4;i++)
		{
			coord=(java.lang.Math.pow(62,(3-i))*nos[i])+coord;
		}
		int ans = (int) coord;
		System.out.println("The decoded coords are "+ans);
		return ans;
		//System.out.println("Decoded is "+nos[0]);
		//System.out.println("Decoded is "+nos[1]);
		//System.out.println("Decoded is "+nos[2]);
		//System.out.println("Decoded is "+nos[3]);
	}
}