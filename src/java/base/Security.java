
package base;

import java.math.BigInteger;
import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;


public class Security {
    
       public static String getHash(String password) {
        String pass =password;
        String resultHash = null;
        try {
            MessageDigest digest = MessageDigest.getInstance("SHA-256");
            byte[] hash = digest.digest(pass.getBytes(StandardCharsets.UTF_8));
            BigInteger bigInt = new BigInteger(1, hash);
            resultHash = bigInt.toString(16);
          
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
        }
        
        return resultHash;
    }
    
}
