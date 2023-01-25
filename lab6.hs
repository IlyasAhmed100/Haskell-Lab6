import Data.List
import Data.Maybe
import Data.Char
import Text.Read

-- Task 6.1 
--i
askANumberAndIncrement :: IO ()
askANumberAndIncrement = do {
        putStrLn "Enter A Number";
        n <- getLine;
        print (read n + 1)
}   

--ii 
askANumberAndIncrementCheck :: IO ()
askANumberAndIncrementCheck = do {
        putStrLn "Enter A Number";
        n <- getLine;
        if all isDigit n == False then print "Error" else print (read n + 1)
}

-- Task 6.2
guessTheNumber :: Int -> IO ()
guessTheNumber x = do {
        userNumber <- getLine;
        if read (userNumber) == x then putStrLn "Well Done"
        else if read (userNumber) < x then putStrLn "Greater" >> guessTheNumber(x);
        else putStrLn "Lower" >> guessTheNumber(x)
}