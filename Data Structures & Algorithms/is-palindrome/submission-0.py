class Solution:
    def isPalindrome(self, s: str) -> bool:
        result=re.sub(r'[^a-zA-Z0-9]',"",s).lower() #WasitacaroracatIsaw

        n=len(result)-1
        for i in range(n):
            if result[i]==result[n]:
                n=n-1
            else:
                return False
        return True
         
