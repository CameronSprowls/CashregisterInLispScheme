(define tax 0.065)

(define (cashRegister value subtotal)
  (newline)
  (cond ((< value 0)
    (display "Subtotal: $") (display subtotal) (newline)
    (display "Tax: $") (display (* subtotal tax)) (newline)
    (display "Total: $") (display (+ subtotal (* subtotal tax))) (newline)
    )
  (else
    (display "Enter value: $")
    (let ((input (read)))
      (display "$") (display input) (newline)
      (cashRegister input (+ subtotal value))
    )
  )
  )
)

