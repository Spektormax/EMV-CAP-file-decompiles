/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  javacard.framework.Applet
 *  javacard.framework.ISO7816
 *  javacard.framework.ISOException
 *  javacard.framework.Util
 */
import javacard.framework.Applet;
import javacard.framework.ISO7816;
import javacard.framework.ISOException;
import javacard.framework.Util;

public class class0
extends Applet {
    public static byte[] static_apdu_bytes_of5;
    public byte[] apdu_bytes_of5;
    public byte[] field1;
    public byte[] field2;
    public byte[] field3;
    public short field4;
    public short field5;
    public byte totalMessages;
    public short aidLength;
    public byte field8;

    void init() { //install
        this();
        apdu_bytes_of5 = new byte[256];
        inBuffer = new byte[6000];
        aidBuffer = new byte[20];
        this.field3 = new byte[6000];
        this.register();
        payloadLength = 0;
        this.field5 = 0;
        this.totalMessages = 0;
    }

    void Method1(byte[] byArray) {
    }

    void Method2(byte[] byArray, short s, byte by) {
        class0 class02;
        class02.init();
    }

    void process(ISO7816 iSO7816) {
        byte[] apdu_buffer = iSO7816.getBuffer();
        short bytes_recived = iSO7816.setIncomingAndReceive(); //s
        short len_apdu_bytes_of5 = 0;
        short s3 = 0;
        apdu_bytes_of5[0] = 0;
        apdu_bytes_of5[1] = 0;
        apdu_bytes_of5[2] = 0;
        apdu_bytes_of5[3] = 0;
        apdu_bytes_of5[4] = 0;
        apdu_bytes_of5[5] = 0;
        apdu_bytes_of5[6] = 0;
        apdu_bytes_of5[7] = 0;
        byte by = byArray[0];
        byte by2 = byArray[1];
        byte by3 = byArray[2];
        byte by4 = byArray[3];
        byte[] byArray2 = new byte[2];
        s3 = 0;
        this.totalMessages = (byte)(this.totalMessages + 1);
        boolean bl = false;
        while (bytes_recived > 0) {
            Util.arrayCopyNonAtomic((byte[])apdu_buffer, (short)5, (byte[])apdu_bytes_of5, (short)len_apdu_bytes_of5, (short)bytes_recived);
            len_apdu_bytes_of5 += bytes_recived;
            bytes_recived = iSO7816.receiveBytes((short)5);
        }
        if (by == 0 && by2 == 0xA4 && by3 == 4 && by4 == 0) {
            if (apdu_bytes_of5[0] == 0x31 && apdu_bytes_of5[1] == 0x50 && apdu_bytes_of5[2] == 0x41 && apdu_bytes_of5[3] == 0x59) {
                this.totalMessages = 0;
            }
            Util.arrayCopyNonAtomic((byte[])apdu_bytes_of5, (short)0, (byte[])aidBuffer, (short)0, (short)len_apdu_bytes_of5);
            aidLength = len_apdu_bytes_of5;
        }
        if (by == 0 && by2 == 0xA4 && by3 == 1 && by4 == 1) {
            payloandLength = 0;
            statusOk = true;
        } else if (by == 0 && by2 == 0xA4 && by3 == 1 && by4 == 2) {
            if (apdu_bytes_of5[1] == 0 && apdu_bytes_of5[2] == 0xa4 && apdu_bytes_of5[3] == 4 && apdu_bytes_of5[4] == 0) {
                aidLength = apdu_bytes_of5[5];
                Util.arrayCopyNonAtomic((byte[])apdu_bytes_of5, (short)6, (byte[])aidBuffer, (short)0, (short)this.field5);
                Util.arrayCopyNonAtomic((byte[])apdu_bytes_of5, (short)0, (byte[])inBuffer, (short)payloadLength, (short)len_apdu_bytes_of5);
            } else {
                inBuffer[payloadLength] = (byte)(this.field5 + 1);
                payloandLength = (byte)(payloadLength + 1);
                Util.arrayCopyNonAtomic((byte[])aidBuffer, (short)0, (byte[])inBuffer, (short)payloadLength, (short)this.field5);
                payloandLength = (byte)(payloadLength + this.field5);
                Util.arrayCopyNonAtomic((byte[])apdu_bytes_of5, (short)0, (byte[])inBuffer, (short)payloadLength, (short)len_apdu_bytes_of5);
            }
            payloandLength = (byte)(payloadLength + len_apdu_bytes_of5);
            statusOk = true;
        } else if (by == 0 && by2 == 0xA4 && by3 == 1 && by4 == 3) {
            byArray2 = new byte[payloadLength];
            Util.arrayCopyNonAtomic((byte[])inBuffer, (short)0, (byte[])byArray2, (short)0, (short)payloadLength);
            s3 = payloadLength;
        } else if (by == 0 && by2 == 0xA4  && by3 == 1 && by4 == 4) {
            byte by5 = apdu_bytes_of5[0];
            int n = by5 * 255;
            if (aidLength > n) {
                s3 = aidLength > n + 255 ? (short)255 : aidLength - by5 * 255;
                byArray2 = new byte[s3];
                Util.arrayCopyNonAtomic((byte[])this.field3, (short)(by5 * 255), (byte[])byArray2, (short)0, (short)s3);
            } else {
                statusOk = true;
            }
        } else if (by == 0 && by2 == 0xA4 && by3 == 1 && by4 == 5) {
            statusOk = true;
            payloadLength = 0;
            this.totalMessages = 0;
        } else if (by == 0 && by2 == 0xA4 && by3 == 1 && by4 == 6) {
            statusOk = true;
            this.field5 = apdu_bytes_of5[0];
        } else if (by == 0 && by2 == 0xA4 && by3 == 1 && by4 == 7) {
            s3 = 2;
            byArray2 = new byte[]{1, 0};
        } else {
            int n = 0;
            while (n < payloadLength) {
                int n2;
                int n3;
                boolean bl2 = true;
                if (by != 0 || by2 != 0xA4 || by3 != 4 || by4 != 0) {
                    n3 = 0;
                    while (n3 < this.field5) {
                        if (aidBuffer[n3] != inBuffer[n + n3 + 1]) {
                            bl2 = false;
                        }
                        ++n3;
                    }
                    if (bl2) {
                        n2 = inBuffer[n];
                        if (n2 < 0) {
                            n2 = n2 + 255 + 1;
                        }
                        n += n2;
                    }
                }
                if (bl2) {
                    if (by == inBuffer[n + 1] && by2 == inBuffer[n + 2] && by3 == inBuffer[n + 3] && by4 == inBuffer[n + 4]) {
                        short s4;
                        n2 = inBuffer[n + 5];
                        if (n2 < 0) {
                            n2 = n2 + 255 + 1;
                        }
                        if (n2 > 0) {
                            bl2 = true;
                            n3 = 0;
                            while (n3 < n2) {
                                if (apdu_bytes_of5[n3] != inBuffer[n + 6 + n3]) {
                                    bl2 = false;
                                    n3 = n2;
                                }
                                ++n3;
                            }
                            if (bl2) {
                                s4 = inBuffer[n + 5 + 1 + n2];
                                if (s4 < 0) {
                                    s4 = s4 + 255 + 1;
                                }
                                byArray2 = new byte[s4];
                                s3 = s4;
                                Util.arrayCopyNonAtomic((byte[])inBuffer, (short)(n + 5 + 1 + n2 + 1), (byte[])byArray2, (short)0, (short)s4);
                                n += payloadLength;
                            }
                        } else {
                            s4 = inBuffer[n + 5 + 1];
                            if (s4 < 0) {
                                s4 = s4 + 255 + 1;
                            }
                            s3 = s4;
                            byArray2 = new byte[s4];
                            Util.arrayCopyNonAtomic((byte[])inBuffer, (short)(n + 7), (byte[])byArray2, (short)0, (short)s4);
                            n += payloadLength;
                        }
                        if ((n2 = inBuffer[n]) < 0) {
                            n2 = n2 + 255 + 1;
                        }
                        n += n2;
                        continue;
                    }
                    n2 = inBuffer[n];
                    if (n2 < 0) {
                        n2 = n2 + 255 + 1;
                    }
                    n += n2;
                    continue;
                }
                n2 = inBuffer[n];
                if (n2 < 0) {
                    n2 = n2 + 255 + 1;
                }
                n += n2;
            }
        }
        if (statusOk) {
            s3 = 3;
            byArray2 = new byte[]{0x4f, 0x68, 0x21};
        } else if (payloandLength == 1 && aidLength + len_apdu_bytes_of5 < 6000) {
            short s5 = aidLength;
            payloadLength = (short)(s5 + 1);
            this.field3[s5] = this.totalMessages;
            short s6 = aidLength;
            payloadLength = (short)(s6 + 1);
            this.field3[s6] = by;
            short s7 = aidLength;
            payloadLength = (short)(s7 + 1);
            this.field3[s7] = by2;
            short s8 = aidLength;
            payloadLength = (short)(s8 + 1);
            this.field3[s8] = by3;
            short s9 = aidLength;
            payloadLength = (short)(s9 + 1);
            this.field3[s9] = by4;
            short s10 = aidLength;
            payloadLength = (short)(s10 + 1);
            this.field3[s10] = (byte)len_apdu_bytes_of5;
            Util.arrayCopyNonAtomic((byte[])apdu_bytes_of5, (short)0, (byte[])this.field3, (short)aidLength, (short)len_apdu_bytes_of5);
            payloadLength = (short)(aidLength + len_apdu_bytes_of5);
        }
        if (s3 == 2) {
            if (byArray2[0] == 0x6A) {
                ISOException.throwIt((short)(byArray2[0] * 256 + byArray2[1] + 256));
            } else if (byArray2[0] == 0x6C) {
                ISOException.throwIt((short)(byArray2[0] * 256 + byArray2[1] + 256));
            } else {
                if (byArray2[0] == 0x90) {
                    return;
                }
                iSO7816.setOutgoing();
                iSO7816.setOutgoingLength(s3);
                iSO7816.sendBytesLong(byArray2, (short)0, s3);
            }
        } else if (s3 == 0) {
            ISOException.throwIt((short)27266);
        } else {
            iSO7816.setOutgoing();
            iSO7816.setOutgoingLength(s3);
            iSO7816.sendBytesLong(byArray2, (short)0, s3);
        }
    }
}


------------------
Line number table:

Method2(byte[] short byte )
----------
Line 45	: 3

Method0()
----------
Line 29	: 0
Line 30	: 4
Line 31	: 13
Line 32	: 22
Line 33	: 30
Line 34	: 39
Line 35	: 43
Line 36	: 48
Line 37	: 53

Method3(javacard.framework.ISO7816 )
----------
Line 49	: 0
Line 50	: 5
Line 51	: 11
Line 52	: 14
Line 53	: 17
Line 54	: 24
Line 55	: 31
Line 56	: 38
Line 57	: 45
Line 58	: 52
Line 59	: 59
Line 60	: 67
Line 61	: 75
Line 62	: 80
Line 63	: 85
Line 64	: 90
Line 65	: 95
Line 66	: 99
Line 67	: 102
Line 68	: 113
Line 70	: 119
Line 71	: 133
Line 72	: 140
Line 69	: 147
Line 74	: 152
Line 75	: 176
Line 76	: 220
Line 78	: 225
Line 79	: 241
Line 81	: 247
Line 82	: 272
Line 83	: 277
Line 84	: 285
Line 85	: 310
Line 86	: 350
Line 87	: 360
Line 88	: 379
Line 90	: 401
Line 91	: 417
Line 92	: 427
Line 93	: 448
Line 94	: 461
Line 96	: 480
Line 97	: 491
Line 98	: 499
Line 99	: 524
Line 100	: 531
Line 101	: 546
Line 102	: 557
Line 103	: 583
Line 104	: 595
Line 105	: 598
Line 106	: 607
Line 107	: 641
Line 108	: 646
Line 110	: 669
Line 112	: 677
Line 113	: 702
Line 114	: 705
Line 115	: 710
Line 116	: 720
Line 117	: 746
Line 118	: 749
Line 119	: 764
Line 120	: 790
Line 121	: 793
Line 123	: 810
Line 127	: 818
Line 128	: 821
Line 129	: 845
Line 131	: 851
Line 132	: 873
Line 134	: 876
Line 130	: 882
Line 136	: 891
Line 137	: 898
Line 138	: 906
Line 139	: 911
Line 141	: 921
Line 144	: 928
Line 145	: 934
Line 147	: 991
Line 148	: 1001
Line 149	: 1006
Line 151	: 1016
Line 152	: 1021
Line 153	: 1024
Line 155	: 1030
Line 156	: 1053
Line 157	: 1056
Line 159	: 1060
Line 154	: 1066
Line 161	: 1073
Line 162	: 1080
Line 163	: 1095
Line 164	: 1100
Line 166	: 1110
Line 167	: 1115
Line 168	: 1119
Line 169	: 1142
Line 172	: 1155
Line 173	: 1167
Line 174	: 1172
Line 176	: 1182
Line 177	: 1186
Line 178	: 1191
Line 179	: 1208
Line 181	: 1217
Line 182	: 1231
Line 184	: 1241
Line 185	: 1248
Line 187	: 1252
Line 188	: 1260
Line 189	: 1265
Line 191	: 1275
Line 192	: 1282
Line 194	: 1286
Line 195	: 1294
Line 196	: 1299
Line 198	: 1309
Line 124	: 1316
Line 201	: 1325
Line 202	: 1331
Line 203	: 1334
Line 204	: 1358
Line 207	: 1379
Line 205	: 1383
Line 206	: 1388
Line 207	: 1394
Line 210	: 1399
Line 208	: 1403
Line 209	: 1408
Line 210	: 1414
Line 213	: 1417
Line 211	: 1421
Line 212	: 1426
Line 213	: 1432
Line 216	: 1435
Line 214	: 1439
Line 215	: 1444
Line 216	: 1450
Line 219	: 1453
Line 217	: 1457
Line 218	: 1462
Line 219	: 1468
Line 222	: 1471
Line 220	: 1475
Line 221	: 1480
Line 222	: 1486
Line 223	: 1490
Line 224	: 1509
Line 226	: 1520
Line 227	: 1526
Line 228	: 1534
Line 229	: 1555
Line 230	: 1563
Line 232	: 1584
Line 233	: 1593
Line 235	: 1594
Line 236	: 1599
Line 237	: 1605
Line 239	: 1616
Line 240	: 1621
Line 242	: 1630
Line 243	: 1635
Line 244	: 1641