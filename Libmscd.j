.class public Libmscd
.super javacard/framework/Applet

.field private ATR [byte
.field PSYS [B
.field AID [B
.field AIDTmp [B
.field rtSelect [B
.field rtGetPo [B
.field rtRdFlM1 [B
.field numIdRcM1 [B
.field rtRdFlM2 [B
.field numIdRcM2 [B
.field rtRdFlM3 [B
.field numIdRcM3 [B
.field rtRdFl1 [B
.field numIdRc1 [B
.field rtRdFl2 [B
.field numIdRc2 [B
.field rtRdFl3 [B
.field numIdRc3 [B
.field rtRdFl4 [B
.field numIdRc4 [B
.field rtRdFl5 [B
.field numIdRc5 [B
.field rtRdFl6 [B
.field numIdRc6 [B
.field rtRdFl7 [B
.field numIdRc7 [B
.field rtRdFl8 [B
.field numIdRc8 [B
.field rtRdFl9 [B
.field numIdRc9 [B
.field rtRdFl10 [B
.field numIdRc10 [B
.field rtRdFl11 [B
.field numIdRc11 [B
.field rtRdFl12 [B
.field numIdRc12 [B
.field rtRdFl13 [B
.field numIdRc13 [B
.field rtRdFl14 [B
.field numIdRc14 [B
.field rtRdFl15 [B
.field numIdRc15 [B
.field rtPinTryCnt [B
.field rtArqc [B
.field rtTc [B
.field rtAac [B
.field rtRdFl88 [B
.field totalRecords S
.field totalRecordsMaster S
.field bytesRead S
.field totalLogs S
.field valorTrTmp [B
.field numIdRcTc1 [B
.field valorTrUm [B
.field numIdRcTc2 [B
.field valorTrDois [B
.field numIdRcTc3 [B
.field valorTrTres [B
.field numIdRcTc4 [B
.field valorTrQuatro [B
.field numIdRcTc5 [B
.field valorTrCinco [B
.field appSelecionado Z
.field firstArqcGerado Z

.method <init>()V
	aload_0
	invokespecial javacard/framework/Applet/<init>()V
	aload_0
	sconst_0
	putfield Libmscd/ATR [byte;
	return
.end method

.method install([BSB)V
	new main/Libmscd
	dup
	invokespecial <init>()V
	aload_0
	sload_1
	sconst_1
	sadd
	aload_0
	sload_1
	baload
	invokevirtual javacard/framework/Applet/$register$([BSB)V([BSB)V
	returnn

.method process(Ljavacard/framework/APDU;)V
	aload_1
	invokevirtual javacard/framework/APDU/getBuffer()[B
	astore_2
	aload_1
	invokevirtual javacard/framework/APDU/setIncomingAndReceive()S
	putstatic_s 55
	aload_0
	invokevirtual javacard/framework/Applet/selectingApplet()Z
	ifeq 37
	aload_0
	sconst_0
	putfield main/Libmscd/ATR [B
	getstatic_a 25
	ifnull 27
	aload_1
	invokevirtual javacard/framework/APDU/setOutgoing()S
	pop
	aload_1
	getstatic_a 25
	arraylength
	invokevirtual javacard/framework/APDU/setOutgoingLength(S)V
	aload_1
	getstatic_a 25
	sconst_0
	getstatic_a 25
	arraylength
	invokevirtual javacard/framework/APDU/sendBytesLong([BSS)V
	returnn
	aload_2
	sconst_0
	baload
	slookupswitch 775 3 (65408, 323) (65454, 412) (0, 17)
	aload_2
	sconst_1
	baload
	slookupswitch 294 8 (65410, 256) (65416, 257) (65444, 38) (65458, 202) (65482, 288) (1, 211) (17, 37) (32, 210)
	returnn
	aload_2
	sconst_2
	baload
	sspush 255
	sand
	sconst_1
	if_scmpne 10
	aload_0
	aload_1
	invokespecial instalaInf(Ljavacard/framework/APDU;)V
	goto_w 708
	aload_2
	sconst_2
	baload
	sspush 255
	sand
	sconst_4
	if_scmpne_w 697
	getstatic_a 74
	ifnonnull 9
	sspush 27266
	invokestatic javacard/framework/ISOException/throwIt(S)V
	returnn
	getstatic_s 55
	newarray 11
	putstatic_a 64
	aload_2
	sconst_5
	getstatic_a 64
	sconst_0
	getstatic_s 55
	invokestatic javacard/framework/Util/arrayCopyNonAtomic([BS[BSS)S
	pop
	getstatic_a 74
	arraylength
	getstatic_a 64
	arraylength
	if_scmpeq 9
	sspush 27266
	invokestatic javacard/framework/ISOException/throwIt(S)V
	returnn
	sconst_1
	sstore_3
	sconst_0
	sstore 4
	goto 25
	getstatic_a 74
	sload 4
	baload
	getstatic_a 64
	sload 4
	baload
	if_scmpeq 4
	sconst_0
	sstore_3
	sload 4
	sconst_1
	sadd
	s2b
	sstore 4
	sload 4
	getstatic_a 74
	arraylength
	if_scmplt 227
	getstatic_a 74
	ifnull 37
	sload_3
	ifeq 34
	aload_0
	sconst_1
	putfield main/Libmscd/ATR [B
	aload_1
	invokevirtual javacard/framework/APDU/setOutgoing()S
	pop
	aload_1
	getstatic_a 65
	arraylength
	invokevirtual javacard/framework/APDU/setOutgoingLength(S)V
	aload_1
	getstatic_a 65
	sconst_0
	getstatic_a 65
	arraylength
	invokevirtual javacard/framework/APDU/sendBytesLong([BSS)V
	goto_w 569
	sspush 27266
	invokestatic javacard/framework/ISOException/throwIt(S)V
	returnn
	aload_0
	aload_1
	invokespecial readRecord(Ljavacard/framework/APDU;)V
	goto_w 554
	returnn
	getstatic_s 55
	newarray 11
	putstatic_a 52
	aload_2
	sconst_5
	getstatic_a 52
	sconst_0
	getstatic_s 55
	invokestatic javacard/framework/Util/arrayCopyNonAtomic([BS[BSS)S
	pop
	getstatic_a 52
	sconst_0
	getstatic_a 52
	arraylength
	s2b
	invokestatic org/globalplatform/GPSystem/setATRHistBytes([BSB)Z
	ifeq 3
	returnn
	sspush 25088
	invokestatic javacard/framework/ISOException/throwIt(S)V
	goto_w 508
	returnn
	getstatic_a 34
	ifnull 27
	aload_1
	invokevirtual javacard/framework/APDU/setOutgoing()S
	pop
	aload_1
	getstatic_a 34
	arraylength
	invokevirtual javacard/framework/APDU/setOutgoingLength(S)V
	aload_1
	getstatic_a 34
	sconst_0
	getstatic_a 34
	arraylength
	invokevirtual javacard/framework/APDU/sendBytesLong([BSS)V
	returnn
	sspush 26624
	invokestatic javacard/framework/ISOException/throwIt(S)V
	sspush 27904
	invokestatic javacard/framework/ISOException/throwIt(S)V
	goto_w 461
	aload_2
	sconst_1
	baload
	slookupswitch 86 2 (65448, 13) (65482, 61)
	aload_2
	sconst_2
	baload
	ifne 7
	aload_2
	sconst_3
	baload
	ifeq 8
	sspush 27392
	invokestatic javacard/framework/ISOException/throwIt(S)V
	getstatic_a 13
	ifnull 54
	aload_1
	invokevirtual javacard/framework/APDU/setOutgoing()S
	pop
	aload_1
	getstatic_a 13
	arraylength
	invokevirtual javacard/framework/APDU/setOutgoingLength(S)V
	aload_1
	getstatic_a 13
	sconst_0
	getstatic_a 13
	arraylength
	invokevirtual javacard/framework/APDU/sendBytesLong([BSS)V
	goto 27
	aload_1
	invokevirtual javacard/framework/APDU/setOutgoing()S
	pop
	aload_1
	getstatic_a 36
	arraylength
	invokevirtual javacard/framework/APDU/setOutgoingLength(S)V
	aload_1
	getstatic_a 36
	sconst_0
	getstatic_a 36
	arraylength
	invokevirtual javacard/framework/APDU/sendBytesLong([BSS)V
	aload_2
	sconst_2
	baload
	bspush 128
	if_scmpne 52
	bspush 6
	newarray 11
	putstatic_a 54
	aload_2
	bspush 6
	getstatic_a 54
	sconst_0
	bspush 6
	invokestatic javacard/framework/Util/arrayCopyNonAtomic([BS[BSS)S
	pop
	getstatic_a 28
	ifnull 27
	aload_1
	invokevirtual javacard/framework/APDU/setOutgoing()S
	pop
	aload_1
	getstatic_a 28
	arraylength
	invokevirtual javacard/framework/APDU/setOutgoingLength(S)V
	aload_1
	getstatic_a 28
	sconst_0
	getstatic_a 28
	arraylength
	invokevirtual javacard/framework/APDU/sendBytesLong([BSS)V
	aload_2
	sconst_2
	baload
	bspush 64
	if_scmpne_w 257
	sconst_1
	sstore_3
	getstatic_a 21
	ifnonnull 40
	getstatic_a 30
	sconst_0
	sconst_5
	bastore
	getstatic_a 30
	sconst_1
	sconst_1
	bastore
	bspush 6
	newarray 11
	putstatic_a 21
	getstatic_a 54
	sconst_0
	getstatic_a 21
	sconst_0
	bspush 6
	invokestatic javacard/framework/Util/arrayCopyNonAtomic([BS[BSS)S
	pop
	sconst_0
	sstore_3
	goto_w 182
	sload_3
	ifeq 45
	getstatic_a 40
	ifnonnull 40
	getstatic_a 3
	sconst_0
	sconst_5
	bastore
	getstatic_a 3
	sconst_1
	sconst_2
	bastore
	bspush 6
	newarray 11
	putstatic_a 40
	getstatic_a 54
	sconst_0
	getstatic_a 40
	sconst_0
	bspush 6
	invokestatic javacard/framework/Util/arrayCopyNonAtomic([BS[BSS)S
	pop
	sconst_0
	sstore_3
	goto_w 136
	sload_3
	ifeq 44
	getstatic_a 67
	ifnonnull 39
	getstatic_a 16
	sconst_0
	sconst_5
	bastore
	getstatic_a 16
	sconst_1
	sconst_3
	bastore
	bspush 6
	newarray 11
	putstatic_a 67
	getstatic_a 54
	sconst_0
	getstatic_a 67
	sconst_0
	bspush 6
	invokestatic javacard/framework/Util/arrayCopyNonAtomic([BS[BSS)S
	pop
	sconst_0
	sstore_3
	goto 90
	sload_3
	ifeq 44
	getstatic_a 7
	ifnonnull 39
	getstatic_a 19
	sconst_0
	sconst_5
	bastore
	getstatic_a 19
	sconst_1
	sconst_4
	bastore
	bspush 6
	newarray 11
	putstatic_a 7
	getstatic_a 54
	sconst_0
	getstatic_a 7
	sconst_0
	bspush 6
	invokestatic javacard/framework/Util/arrayCopyNonAtomic([BS[BSS)S
	pop
	sconst_0
	sstore_3
	goto 45
	sload_3
	ifeq 42
	getstatic_a 5
	ifnonnull 37
	getstatic_a 50
	sconst_0
	sconst_5
	bastore
	getstatic_a 50
	sconst_1
	sconst_5
	bastore
	bspush 6
	newarray 11
	putstatic_a 5
	getstatic_a 54
	sconst_0
	getstatic_a 5
	sconst_0
	bspush 6
	invokestatic javacard/framework/Util/arrayCopyNonAtomic([BS[BSS)S
	pop
	sconst_0
	sstore_3
	getstatic_a 51
	ifnull 27
	aload_1
	invokevirtual javacard/framework/APDU/setOutgoing()S
	pop
	aload_1
	getstatic_a 51
	arraylength
	invokevirtual javacard/framework/APDU/setOutgoingLength(S)V
	aload_1
	getstatic_a 51
	sconst_0
	getstatic_a 51
	arraylength
	invokevirtual javacard/framework/APDU/sendBytesLong([BSS)V
	aload_2
	sconst_2
	baload
	ifne 47
	getstatic_a 24
	ifnull 42
	bspush 6
	newarray 11
	putstatic_a 54
	aload_1
	invokevirtual javacard/framework/APDU/setOutgoing()S
	pop
	aload_1
	getstatic_a 24
	arraylength
	invokevirtual javacard/framework/APDU/setOutgoingLength(S)V
	aload_1
	getstatic_a 24
	sconst_0
	getstatic_a 24
	arraylength
	invokevirtual javacard/framework/APDU/sendBytesLong([BSS)V
	goto 8
	sspush 27904
	invokestatic javacard/framework/ISOException/throwIt(S)V
	returnn

.method readRecord(Ljavacard/framework/APDU;)V
	aload_1
	invokevirtual javacard/framework/APDU/getBuffer()[B
	astore_2
	getfield_b_this 0
	ifne_w 187
	aload_2
	sconst_2
	baload
	getstatic_a 12
	sconst_0
	baload
	if_scmpne 51
	aload_2
	sconst_3
	baload
	getstatic_a 12
	sconst_1
	baload
	if_scmpne 41
	getstatic_a 68
	ifnonnull 10
	sspush 27267
	invokestatic javacard/framework/ISOException/throwIt(S)V
	goto 27
	aload_1
	invokevirtual javacard/framework/APDU/setOutgoing()S
	pop
	aload_1
	getstatic_a 68
	arraylength
	invokevirtual javacard/framework/APDU/setOutgoingLength(S)V
	aload_1
	getstatic_a 68
	sconst_0
	getstatic_a 68
	arraylength
	invokevirtual javacard/framework/APDU/sendBytesLong([BSS)V
	returnn
	aload_2
	sconst_2
	baload
	getstatic_a 17
	sconst_0
	baload
	if_scmpne 51
	aload_2
	sconst_3
	baload
	getstatic_a 17
	sconst_1
	baload
	if_scmpne 41
	getstatic_a 56
	ifnonnull 10
	sspush 27267
	invokestatic javacard/framework/ISOException/throwIt(S)V
	goto 27
	aload_1
	invokevirtual javacard/framework/APDU/setOutgoing()S
	pop
	aload_1
	getstatic_a 56
	arraylength
	invokevirtual javacard/framework/APDU/setOutgoingLength(S)V
	aload_1
	getstatic_a 56
	sconst_0
	getstatic_a 56
	arraylength
	invokevirtual javacard/framework/APDU/sendBytesLong([BSS)V
	returnn
	aload_2
	sconst_2
	baload
	getstatic_a 18
	sconst_0
	baload
	if_scmpne 51
	aload_2
	sconst_3
	baload
	getstatic_a 18
	sconst_1
	baload
	if_scmpne 41
	getstatic_a 62
	ifnonnull 10
	sspush 27267
	invokestatic javacard/framework/ISOException/throwIt(S)V
	goto 27
	aload_1
	invokevirtual javacard/framework/APDU/setOutgoing()S
	pop
	aload_1
	getstatic_a 62
	arraylength
	invokevirtual javacard/framework/APDU/setOutgoingLength(S)V
	aload_1
	getstatic_a 62
	sconst_0
	getstatic_a 62
	arraylength
	invokevirtual javacard/framework/APDU/sendBytesLong([BSS)V
	returnn
	sspush 27267
	invokestatic javacard/framework/ISOException/throwIt(S)V
	returnn
	aload_2
	sconst_2
	baload
	getstatic_a 10
	sconst_0
	baload
	if_scmpne 51
	aload_2
	sconst_3
	baload
	getstatic_a 10
	sconst_1
	baload
	if_scmpne 41
	getstatic_a 45
	ifnull 29
	aload_1
	invokevirtual javacard/framework/APDU/setOutgoing()S
	pop
	aload_1
	getstatic_a 45
	arraylength
	invokevirtual javacard/framework/APDU/setOutgoingLength(S)V
	aload_1
	getstatic_a 45
	sconst_0
	getstatic_a 45
	arraylength
	invokevirtual javacard/framework/APDU/sendBytesLong([BSS)V
	goto 8
	sspush 27267
	invokestatic javacard/framework/ISOException/throwIt(S)V
	returnn
	aload_2
	sconst_2
	baload
	getstatic_a 22
	sconst_0
	baload
	if_scmpne 51
	aload_2
	sconst_3
	baload
	getstatic_a 22
	sconst_1
	baload
	if_scmpne 41
	getstatic_a 27
	ifnull 29
	aload_1
	invokevirtual javacard/framework/APDU/setOutgoing()S
	pop
	aload_1
	getstatic_a 27
	arraylength
	invokevirtual javacard/framework/APDU/setOutgoingLength(S)V
	aload_1
	getstatic_a 27
	sconst_0
	getstatic_a 27
	arraylength
	invokevirtual javacard/framework/APDU/sendBytesLong([BSS)V
	goto 8
	sspush 27267
	invokestatic javacard/framework/ISOException/throwIt(S)V
	returnn
	aload_2
	sconst_2
	baload
	getstatic_a 15
	sconst_0
	baload
	if_scmpne 51
	aload_2
	sconst_3
	baload
	getstatic_a 15
	sconst_1
	baload
	if_scmpne 41
	getstatic_a 58
	ifnull 29
	aload_1
	invokevirtual javacard/framework/APDU/setOutgoing()S
	pop
	aload_1
	getstatic_a 58
	arraylength
	invokevirtual javacard/framework/APDU/setOutgoingLength(S)V
	aload_1
	getstatic_a 58
	sconst_0
	getstatic_a 58
	arraylength
	invokevirtual javacard/framework/APDU/sendBytesLong([BSS)V
	goto 8
	sspush 27267
	invokestatic javacard/framework/ISOException/throwIt(S)V
	returnn
	aload_2
	sconst_2
	baload
	getstatic_a 33
	sconst_0
	baload
	if_scmpne 51
	aload_2
	sconst_3
	baload
	getstatic_a 33
	sconst_1
	baload
	if_scmpne 41
	getstatic_a 26
	ifnull 29
	aload_1
	invokevirtual javacard/framework/APDU/setOutgoing()S
	pop
	aload_1
	getstatic_a 26
	arraylength
	invokevirtual javacard/framework/APDU/setOutgoingLength(S)V
	aload_1
	getstatic_a 26
	sconst_0
	getstatic_a 26
	arraylength
	invokevirtual javacard/framework/APDU/sendBytesLong([BSS)V
	goto 8
	sspush 27267
	invokestatic javacard/framework/ISOException/throwIt(S)V
	returnn
	aload_2
	sconst_2
	baload
	getstatic_a 72
	sconst_0
	baload
	if_scmpne 51
	aload_2
	sconst_3
	baload
	getstatic_a 72
	sconst_1
	baload
	if_scmpne 41
	getstatic_a 53
	ifnull 29
	aload_1
	invokevirtual javacard/framework/APDU/setOutgoing()S
	pop
	aload_1
	getstatic_a 53
	arraylength
	invokevirtual javacard/framework/APDU/setOutgoingLength(S)V
	aload_1
	getstatic_a 53
	sconst_0
	getstatic_a 53
	arraylength
	invokevirtual javacard/framework/APDU/sendBytesLong([BSS)V
	goto 8
	sspush 27267
	invokestatic javacard/framework/ISOException/throwIt(S)V
	returnn
	aload_2
	sconst_2
	baload
	getstatic_a 11
	sconst_0
	baload
	if_scmpne 51
	aload_2
	sconst_3
	baload
	getstatic_a 11
	sconst_1
	baload
	if_scmpne 41
	getstatic_a 2
	ifnull 29
	aload_1
	invokevirtual javacard/framework/APDU/setOutgoing()S
	pop
	aload_1
	getstatic_a 2
	arraylength
	invokevirtual javacard/framework/APDU/setOutgoingLength(S)V
	aload_1
	getstatic_a 2
	sconst_0
	getstatic_a 2
	arraylength
	invokevirtual javacard/framework/APDU/sendBytesLong([BSS)V
	goto 8
	sspush 27267
	invokestatic javacard/framework/ISOException/throwIt(S)V
	returnn
	aload_2
	sconst_2
	baload
	getstatic_a 57
	sconst_0
	baload
	if_scmpne 51
	aload_2
	sconst_3
	baload
	getstatic_a 57
	sconst_1
	baload
	if_scmpne 41
	getstatic_a 6
	ifnull 29
	aload_1
	invokevirtual javacard/framework/APDU/setOutgoing()S
	pop
	aload_1
	getstatic_a 6
	arraylength
	invokevirtual javacard/framework/APDU/setOutgoingLength(S)V
	aload_1
	getstatic_a 6
	sconst_0
	getstatic_a 6
	arraylength
	invokevirtual javacard/framework/APDU/sendBytesLong([BSS)V
	goto 8
	sspush 27267
	invokestatic javacard/framework/ISOException/throwIt(S)V
	returnn
	aload_2
	sconst_2
	baload
	getstatic_a 4
	sconst_0
	baload
	if_scmpne 51
	aload_2
	sconst_3
	baload
	getstatic_a 4
	sconst_1
	baload
	if_scmpne 41
	getstatic_a 44
	ifnull 29
	aload_1
	invokevirtual javacard/framework/APDU/setOutgoing()S
	pop
	aload_1
	getstatic_a 44
	arraylength
	invokevirtual javacard/framework/APDU/setOutgoingLength(S)V
	aload_1
	getstatic_a 44
	sconst_0
	getstatic_a 44
	arraylength
	invokevirtual javacard/framework/APDU/sendBytesLong([BSS)V
	goto 8
	sspush 27267
	invokestatic javacard/framework/ISOException/throwIt(S)V
	returnn
	aload_2
	sconst_2
	baload
	getstatic_a 38
	sconst_0
	baload
	if_scmpne 51
	aload_2
	sconst_3
	baload
	getstatic_a 38
	sconst_1
	baload
	if_scmpne 41
	getstatic_a 35
	ifnull 29
	aload_1
	invokevirtual javacard/framework/APDU/setOutgoing()S
	pop
	aload_1
	getstatic_a 35
	arraylength
	invokevirtual javacard/framework/APDU/setOutgoingLength(S)V
	aload_1
	getstatic_a 35
	sconst_0
	getstatic_a 35
	arraylength
	invokevirtual javacard/framework/APDU/sendBytesLong([BSS)V
	goto 8
	sspush 27267
	invokestatic javacard/framework/ISOException/throwIt(S)V
	returnn
	aload_2
	sconst_2
	baload
	getstatic_a 30
	sconst_0
	baload
	if_scmpne 51
	aload_2
	sconst_3
	baload
	getstatic_a 30
	sconst_1
	baload
	if_scmpne 41
	getstatic_a 21
	ifnull 29
	aload_1
	invokevirtual javacard/framework/APDU/setOutgoing()S
	pop
	aload_1
	getstatic_a 21
	arraylength
	invokevirtual javacard/framework/APDU/setOutgoingLength(S)V
	aload_1
	getstatic_a 21
	sconst_0
	getstatic_a 21
	arraylength
	invokevirtual javacard/framework/APDU/sendBytesLong([BSS)V
	goto 8
	sspush 27267
	invokestatic javacard/framework/ISOException/throwIt(S)V
	returnn
	aload_2
	sconst_2
	baload
	getstatic_a 3
	sconst_0
	baload
	if_scmpne 51
	aload_2
	sconst_3
	baload
	getstatic_a 3
	sconst_1
	baload
	if_scmpne 41
	getstatic_a 40
	ifnull 29
	aload_1
	invokevirtual javacard/framework/APDU/setOutgoing()S
	pop
	aload_1
	getstatic_a 40
	arraylength
	invokevirtual javacard/framework/APDU/setOutgoingLength(S)V
	aload_1
	getstatic_a 40
	sconst_0
	getstatic_a 40
	arraylength
	invokevirtual javacard/framework/APDU/sendBytesLong([BSS)V
	goto 8
	sspush 27267
	invokestatic javacard/framework/ISOException/throwIt(S)V
	returnn
	aload_2
	sconst_2
	baload
	getstatic_a 16
	sconst_0
	baload
	if_scmpne 51
	aload_2
	sconst_3
	baload
	getstatic_a 16
	sconst_1
	baload
	if_scmpne 41
	getstatic_a 67
	ifnull 29
	aload_1
	invokevirtual javacard/framework/APDU/setOutgoing()S
	pop
	aload_1
	getstatic_a 67
	arraylength
	invokevirtual javacard/framework/APDU/setOutgoingLength(S)V
	aload_1
	getstatic_a 67
	sconst_0
	getstatic_a 67
	arraylength
	invokevirtual javacard/framework/APDU/sendBytesLong([BSS)V
	goto 8
	sspush 27267
	invokestatic javacard/framework/ISOException/throwIt(S)V
	returnn
	aload_2
	sconst_2
	baload
	getstatic_a 19
	sconst_0
	baload
	if_scmpne 51
	aload_2
	sconst_3
	baload
	getstatic_a 19
	sconst_1
	baload
	if_scmpne 41
	getstatic_a 7
	ifnull 29
	aload_1
	invokevirtual javacard/framework/APDU/setOutgoing()S
	pop
	aload_1
	getstatic_a 7
	arraylength
	invokevirtual javacard/framework/APDU/setOutgoingLength(S)V
	aload_1
	getstatic_a 7
	sconst_0
	getstatic_a 7
	arraylength
	invokevirtual javacard/framework/APDU/sendBytesLong([BSS)V
	goto 8
	sspush 27267
	invokestatic javacard/framework/ISOException/throwIt(S)V
	returnn
	aload_2
	sconst_2
	baload
	getstatic_a 50
	sconst_0
	baload
	if_scmpne 51
	aload_2
	sconst_3
	baload
	getstatic_a 50
	sconst_1
	baload
	if_scmpne 41
	getstatic_a 5
	ifnull 29
	aload_1
	invokevirtual javacard/framework/APDU/setOutgoing()S
	pop
	aload_1
	getstatic_a 5
	arraylength
	invokevirtual javacard/framework/APDU/setOutgoingLength(S)V
	aload_1
	getstatic_a 5
	sconst_0
	getstatic_a 5
	arraylength
	invokevirtual javacard/framework/APDU/sendBytesLong([BSS)V
	goto 8
	sspush 27267
	invokestatic javacard/framework/ISOException/throwIt(S)V
	returnn
	aload_2
	sconst_2
	baload
	bspush 7
	if_scmpne 9
	aload_2
	sconst_3
	baload
	sconst_1
	if_scmpne 3
	returnn
	sspush 27267
	invokestatic javacard/framework/ISOException/throwIt(S)V
	returnn

.method instalaInf(Ljavacard/framework/APDU;)V
	aload_1
	invokevirtual javacard/framework/APDU/getBuffer()[B
	astore_2
	aload_2
	sconst_2
	baload
	sspush 255
	sand
	sconst_1
	if_scmpne 37
	aload_2
	sconst_3
	baload
	sspush 255
	sand
	ifne 28
	aload_0
	invokespecial clean()V
	getstatic_s 55
	newarray 11
	putstatic_a 74
	aload_2
	sconst_5
	getstatic_a 74
	sconst_0
	getstatic_s 55
	invokestatic javacard/framework/Util/arrayCopyNonAtomic([BS[BSS)S
	pop
	returnn
	aload_2
	sconst_2
	baload
	sspush 255
	sand
	sconst_1
	if_scmpne 34
	aload_2
	sconst_3
	baload
	sspush 255
	sand
	sconst_1
	if_scmpne 24
	getstatic_s 55
	newarray 11
	putstatic_a 65
	aload_2
	sconst_5
	getstatic_a 65
	sconst_0
	getstatic_s 55
	invokestatic javacard/framework/Util/arrayCopyNonAtomic([BS[BSS)S
	pop
	returnn
	aload_2
	sconst_2
	baload
	sspush 255
	sand
	sconst_1
	if_scmpne 34
	aload_2
	sconst_3
	baload
	sspush 255
	sand
	sconst_2
	if_scmpne 24
	getstatic_s 55
	newarray 11
	putstatic_a 13
	aload_2
	sconst_5
	getstatic_a 13
	sconst_0
	getstatic_s 55
	invokestatic javacard/framework/Util/arrayCopyNonAtomic([BS[BSS)S
	pop
	returnn
	aload_2
	sconst_2
	baload
	sspush 255
	sand
	sconst_1
	if_scmpne_w 892
	aload_2
	sconst_3
	baload
	sspush 255
	sand
	sconst_3
	if_scmpne_w 881
	getstatic_s 43
	ifne 54
	getstatic_a 10
	sconst_0
	aload_2
	sconst_5
	baload
	bastore
	getstatic_a 10
	sconst_1
	aload_2
	bspush 6
	baload
	bastore
	getstatic_s 55
	sconst_2
	ssub
	newarray 11
	putstatic_a 45
	aload_2
	bspush 7
	getstatic_a 45
	sconst_0
	getstatic_s 55
	sconst_2
	ssub
	invokestatic javacard/framework/Util/arrayCopyNonAtomic([BS[BSS)S
	pop
	getstatic_s 43
	sconst_1
	sadd
	putstatic_s 43
	returnn
	getstatic_s 43
	sconst_1
	if_scmpne 54
	getstatic_a 22
	sconst_0
	aload_2
	sconst_5
	baload
	bastore
	getstatic_a 22
	sconst_1
	aload_2
	bspush 6
	baload
	bastore
	getstatic_s 55
	sconst_2
	ssub
	newarray 11
	putstatic_a 27
	aload_2
	bspush 7
	getstatic_a 27
	sconst_0
	getstatic_s 55
	sconst_2
	ssub
	invokestatic javacard/framework/Util/arrayCopyNonAtomic([BS[BSS)S
	pop
	getstatic_s 43
	sconst_1
	sadd
	putstatic_s 43
	returnn
	getstatic_s 43
	sconst_2
	if_scmpne 54
	getstatic_a 15
	sconst_0
	aload_2
	sconst_5
	baload
	bastore
	getstatic_a 15
	sconst_1
	aload_2
	bspush 6
	baload
	bastore
	getstatic_s 55
	sconst_2
	ssub
	newarray 11
	putstatic_a 58
	aload_2
	bspush 7
	getstatic_a 58
	sconst_0
	getstatic_s 55
	sconst_2
	ssub
	invokestatic javacard/framework/Util/arrayCopyNonAtomic([BS[BSS)S
	pop
	getstatic_s 43
	sconst_1
	sadd
	putstatic_s 43
	returnn
	getstatic_s 43
	sconst_3
	if_scmpne 54
	getstatic_a 33
	sconst_0
	aload_2
	sconst_5
	baload
	bastore
	getstatic_a 33
	sconst_1
	aload_2
	bspush 6
	baload
	bastore
	getstatic_s 55
	sconst_2
	ssub
	newarray 11
	putstatic_a 26
	aload_2
	bspush 7
	getstatic_a 26
	sconst_0
	getstatic_s 55
	sconst_2
	ssub
	invokestatic javacard/framework/Util/arrayCopyNonAtomic([BS[BSS)S
	pop
	getstatic_s 43
	sconst_1
	sadd
	putstatic_s 43
	returnn
	getstatic_s 43
	sconst_4
	if_scmpne 54
	getstatic_a 72
	sconst_0
	aload_2
	sconst_5
	baload
	bastore
	getstatic_a 72
	sconst_1
	aload_2
	bspush 6
	baload
	bastore
	getstatic_s 55
	sconst_2
	ssub
	newarray 11
	putstatic_a 53
	aload_2
	bspush 7
	getstatic_a 53
	sconst_0
	getstatic_s 55
	sconst_2
	ssub
	invokestatic javacard/framework/Util/arrayCopyNonAtomic([BS[BSS)S
	pop
	getstatic_s 43
	sconst_1
	sadd
	putstatic_s 43
	returnn
	getstatic_s 43
	sconst_5
	if_scmpne 54
	getstatic_a 11
	sconst_0
	aload_2
	sconst_5
	baload
	bastore
	getstatic_a 11
	sconst_1
	aload_2
	bspush 6
	baload
	bastore
	getstatic_s 55
	sconst_2
	ssub
	newarray 11
	putstatic_a 2
	aload_2
	bspush 7
	getstatic_a 2
	sconst_0
	getstatic_s 55
	sconst_2
	ssub
	invokestatic javacard/framework/Util/arrayCopyNonAtomic([BS[BSS)S
	pop
	getstatic_s 43
	sconst_1
	sadd
	putstatic_s 43
	returnn
	getstatic_s 43
	bspush 6
	if_scmpne 54
	getstatic_a 57
	sconst_0
	aload_2
	sconst_5
	baload
	bastore
	getstatic_a 57
	sconst_1
	aload_2
	bspush 6
	baload
	bastore
	getstatic_s 55
	sconst_2
	ssub
	newarray 11
	putstatic_a 6
	aload_2
	bspush 7
	getstatic_a 6
	sconst_0
	getstatic_s 55
	sconst_2
	ssub
	invokestatic javacard/framework/Util/arrayCopyNonAtomic([BS[BSS)S
	pop
	getstatic_s 43
	sconst_1
	sadd
	putstatic_s 43
	returnn
	getstatic_s 43
	bspush 7
	if_scmpne 54
	getstatic_a 4
	sconst_0
	aload_2
	sconst_5
	baload
	bastore
	getstatic_a 4
	sconst_1
	aload_2
	bspush 6
	baload
	bastore
	getstatic_s 55
	sconst_2
	ssub
	newarray 11
	putstatic_a 44
	aload_2
	bspush 7
	getstatic_a 44
	sconst_0
	getstatic_s 55
	sconst_2
	ssub
	invokestatic javacard/framework/Util/arrayCopyNonAtomic([BS[BSS)S
	pop
	getstatic_s 43
	sconst_1
	sadd
	putstatic_s 43
	returnn
	getstatic_s 43
	bspush 8
	if_scmpne 54
	getstatic_a 38
	sconst_0
	aload_2
	sconst_5
	baload
	bastore
	getstatic_a 38
	sconst_1
	aload_2
	bspush 6
	baload
	bastore
	getstatic_s 55
	sconst_2
	ssub
	newarray 11
	putstatic_a 35
	aload_2
	bspush 7
	getstatic_a 35
	sconst_0
	getstatic_s 55
	sconst_2
	ssub
	invokestatic javacard/framework/Util/arrayCopyNonAtomic([BS[BSS)S
	pop
	getstatic_s 43
	sconst_1
	sadd
	putstatic_s 43
	returnn
	getstatic_s 43
	bspush 9
	if_scmpne 54
	getstatic_a 71
	sconst_0
	aload_2
	sconst_5
	baload
	bastore
	getstatic_a 71
	sconst_1
	aload_2
	bspush 6
	baload
	bastore
	getstatic_s 55
	sconst_2
	ssub
	newarray 11
	putstatic_a 66
	aload_2
	bspush 7
	getstatic_a 66
	sconst_0
	getstatic_s 55
	sconst_2
	ssub
	invokestatic javacard/framework/Util/arrayCopyNonAtomic([BS[BSS)S
	pop
	getstatic_s 43
	sconst_1
	sadd
	putstatic_s 43
	returnn
	getstatic_s 43
	bspush 10
	if_scmpne 54
	getstatic_a 37
	sconst_0
	aload_2
	sconst_5
	baload
	bastore
	getstatic_a 37
	sconst_1
	aload_2
	bspush 6
	baload
	bastore
	getstatic_s 55
	sconst_2
	ssub
	newarray 11
	putstatic_a 69
	aload_2
	bspush 7
	getstatic_a 69
	sconst_0
	getstatic_s 55
	sconst_2
	ssub
	invokestatic javacard/framework/Util/arrayCopyNonAtomic([BS[BSS)S
	pop
	getstatic_s 43
	sconst_1
	sadd
	putstatic_s 43
	returnn
	getstatic_s 43
	bspush 11
	if_scmpne 54
	getstatic_a 9
	sconst_0
	aload_2
	sconst_5
	baload
	bastore
	getstatic_a 9
	sconst_1
	aload_2
	bspush 6
	baload
	bastore
	getstatic_s 55
	sconst_2
	ssub
	newarray 11
	putstatic_a 46
	aload_2
	bspush 7
	getstatic_a 46
	sconst_0
	getstatic_s 55
	sconst_2
	ssub
	invokestatic javacard/framework/Util/arrayCopyNonAtomic([BS[BSS)S
	pop
	getstatic_s 43
	sconst_1
	sadd
	putstatic_s 43
	returnn
	getstatic_s 43
	bspush 12
	if_scmpne 54
	getstatic_a 8
	sconst_0
	aload_2
	sconst_5
	baload
	bastore
	getstatic_a 8
	sconst_1
	aload_2
	bspush 6
	baload
	bastore
	getstatic_s 55
	sconst_2
	ssub
	newarray 11
	putstatic_a 20
	aload_2
	bspush 7
	getstatic_a 20
	sconst_0
	getstatic_s 55
	sconst_2
	ssub
	invokestatic javacard/framework/Util/arrayCopyNonAtomic([BS[BSS)S
	pop
	getstatic_s 43
	sconst_1
	sadd
	putstatic_s 43
	returnn
	getstatic_s 43
	bspush 13
	if_scmpne 54
	getstatic_a 29
	sconst_0
	aload_2
	sconst_5
	baload
	bastore
	getstatic_a 29
	sconst_1
	aload_2
	bspush 6
	baload
	bastore
	getstatic_s 55
	sconst_2
	ssub
	newarray 11
	putstatic_a 77
	aload_2
	bspush 7
	getstatic_a 77
	sconst_0
	getstatic_s 55
	sconst_2
	ssub
	invokestatic javacard/framework/Util/arrayCopyNonAtomic([BS[BSS)S
	pop
	getstatic_s 43
	sconst_1
	sadd
	putstatic_s 43
	returnn
	getstatic_s 43
	bspush 14
	if_scmpne 54
	getstatic_a 60
	sconst_0
	aload_2
	sconst_5
	baload
	bastore
	getstatic_a 60
	sconst_1
	aload_2
	bspush 6
	baload
	bastore
	getstatic_s 55
	sconst_2
	ssub
	newarray 11
	putstatic_a 14
	aload_2
	bspush 7
	getstatic_a 14
	sconst_0
	getstatic_s 55
	sconst_2
	ssub
	invokestatic javacard/framework/Util/arrayCopyNonAtomic([BS[BSS)S
	pop
	getstatic_s 43
	sconst_1
	sadd
	putstatic_s 43
	returnn
	aload_2
	sconst_2
	baload
	sspush 255
	sand
	sconst_1
	if_scmpne 36
	aload_2
	sconst_3
	baload
	sspush 255
	sand
	sconst_4
	if_scmpne 26
	getstatic_s 55
	newarray 11
	putstatic_a 28
	aload_2
	sconst_5
	getstatic_a 28
	sconst_0
	getstatic_s 55
	sconst_2
	ssub
	invokestatic javacard/framework/Util/arrayCopyNonAtomic([BS[BSS)S
	pop
	returnn
	aload_2
	sconst_2
	baload
	sspush 255
	sand
	sconst_1
	if_scmpne 36
	aload_2
	sconst_3
	baload
	sspush 255
	sand
	sconst_5
	if_scmpne 26
	getstatic_s 55
	newarray 11
	putstatic_a 51
	aload_2
	sconst_5
	getstatic_a 51
	sconst_0
	getstatic_s 55
	sconst_2
	ssub
	invokestatic javacard/framework/Util/arrayCopyNonAtomic([BS[BSS)S
	pop
	returnn
	aload_2
	sconst_2
	baload
	sspush 255
	sand
	sconst_1
	if_scmpne 37
	aload_2
	sconst_3
	baload
	sspush 255
	sand
	bspush 6
	if_scmpne 26
	getstatic_s 55
	newarray 11
	putstatic_a 24
	aload_2
	sconst_5
	getstatic_a 24
	sconst_0
	getstatic_s 55
	sconst_2
	ssub
	invokestatic javacard/framework/Util/arrayCopyNonAtomic([BS[BSS)S
	pop
	returnn
	aload_2
	sconst_2
	baload
	sspush 255
	sand
	sconst_1
	if_scmpne 35
	aload_2
	sconst_3
	baload
	sspush 255
	sand
	bspush 7
	if_scmpne 24
	getstatic_s 55
	newarray 11
	putstatic_a 34
	aload_2
	sconst_5
	getstatic_a 34
	sconst_0
	getstatic_s 55
	invokestatic javacard/framework/Util/arrayCopyNonAtomic([BS[BSS)S
	pop
	returnn
	aload_2
	sconst_2
	baload
	sspush 255
	sand
	sconst_1
	if_scmpne 35
	aload_2
	sconst_3
	baload
	sspush 255
	sand
	bspush 8
	if_scmpne 24
	getstatic_s 55
	newarray 11
	putstatic_a 25
	aload_2
	sconst_5
	getstatic_a 25
	sconst_0
	getstatic_s 55
	invokestatic javacard/framework/Util/arrayCopyNonAtomic([BS[BSS)S
	pop
	returnn
	aload_2
	sconst_2
	baload
	sspush 255
	sand
	sconst_1
	if_scmpne_w 188
	aload_2
	sconst_3
	baload
	sspush 255
	sand
	bspush 9
	if_scmpne_w 176
	getstatic_s 31
	ifne 54
	getstatic_a 12
	sconst_0
	aload_2
	sconst_5
	baload
	bastore
	getstatic_a 12
	sconst_1
	aload_2
	bspush 6
	baload
	bastore
	getstatic_s 55
	sconst_2
	ssub
	newarray 11
	putstatic_a 68
	aload_2
	bspush 7
	getstatic_a 68
	sconst_0
	getstatic_s 55
	sconst_2
	ssub
	invokestatic javacard/framework/Util/arrayCopyNonAtomic([BS[BSS)S
	pop
	getstatic_s 31
	sconst_1
	sadd
	putstatic_s 31
	returnn
	getstatic_s 31
	sconst_1
	if_scmpne 54
	getstatic_a 17
	sconst_0
	aload_2
	sconst_5
	baload
	bastore
	getstatic_a 17
	sconst_1
	aload_2
	bspush 6
	baload
	bastore
	getstatic_s 55
	sconst_2
	ssub
	newarray 11
	putstatic_a 56
	aload_2
	bspush 7
	getstatic_a 56
	sconst_0
	getstatic_s 55
	sconst_2
	ssub
	invokestatic javacard/framework/Util/arrayCopyNonAtomic([BS[BSS)S
	pop
	getstatic_s 31
	sconst_1
	sadd
	putstatic_s 31
	returnn
	getstatic_s 31
	sconst_2
	if_scmpne 60
	getstatic_a 18
	sconst_0
	aload_2
	sconst_5
	baload
	bastore
	getstatic_a 18
	sconst_1
	aload_2
	bspush 6
	baload
	bastore
	getstatic_s 55
	sconst_2
	ssub
	newarray 11
	putstatic_a 62
	aload_2
	bspush 7
	getstatic_a 62
	sconst_0
	getstatic_s 55
	sconst_2
	ssub
	invokestatic javacard/framework/Util/arrayCopyNonAtomic([BS[BSS)S
	pop
	getstatic_s 31
	sconst_1
	sadd
	putstatic_s 31
	returnn
	sspush 27266
	invokestatic javacard/framework/ISOException/throwIt(S)V
	returnn

.method clean()V
	aconst_null
	putstatic_a 74
	aconst_null
	putstatic_a 64
	aconst_null
	putstatic_a 65
	aconst_null
	putstatic_a 13
	aconst_null
	putstatic_a 68
	sconst_2
	newarray 11
	putstatic_a 12
	aconst_null
	putstatic_a 56
	sconst_2
	newarray 11
	putstatic_a 17
	aconst_null
	putstatic_a 62
	sconst_2
	newarray 11
	putstatic_a 18
	aconst_null
	putstatic_a 45
	sconst_2
	newarray 11
	putstatic_a 10
	aconst_null
	putstatic_a 27
	sconst_2
	newarray 11
	putstatic_a 22
	aconst_null
	putstatic_a 58
	sconst_2
	newarray 11
	putstatic_a 15
	aconst_null
	putstatic_a 26
	sconst_2
	newarray 11
	putstatic_a 33
	aconst_null
	putstatic_a 53
	sconst_2
	newarray 11
	putstatic_a 72
	aconst_null
	putstatic_a 2
	sconst_2
	newarray 11
	putstatic_a 11
	aconst_null
	putstatic_a 6
	sconst_2
	newarray 11
	putstatic_a 57
	aconst_null
	putstatic_a 44
	sconst_2
	newarray 11
	putstatic_a 4
	aconst_null
	putstatic_a 35
	sconst_2
	newarray 11
	putstatic_a 38
	aconst_null
	putstatic_a 66
	sconst_2
	newarray 11
	putstatic_a 71
	aconst_null
	putstatic_a 69
	sconst_2
	newarray 11
	putstatic_a 37
	aconst_null
	putstatic_a 34
	aconst_null
	putstatic_a 28
	aconst_null
	putstatic_a 51
	aconst_null
	putstatic_a 24
	aconst_null
	putstatic_a 54
	aconst_null
	putstatic_a 21
	aconst_null
	putstatic_a 40
	aconst_null
	putstatic_a 67
	aconst_null
	putstatic_a 7
	aconst_null
	putstatic_a 5
	sconst_0
	putstatic_s 43
	sconst_0
	putstatic_s 31
	aconst_null
	putstatic_a 52
	aload_0
	sconst_0
	putfield main/Libmscd/ATR [B
	returnn
