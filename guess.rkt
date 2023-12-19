
(#%require (lib "27.ss" "srfi"))  ; Required for random-integer function

(define (play-guess random-num num-guesses); 
  (display "Guess a number from 1 to 100:\n");displaying the promt
  (let loop ((guess (read));starts the loop that plays the game
             (count num-guesses))
    (cond ((not (number? guess))
           (display "Please enter a number.\nEnter guess "));gets input from user
          ((< guess random-num)
           (display "Higher...Enter guess ");states higher
           (loop (read) (+ count 1)))
          ((> guess random-num)
           (display "Lower...Enter guess ");states lower
           (loop (read) (+ count 1)))
          (else
           (display "Correct! ");proceeds when the numebe match
           (display count)
           (display " guesses... Please enter your name: ")
           (let ((name (read)))
             (display "Good game, ")
             (write name) ; write is used here to handle the string properly.
             (newline))))))

; Start the game
(play-guess (+ (random-integer 99) 1) 1)