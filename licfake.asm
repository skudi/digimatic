								 arg_0 equ 8
								 license_t.type equ 0x00
								 license_t.activation_date equ 0x04
								 license_t.last_check_date equ 0x08
								 license_t.days equ 0x0c

								 _strlen equ 0x804a698
								 _strtoll equ 0x804a578
								 _atoi equ 0x804a928

								 org	0x0806EFCA
                 mov     ebx, [ebp+arg_0]
                 sub     esp, 0Ch
                 push    dword [ebp+-10h]      ; -10h
                 call    _atoi
                 add     esp, 10h
                 mov     [ebx+license_t.type], eax
                 sub     esp, 0Ch
                 push    dword [ebp+-10h]      ; s
                 call    _strlen
                 add     esp, 10h
                 add     eax, [ebp+-10h]
                 inc     eax
                 mov     [ebp+-10h], eax
                 mov     ebx, [ebp+arg_0]
                 sub     esp, 4
                 push    byte 0Ah             ; base
                 push    byte 0               ; endptr
                 push    dword [ebp+-10h]      ; -10h
                 call    _strtoll
                 add     esp, 10h
                 mov     [ebx+license_t.days], eax
                 sub     esp, 0Ch
                 push    dword [ebp+-10h]      ; s
                 call    _strlen
                 add     esp, 10h
                 add     eax, [ebp+-10h]
                 inc     eax
                 mov     [ebp+-10h], eax
                 mov     ebx, [ebp+arg_0]
                 sub     esp, 4
                 push    byte 0Ah             ; base
                 push    byte 0               ; endptr
                 push    dword [ebp+-10h]      ; -10h
                 call    _strtoll
                 add     esp, 10h
                 mov     [ebx+license_t.activation_date], eax
                 sub     esp, 0Ch
                 push    dword [ebp+-10h]      ; s
                 call    _strlen
                 add     esp, 10h
                 add     eax, [ebp+-10h]
                 inc     eax
                 mov     [ebp+-10h], eax
                 mov     ebx, [ebp+arg_0]
                 sub     esp, 4
                 push    byte 0Ah             ; base
                 push    byte 0               ; endptr
                 push    dword [ebp+-10h]      ; -10h
                 call    _strtoll
                 add     esp, 10h
                 mov     [ebx+license_t.last_check_date], eax
                 sub     esp, 0Ch
                 push    dword [ebp+-10h]      ; s
                 call    _strlen
                 add     esp, 10h
                 add     eax, [ebp+-10h]
                 inc     eax
                 mov     [ebp+-10h], eax

