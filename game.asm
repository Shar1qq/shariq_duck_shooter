;::::: DUCK SHOOTER GAME ::::::::
;Created by Shariq
 
.model small
.stack 100h
.data

window_width dw 310
window_height dw 200
window_bounds dw 10




	background db 43400 dup (03h)
				
			
			;GRASS			
			db 60 dup (02h, 03h, 0Ah, 02h, 03h, 0Ah, 03h, 02h, 03h, 0Ah, 02h, 03h, 03h, 02h, 03h, 0Ah, 02h, 03h, 02h, 03h, 0Ah, 02h, 0Ah, 03h, 02h, 03h, 03h, 0Ah, 03h, 02h)
			db 60 dup (02h, 03h, 03h, 02h, 03h, 02h, 0Ah, 03h, 03h, 02h, 0Ah, 02h, 03h, 0Ah, 02h, 03h, 03h, 0Ah, 03h, 02h, 0Ah, 03h, 03h, 0Ah, 02h, 03h, 03h, 0Ah, 03h, 03h)
			db 60 dup (03h, 02h, 03h, 0Ah, 03h, 02h, 03h, 02h, 0Ah, 03h, 02h, 03h, 03h, 0Ah, 03h, 02h, 03h, 0Ah, 02h, 03h, 0Ah, 02h, 03h, 03h, 0Ah, 02h, 03h, 02h, 0Ah, 03h)
			db 60 dup (03h, 0Ah, 03h, 02h, 03h, 0Ah, 02h, 03h, 03h, 02h, 0Ah, 03h, 03h, 02h, 0Ah, 03h, 02h, 03h, 0Ah, 03h, 02h, 03h, 0Ah, 02h, 03h, 02h, 0Ah, 03h, 03h, 02h)


			;Ground	
			db 20 dup (06h, 08h, 08h, 06h, 08h, 06h, 06h, 08h, 06h, 08h, 06h, 06h, 08h, 08h, 06h, 08h)
			db 20 dup ( 08h, 06h, 06h, 08h, 08h, 06h, 08h, 06h, 08h, 06h, 08h, 08h, 06h, 06h, 08h, 06h)
			db 20 dup (08h, 06h, 06h, 08h, 08h, 06h, 08h, 08h, 06h, 06h, 08h, 08h, 06h, 08h, 06h, 06h)
			db 20 dup (06h, 08h, 08h, 06h, 06h, 08h, 08h, 06h, 08h, 06h, 06h, 08h, 08h, 06h, 08h, 06h)
			db 20 dup (06h, 06h, 08h, 08h, 06h, 08h, 06h, 08h, 08h, 06h, 06h, 08h, 06h, 08h, 06h, 08h)
			db 20 dup ( 08h, 06h, 08h, 08h, 06h, 06h, 08h, 06h, 08h, 06h, 08h, 08h, 06h, 06h, 08h, 08h)
			db 20 dup (06h, 08h, 06h, 06h, 08h, 08h, 06h, 08h, 08h, 06h, 06h, 08h, 08h, 06h, 08h, 06h)
			db 20 dup (08h, 08h, 06h, 06h, 08h, 08h, 06h, 08h, 06h, 06h, 08h, 06h, 08h, 08h, 06h, 06h)
			db 20 dup (08h, 06h, 06h, 08h, 06h, 08h, 08h, 06h, 08h, 06h, 08h, 06h, 06h, 08h, 08h, 06h)
			db 20 dup (06h, 08h, 06h, 08h, 08h, 06h, 06h, 08h, 08h, 06h, 08h, 06h, 06h, 08h, 08h, 06h)

			db 20 dup (06h, 08h, 08h, 06h, 08h, 06h, 06h, 08h, 06h, 08h, 06h, 06h, 08h, 08h, 06h, 08h)
			db 20 dup ( 08h, 06h, 06h, 08h, 08h, 06h, 08h, 06h, 08h, 06h, 08h, 08h, 06h, 06h, 08h, 06h)
			db 20 dup (08h, 06h, 06h, 08h, 08h, 06h, 08h, 08h, 06h, 06h, 08h, 08h, 06h, 08h, 06h, 06h)
			db 20 dup (06h, 08h, 08h, 06h, 06h, 08h, 08h, 06h, 08h, 06h, 06h, 08h, 08h, 06h, 08h, 06h)
			db 20 dup (06h, 06h, 08h, 08h, 06h, 08h, 06h, 08h, 08h, 06h, 06h, 08h, 06h, 08h, 06h, 08h)
			db 20 dup ( 08h, 06h, 08h, 08h, 06h, 06h, 08h, 06h, 08h, 06h, 08h, 08h, 06h, 06h, 08h, 08h)
			db 20 dup (06h, 08h, 06h, 06h, 08h, 08h, 06h, 08h, 08h, 06h, 06h, 08h, 08h, 06h, 08h, 06h)
			db 20 dup (08h, 08h, 06h, 06h, 08h, 08h, 06h, 08h, 06h, 06h, 08h, 06h, 08h, 08h, 06h, 06h)
			db 20 dup (08h, 06h, 06h, 08h, 06h, 08h, 08h, 06h, 08h, 06h, 08h, 06h, 06h, 08h, 08h, 06h)
			db 20 dup (06h, 08h, 06h, 08h, 08h, 06h, 06h, 08h, 08h, 06h, 08h, 06h, 06h, 08h, 08h, 06h)
			
			db 20 dup ( 08h, 06h, 08h, 08h, 06h, 06h, 08h, 06h, 08h, 06h, 08h, 08h, 06h, 06h, 08h, 08h)
			db 20 dup (06h, 08h, 06h, 06h, 08h, 08h, 06h, 08h, 08h, 06h, 06h, 08h, 08h, 06h, 08h, 06h)
			db 20 dup (08h, 08h, 06h, 06h, 08h, 08h, 06h, 08h, 06h, 06h, 08h, 06h, 08h, 08h, 06h, 06h)
			db 20 dup (08h, 06h, 06h, 08h, 06h, 08h, 08h, 06h, 08h, 06h, 08h, 06h, 06h, 08h, 08h, 06h)
			db 20 dup (06h, 08h, 06h, 08h, 08h, 06h, 06h, 08h, 08h, 06h, 08h, 06h, 06h, 08h, 08h, 06h)
			db 20 dup (06h, 08h, 08h, 06h, 08h, 06h, 06h, 08h, 06h, 08h, 06h, 06h, 08h, 08h, 06h, 08h)
			db 20 dup ( 08h, 06h, 06h, 08h, 08h, 06h, 08h, 06h, 08h, 06h, 08h, 08h, 06h, 06h, 08h, 06h)
			db 20 dup (08h, 06h, 06h, 08h, 08h, 06h, 08h, 08h, 06h, 06h, 08h, 08h, 06h, 08h, 06h, 06h)
			db 20 dup (06h, 08h, 08h, 06h, 06h, 08h, 08h, 06h, 08h, 06h, 06h, 08h, 08h, 06h, 08h, 06h)
			db 20 dup (06h, 06h, 08h, 08h, 06h, 08h, 06h, 08h, 08h, 06h, 06h, 08h, 06h, 08h, 06h, 08h)

			db 20 dup ( 08h, 06h, 08h, 08h, 06h, 06h, 08h, 06h, 08h, 06h, 08h, 08h, 06h, 06h, 08h, 08h)
			db 20 dup (06h, 08h, 06h, 06h, 08h, 08h, 06h, 08h, 08h, 06h, 06h, 08h, 08h, 06h, 08h, 06h)
			db 20 dup (08h, 08h, 06h, 06h, 08h, 08h, 06h, 08h, 06h, 06h, 08h, 06h, 08h, 08h, 06h, 06h)
			db 20 dup (08h, 06h, 06h, 08h, 06h, 08h, 08h, 06h, 08h, 06h, 08h, 06h, 06h, 08h, 08h, 06h)
			



    ducky db 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h
			db 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h
			db 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h
			db 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h
			db 003h, 003h, 003h, 003h, 003h, 003h, 003h, 0f1h, 006h, 00eh, 00eh, 006h, 006h, 006h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h
			db 003h, 003h, 003h, 003h, 003h, 003h, 00eh, 00eh, 00eh, 00eh, 00eh, 00eh, 00eh, 00eh, 006h, 0e2h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h
			db 003h, 003h, 003h, 003h, 003h, 006h, 006h, 00eh, 00eh, 00eh, 00eh, 00eh, 00eh, 00eh, 00eh, 00eh, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h
			db 003h, 003h, 003h, 003h, 003h, 00eh, 00eh, 00eh, 00eh, 00eh, 00eh, 00eh, 00eh, 00eh, 00eh, 00eh, 00eh, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h
			db 003h, 003h, 003h, 003h, 006h, 00eh, 00eh, 0000h, 000h, 000h, 00eh, 00eh, 00eh, 00eh, 00eh, 00eh, 006h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 006h, 006h, 003h, 003h
			db 003h, 003h, 003h, 003h, 00eh, 00eh, 00eh, 0000h, 000h, 000h, 000h, 00eh, 00eh, 00eh, 00eh, 00eh, 00eh, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 00eh, 00eh, 00eh, 0f1h, 003h
			db 003h, 003h, 003h, 003h, 0d2h, 00eh, 00eh, 0000h, 0000h, 000h, 00eh, 00eh, 00eh, 00eh, 00eh, 00eh, 00eh, 0d9h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 0dch, 00eh, 00eh, 00eh, 0d4h, 003h
			db 003h, 003h, 006h, 006h, 0b7h, 00eh, 00eh, 00eh, 00eh, 00eh, 00eh, 00eh, 00eh, 00eh, 00eh, 00eh, 006h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 00eh, 006h, 00eh, 00eh, 00eh, 006h, 003h
			db 006h, 006h, 006h, 006h, 0a9h, 00eh, 00eh, 00eh, 00eh, 00eh, 00eh, 00eh, 00eh, 00eh, 00eh, 00eh, 006h, 003h, 003h, 003h, 003h, 003h, 003h, 0cbh, 006h, 00eh, 00eh, 00eh, 00eh, 00eh, 00eh, 00eh
			db 0a0h, 006h, 006h, 006h, 006h, 0c9h, 00eh, 00eh, 00eh, 00eh, 00eh, 00eh, 00eh, 00eh, 00eh, 00eh, 006h, 003h, 003h, 003h, 0cdh, 0c5h, 0cbh, 00eh, 00eh, 00eh, 00eh, 00eh, 00eh, 00eh, 00eh, 006h
			db 003h, 0a0h, 006h, 006h, 006h, 0a8h, 0d3h, 00eh, 00eh, 00eh, 00eh, 00eh, 00eh, 00eh, 00eh, 00eh, 0d2h, 0c6h, 0bfh, 0beh, 006h, 006h, 006h, 0bfh, 0cdh, 00eh, 00eh, 00eh, 00eh, 00eh, 00eh, 00eh
			db 003h, 003h, 0a4h, 0deh, 0a0h, 006h, 006h, 00eh, 00eh, 00eh, 00eh, 00eh, 00eh, 00eh, 00eh, 0cfh, 0beh, 006h, 006h, 006h, 006h, 006h, 006h, 006h, 006h, 0c6h, 00eh, 00eh, 00eh, 00eh, 00eh, 00eh
			db 003h, 003h, 003h, 003h, 003h, 003h, 006h, 00eh, 00eh, 00eh, 00eh, 00eh, 00eh, 00eh, 0d2h, 0bdh, 006h, 006h, 006h, 006h, 006h, 006h, 006h, 006h, 006h, 006h, 0d0h, 00eh, 00eh, 00eh, 00eh, 00eh
			db 003h, 003h, 003h, 003h, 003h, 0cbh, 00eh, 00eh, 00eh, 00eh, 00eh, 00eh, 00eh, 00eh, 0c7h, 006h, 006h, 006h, 006h, 006h, 006h, 006h, 006h, 006h, 006h, 006h, 0d1h, 00eh, 00eh, 00eh, 00eh, 00eh
			db 003h, 003h, 003h, 003h, 003h, 00eh, 00eh, 00eh, 00eh, 00eh, 00eh, 00eh, 00eh, 00eh, 0c2h, 006h, 006h, 006h, 006h, 006h, 006h, 006h, 006h, 006h, 006h, 0bdh, 0c5h, 0cdh, 00eh, 00eh, 00eh, 00eh
			db 003h, 003h, 003h, 003h, 003h, 00eh, 00eh, 00eh, 00eh, 00eh, 00eh, 00eh, 00eh, 00eh, 0c4h, 006h, 006h, 006h, 006h, 006h, 006h, 006h, 006h, 006h, 006h, 006h, 006h, 006h, 0d3h, 00eh, 00eh, 00eh
			db 003h, 003h, 003h, 003h, 003h, 006h, 00eh, 00eh, 00eh, 00eh, 00eh, 00eh, 00eh, 00eh, 0cch, 006h, 006h, 006h, 006h, 006h, 006h, 006h, 006h, 006h, 006h, 006h, 006h, 0c3h, 00eh, 00eh, 00eh, 00eh
			db 003h, 003h, 003h, 003h, 003h, 00eh, 00eh, 00eh, 00eh, 00eh, 00eh, 00eh, 00eh, 00eh, 00eh, 0c5h, 006h, 006h, 006h, 006h, 006h, 006h, 006h, 006h, 006h, 006h, 0c3h, 0d4h, 00eh, 00eh, 00eh, 003h
			db 003h, 003h, 003h, 003h, 003h, 003h, 00eh, 00eh, 00eh, 00eh, 00eh, 00eh, 00eh, 00eh, 00eh, 00eh, 0cch, 0beh, 006h, 006h, 006h, 006h, 006h, 006h, 0beh, 0cah, 00eh, 00eh, 00eh, 00eh, 006h, 003h
			db 003h, 003h, 003h, 003h, 003h, 003h, 006h, 00eh, 00eh, 00eh, 00eh, 00eh, 00eh, 00eh, 00eh, 00eh, 00eh, 00eh, 0ceh, 0c8h, 0c5h, 0c5h, 0c7h, 0ceh, 00eh, 00eh, 00eh, 00eh, 00eh, 006h, 003h, 003h
			db 003h, 003h, 003h, 003h, 003h, 003h, 0e2h, 00eh, 00eh, 00eh, 00eh, 00eh, 00eh, 00eh, 00eh, 00eh, 00eh, 00eh, 00eh, 00eh, 00eh, 00eh, 00eh, 00eh, 00eh, 00eh, 00eh, 00eh, 0d7h, 003h, 003h, 003h
			db 003h, 003h, 003h, 003h, 003h, 003h, 003h, 0d9h, 006h, 00eh, 00eh, 00eh, 00eh, 00eh, 00eh, 00eh, 00eh, 00eh, 00eh, 00eh, 00eh, 00eh, 00eh, 00eh, 00eh, 00eh, 00eh, 0e2h, 003h, 003h, 003h, 003h
			db 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 006h, 006h, 00eh, 00eh, 00eh, 00eh, 00eh, 00eh, 00eh, 00eh, 00eh, 00eh, 00eh, 00eh, 00eh, 00eh, 0d8h, 003h, 003h, 003h, 003h, 003h, 003h
			db 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 0d8h, 006h, 006h, 00eh, 006h, 00eh, 00eh, 006h, 00eh, 006h, 0d4h, 0d7h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h
			db 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h
			db 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h
			db 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h
			db 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h; 32 columns 32rows


	 ducky2 db 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h
			db 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h
			db 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h
			db 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h
			db 003h, 003h, 003h, 003h, 003h, 003h, 003h, 0f1h, 006h, 00eh, 00eh, 006h, 006h, 006h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h
			db 003h, 003h, 003h, 003h, 003h, 003h, 00eh, 00eh, 00eh, 00eh, 00eh, 00eh, 00eh, 00eh, 006h, 0e2h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h
			db 003h, 003h, 003h, 003h, 003h, 006h, 006h, 00eh, 00eh, 00eh, 00eh, 00eh, 00eh, 00eh, 00eh, 00eh, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h
			db 003h, 003h, 003h, 003h, 003h, 00eh, 00eh, 00eh, 00eh, 00eh, 00eh, 00eh, 00eh, 00eh, 00eh, 00eh, 00eh, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h
			db 003h, 003h, 003h, 003h, 006h, 00eh, 00eh, 0000h, 000h, 000h, 00eh, 00eh, 00eh, 00eh, 00eh, 00eh, 006h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 006h, 006h, 003h, 003h
			db 003h, 003h, 003h, 003h, 00eh, 00eh, 00eh, 0000h, 000h, 000h, 000h, 00eh, 00eh, 00eh, 00eh, 00eh, 00eh, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 00eh, 00eh, 00eh, 0f1h, 003h
			db 003h, 003h, 003h, 003h, 0d2h, 00eh, 00eh, 0000h, 0000h, 000h, 00eh, 00eh, 00eh, 00eh, 00eh, 00eh, 00eh, 0d9h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 0dch, 00eh, 00eh, 00eh, 0d4h, 003h
			db 003h, 003h, 006h, 006h, 0b7h, 00eh, 00eh, 00eh, 00eh, 00eh, 00eh, 00eh, 00eh, 00eh, 00eh, 00eh, 006h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 00eh, 006h, 00eh, 00eh, 00eh, 006h, 003h
			db 006h, 006h, 006h, 006h, 0a9h, 00eh, 00eh, 00eh, 00eh, 00eh, 00eh, 00eh, 00eh, 00eh, 00eh, 00eh, 006h, 003h, 003h, 003h, 003h, 003h, 003h, 0cbh, 006h, 00eh, 00eh, 00eh, 00eh, 00eh, 00eh, 00eh
			db 0a0h, 006h, 006h, 006h, 006h, 0c9h, 00eh, 00eh, 00eh, 00eh, 00eh, 00eh, 00eh, 00eh, 00eh, 00eh, 006h, 003h, 003h, 003h, 0cdh, 0c5h, 0cbh, 00eh, 00eh, 00eh, 00eh, 00eh, 00eh, 00eh, 00eh, 006h
			db 003h, 0a0h, 006h, 006h, 006h, 0a8h, 0d3h, 00eh, 00eh, 00eh, 00eh, 00eh, 00eh, 00eh, 00eh, 00eh, 0d2h, 0c6h, 0bfh, 0beh, 006h, 006h, 006h, 0bfh, 0cdh, 00eh, 00eh, 00eh, 00eh, 00eh, 00eh, 00eh
			db 003h, 003h, 0a4h, 0deh, 0a0h, 006h, 006h, 00eh, 00eh, 00eh, 00eh, 00eh, 00eh, 00eh, 00eh, 0cfh, 0beh, 006h, 006h, 006h, 006h, 006h, 006h, 006h, 006h, 0c6h, 00eh, 00eh, 00eh, 00eh, 00eh, 00eh
			db 003h, 003h, 003h, 003h, 003h, 003h, 006h, 00eh, 00eh, 00eh, 00eh, 00eh, 00eh, 00eh, 0d2h, 0bdh, 006h, 006h, 006h, 006h, 006h, 006h, 006h, 006h, 006h, 006h, 0d0h, 00eh, 00eh, 00eh, 00eh, 00eh
			db 003h, 003h, 003h, 003h, 003h, 0cbh, 00eh, 00eh, 00eh, 00eh, 00eh, 00eh, 00eh, 00eh, 0c7h, 006h, 006h, 006h, 006h, 006h, 006h, 006h, 006h, 006h, 006h, 006h, 0d1h, 00eh, 00eh, 00eh, 00eh, 00eh
			db 003h, 003h, 003h, 003h, 003h, 00eh, 00eh, 00eh, 00eh, 00eh, 00eh, 00eh, 00eh, 00eh, 0c2h, 006h, 006h, 006h, 006h, 006h, 006h, 006h, 006h, 006h, 006h, 0bdh, 0c5h, 0cdh, 00eh, 00eh, 00eh, 00eh
			db 003h, 003h, 003h, 003h, 003h, 00eh, 00eh, 00eh, 00eh, 00eh, 00eh, 00eh, 00eh, 00eh, 0c4h, 006h, 006h, 006h, 006h, 006h, 006h, 006h, 006h, 006h, 006h, 006h, 006h, 006h, 0d3h, 00eh, 00eh, 00eh
			db 003h, 003h, 003h, 003h, 003h, 006h, 00eh, 00eh, 00eh, 00eh, 00eh, 00eh, 00eh, 00eh, 0cch, 006h, 006h, 006h, 006h, 006h, 006h, 006h, 006h, 006h, 006h, 006h, 006h, 0c3h, 00eh, 00eh, 00eh, 00eh
			db 003h, 003h, 003h, 003h, 003h, 00eh, 00eh, 00eh, 00eh, 00eh, 00eh, 00eh, 00eh, 00eh, 00eh, 0c5h, 006h, 006h, 006h, 006h, 006h, 006h, 006h, 006h, 006h, 006h, 0c3h, 0d4h, 00eh, 00eh, 00eh, 003h
			db 003h, 003h, 003h, 003h, 003h, 003h, 00eh, 00eh, 00eh, 00eh, 00eh, 00eh, 00eh, 00eh, 00eh, 00eh, 0cch, 0beh, 006h, 006h, 006h, 006h, 006h, 006h, 0beh, 0cah, 00eh, 00eh, 00eh, 00eh, 006h, 003h
			db 003h, 003h, 003h, 003h, 003h, 003h, 006h, 00eh, 00eh, 00eh, 00eh, 00eh, 00eh, 00eh, 00eh, 00eh, 00eh, 00eh, 0ceh, 0c8h, 0c5h, 0c5h, 0c7h, 0ceh, 00eh, 00eh, 00eh, 00eh, 00eh, 006h, 003h, 003h
			db 003h, 003h, 003h, 003h, 003h, 003h, 0e2h, 00eh, 00eh, 00eh, 00eh, 00eh, 00eh, 00eh, 00eh, 00eh, 00eh, 00eh, 00eh, 00eh, 00eh, 00eh, 00eh, 00eh, 00eh, 00eh, 00eh, 00eh, 0d7h, 003h, 003h, 003h
			db 003h, 003h, 003h, 003h, 003h, 003h, 003h, 0d9h, 006h, 00eh, 00eh, 00eh, 00eh, 00eh, 00eh, 00eh, 00eh, 00eh, 00eh, 00eh, 00eh, 00eh, 00eh, 00eh, 00eh, 00eh, 00eh, 0e2h, 003h, 003h, 003h, 003h
			db 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 006h, 006h, 00eh, 00eh, 00eh, 00eh, 00eh, 00eh, 00eh, 00eh, 00eh, 00eh, 00eh, 00eh, 00eh, 00eh, 0d8h, 003h, 003h, 003h, 003h, 003h, 003h
			db 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 0d8h, 006h, 006h, 00eh, 006h, 00eh, 00eh, 006h, 00eh, 006h, 0d4h, 0d7h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h
			db 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h
			db 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h
			db 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h
			db 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h, 003h; 32 columns 32rows
					
	
	logo db 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h
			db 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 04h, 04h, 04h, 04h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h
			db 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 04h, 04h, 04h, 04h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h
			db 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 04h, 04h, 04h, 04h, 04h, 04h, 04h, 04h, 04h, 04h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h
			db 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 04h, 04h, 04h, 04h, 04h, 04h, 04h, 04h, 04h, 04h, 04h, 04h, 04h, 04h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h
			db 00h, 00h, 00h, 00h, 00h, 00h, 00h, 04h, 04h, 04h, 04h, 04h, 04h, 04h, 04h, 04h, 04h, 04h, 04h, 04h, 04h, 04h, 04h, 04h, 04h, 00h, 00h, 00h, 00h, 00h, 00h, 00h
			db 00h, 00h, 00h, 00h, 00h, 00h, 04h, 04h, 04h, 04h, 04h, 00h, 00h, 00h, 04h, 04h, 04h, 04h, 00h, 00h, 00h, 04h, 04h, 04h, 04h, 04h, 00h, 00h, 00h, 00h, 00h, 00h
			db 00h, 00h, 00h, 00h, 00h, 04h, 04h, 04h, 04h, 04h, 00h, 00h, 00h, 00h, 04h, 04h, 04h, 04h, 00h, 00h, 00h, 00h, 04h, 04h, 04h, 04h, 04h, 00h, 00h, 00h, 00h, 00h
			db 00h, 00h, 00h, 00h, 00h, 04h, 04h, 04h, 04h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 04h, 04h, 04h, 04h, 00h, 00h, 00h, 00h, 00h
			db 00h, 00h, 00h, 00h, 04h, 04h, 04h, 04h, 00h, 00h, 00h, 00h, 04h, 04h, 04h, 04h, 04h, 04h, 04h, 04h, 00h, 00h, 00h, 00h, 04h, 04h, 04h, 04h, 00h, 00h, 00h, 00h
			db 00h, 00h, 00h, 00h, 04h, 04h, 04h, 00h, 00h, 00h, 00h, 04h, 04h, 04h, 04h, 04h, 04h, 04h, 04h, 04h, 04h, 00h, 00h, 00h, 00h, 04h, 04h, 04h, 00h, 00h, 00h, 00h
			db 00h, 00h, 00h, 04h, 04h, 04h, 00h, 00h, 00h, 00h, 04h, 04h, 04h, 04h, 04h, 04h, 04h, 04h, 04h, 04h, 04h, 04h, 00h, 00h, 00h, 00h, 04h, 04h, 04h, 00h, 00h, 00h
			db 00h, 00h, 00h, 04h, 04h, 04h, 00h, 00h, 00h, 04h, 04h, 04h, 04h, 04h, 04h, 04h, 04h, 04h, 04h, 04h, 04h, 04h, 04h, 00h, 00h, 00h, 04h, 04h, 04h, 00h, 00h, 00h
			db 00h, 00h, 00h, 04h, 04h, 04h, 00h, 00h, 00h, 04h, 04h, 04h, 04h, 04h, 04h, 04h, 04h, 04h, 04h, 04h, 04h, 04h, 04h, 00h, 00h, 00h, 04h, 04h, 04h, 00h, 00h, 00h
			db 00h, 04h, 04h, 04h, 04h, 04h, 04h, 04h, 00h, 04h, 04h, 04h, 04h, 04h, 04h, 04h, 04h, 04h, 04h, 04h, 04h, 04h, 04h, 00h, 04h, 04h, 04h, 04h, 04h, 04h, 04h, 00h
			db 00h, 04h, 04h, 04h, 04h, 04h, 04h, 04h, 00h, 04h, 04h, 04h, 04h, 04h, 04h, 04h, 04h, 04h, 04h, 04h, 04h, 04h, 04h, 00h, 04h, 04h, 04h, 04h, 04h, 04h, 04h, 00h
			db 00h, 04h, 04h, 04h, 04h, 04h, 04h, 04h, 00h, 04h, 04h, 04h, 04h, 04h, 04h, 04h, 04h, 04h, 04h, 04h, 04h, 04h, 04h, 00h, 04h, 04h, 04h, 04h, 04h, 04h, 04h, 00h
			db 00h, 04h, 04h, 04h, 04h, 04h, 04h, 04h, 00h, 04h, 04h, 04h, 04h, 04h, 04h, 04h, 04h, 04h, 04h, 04h, 04h, 04h, 04h, 00h, 04h, 04h, 04h, 04h, 04h, 04h, 04h, 00h
			db 00h, 00h, 00h, 04h, 04h, 04h, 00h, 00h, 00h, 04h, 04h, 04h, 04h, 04h, 04h, 04h, 04h, 04h, 04h, 04h, 04h, 04h, 04h, 00h, 00h, 00h, 04h, 04h, 04h, 00h, 00h, 00h
			db 00h, 00h, 00h, 04h, 04h, 04h, 00h, 00h, 00h, 04h, 04h, 04h, 04h, 04h, 04h, 04h, 04h, 04h, 04h, 04h, 04h, 04h, 04h, 00h, 00h, 00h, 04h, 04h, 04h, 00h, 00h, 00h
			db 00h, 00h, 00h, 04h, 04h, 04h, 00h, 00h, 00h, 00h, 04h, 04h, 04h, 04h, 04h, 04h, 04h, 04h, 04h, 04h, 04h, 04h, 00h, 00h, 00h, 00h, 04h, 04h, 04h, 00h, 00h, 00h
			db 00h, 00h, 00h, 00h, 04h, 04h, 04h, 00h, 00h, 00h, 00h, 04h, 04h, 04h, 04h, 04h, 04h, 04h, 04h, 04h, 04h, 00h, 00h, 00h, 00h, 04h, 04h, 04h, 00h, 00h, 00h, 00h
			db 00h, 00h, 00h, 00h, 04h, 04h, 04h, 04h, 00h, 00h, 00h, 00h, 04h, 04h, 04h, 04h, 04h, 04h, 04h, 04h, 00h, 00h, 00h, 00h, 04h, 04h, 04h, 04h, 00h, 00h, 00h, 00h
			db 00h, 00h, 00h, 00h, 00h, 04h, 04h, 04h, 04h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 04h, 04h, 04h, 04h, 00h, 00h, 00h, 00h, 00h
			db 00h, 00h, 00h, 00h, 00h, 04h, 04h, 04h, 04h, 04h, 00h, 00h, 00h, 00h, 04h, 04h, 04h, 04h, 00h, 00h, 00h, 00h, 04h, 04h, 04h, 04h, 04h, 00h, 00h, 00h, 00h, 00h
			db 00h, 00h, 00h, 00h, 00h, 00h, 04h, 04h, 04h, 04h, 04h, 00h, 00h, 00h, 04h, 04h, 04h, 04h, 00h, 00h, 00h, 04h, 04h, 04h, 04h, 04h, 00h, 00h, 00h, 00h, 00h, 00h
			db 00h, 00h, 00h, 00h, 00h, 00h, 00h, 04h, 04h, 04h, 04h, 04h, 04h, 04h, 04h, 04h, 04h, 04h, 04h, 04h, 04h, 04h, 04h, 04h, 04h, 00h, 00h, 00h, 00h, 00h, 00h, 00h
			db 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 04h, 04h, 04h, 04h, 04h, 04h, 04h, 04h, 04h, 04h, 04h, 04h, 04h, 04h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h
			db 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 04h, 04h, 04h, 04h, 04h, 04h, 04h, 04h, 04h, 04h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h
			db 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 04h, 04h, 04h, 04h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h
			db 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 04h, 04h, 04h, 04h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h
			db 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h
;stores the initial possible y locations of the duck - 20 positions
start_locations dw 32, 45, 35, 50, 25, 44, 51, 44, 33, 48, 38, 35, 52, 55, 46, 34, 29, 50, 30, 40
index dw 0



names db 10 dup("$")

output_counter db 0	; for myoutput proc
score dw 0
lives dw 3

endLine db 0Dh, 0Ah
space db ' ', 0 



videoSeg equ 0A000h           ; Video memory segment for VGA graphics mode
cursorPosX dw 160             ; Initial X position of the cursor
cursorPosY dw 100             ; Initial Y position of the cursor
moveSpeed dw 4                ; Speed of the cursor movement
moveSpeed_mode2 dw 4
currentSelection db 1 ; 1 for MODE 1 selected, 2 for MODE 2 selected



d_up dw 32
d_down dw 64
d_left dw 0
d_right dw 32	; initial duck position

d_up1 dw 70
d_down1 dw 102
d_left1 dw 0
d_right1 dw 32	; second duck position

d_y01 dw 70 
d_y02 dw 102
d_x01 dw 0
d_x02 dw 32 ; second duck reset


d_y1 dw 32
d_y2 dw 64
d_x1 dw 0
d_x2 dw 32 ;first duck reset 



str1 db "Score:$"

str2 db "GAME OVER!$"
str3 db "NEW GAME$"
str4 db "RESUME$"
str5 db "INSTRUCTIONS$"
str6 db "HIGH SCORE$"
str7 db "EXIT$"
str8 db "DUCK SHOOTER$"
str9 db "ENTER YOUR NAME$"
str10 db "INSTRUCTIONS$"
str11 db "1: Use arrow keys to aim$"
str12 db "2: Use spacebar to shoot$"
str14 db "INSTRUCTIONS$"
str13 db "PRESS ESCAPE TO GO BACK$"
str17 db "NAME$"
str18 db "SCORES$"
str19 db "LEVEL$"
str20 db 'MODE 1', '$'
str21 db 'MODE 2', '$'

inputBuffer db 128 dup(0) ; Buffer for file reading
fname db "score.txt", 0
fhandle dw ?
string_scores db 4 dup('$')
string_level db '$'
string_highscores db 100 dup('$')
highscore dw 0
highlevel dw 0
highname db 10 dup('$')
currentLevel db '$'

str22 db 'LEVEL 1', '$'
str23 db 'LEVEL 2','$'
str24 db 'LEVEL 3', '$'

.code

;--- draw pixel ---
draw_pixel macro row, col, color
MOV CX, col    ;column
MOV DX, row    ;row
MOV AL, color  ;color
MOV AH, 0CH 
INT 10H
endm
;------------------

;--- cursor reset ---
set_cursor macro row, columun
	mov bh, 0	
	mov ah, 2
	mov dh, row     ;row
	mov dl, columun    ;column
	int 10h
endm
;------------------

;--- print string ---
mymessage macro str0
	mov dx, offset str0
	mov ah, 9
	int 21h
endm 
;------------------

;--- print string ---
mymessage2 macro
	mov dx, si
	mov ah, 9
	int 21h
endm 
;------------------

;--- Draw box ---
draw_box macro top, bottom, left, right, color
	mov ah, 6
	mov al, 0
	mov bh, color     	; color
	mov ch, top     	; top row of window
	mov cl, left		; left most column of window
	mov dh, bottom     	; Bottom row of window
	mov dl, right     	; Right most column of window
	int 10h
endm

;--------
draw_logo macro si, yi, yf, xi, xf
	; reserve registers
	push ax
	push dx
	push cx

	mov ah,0ch
	mov dx, yi; y coordinate initial( up down)
	y0:
	mov cx, xi;x coordinate initial (left right)
	x0:
	mov al,[si]; start array
	int 10h
	inc si; increment full row  (x axis)
	inc cx
	cmp cx, xf; x coordinate final( left right)
	jb x0
	inc dx; jump to next row
	cmp dx, yf; y coordinate final( up down)
	jb y0

	pop cx
	pop dx
	pop ax

endm

draw_logo1 macro si, yi, yf, xi, xf
	; reserve registers
	push ax
	push dx
	push cx

	mov ah,0ch
	mov dx, yi; y coordinate initial( up down)
	y0101:
	mov cx, xi;x coordinate initial (left right)
	x0101:
	mov al,[si]; start array
	int 10h
	inc si; increment full row  (x axis)
	inc cx
	cmp cx, xf; x coordinate final( left right)
	jb x0101
	inc dx; jump to next row
	cmp dx, yf; y coordinate final( up down)
	jb y0101

	pop cx
	pop dx
	pop ax

endm

draw_ducky macro si, yi, yf, xi, xf
    ; Reserve registers
    push ax
    push dx
    push cx

	
    ; Setup for drawing pixel
    mov ah, 0Ch      ; Function to set pixel color in video memory
    mov dx, yi       ; y coordinate initial (up down)

    y1:         ; Local label for the outer loop
    mov cx, xi       ; x coordinate initial (left right)

    x1:         ; Local label for the inner loop
    mov al, [si]     ; load the pixel color value from the source image array
    int 10h          ; BIOS call to draw the pixel
    inc si           ; move to the next pixel in the image data
    inc cx           ; increment the x coordinate
    cmp cx, xf       ; compare if the end of the x coordinate is reached
    jb x1       ; jump back to @@xLoop if not reached the end

    inc dx           ; increment the y coordinate
    cmp dx, yf       ; compare if the end of the y coordinate is reached
    jb y1      ; jump back to @@yLoop if not reached the end

    pop cx           ; restore registers
    pop dx
    pop ax
endm


draw_background6 macro si, yi, yf, xi, xf
    ; reserve registers
    push ax
    push dx
    push cx

    mov ah,0ch
    mov dx, yi; y coordinate initial( up down)
    y11:
    mov cx, xi;x coordinate initial (left right)
    x11:
    mov al,[si]; start array
    int 10h
    inc si; increment full row  (x axis)
    inc cx
    cmp cx, xf; x coordinate final( left right)
    jb x11
    inc dx; jump to next row
    cmp dx, yf; y coordinate final( up down)
    jb y11

    pop cx
    pop dx
    pop ax

endm

draw_background7 macro si, yi, yf, xi, xf
    ; reserve registers
    push ax
    push dx
    push cx

    mov ah,0ch
    mov dx, yi; y coordinate initial( up down)
    y13:
    mov cx, xi;x coordinate initial (left right)
    x13:
    mov al,[si]; start array
    int 10h
    inc si; increment full row  (x axis)
    inc cx
    cmp cx, xf; x coordinate final( left right)
    jb x13
    inc dx; jump to next row
    cmp dx, yf; y coordinate final( up down)
    jb y13

    pop cx
    pop dx
    pop ax

endm





draw_ducky1 macro si, yi, yf, xi, xf
    ; Reserve registers
    push ax
    push dx
    push cx

	
    ; Setup for drawing pixel
    mov ah, 0Ch      ; Function to set pixel color in video memory
    mov dx, yi       ; y coordinate initial (up down)

    y50:         ; Local label for the outer loop
    mov cx, xi       ; x coordinate initial (left right)

    x50:         ; Local label for the inner loop
    mov al, [si]     ; load the pixel color value from the source image array
    int 10h          ; BIOS call to draw the pixel
    inc si           ; move to the next pixel in the image data
    inc cx           ; increment the x coordinate
    cmp cx, xf       ; compare if the end of the x coordinate is reached
    jb x50     ; jump back to @@xLoop if not reached the end

    inc dx           ; increment the y coordinate
    cmp dx, yf       ; compare if the end of the y coordinate is reached
    jb y50      ; jump back to @@yLoop if not reached the end

    pop cx           ; restore registers
    pop dx
    pop ax
endm


draw_ducky2 macro si, yi, yf, xi, xf
    ; Reserve registers
    push ax
    push dx
    push cx

	
    ; Setup for drawing pixel
    mov ah, 0Ch      ; Function to set pixel color in video memory
    mov dx, yi       ; y coordinate initial (up down)

    y51:         ; Local label for the outer loop
    mov cx, xi       ; x coordinate initial (left right)

    x51:         ; Local label for the inner loop
    mov al, [si]     ; load the pixel color value from the source image array
    int 10h          ; BIOS call to draw the pixel
    inc si           ; move to the next pixel in the image data
    inc cx           ; increment the x coordinate
    cmp cx, xf       ; compare if the end of the x coordinate is reached
    jb x51     ; jump back to @@xLoop if not reached the end

    inc dx           ; increment the y coordinate
    cmp dx, yf       ; compare if the end of the y coordinate is reached
    jb y51      ; jump back to @@yLoop if not reached the end

    pop cx           ; restore registers
    pop dx
    pop ax
endm


draw_ducky_fall macro si, yi, yf, xi, xf
    ; Reserve registers
    push ax
    push dx
    push cx

    ; Setup for drawing pixel
    mov ah, 0Ch      ; Function to set pixel color in video memory
    mov dx, yi       ; y coordinate initial (up down)

    y3:         ; Local label for the outer loop
    mov cx, xi       ; x coordinate initial (left right)

    x3:         ; Local label for the inner loop
    mov al, [si]     ; load the pixel color value from the source image array
    int 10h          ; BIOS call to draw the pixel
    inc si           ; move to the next pixel in the image data
    inc cx           ; increment the x coordinate
    cmp cx, xf       ; compare if the end of the x coordinate is reached
    jb x3       ; jump back to @@xLoop if not reached the end

    inc dx           ; increment the y coordinate
    cmp dx, yf       ; compare if the end of the y coordinate is reached
    jb y3      ; jump back to @@yLoop if not reached the end

    pop cx           ; restore registers
    pop dx
    pop ax
endm

draw_ducky_fall1 macro si, yi, yf, xi, xf
    ; Reserve registers
    push ax
    push dx
    push cx

    ; Setup for drawing pixel
    mov ah, 0Ch      ; Function to set pixel color in video memory
    mov dx, yi       ; y coordinate initial (up down)

    y12:         ; Local label for the outer loop
    mov cx, xi       ; x coordinate initial (left right)

    x12:         ; Local label for the inner loop
    mov al, [si]     ; load the pixel color value from the source image array
    int 10h          ; BIOS call to draw the pixel
    inc si           ; move to the next pixel in the image data
    inc cx           ; increment the x coordinate
    cmp cx, xf       ; compare if the end of the x coordinate is reached
    jb x12       ; jump back to @@xLoop if not reached the end

    inc dx           ; increment the y coordinate
    cmp dx, yf       ; compare if the end of the y coordinate is reached
    jb y12      ; jump back to @@yLoop if not reached the end

    pop cx           ; restore registers
    pop dx
    pop ax
endm

draw_ducky_fall2 macro si, yi, yf, xi, xf
    ; Reserve registers
    push ax
    push dx
    push cx

    ; Setup for drawing pixel
    mov ah, 0Ch      ; Function to set pixel color in video memory
    mov dx, yi       ; y coordinate initial (up down)

    yd12:         ; Local label for the outer loop
    mov cx, xi       ; x coordinate initial (left right)

    xd12:         ; Local label for the inner loop
    mov al, [si]     ; load the pixel color value from the source image array
    int 10h          ; BIOS call to draw the pixel
    inc si           ; move to the next pixel in the image data
    inc cx           ; increment the x coordinate
    cmp cx, xf       ; compare if the end of the x coordinate is reached
    jb xd12       ; jump back to @@xLoop if not reached the end

    inc dx           ; increment the y coordinate
    cmp dx, yf       ; compare if the end of the y coordinate is reached
    jb yd12      ; jump back to @@yLoop if not reached the end

    pop cx           ; restore registers
    pop dx
    pop ax
endm

draw_background macro si, yi, yf, xi, xf
	; reserve registers
	push ax
	push dx
	push cx

	mov ah,0ch
	mov dx, yi; y coordinate initial( up down)
	y2:
	mov cx, xi;x coordinate initial (left right)
	x2:
	mov al,[si]; start array
	int 10h
	inc si; increment full row  (x axis)
	inc cx
	cmp cx, xf; x coordinate final( left right)
	jb x2
	inc dx; jump to next row
	cmp dx, yf; y coordinate final( up down)
	jb y2

	pop cx
	pop dx
	pop ax

endm

draw_background2 macro si, yi, yf, xi, xf
	; reserve registers
	push ax
	push dx
	push cx

	mov ah,0ch
	mov dx, yi; y coordinate initial( up down)
	y7:
	mov cx, xi;x coordinate initial (left right)
	x7:
	mov al,[si]; start array
	int 10h
	inc si; increment full row  (x axis)
	inc cx
	cmp cx, xf; x coordinate final( left right)
	jb x7
	inc dx; jump to next row
	cmp dx, yf; y coordinate final( up down)
	jb y7

	pop cx
	pop dx
	pop ax

endm

draw_background3 macro si, yi, yf, xi, xf
	; reserve registers
	push ax
	push dx
	push cx

	mov ah,0ch
	mov dx, yi; y coordinate initial( up down)
	y8:
	mov cx, xi;x coordinate initial (left right)
	x8:
	mov al,[si]; start array
	int 10h
	inc si; increment full row  (x axis)
	inc cx
	cmp cx, xf; x coordinate final( left right)
	jb x8
	inc dx; jump to next row
	cmp dx, yf; y coordinate final( up down)
	jb y8

	pop cx
	pop dx
	pop ax

endm

draw_background4 macro si, yi, yf, xi, xf
	; reserve registers
	push ax
	push dx
	push cx

	mov ah,0ch
	mov dx, yi; y coordinate initial( up down)
	y9:
	mov cx, xi;x coordinate initial (left right)
	x9:
	mov al,[si]; start array
	int 10h
	inc si; increment full row  (x axis)
	inc cx
	cmp cx, xf; x coordinate final( left right)
	jb x9
	inc dx; jump to next row
	cmp dx, yf; y coordinate final( up down)
	jb y9

	pop cx
	pop dx
	pop ax

endm

draw_background5 macro si, yi, yf, xi, xf
	; reserve registers
	push ax
	push dx
	push cx

	mov ah,0ch
	mov dx, yi; y coordinate initial( up down)
	y10:
	mov cx, xi;x coordinate initial (left right)
	x10:
	mov al,[si]; start array
	int 10h
	inc si; increment full row  (x axis)
	inc cx
	cmp cx, xf; x coordinate final( left right)
	jb x10
	inc dx; jump to next row
	cmp dx, yf; y coordinate final( up down)
	jb y10

	pop cx
	pop dx
	pop ax

endm

draw_background9 macro si, yi, yf, xi, xf
	; reserve registers
	push ax
	push dx
	push cx

	mov ah,0ch
	mov dx, yi; y coordinate initial( up down)
	y211:
	mov cx, xi;x coordinate initial (left right)
	x211:
	mov al,[si]; start array
	int 10h
	inc si; increment full row  (x axis)
	inc cx
	cmp cx, xf; x coordinate final( left right)
	jb x211
	inc dx; jump to next row
	cmp dx, yf; y coordinate final( up down)
	jb y211

	pop cx
	pop dx
	pop ax

endm



erase_ducky macro si, yi, yf, xi, xf
; reserve registers
	push ax
	push dx
	push cx

	mov ah,0ch
	mov dx, yi; y coordinate initial( up down)
	y:
	mov cx, xi;x coordinate initial (left right)
	x:
	mov al,03h; start array
	int 10h
	inc si; increment full row  (x axis)
	inc cx
	cmp cx, xf; x coordinate final( left right)
	jb x
	inc dx; jump to next row
	cmp dx, yf; y coordinate final( up down)
	jb y

	pop cx
	pop dx
	pop ax

endm

erase_ducky_fall macro si, yi, yf, xi, xf
; reserve registers
	push ax
	push dx
	push cx

	mov ah,0ch
	mov dx, yi; y coordinate initial( up down)
	y4:
	mov cx, xi;x coordinate initial (left right)
	x4:
	mov al,03h; start array
	int 10h
	inc si; increment full row  (x axis)
	inc cx
	cmp cx, xf; x coordinate final( left right)
	jb x4
	inc dx; jump to next row
	cmp dx, yf; y coordinate final( up down)
	jb y4

	pop cx
	pop dx
	pop ax

endm

erase_ducky_fall2 macro si, yi, yf, xi, xf
; reserve registers
	push ax
	push dx
	push cx

	mov ah,0ch
	mov dx, yi; y coordinate initial( up down)
	y5:
	mov cx, xi;x coordinate initial (left right)
	x5:
	mov al,03h; start array
	int 10h
	inc si; increment full row  (x axis)
	inc cx
	cmp cx, xf; x coordinate final( left right)
	jb x5
	inc dx; jump to next row
	cmp dx, yf; y coordinate final( up down)
	jb y5

	pop cx
	pop dx
	pop ax

endm

erase_ducky_fall3 macro si, yi, yf, xi, xf
; reserve registers
	push ax
	push dx
	push cx

	mov ah,0ch
	mov dx, yi; y coordinate initial( up down)
	y6:
	mov cx, xi;x coordinate initial (left right)
	x6:
	mov al,03h; start array
	int 10h
	inc si; increment full row  (x axis)
	inc cx
	cmp cx, xf; x coordinate final( left right)
	jb x6
	inc dx; jump to next row
	cmp dx, yf; y coordinate final( up down)
	jb y6

	pop cx
	pop dx
	pop ax

endm

erase_ducky_fall4 macro si, yi, yf, xi, xf
; reserve registers
	push ax
	push dx
	push cx

	mov ah,0ch
	mov dx, yi; y coordinate initial( up down)
	y14:
	mov cx, xi;x coordinate initial (left right)
	x14:
	mov al,03h; start array
	int 10h
	inc si; increment full row  (x axis)
	inc cx
	cmp cx, xf; x coordinate final( left right)
	jb x14
	inc dx; jump to next row
	cmp dx, yf; y coordinate final( up down)
	jb y14

	pop cx
	pop dx
	pop ax

endm

erase_ducky_fall5 macro si, yi, yf, xi, xf
; reserve registers
	push ax
	push dx
	push cx

	mov ah,0ch
	mov dx, yi; y coordinate initial( up down)
	yd6:
	mov cx, xi;x coordinate initial (left right)
	xd6:
	mov al,03h; start array
	int 10h
	inc si; increment full row  (x axis)
	inc cx
	cmp cx, xf; x coordinate final( left right)
	jb xd6
	inc dx; jump to next row
	cmp dx, yf; y coordinate final( up down)
	jb yd6

	pop cx
	pop dx
	pop ax

endm

erase_ducky_fall6 macro si, yi, yf, xi, xf
; reserve registers
	push ax
	push dx
	push cx

	mov ah,0ch
	mov dx, yi; y coordinate initial( up down)
	yd14:
	mov cx, xi;x coordinate initial (left right)
	xd14:
	mov al,03h; start array
	int 10h
	inc si; increment full row  (x axis)
	inc cx
	cmp cx, xf; x coordinate final( left right)
	jb xd14
	inc dx; jump to next row
	cmp dx, yf; y coordinate final( up down)
	jb yd14

	pop cx
	pop dx
	pop ax

endm

main proc
mov ax, @data
mov ds, ax
mov ax, 0

call username_input

;--- main menu ---
main_menu:
	

	; Set VGA graphics mode 13h (320x200, 256 colors)
	mov ax, 0013h
	int 10h
		
	mov si, OFFSET background
	draw_background2 si,0,192,0,320

	; printing logo
	mov si, offset ducky
	draw_logo si,5,37,182,214
	set_cursor 2, 10	; prints DUCK SHOOTER game
	mymessage str8
	
	;--- Initial setup ---
	draw_box 5, 7, 10, 27, 11		; new game box
	draw_box 9, 11, 10, 27, 11		; resume box
	draw_box 13, 15, 10, 27, 11		; instructions box
	draw_box 17, 19, 10, 27, 11		; high scores box
	draw_box 21, 23, 10, 27, 11		; exit box

	set_cursor 6, 15		; new game
	mymessage str3

	set_cursor 10, 15		; resume
	mymessage str4

	set_cursor 14, 15		; instructions
	mymessage str5

	set_cursor 18, 15		; high scores
	mymessage str6

	set_cursor 22, 15		; exit
	mymessage str7
	;---------------------------------------

	;--- Interactive Setup ---
	newgame:
		draw_box 21, 23, 10, 27, 11		; exit box			  ; blue
		set_cursor 22, 15				      ; exit
		mymessage str7

		draw_box 5, 7, 10, 27, 12		    ; new game box		; red
		set_cursor 6, 15				        ; new game
		mymessage str3
		
		draw_box 9, 11, 10, 27, 11		  ; resume box		  ; blue
		set_cursor 10, 15				        ; resume
		mymessage str4
	
	call beep
	mov ah,0	; key input
	int 16h

	cmp ah, 48h
	je exit					  ;<---- select exit tab when up key is pressed
	cmp ah,	50h
	je resume				  ;<---- select resume tab when down key is pressed
	cmp al,	13
	je ShowModeSelection	;<---- start game when Enter key is pressed

	resume:
		draw_box 5, 7, 10, 27, 11		    ; new game box		; blue
		set_cursor 6, 15				        ; new game
		mymessage str3

		draw_box 9, 11, 10, 27, 12		  ; resume box		  ; red
		set_cursor 10, 15               ; resume
		mymessage str4
		
		draw_box 13, 15, 10, 27, 11		  ; instructions box	; blue
		set_cursor 14, 15				        ; instructions
		mymessage str5	

	call beep
	mov ah,0	; key input
	int 16h

	cmp ah, 48h
	je newgame			  ;<---- select newgame tab when up key is pressed
	cmp ah,	50h
	je instructions			;<---- select instructions tab when down key is pressed
	cmp al, 13
	je resumeGame			;<---- resume/unpause game when Enter key is pressed



ShowModeSelection:
    ; Set VGA graphics mode 13h (320x200, 256 colors)
    mov ax, 0013h
    int 10h

    ; Draw the initial background
    mov si, OFFSET background
    draw_background4 si, 0, 192, 0, 320

    ; Initialize selection to MODE 1
    mov byte ptr [currentSelection], 1

DrawMode1:
    ; Draw MODE 1 box as selected (red)
    draw_box 5, 7, 10, 27, 12      ; new game box (red)
    set_cursor 6, 15               ; Position for "MODE 1"
    mymessage str20                ; Display "MODE 1"

    ; Draw MODE 2 box as unselected (blue)
    draw_box 9, 11, 10, 27, 11     ; resume box (blue)
    set_cursor 10, 15              ; Position for "MODE 2"
    mymessage str21                ; Display "MODE 2"

    ; Beep to signal ready for input
    call beep

    ; Wait for key input
    mov ah, 00h
    int 16h                       ; BIOS keyboard interrupt, wait for key press
    cmp ah, 48h                   ; if up key is pressed
    je DrawMode2
    cmp ah, 50h                   ; if down key is pressed
    je DrawMode2
    cmp al, 13              ; if Enter key is pressed
    je Levels
    jmp DrawMode1                 ; Loop back if no relevant key is pressed

DrawMode2:
    ; Draw MODE 1 box as unselected (blue)
    draw_box 5, 7, 10, 27, 11      ; new game box (blue)
    set_cursor 6, 15               ; Position for "MODE 1"
    mymessage str20                ; Display "MODE 1"

    ; Draw MODE 2 box as selected (red)
    draw_box 9, 11, 12, 27, 12     ; resume box (red)
    set_cursor 10, 15              ; Position for "MODE 2"
    mymessage str21                ; Display "MODE 2"

    ; Beep to signal ready for input
    call beep

    ; Wait for key input
    mov ah, 00h
    int 16h                       ; BIOS keyboard interrupt, wait for key press
    cmp ah, 48h                   ; if up key is pressed
    je DrawMode1
    cmp ah, 50h                   ; if down key is pressed
    je DrawMode1
    cmp al, 13                  ; if Enter key is pressed
    je Mode_Levels
    jmp DrawMode2                 ; Loop back if no relevant key is pressed
	                 ;
	;-----------------------------------------------------------------------------------------------------------------
Levels:
    mov ax, 0013h
    int 10h

    ; Draw the initial background
    mov si, OFFSET background
    draw_background6 si, 0, 192, 0, 320

    ; Initialize selection to MODE 1
    mov byte ptr [currentSelection], 1

Draw_level1:
    ; Draw LEVEL 1 box as selected (red)
    draw_box 5, 7, 10, 27, 12
    set_cursor 6, 15
    mymessage str22

    ; Draw LEVEL 2 box as unselected (blue)
    draw_box 9, 11, 10, 27, 11
    set_cursor 10, 15
    mymessage str23

    ; Draw LEVEL 3 box as unselected (blue)
    draw_box 13, 15, 10, 27, 11
    set_cursor 14, 15
    mymessage str24

    call beep

    ; Wait for key input
    mov ah, 00h
    int 16h                       ; BIOS keyboard interrupt, wait for key press
    cmp ah, 48h                   ; if up key is pressed
    je Draw_level3
    cmp ah, 50h                   ; if down key is pressed
    je Draw_level2
    cmp al, 13                    ; if Enter key is pressed
    je Level1
    jmp Draw_level1               ; Loop back if no relevant key is pressed

Draw_level2:
    ; Draw LEVEL 1 box as unselected (blue)
    draw_box 5, 7, 10, 27, 11
    set_cursor 6, 15
    mymessage str22

    ; Draw LEVEL 2 box as selected (red)
    draw_box 9, 11, 10, 27, 12
    set_cursor 10, 15
    mymessage str23

    ; Draw LEVEL 3 box as unselected (blue)
    draw_box 13, 15, 10, 27, 11
    set_cursor 14, 15
    mymessage str24

    call beep

    ; Wait for key input
    mov ah, 00h
    int 16h                       ; BIOS keyboard interrupt, wait for key press
    cmp ah, 48h                   ; if up key is pressed
    je Draw_level1
    cmp ah, 50h                   ; if down key is pressed
    je Draw_level3
    cmp al, 13                    ; if Enter key is pressed
    je Level2
    jmp Draw_level2               ; Loop back if no relevant key is pressed

Draw_level3:
    ; Draw LEVEL 1 box as unselected (blue)
    draw_box 5, 7, 10, 27, 11
    set_cursor 6, 15
    mymessage str22

    ; Draw LEVEL 2 box as unselected (blue)
    draw_box 9, 11, 10, 27, 11
    set_cursor 10, 15
    mymessage str23

    ; Draw LEVEL 3 box as selected (red)
    draw_box 13, 15, 10, 27, 12
    set_cursor 14, 15
    mymessage str24

    call beep

    ; Wait for key input
    mov ah, 00h
    int 16h                       ; BIOS keyboard interrupt, wait for key press
    cmp ah, 48h                   ; if up key is pressed
    je Draw_level2
    cmp ah, 50h                   ; if down key is pressed
    je Draw_level1
    cmp al, 13                    ; if Enter key is pressed
    je Level3
    jmp Draw_level3               ; Loop back if no relevant key is pressed



		;---------------------------------------------------------------------------

	Mode_Levels:
    mov ax, 0013h
    int 10h

    ; Draw the initial background
		mov si, OFFSET background
		draw_background7 si, 0, 192, 0, 320

    ; Initialize selection to MODE 1
    mov byte ptr [currentSelection], 1

Mode_Draw_Level1:
    ; Draw LEVEL 1 box as selected (red)
    draw_box 5, 7, 10, 27, 12
    set_cursor 6, 15
    mymessage str22

    ; Draw LEVEL 2 box as unselected (blue)
    draw_box 9, 11, 10, 27, 11
    set_cursor 10, 15
    mymessage str23

    ; Draw LEVEL 3 box as unselected (blue)
    draw_box 13, 15, 10, 27, 11
    set_cursor 14, 15
    mymessage str24

    call beep

    ; Wait for key input
    mov ah, 00h
    int 16h                       ; BIOS keyboard interrupt, wait for key press
    cmp ah, 48h                   ; if up key is pressed
    je Mode_Draw_Level3
    cmp ah, 50h                   ; if down key is pressed
    je Mode_Draw_Level2
    cmp al, 13                    ; if Enter key is pressed
    je Mode_Level1
    jmp Mode_Draw_Level1          ; Loop back if no relevant key is pressed

Mode_Draw_Level2:
    ; Draw LEVEL 1 box as unselected (blue)
    draw_box 5, 7, 10, 27, 11
    set_cursor 6, 15
    mymessage str22

    ; Draw LEVEL 2 box as selected (red)
    draw_box 9, 11, 10, 27, 12
    set_cursor 10, 15
    mymessage str23

    ; Draw LEVEL 3 box as unselected (blue)
    draw_box 13, 15, 10, 27, 11
    set_cursor 14, 15
    mymessage str24

    call beep

    ; Wait for key input
    mov ah, 00h
    int 16h                       ; BIOS keyboard interrupt, wait for key press
    cmp ah, 48h                   ; if up key is pressed
    je Mode_Draw_Level1
    cmp ah, 50h                   ; if down key is pressed
    je Mode_Draw_Level3
    cmp al, 13                    ; if Enter key is pressed
    je Mode_Level2
    jmp Mode_Draw_Level2          ; Loop back if no relevant key is pressed

Mode_Draw_Level3:
    ; Draw LEVEL 1 box as unselected (blue)
    draw_box 5, 7, 10, 27, 11
    set_cursor 6, 15
    mymessage str22

    ; Draw LEVEL 2 box as unselected (blue)
    draw_box 9, 11, 10, 27, 11
    set_cursor 10, 15
    mymessage str23

    ; Draw LEVEL 3 box as selected (red)
    draw_box 13, 15, 10, 27, 12
    set_cursor 14, 15
    mymessage str24

    call beep

    ; Wait for key input
    mov ah, 00h
    int 16h                       ; BIOS keyboard interrupt, wait for key press
    cmp ah, 48h                   ; if up key is pressed
    je Mode_Draw_Level2
    cmp ah, 50h                   ; if down key is pressed
    je Mode_Draw_Level1
    cmp al, 13                    ; if Enter key is pressed
    je Mode_Level3
    jmp Mode_Draw_Level3          ; Loop back if no relevant key is pressed



;------------------------------------------------------------------------------------------------------
    ; Continue execution after input
    ;jmp playGame
	instructions:
		draw_box 9, 11, 10, 27, 11		  ; resume box		      ; blue
		set_cursor 10, 15				        ; resume
		mymessage str4

		draw_box 13, 15, 10, 27, 12		  ; instructions box	  ; red
		set_cursor 14, 15				        ; instructions
		mymessage str5	

		draw_box 17, 19, 10, 27, 11		  ; high scores box	    ; blue
		set_cursor 18, 15				        ; high scores
		mymessage str6

	call beep
	mov ah,0	; key input
	int 16h

	cmp ah, 48h
	je resume				    ;<---- select resume tab when up key is pressed
	cmp ah,	50h
	je highscores			  ;<---- select highscores tab when down key is pressed
	cmp al, 13
	je instructions_page

	highscores:
		draw_box 13, 15, 10, 27, 11		  ; instructions box	; blue
		set_cursor 14, 15				        ; instructions
		mymessage str5

		draw_box 17, 19, 10, 27, 12		  ; high scores box	  ; red
		set_cursor 18, 15				        ; high scores
		mymessage str6

		draw_box 21, 23, 10, 27, 11		  ; exit box			    ; blue
		set_cursor 22, 15				        ; exit
		mymessage str7

	call beep
	mov ah,0	; key input
	int 16h

	cmp ah, 48h
	je instructions			;<---- select instructions tab when up key is pressed
	cmp ah,	50h
	je exit					    ;<---- select exit tab when down key is pressed
	cmp al, 13
	je highscores_page
	
	exit:
		draw_box 17, 19, 10, 27, 11		  ; high scores box	  ; blue
		set_cursor 18, 15				        ; high scores
		mymessage str6

		draw_box 21, 23, 10, 27, 12		  ; exit box			    ; red
		set_cursor 22, 15				        ; exit
		mymessage str7

		draw_box 5, 7, 10, 27, 11		    ; new game box		  ; blue
		set_cursor 6, 15				        ; new game
		mymessage str3

	call beep
	mov ah,0	; key input
	int 16h

	cmp ah, 48h
	je highscores			;<---- select highscores tab when up key is pressed
	cmp ah,	50h
	je newgame				;<---- select newgame tab when down key is pressed
	cmp al, 13
	je exit_game			;<---- exit game when Enter key is pressed
	
	jmp newgame				;<------------ error handling (whenever a different key is pressed, other than arrow up and arrow down)


;----------------------------------------------------------- MAIN MENU END -------------------------------------------------
instructions_page:

	
	
	; Set VGA graphics mode 13h (320x200, 256 colors)
	mov ax, 0013h
	int 10h
		
	mov si, OFFSET background
	draw_background3 si,0,192,0,320
	
	set_cursor 2, 10	; prints duck shooter game
	mymessage str8

	set_cursor 6, 13  
	mymessage str10 

	set_cursor 8, 4
	mymessage str11 

	set_cursor 10, 4
	mymessage str12

	set_cursor 22, 8
	mymessage str13

	mov ah, 00h				; checks which key is pressed
	int 16h

	cmp ah, 01h				; go to main menu when escape is pressed
	je main_menu

jmp instructions_page


highscores_page:

	; Set VGA graphics mode 13h (320x200, 256 colors)
	mov ax, 0013h
	int 10h
		
	mov si, OFFSET background
	draw_background9 si,0,192,0,320
	
	set_cursor 2, 10	; prints duck shooter game
	mymessage str8
	
	mov si, offset ducky
	draw_logo1 si,5,37,182,214
 
 	set_cursor 8, 4
	call read_file

	;set_cursor 8, 4
	;mymessage str11 

	;set_cursor 10, 4
	;mymessage str12

	;set_cursor 22, 8
	;mymessage str13

	mov ah, 00h				; checks which key is pressed
	int 16h

	cmp ah, 01h				; go to main menu when escape is pressed
	je main_menu

jmp highscores_page



	
;--- draw pixel ---
draw_pixel macro row, col, color
    mov cx, col
    mov dx, row
    mov al, color
    mov ah, 0ch 
    int 10h
endm
;------------------

;--- cursor reset ---
set_cursor macro row, columun
    mov bh, 0    
    mov ah, 2
    mov dh, row     ; row
    mov dl, columun    ; column
    int 10h
endm
;------------------

;--- print string ---
mymessage macro str0
    mov dx, offset str0
    mov ah, 9
    int 21h
endm 
;------------------

;--- print string ---
mymessage2 macro
    mov dx, si
    mov ah, 9
    int 21h
endm 
;------------------

;--- Draw box ---
draw_box macro top, bottom, left, right, color
    mov ah, 6
    mov al, 0
    mov bh, color
    mov ch, top
    mov cl, left
    mov dh, bottom
    mov dl, right
    int 10h
endm

;--- Draw logo ---
draw_logo macro si, yi, yf, xi, xf, id
    push ax
    push dx
    push cx

    mov ah, 0ch
    mov dx, yi
    y_100id:
    mov cx, xi
    x_100id:
    mov al, [si]
    int 10h
    inc si
    inc cx
    cmp cx, xf
    jb x_100id
    inc dx
    cmp dx, yf
    jb y_100id

    pop cx
    pop dx
    pop ax
endm

;--- Draw ducky ---
draw_ducky macro si, yi, yf, xi, xf, id
    push ax
    push dx
    push cx

    mov ah, 0ch
    mov dx, yi
    y_101id:
    mov cx, xi
    x_101id:
    mov al, [si]
    int 10h
    inc si
    inc cx
    cmp cx, xf
    jb x_101id
    inc dx
    cmp dx, yf
    jb y_101id

    pop cx
    pop dx
    pop ax
endm

;--- Erase ducky ---
erase_ducky macro si, yi, yf, xi, xf, id
    push ax
    push dx
    push cx

    mov ah, 0ch
    mov dx, yi
    y_102id:
    mov cx, xi
    x_102id:
    mov al, 03h
    int 10h
    inc si
    inc cx
    cmp cx, xf
    jb x_102id
    inc dx
    cmp dx, yf
    jb y_102id

    pop cx
    pop dx
    pop ax
endm

erase_ducky2 macro si, yi, yf, xi, xf, id
    push ax
    push dx
    push cx

    mov ah, 0ch
    mov dx, yi
    y_103id:
    mov cx, xi
    x_103id:
    mov al, 03h
    int 10h
    inc si
    inc cx
    cmp cx, xf
    jb x_103id
    inc dx
    cmp dx, yf
    jb y_103id

    pop cx
    pop dx
    pop ax
endm

erase_ducky3 macro si, yi, yf, xi, xf, id
    push ax
    push dx
    push cx

    mov ah, 0ch
    mov dx, yi
    y_104id:
    mov cx, xi
    x_104id:
    mov al, 03h
    int 10h
    inc bp
    inc cx
    cmp cx, xf
    jb x_104id
    inc dx
    cmp dx, yf
    jb y_104id

    pop cx
    pop dx
    pop ax
endm







;---------------------------------------------------------- GAME MECHANICS ----------------------------------------
playGame:
	
	Level1: 
        mov score, 0
        mov lives, 3
		mov currentLevel, '1'
        jmp resumeGame
    Level2: 
        mov score, 0
        mov lives, 2
		mov currentLevel, '2'
        jmp resumeGame
    Level3:
        mov score, 0
		mov currentLevel, '3'
        mov lives, 1
	
	resumeGame:
		; Set VGA graphics mode 13h (320x200, 256 colors)
		mov ax, 0013h
		int 10h
		
		mov si, OFFSET background
		draw_background si,0,192,0,320
		; draw initial cursor
		call draw_cursor
		gameLoop:	
				; Erase the old position of the duck
				mov si, offset ducky
				erase_ducky si, [d_up], [d_down], [d_left], [d_right]

				; Update the duck's position
				cmp d_right, 335
				jge reset
				cmp d_down, 125
				jge reset
				inc d_right 
				inc d_left
				jmp continue
				
				reset:
					mov ax, d_x1
					mov [d_left], ax

					mov ax, d_x2
					mov [d_right], ax
					
					mov ax, d_y1
					mov [d_up], ax
					
					mov ax, d_y2
					mov [d_down], ax
				
				continue:
				
				mov si, offset ducky
				draw_ducky si, [d_up], [d_down], [d_left], [d_right]
				call score_bar
				; Delay for visibility
				call delay

				


				; Check if a key has been pressed without waiting
				mov ah, 01h
				int 16h
				jz update_screen      ; If no key pressed, jump to update screen without input handling

				; Handle keyboard inputs for cursor movement
				call handle_input     ; Call a separate procedure to handle input


				update_screen:
								; Redraw cursor at the new position
								call draw_cursor

								;call delay
								; Loop back to start of game loop
								jmp gameLoop


				handle_input:
						; Get key press
						mov ah, 00h
						int 16h

						; Process input based on the key pressed
						cmp ah, 48h           ; Up arrow scan code
						je move_up
						cmp ah, 50h           ; Down arrow scan code
						je move_down
						cmp ah, 4Bh           ; Left arrow scan code
						je move_left
						cmp ah, 4Dh           ; Right arrow scan code
						je move_right
						cmp ah, 12h           ; 'E' key scan code for increasing speed
						je increase_speed
						cmp al, 13h           ; 'R' key scan code for decreasing speed
						je decrease_speed
						cmp ah, 01h           ; 'Esc' key scan code to pause
						je main_menu
						cmp ah, 39h			 ;  Space bar to shoot
						je shoot
						
						ret

						; Define movement routines for cursor
						move_left:
								call clear_cursor
								mov ax, [cursorPosX]
								sub ax, [moveSpeed]
								cmp ax, 10
								jb skip_cursor_update
								mov [cursorPosX], ax
								jmp skip_cursor_update

						move_right:
								call clear_cursor
								mov ax, [cursorPosX]
								add ax, [moveSpeed]
								cmp ax, 309
								ja skip_cursor_update
								mov [cursorPosX], ax
								jmp skip_cursor_update

						move_down:
								call clear_cursor
								mov ax, [cursorPosY]
								add ax, [moveSpeed]
								cmp ax, 125
								ja skip_cursor_update
								mov [cursorPosY], ax
								jmp skip_cursor_update

						move_up:
								call clear_cursor
								mov ax, [cursorPosY]
								sub ax, [moveSpeed]
								cmp ax, 10
								jb skip_cursor_update
								mov [cursorPosY], ax
								jmp skip_cursor_update
						
						decrease_speed:
								cmp word ptr [moveSpeed], 1
								je min_speed
								dec word ptr [moveSpeed]
								min_speed:
								jmp skip_cursor_update

						increase_speed:
								cmp word ptr [moveSpeed], 5
								je max_speed
								inc word ptr [moveSpeed]
								max_speed:
								jmp skip_cursor_update


						skip_cursor_update:
								;call draw_cursor
								ret
						
						
						shoot:
								call beep
						   ; Load the cursor positions into registers
								mov ax, [cursorPosX]
								mov bx, [cursorPosY]

								; Check if the cursor is horizontally within the duck bounds
								cmp ax, [d_left]
								jl NoHit  ; Jump if cursor is left of the duck
								mov ax, [cursorPosX]
								cmp ax, [d_right]
								jg NoHit ; Jump if cursor is right of the duck
								; Check if the cursor is vertically within the duck bounds
								cmp bx, [d_up]
								jl NoHit    ; Jump if cursor is above the duck
								mov bx, [cursorPosY]
								cmp bx, [d_down]
								jg NoHit    ; Jump if cursor is below the duck

								Hit:
									; Simulate the duck falling
									erase_ducky_fall si, [d_up], [d_down], [d_left], [d_right]
								
									.while (d_down <= 137)
										call draw_cursor	
										
										inc d_up		; Move duck down by incrementing its vertical start position	
										inc d_down		; Move duck down by incrementing its vertical end position
										
										mov si, offset ducky
										draw_ducky_fall si, [d_up], [d_down], [d_left], [d_right]
										
										; Delay to visualize the animation
										;call delay
										erase_ducky_fall2 si, [d_up], [d_down], [d_left], [d_right]
									.endw
											
							
									inc score

									; Move duck to new position
									mov ax, d_y1
									mov [d_up], ax

									mov ax, d_y2
									mov [d_down], ax

									mov ax, d_x1
									mov [d_left], ax

									mov ax, d_x2
									mov [d_right], ax
									
									ret
									;jmp skip_cursor_update

								NoHit:
							
									dec lives
									mov bx, lives
									.IF bx == 0
										jmp exit_game
									.endif
									ret

	Mode2:
	Mode_Level1:
        mov score, 0
        mov lives, 1
        jmp resumegame_mode2
    Mode_Level2: 
        mov score, 0
        mov lives,2
        jmp resumegame_mode2
    Mode_Level3: 
        mov score, 0
        mov lives,1

	
	resumegame_mode2:
		; Set VGA graphics mode 13h (320x200, 256 colors)
		mov ax, 0013h
		int 10h
		
		mov si, OFFSET background
		draw_background5 si,0,192,0,320
		; draw initial cursor
		call draw_cursor
		gameLoop_mode2:	
				; Erase the old position of the duck
				mov si, offset ducky
				erase_ducky2 si, [d_up], [d_down], [d_left], [d_right]
				mov si, offset ducky
				erase_ducky3 si,[d_up1], [d_down1], [d_left1], [d_right1]

				; Update the ducks position
				cmp d_right, 334
				jge reset_mode2
				cmp d_down, 124
				jge reset_mode2
				add d_right, 2
				add d_left, 2
			
				second_duck_check: 
					cmp d_right1, 333
					jge reset1_mode2
					cmp d_down1, 123
					jge reset1_mode2
					add d_right1, 3
					add d_left1, 3
					jmp continue_mode2
				
				reset_mode2:
					mov ax, d_x1
					mov [d_left], ax

					mov ax, d_x2
					mov [d_right], ax
					
					mov ax, d_y1
					mov [d_up], ax
					
					mov ax, d_y2
					mov [d_down], ax

					jmp second_duck_check
				reset1_mode2 :
					mov ax, d_x01
					mov [d_left1], ax

					mov ax, d_x02
					mov [d_right1], ax
					
					mov ax, d_y01
					mov [d_up1], ax
					
					mov ax, d_y02
					mov [d_down1], ax
				
				continue_mode2:
				; Draw the duck at the new position
				mov si, offset ducky
				mov di, offset ducky2
				draw_ducky1 si, [d_up], [d_down], [d_left], [d_right]
				draw_ducky2 di, [d_up1], [d_down1],[d_left1], [d_right1]
				call score_bar
				; Delay for visibility
				call delay

				; Check if a key has been pressed without waiting
				mov ah, 01h
				int 16h
				jz update_screen_mode2      ; If no key pressed, jump to update screen without input handling

				; Handle keyboard inputs for cursor movement
				call handle_input_mode2     ; Call a separate procedure to handle input


				update_screen_mode2:
								; Redraw cursor at the new position
								call draw_cursor

								;call delay
								; Loop back to start of game loop
								jmp gameLoop_mode2


				handle_input_mode2:
						; Get key press
						mov ah, 00h
						int 16h

						; Process input based on the key pressed
						cmp ah, 48h           ; Up arrow scan code
						je move_up_mode2
						cmp ah, 50h           ; Down arrow scan code
						je move_down_mode2
						cmp ah, 4Bh           ; Left arrow scan code
						je move_left_mode2
						cmp ah, 4Dh           ; Right arrow scan code
						je move_right_mode2
						cmp ah, 12h           ; 'E' key scan code for increasing speed
						je increase_speed_mode2
						cmp al, 13h           ; 'R' key scan code for decreasing speed
						je decrease_speed_mode2
						cmp ah, 01h           ; 'Esc' key scan code to pause
						je main_menu
						cmp ah, 39h			 ;  Space bar to shoot
						je shoot_mode2
						
						ret

						; Define movement routines for cursor
						move_left_mode2:
								call clear_cursor
								mov ax, [cursorPosX]
								sub ax, [moveSpeed_mode2]
								cmp ax, 10
								jb skip_cursor_update_mode2
								mov [cursorPosX], ax
								jmp skip_cursor_update_mode2

						move_right_mode2:
								call clear_cursor
								mov ax, [cursorPosX]
								add ax, [moveSpeed_mode2]
								cmp ax, 309
								ja skip_cursor_update_mode2
								mov [cursorPosX], ax
								jmp skip_cursor_update_mode2

						move_down_mode2:
								call clear_cursor
								mov ax, [cursorPosY]
								add ax, [moveSpeed_mode2]
								cmp ax, 125
								ja skip_cursor_update_mode2
								mov [cursorPosY], ax
								jmp skip_cursor_update_mode2

						move_up_mode2:
								call clear_cursor
								mov ax, [cursorPosY]
								sub ax, [moveSpeed_mode2]
								cmp ax, 10
								jb skip_cursor_update
								mov [cursorPosY], ax
								jmp skip_cursor_update_mode2
						
						decrease_speed_mode2:
								cmp word ptr [moveSpeed_mode2], 1
								je min_speed_mode2
								dec word ptr [moveSpeed_mode2]
								min_speed_mode2:
								jmp skip_cursor_update_mode2

						increase_speed_mode2:
								cmp word ptr [moveSpeed_mode2], 5
								je max_speed_mode2
								inc word ptr [moveSpeed_mode2]
								max_speed_mode2:
								jmp skip_cursor_update_mode2


						skip_cursor_update_mode2:
								;call draw_cursor
								ret
						
						
						shoot_mode2:
								call beep
						   ; Load the cursor positions into registers
								mov ax, [cursorPosX]
								mov bx, [cursorPosY]

								; Check if the cursor is horizontally within the duck bounds
								cmp ax, [d_left]
								jl shot_missed_d1  ; Jump if cursor is left of the duck
								mov ax, [cursorPosX]
								cmp ax, [d_right]
								jg shot_missed_d1 ; Jump if cursor is right of the duck
								; Check if the cursor is vertically within the duck bounds
								cmp bx, [d_up]
								jl shot_missed_d1    ; Jump if cursor is above the duck
								mov bx, [cursorPosY]
								cmp bx, [d_down]
								jg shot_missed_d1    ; Jump if cursor is below the duck

								Hit_mode2:
									; Simulate the duck falling
									erase_ducky_fall3 si, [d_up], [d_down], [d_left], [d_right]
								
									.while (d_down <= 137)
										call draw_cursor	
										
										inc d_up		; Move duck down by incrementing its vertical start position	
										inc d_down		; Move duck down by incrementing its vertical end position
										
										; redraw the duck here at new position to show falling animation
										mov si, offset ducky
										draw_ducky_fall1 si, [d_up], [d_down], [d_left], [d_right]
										
										; Delay to visualize the animation
										;call delay
										erase_ducky_fall4 si, [d_up], [d_down], [d_left], [d_right]
									.endw
											
							
									inc score

									; Move duck to new position
									mov ax, d_y1
									mov [d_up], ax

									mov ax, d_y2
									mov [d_down], ax

									mov ax, d_x1
									mov [d_left], ax

									mov ax, d_x2
									mov [d_right], ax
									
									ret
									;jmp skip_cursor_update

								shot_missed_d1:
									; Load the cursor positions into registers
									mov ax, [cursorPosX]
									mov bx, [cursorPosY]
									; Check if the cursor is horizontally within the duck bounds
									cmp ax, [d_left1]
									jl shot_missed_both_ducks  ; Jump if cursor is left of the duck
									mov ax, [cursorPosX]
									cmp ax, [d_right1]
									jg shot_missed_both_ducks ; Jump if cursor is right of the duck
									; Check if the cursor is vertically within the duck bounds
									cmp bx, [d_up1]
									jl shot_missed_both_ducks    ; Jump if cursor is above the duck
									mov bx, [cursorPosY]
									cmp bx, [d_down1]
									jg shot_missed_both_ducks    ; Jump if cursor is below the duck
								
								Hit_mode3:
									; Simulate the duck falling
									erase_ducky_fall5 si, [d_up1], [d_down1], [d_left1], [d_right1]
								
									.while (d_down1 <= 137)
										call draw_cursor	
										
										inc d_up1		; Move duck down by incrementing its vertical start position	
										inc d_down1		; Move duck down by incrementing its vertical end position
										
										; redraw the duck here at new position to show falling animation
										mov si, offset ducky
										draw_ducky_fall2 si, [d_up1], [d_down1], [d_left1], [d_right1]
										
										; Delay to visualize the animation
										;call delay
										erase_ducky_fall6 si, [d_up1], [d_down1], [d_left1], [d_right1]
									.endw
											
							
									inc score

									; Move duck to new position
									mov ax, d_y01
									mov [d_up1], ax

									mov ax, d_y02
									mov [d_down1], ax

									mov ax, d_x01
									mov [d_left1], ax

									mov ax, d_x02
									mov [d_right1], ax
									
									ret
								
								
								shot_missed_both_ducks:
									dec lives
									mov bx, lives
									.IF bx == 0
										jmp exit_game
									.endif
									ret	

							

		exit_game:
			call exit_menu
			call read_high_score
			call write_file
	
;------------------------------------------------------------- GAME MECHANICS END -------------------------------------------------------------

mov ah, 4ch
int 21h
main endp





;------------------------------- ENTER USERNAME ----------------------------
username_input proc

  ;--- video mode (graphic) 
	mov ah, 0
	mov al, 13h    ;320x200
	int 10h	

  ;--- set background black
	mov ax, 0
	mov ah, 0Bh
	mov bh, 00
	mov bl, 00
	int 10h	
	
	; priting game icon
	mov si, offset logo;draw 
	draw_logo si,8,40,190,222

	set_cursor 3, 11	; prints "duck shooter game"
	mymessage str8

	;--- user name input ---
	set_cursor 6, 11
	mymessage str9
	set_cursor 8, 11
	mov dx, offset names
	mov ah, 3fh
	int 21h
	;-----------------------
ret
username_input endp


score_bar proc

	;--- scorebar ---
	draw_box 0, 2, 0, 50, 0
	;----------------

	;--- Score Display ---
	set_cursor 1, 15
	mymessage str1
	set_cursor 1, 21
	mov ax, score
	call myoutput
	;---------------------

	;--- lives ---
	set_cursor 1, 1
	mov al, 3   			      ; ASCII code of Character (Heart)
	mov bx,0
	mov bl,4   				      ; color
	mov cx,	lives     ; repetition count
	mov ah,09h
	int 10h
	;-------------

	;--- Display Name ---
	set_cursor 0, 30
	mymessage names
	;--------------------

	;--- Display level ---
	;set_cursor 2, 30
	;mymessage display_level
	;--------------------

ret
score_bar endp


;-------------------------------------------- DRAW CURSOR ---------------------------------
draw_cursor proc
    push ax
    push bx
    push cx
    push dx

    mov ax, videoSeg
    mov es, ax

    ; Calculate video memory offset for cursor position
    mov ax, cursorPosY
    mov cx, 320                ; Line width in pixels
    mul cx
    add ax, cursorPosX
    mov bx, ax

    ; Set color
    mov al, 04h                ; Red color

    ; Draw center dot
    mov es:[bx], al

    ; Draw vertical line
    sub bx, 320*10              ; Move up 10 pixels
    mov cx, 20                 ; Draw 20 pixels line up and down
draw_vertical_line:
    mov es:[bx], al
    add bx, 320
    loop draw_vertical_line

    ; Draw horizontal line
    sub bx, 320*10              ; Back to center vertically
    sub bx, 10                  ; Move left 10 pixels
    mov cx, 20                 ; Draw 20 pixels line left and right
draw_horizontal_line:
    mov es:[bx], al
    inc bx
    loop draw_horizontal_line

    pop dx
    pop cx
    pop bx
    pop ax
    ret
draw_cursor endp



;---------------------------------------- CLEAR CURSOR -----------------------------------------
clear_cursor proc
    push ax
    push bx
    push cx
    push dx

    mov ax, videoSeg
    mov es, ax

    ; Calculate video memory offset for cursor position
    mov ax, cursorPosY
    mov cx, 320                ; Line width in pixels
    mul cx
    add ax, cursorPosX
    mov bx, ax

    ; Set color
    mov al, 03h                ; background color

    ; Clear center dot
    mov es:[bx], al

    ; Clear vertical line
    sub bx, 320*10              ; Move up 10 pixels
    mov cx, 20                 ; Clear 20 pixels line up and down
clear_vertical_line:
    mov es:[bx], al
    add bx, 320
    loop clear_vertical_line

    ; Clear horizontal line
    sub bx, 320*10              ; Back to center vertically
    sub bx, 10                  ; Move left 10 pixels
    mov cx, 20                 ; Clear 20 pixels line left and right
clear_horizontal_line:
    mov es:[bx], al
    inc bx
    loop clear_horizontal_line

    pop dx
    pop cx
    pop bx
    pop ax
    ret
clear_cursor endp


;---------------------------- DELAY -------------------

delay proc
    mov cx, 0ffffffh
delay_loop:
    loop delay_loop
    ret
delay endp


;--------------------------- BEEP SOUND ----------------------
beep proc

	push ax
	push cx
	push dx
	push bx
	push sp
	push bp
	push si
	push di

	mov al, 182
	out 43h, al
	mov ax, 4560

	out 42h, al
	mov al, ah
	out 42h, al
	in al, 61h

	or al, 00000011b
	out 61h, al
	mov bx, 10

	pause1:
		mov cx, 3000
	pause2:
	dec cx
	jne pause2
	dec bx
	jne pause1
	in al, 61h

	and al,11111100b
	out 61h, al

	pop di
	pop si
	pop bp
	pop sp
	pop bx
	pop dx
	pop cx
	pop ax
ret
beep endp



;------------------------------------------------- EXIT MENU ------------------------------------------
exit_menu proc
	;--- video mode (graphic) 
	mov ah, 0
	mov al, 13h    ;320x200
	int 10h	

	;--- set background black ---
	mov ax, 0
	mov ah, 0Bh
	mov bh, 00
	mov bl, 00
	int 10h	

	;--- Game Over message ---
	set_cursor 10, 15
	mymessage str2
	
	;--- Score display --=
		set_cursor 13, 16
		mymessage str1
		mov ax, score
		call myoutput 
	;---------------------
ret
exit_menu endp
;------------------- Read_High score ----------------------------------------------------

read_high_score proc
    ; Open the file
    mov ah, 3Dh
    lea dx, fname
    mov al, 0 ; Read-only mode
    int 21h
    jc file_error
    mov bx, ax

    ; Read the file content
    mov ah, 3Fh
    lea dx, inputBuffer
    mov cx, 128 ; Read up to 128 bytes
    int 21h
    jc file_error

    ; Close the file
    mov ah, 3Eh
    mov bx, ax
    int 21h

    ; Parse the file content (assuming format is $score$ level name)
    lea si, inputBuffer
    call parse_high_score
    ret

file_error:
    ; Handle file error
    ret
read_high_score endp
;----------------------------------------parsing high score --------------------------------

parse_high_score proc
    ; Skip the '$' character
    inc si

    ; Read the score
    xor cx, cx
parse_score:
    lodsb
    cmp al, '$'
    je parse_level
    sub al, '0'
    mov ah, 0
    shl cx, 1
    shl cx, 1
    shl cx, 1
    add cx, ax
    jmp parse_score
parse_level:
    mov highScore, cx

    ; Read the level
    xor cx, cx
    lodsb
    sub al, '0'
    mov ah, 0
    mov cx, ax
    lodsb
    sub al, '0'
    mov ah, 0
    shl cx, 1
    shl cx, 1
    shl cx, 1
    add cx, ax
    mov highLevel, cx

    ; Read the name
    lea di, highName
    mov cx, 10
parse_name:
    lodsb
    stosb
    loop parse_name
    ret
parse_high_score endp

;-------------------------------------------------FILE WRITING AND READING -------------------------------------
write_file proc


    mov ax, score
    cmp ax, highScore
    jle skip_write


  ;--- open an existing file ---
    mov ah, 3dh
    mov dx, offset fname
    mov al, 2
    int 21h
    mov fhandle, ax
	
  ;--- set cursor to the end of the file ---
    mov ah, 42h
    mov bx, fhandle
    mov cx, 0
    mov dx, 0
    mov al, 2
    int 21h
	
	;--- write score ---
    call integerToString
    mov si, offset string_scores
    call string_size
    mov ah, 40h
    mov bx, fhandle
    mov dx, offset string_scores
    int 21h

	mov ah, 40h
    mov bx, fhandle
    mov dx, offset space
    mov cx, 1
    int 21h

  ;--- write level ---
	call integerToString
    mov si, offset currentLevel
    mov ah, 40h
	mov cx, 1
	mov bx, fhandle
	mov dx, offset currentLevel
	int 21h

	mov ah, 40h
    mov bx, fhandle
    mov dx, offset space
    mov cx, 1
    int 21h
	
	  ;--- write name ---
    mov si, offset names
    call string_size
    mov ah, 40h
    mov bx, fhandle
    mov dx, offset names
    int 21h
	
  ;--- close a file ---
    mov ah, 3eh
    mov bx, fhandle
    int 21h

skip_write:
    ret
write_file endp

read_file proc
  ;open an existing file
    mov ah, 3dh
    mov dx, offset fname
    mov al, 2
    int 21h
    mov fhandle, ax

  ; read file
    mov ah, 3fh
    mov dx, offset string_highscores
    mov cx, 100
    mov bx, fhandle
    int 21h 
	
	mov si, offset string_highscores
	mov di, si
	mov cx, 100
	output_chunk:
		mov ah, 2
		mov al, [si]
		cmp al, '$'
		je skip
		
		mov dl, [si]
		int 21h
		skip:
			inc si	
		loop output_chunk

  ; output string
    ;mov dx, offset string_highscores
    ;mov ah, 09h
    ;int 21h

  ; close a file
    mov ah, 3eh
    mov bx, fhandle
    int 21h
ret
read_file endp



integerToString proc
	mov si, offset string_scores
	mov ax, score
	mov dx, 0
	mov bx, 10
	L1:
		mov dx, 0
		cmp ax, 0
		je DISP
		div bx
		mov cx, dx
		push cx
		inc output_counter
		mov ah, 0
	jmp L1

DISP:
	cmp output_counter, 0
	je EXIT
	pop dx
	add dx, 48
	mov [si], dl
	inc si
	dec output_counter
jmp DISP

EXIT:
ret
integerToString endp







;--------------------------------- OUTPUT ------------------------------------
myoutput proc

OUTPUT:
	;MOV AX, enteredNumber ; before calling make sure to mov the number in ax or al register depending on the type
	mov dx, 0
	mov bx, 10
	L1:
		mov dx, 0
		cmp ax, 0
		je DISP
		div bx
		mov cx, dx
		push cx
		inc output_counter
		mov ah, 0
	jmp L1

DISP:
	cmp output_counter, 0
	je EXIT
	pop dx
	add dx, 48
	mov ah, 02h
	int 21h
	dec output_counter
jmp DISP

EXIT:
;---Output End---

ret
myoutput endp


string_size proc
  ;mov si, offset msg
  mov cx, 0 
  mov ax, 0
  
  name_count: 
  inc cx
  mov al, [si]
  cmp ax, "$" 
  je skip_count 
  inc si
  jmp  name_count
  skip_count:
  mov ax, 0
ret
string_size endp


end