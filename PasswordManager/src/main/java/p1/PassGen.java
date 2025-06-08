package p1;
import java.security.SecureRandom;

public class PassGen {
	   public static String generatePassword(int length) {
	        String LOWERCASE = "abcdefghijklmnopqrstuvwxyz";
	        String UPPERCASE = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
	        String DIGITS = "0123456789";
	        String SPECIAL_CHARACTERS = "!@#$%^&*()-_=+[]{}|;:,.<>?";

	        String allCharacters = LOWERCASE + UPPERCASE + DIGITS + SPECIAL_CHARACTERS;
	        StringBuilder password = new StringBuilder(length);
	        SecureRandom random = new SecureRandom();

	        // Generate password by randomly selecting characters from the pool
	        for (int i = 0; i < length; i++) {
	            password.append(allCharacters.charAt(random.nextInt(allCharacters.length())));
	        }

	        return password.toString();
	    }
}



