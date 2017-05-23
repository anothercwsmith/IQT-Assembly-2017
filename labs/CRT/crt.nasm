bits 64

%include "defs.inc"
%include "more_defs.inc"


global _start ; Expose _start for linking
extern main   ; Implemented in main.c

message db "Hello World!", 10

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Entry Point               ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
_start:
;rdi - file descriptot (stdout)
;rsi - message
;rex - 
  ;int3

  mov rax, 1
  mov rdx, 13
  mov rsi, message
  mov rdi, 1
  syscall
  mov rax, 60
  mov rsi, 0
  syscall
  ret
