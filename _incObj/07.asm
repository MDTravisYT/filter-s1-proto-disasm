; ---------------------------------------------------------------------------

Obj07:
		moveq	#0,d0
		move.b	act(a0),d0
		move.w	off_4E42(pc,d0.w),d1
		jmp	off_4E42(pc,d1.w)
; ---------------------------------------------------------------------------

off_4E42:	dc.w loc_4E4A-off_4E42, locret_4E4E-off_4E42, loc_4E50-off_4E42, loc_4E50-off_4E42
; ---------------------------------------------------------------------------

loc_4E4A:
		addq.b	#2,act(a0)

locret_4E4E:
		rts
; ---------------------------------------------------------------------------

loc_4E50:
		bsr.w	DeleteObject
		rts