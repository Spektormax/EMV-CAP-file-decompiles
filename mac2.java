/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  javacard.framework.APDU
 *  javacard.framework.Applet
 *  javacard.framework.ISOException
 *  javacard.framework.Util
 *  org.globalplatform.GPSystem
 */
package main;

import javacard.framework.APDU;
import javacard.framework.Applet;
import javacard.framework.ISOException;
import javacard.framework.Util;
import main.Tags;

import javax.swing.text.html.HTML.Tag;

import org.globalplatform.GPSystem;
public class Libmscd
extends Applet {
    public static byte[] ATR;
    public static byte[] PSYS;
    public static byte[] AID;
    public static byte[] AIDTmp;
    public static byte[] rtSelect;
    public static byte[] rtGetPo;
    public static byte[] rtRdFlM1;
    public static byte[] numIdRcM1;
    public static byte[] rtRdFlM2;
    public static byte[] numIdRcM2;
    public static byte[] rtRdFlM3;
    public static byte[] numIdRcM3;
    public static byte[] rtRdFl1;
    public static byte[] numIdRc1;
    public static byte[] rtRdFl2;
    public static byte[] numIdRc2;
    public static byte[] rtRdFl3;
    public static byte[] numIdRc3;
    public static byte[] rtRdFl4;
    public static byte[] numIdRc4;
    public static byte[] rtRdFl5;
    public static byte[] numIdRc5;
    public static byte[] rtRdFl6;
    public static byte[] numIdRc6;
    public static byte[] rtRdFl7;
    public static byte[] numIdRc7;
    public static byte[] rtRdFl8;
    public static byte[] numIdRc8;
    public static byte[] rtRdFl9;
    public static byte[] numIdRc9;
    public static byte[] rtRdFl10;
    public static byte[] numIdRc10;
    public static byte[] rtRdFl11;
    public static byte[] numIdRc11;
    public static byte[] rtRdFl12;
    public static byte[] numIdRc12;
    public static byte[] rtRdFl13;
    public static byte[] numIdRc13;
    public static byte[] rtRdFl14;
    public static byte[] numIdRc14;
    public static byte[] rtRdFl15;
    public static byte[] numIdRc15;
    public static byte[] rtPinTryCnt;
    public static byte[] rtArqc;
    public static byte[] rtTc;
    public static byte[] rtAac;
    public static byte[] rtRdFl88;
    public static short totalRecords;
    public static short totalRecordsMaster;
    public static short bytesRead;
    public static short totalLogs;
    public static byte[] valorTrTmp;
    public static byte[] numIdRcTc1;
    public static byte[] valorTrUm;
    public static byte[] numIdRcTc2;
    public static byte[] valorTrDois;
    public static byte[] numIdRcTc3;
    public static byte[] valorTrTres;
    public static byte[] numIdRcTc4;
    public static byte[] valorTrQuatro;
    public static byte[] numIdRcTc5;
    public static byte[] valorTrCinco;
    public boolean appSelecionado;
    public static boolean firstArqcGerado;

    Libmscd() {
        this.ATR = (byte[])false;
    }

    void install(byte[] byArray, short s, byte by) {
        new Libmscd().$register$((byte[])this, (short)(byArray + true), (byte)this[byArray]);
    }

    /*
     * Unable to fully structure code
     */
    void process(APDU var1_1) {
        block43: {
            var2_2 = var1_1.getBuffer();
            Libmscd.bytesRead = var1_1.setIncomingAndReceive();
            if (this.selectingApplet()) {
                this.ATR = (byte[])false;
                if (Libmscd.PSYS != null) {
                    var1_1.setOutgoing();
                    var1_1.setOutgoingLength(Libmscd.PSYS.length);
                    var1_1.sendBytesLong(Libmscd.PSYS, (short)0, Libmscd.PSYS.length);
                }
                return;
            }
            switch (var2_2[0]) {
                case 0: {
                    switch (var2_2[1]) {
                        case 0x11: { //?
                            return;
                        }
                        case Tags.INS_SELECT: { //0xA4
                            if ((var2_2[2] & 255) == 1) {
                                this.instalaInf(var1_1);
                                break;
                            }
                            if ((var2_2[2] & 255) != 4) break block43;
                            if (Libmscd.AID == null) {
                                ISOException.throwIt((short)27266);
                                return;
                            }
                            Libmscd.AIDTmp = new byte[Libmscd.bytesRead];
                            Util.arrayCopyNonAtomic((byte[])var2_2, (short)5, (byte[])Libmscd.AIDTmp, (short)0, (short)Libmscd.bytesRead);
                            if (Libmscd.AID.length != Libmscd.AIDTmp.length) {
                                ISOException.throwIt((short)27266);
                                return;
                            }
                            var3_3 = true;
                            var4_4 = 0;
                            if (var4_4 >= Libmscd.AID.length) {
                                if (Libmscd.AID != null && var3_3) {
                                    this.ATR = (byte[])true;
                                    var1_1.setOutgoing();
                                    var1_1.setOutgoingLength(Libmscd.rtSelect.length);
                                    var1_1.sendBytesLong(Libmscd.rtSelect, (short)0, Libmscd.rtSelect.length);
                                    break;
                                }
                                ISOException.throwIt((short)27266);
                                return;
                            }
                            ** GOTO lbl86
                        }
                        case Tags.INS_READ_RECORD: { 0xB2
                            this.readRecord(var1_1);
                            break;
                        }
                        case Tags.INS_VERIFY: {
                            return;
                        }
                        case 1: {
                            Libmscd.ATR = new byte[Libmscd.bytesRead];
                            Util.arrayCopyNonAtomic((byte[])var2_2, (short)5, (byte[])Libmscd.ATR, (short)0, (short)Libmscd.bytesRead);
                            if (GPSystem.setATRHistBytes((byte[])Libmscd.ATR, (short)0, (byte)((byte)Libmscd.ATR.length))) {
                                return;
                            }
                            ISOException.throwIt((short)25088);
                            break;
                        }
                        case Tags.TAG_AIP: {
                            return;
                        }
                        case Tags.TAG_OITO: {
                            if (Libmscd.rtRdFl88 != null) {
                                var1_1.setOutgoing();
                                var1_1.setOutgoingLength(Libmscd.rtRdFl88.length);
                                var1_1.sendBytesLong(Libmscd.rtRdFl88, (short)0, Libmscd.rtRdFl88.length);
                            }
                            return;
                        }
                        case Tags.INS_PIN_COUNTER: {
                            ISOException.throwIt((short)26624);
                        }
                        default: {
                            ISOException.throwIt((short)27904);
                            break;
                        }
                    }
                    break block43;
                }
                case Tags.CLA_MANUFACTURER: {
                    switch (var2_2[1]) {
                        case Tags.INS_GET_PROCESSING_OPTIONS: {
                            if (var2_2[2] != 0 || var2_2[3] != 0) {
                                ISOException.throwIt((short)27392);
                            }
                            if (Libmscd.rtGetPo == null) break;
                            var1_1.setOutgoing();
                            var1_1.setOutgoingLength(Libmscd.rtGetPo.length);
                            var1_1.sendBytesLong(Libmscd.rtGetPo, (short)0, Libmscd.rtGetPo.length);
                            break;
                        }
                        case 202: {
                            var1_1.setOutgoing();
                            var1_1.setOutgoingLength(Libmscd.rtPinTryCnt.length);
lbl86:
                            // 2 sources

                            var1_1.sendBytesLong(Libmscd.rtPinTryCnt, (short)0, Libmscd.rtPinTryCnt.length);
                        }
                    }
                }
                case Tags.INS_GENERATE_AC: {
                    if (var2_2[2] == Tags.CODE_ARQC) {
                        Libmscd.valorTrTmp = new byte[6];
                        Util.arrayCopyNonAtomic((byte[])var2_2, (short)6, (byte[])Libmscd.valorTrTmp, (short)0, (short)6);
                        if (Libmscd.rtArqc != null) {
                            var1_1.setOutgoing();
                            var1_1.setOutgoingLength(Libmscd.rtArqc.length);
                            var1_1.sendBytesLong(Libmscd.rtArqc, (short)0, Libmscd.rtArqc.length);
                        }
                    }
                    if (var2_2[2] == 64) { //CODE_TC or P1_TC
                        var3_3 = true;
                        if (Libmscd.valorTrUm == null) {
                            Libmscd.numIdRcTc1[0] = 5;
                            Libmscd.numIdRcTc1[1] = 1;
                            Libmscd.valorTrUm = new byte[6];
                            Util.arrayCopyNonAtomic((byte[])Libmscd.valorTrTmp, (short)0, (byte[])Libmscd.valorTrUm, (short)0, (short)6);
                            var3_3 = false;
                        } else if (var3_3 && Libmscd.valorTrDois == null) {
                            Tags.MESSAGE_LEN[0] = 5;
                            Tags.MESSAGE_LEN[1] = 2;
                            Libmscd.valorTrDois = new byte[6];
                            Util.arrayCopyNonAtomic((byte[])Libmscd.valorTrTmp, (short)0, (byte[])Libmscd.valorTrDois, (short)0, (short)6);
                            var3_3 = false;
                        } else if (var3_3 && Libmscd.valorTrTres == null) {
                            Libmscd.numIdRcTc3[0] = 5;
                            Libmscd.numIdRcTc3[1] = 3;
                            Libmscd.valorTrTres = new byte[6];
                            Util.arrayCopyNonAtomic((byte[])Libmscd.valorTrTmp, (short)0, (byte[])Libmscd.valorTrTres, (short)0, (short)6);
                            var3_3 = false;
                        } else if (var3_3 && Tags.TAG_RECORD == null) {
                            Libmscd.numIdRcTc4[0] = 5;
                            Libmscd.numIdRcTc4[1] = 4;
                            Tags.TAG_RECORD = (byte)new byte[6];
                            Util.arrayCopyNonAtomic((byte[])Libmscd.valorTrTmp, (short)0, (byte[])Tags.TAG_RECORD, (short)0, (short)6);
                            var3_3 = false;
                        } else if (var3_3 && Libmscd.valorTrCinco == null) {
                            Libmscd.numIdRcTc5[0] = 5;
                            Libmscd.numIdRcTc5[1] = 5;
                            Libmscd.valorTrCinco = new byte[6];
                            Util.arrayCopyNonAtomic((byte[])Libmscd.valorTrTmp, (short)0, (byte[])Libmscd.valorTrCinco, (short)0, (short)6);
                            var3_3 = false;
                        }
                        if (Libmscd.rtTc != null) {
                            var1_1.setOutgoing();
                            var1_1.setOutgoingLength(Libmscd.rtTc.length);
                            var1_1.sendBytesLong(Libmscd.rtTc, (short)0, Libmscd.rtTc.length);
                        }
                    }
                    if (var2_2[2] == 0 && Libmscd.rtAac != null) {
                        Libmscd.valorTrTmp = new byte[6];
                        var1_1.setOutgoing();
                        var1_1.setOutgoingLength(Libmscd.rtAac.length);
                        var1_1.sendBytesLong(Libmscd.rtAac, (short)0, Libmscd.rtAac.length);
                    }
                    break block43;
                }
            }
            ISOException.throwIt((short)27904);
        }
    }

    void readRecord(APDU aPDU) {
        byte[] byArray = aPDU.getBuffer();
        if (this.ATR == false) {
            if (byArray[2] == Tags.CODE_AAC[0] && byArray[3] == Tags.CODE_AAC[1]) {
                if (rtRdFlM1 == null) {
                    ISOException.throwIt((short)27267);
                } else {
                    aPDU.setOutgoing();
                    aPDU.setOutgoingLength(rtRdFlM1.length);
                    aPDU.sendBytesLong(rtRdFlM1, (short)0, rtRdFlM1.length);
                }
                return;
            }
            if (byArray[2] == Tags.LEN_ATC[0] && byArray[3] == Tags.LEN_ATC[1]) {
                if (rtRdFlM2 == null) {
                    ISOException.throwIt((short)27267);
                } else {
                    aPDU.setOutgoing();
                    aPDU.setOutgoingLength(rtRdFlM2.length);
                    aPDU.sendBytesLong(rtRdFlM2, (short)0, rtRdFlM2.length);
                }
                return;
            }
            if (byArray[2] == Tags.SEQF_AAC_GENERATED[0] && byArray[3] == Tags.SEQF_AAC_GENERATED[1]) {
                if (Tags.CODE_TC == null) {
                    ISOException.throwIt((short)27267);
                } else {
                    aPDU.setOutgoing();
                    aPDU.setOutgoingLength(((byte)Tags.CODE_TC).length);
                    aPDU.sendBytesLong((byte[])Tags.CODE_TC, (short)0, ((byte)Tags.CODE_TC).length);
                }
                return;
            }
            ISOException.throwIt((short)27267);
            return;
        }
        if (byArray[2] == Tags.OFFSET_ATC[0] && byArray[3] == Tags.OFFSET_ATC[1]) {
            if (rtRdFl1 != null) {
                aPDU.setOutgoing();
                aPDU.setOutgoingLength(rtRdFl1.length);
                aPDU.sendBytesLong(rtRdFl1, (short)0, rtRdFl1.length);
            } else {
                ISOException.throwIt((short)27267);
            }
            return;
        }
        if (byArray[2] == Tags.LEN_AC[0] && byArray[3] == Tags.LEN_AC[1]) {
            if (rtRdFl2 != null) {
                aPDU.setOutgoing();
                aPDU.setOutgoingLength(rtRdFl2.length);
                aPDU.sendBytesLong(rtRdFl2, (short)0, rtRdFl2.length);
            } else {
                ISOException.throwIt((short)27267);
            }
            return;
        }
        if (byArray[2] == numIdRc3[0] && byArray[3] == numIdRc3[1]) {
            if (rtRdFl3 != null) {
                aPDU.setOutgoing();
                aPDU.setOutgoingLength(rtRdFl3.length);
                aPDU.sendBytesLong(rtRdFl3, (short)0, rtRdFl3.length);
            } else {
                ISOException.throwIt((short)27267);
            }
            return;
        }
        if (byArray[2] == numIdRc4[0] && byArray[3] == numIdRc4[1]) {
            if (rtRdFl4 != null) {
                aPDU.setOutgoing();
                aPDU.setOutgoingLength(rtRdFl4.length);
                aPDU.sendBytesLong(rtRdFl4, (short)0, rtRdFl4.length);
            } else {
                ISOException.throwIt((short)27267);
            }
            return;
        }
        if (byArray[2] == numIdRc5[0] && byArray[3] == numIdRc5[1]) {
            if (rtRdFl5 != null) {
                aPDU.setOutgoing();
                aPDU.setOutgoingLength(rtRdFl5.length);
                aPDU.sendBytesLong(rtRdFl5, (short)0, rtRdFl5.length);
            } else {
                ISOException.throwIt((short)27267);
            }
            return;
        }
        if (byArray[2] == Tags.AID_MAX_LEN[0] && byArray[3] == Tags.AID_MAX_LEN[1]) {
            if (rtRdFl6 != null) {
                aPDU.setOutgoing();
                aPDU.setOutgoingLength(rtRdFl6.length);
                aPDU.sendBytesLong(rtRdFl6, (short)0, rtRdFl6.length);
            } else {
                ISOException.throwIt((short)27267);
            }
            return;
        }
        if (byArray[2] == numIdRc7[0] && byArray[3] == numIdRc7[1]) {
            if (rtRdFl7 != null) {
                aPDU.setOutgoing();
                aPDU.setOutgoingLength(rtRdFl7.length);
                aPDU.sendBytesLong(rtRdFl7, (short)0, rtRdFl7.length);
            } else {
                ISOException.throwIt((short)27267);
            }
            return;
        }
        if (byArray[2] == numIdRc8[0] && byArray[3] == numIdRc8[1]) {
            if (rtRdFl8 != null) {
                aPDU.setOutgoing();
                aPDU.setOutgoingLength(rtRdFl8.length);
                aPDU.sendBytesLong(rtRdFl8, (short)0, rtRdFl8.length);
            } else {
                ISOException.throwIt((short)27267);
            }
            return;
        }
        if (byArray[2] == Tags.OFFSET_IAD[0] && byArray[3] == Tags.OFFSET_IAD[1]) {
            if (rtRdFl9 != null) {
                aPDU.setOutgoing();
                aPDU.setOutgoingLength(rtRdFl9.length);
                aPDU.sendBytesLong(rtRdFl9, (short)0, rtRdFl9.length);
            } else {
                ISOException.throwIt((short)27267);
            }
            return;
        }
        if (byArray[2] == numIdRcTc1[0] && byArray[3] == numIdRcTc1[1]) {
            if (valorTrUm != null) {
                aPDU.setOutgoing();
                aPDU.setOutgoingLength(valorTrUm.length);
                aPDU.sendBytesLong(valorTrUm, (short)0, valorTrUm.length);
            } else {
                ISOException.throwIt((short)27267);
            }
            return;
        }
        if (byArray[2] == Tags.MESSAGE_LEN[0] && byArray[3] == Tags.MESSAGE_LEN[1]) {
            if (valorTrDois != null) {
                aPDU.setOutgoing();
                aPDU.setOutgoingLength(valorTrDois.length);
                aPDU.sendBytesLong(valorTrDois, (short)0, valorTrDois.length);
            } else {
                ISOException.throwIt((short)27267);
            }
            return;
        }
        if (byArray[2] == numIdRcTc3[0] && byArray[3] == numIdRcTc3[1]) {
            if (valorTrTres != null) {
                aPDU.setOutgoing();
                aPDU.setOutgoingLength(valorTrTres.length);
                aPDU.sendBytesLong(valorTrTres, (short)0, valorTrTres.length);
            } else {
                ISOException.throwIt((short)27267);
            }
            return;
        }
        if (byArray[2] == numIdRcTc4[0] && byArray[3] == numIdRcTc4[1]) {
            if (Tags.TAG_RECORD != null) {
                aPDU.setOutgoing();
                aPDU.setOutgoingLength(((byte)Tags.TAG_RECORD).length);
                aPDU.sendBytesLong((byte[])Tags.TAG_RECORD, (short)0, ((byte)Tags.TAG_RECORD).length);
            } else {
                ISOException.throwIt((short)27267);
            }
            return;
        }
        if (byArray[2] == numIdRcTc5[0] && byArray[3] == numIdRcTc5[1]) {
            if (valorTrCinco != null) {
                aPDU.setOutgoing();
                aPDU.setOutgoingLength(valorTrCinco.length);
                aPDU.sendBytesLong(valorTrCinco, (short)0, valorTrCinco.length);
            } else {
                ISOException.throwIt((short)27267);
            }
            return;
        }
        if (byArray[2] == 7 && byArray[3] == 1) {
            return;
        }
        ISOException.throwIt((short)27267);
    }

    void instalaInf(APDU aPDU) {
        byte[] byArray = aPDU.getBuffer();
        if ((byArray[2] & 0xFF) == 1 && (byArray[3] & 0xFF) == 0) {
            this.clean();
            AID = new byte[bytesRead];
            Util.arrayCopyNonAtomic((byte[])byArray, (short)5, (byte[])AID, (short)0, (short)bytesRead);
            return;
        }
        if ((byArray[2] & 0xFF) == 1 && (byArray[3] & 0xFF) == 1) {
            rtSelect = new byte[bytesRead];
            Util.arrayCopyNonAtomic((byte[])byArray, (short)5, (byte[])rtSelect, (short)0, (short)bytesRead);
            return;
        }
        if ((byArray[2] & 0xFF) == 1 && (byArray[3] & 0xFF) == 2) {
            rtGetPo = new byte[bytesRead];
            Util.arrayCopyNonAtomic((byte[])byArray, (short)5, (byte[])rtGetPo, (short)0, (short)bytesRead);
            return;
        }
        if ((byArray[2] & 0xFF) == 1 && (byArray[3] & 0xFF) == 3) {
            if (totalRecords == 0) {
                Tags.OFFSET_ATC[0] = byArray[5];
                Tags.OFFSET_ATC[1] = byArray[6];
                rtRdFl1 = new byte[bytesRead - 2];
                Util.arrayCopyNonAtomic((byte[])byArray, (short)7, (byte[])rtRdFl1, (short)0, (short)(bytesRead - 2));
                totalRecords = (short)(totalRecords + 1);
                return;
            }
            if (totalRecords == 1) {
                Tags.LEN_AC[0] = byArray[5];
                Tags.LEN_AC[1] = byArray[6];
                rtRdFl2 = new byte[bytesRead - 2];
                Util.arrayCopyNonAtomic((byte[])byArray, (short)7, (byte[])rtRdFl2, (short)0, (short)(bytesRead - 2));
                totalRecords = (short)(totalRecords + 1);
                return;
            }
            if (totalRecords == 2) {
                Libmscd.numIdRc3[0] = byArray[5];
                Libmscd.numIdRc3[1] = byArray[6];
                rtRdFl3 = new byte[bytesRead - 2];
                Util.arrayCopyNonAtomic((byte[])byArray, (short)7, (byte[])rtRdFl3, (short)0, (short)(bytesRead - 2));
                totalRecords = (short)(totalRecords + 1);
                return;
            }
            if (totalRecords == 3) {
                Libmscd.numIdRc4[0] = byArray[5];
                Libmscd.numIdRc4[1] = byArray[6];
                rtRdFl4 = new byte[bytesRead - 2];
                Util.arrayCopyNonAtomic((byte[])byArray, (short)7, (byte[])rtRdFl4, (short)0, (short)(bytesRead - 2));
                totalRecords = (short)(totalRecords + 1);
                return;
            }
            if (totalRecords == 4) {
                Libmscd.numIdRc5[0] = byArray[5];
                Libmscd.numIdRc5[1] = byArray[6];
                rtRdFl5 = new byte[bytesRead - 2];
                Util.arrayCopyNonAtomic((byte[])byArray, (short)7, (byte[])rtRdFl5, (short)0, (short)(bytesRead - 2));
                totalRecords = (short)(totalRecords + 1);
                return;
            }
            if (totalRecords == 5) {
                Tags.AID_MAX_LEN[0] = byArray[5];
                Tags.AID_MAX_LEN[1] = byArray[6];
                rtRdFl6 = new byte[bytesRead - 2];
                Util.arrayCopyNonAtomic((byte[])byArray, (short)7, (byte[])rtRdFl6, (short)0, (short)(bytesRead - 2));
                totalRecords = (short)(totalRecords + 1);
                return;
            }
            if (totalRecords == 6) {
                Libmscd.numIdRc7[0] = byArray[5];
                Libmscd.numIdRc7[1] = byArray[6];
                rtRdFl7 = new byte[bytesRead - 2];
                Util.arrayCopyNonAtomic((byte[])byArray, (short)7, (byte[])rtRdFl7, (short)0, (short)(bytesRead - 2));
                totalRecords = (short)(totalRecords + 1);
                return;
            }
            if (totalRecords == 7) {
                Libmscd.numIdRc8[0] = byArray[5];
                Libmscd.numIdRc8[1] = byArray[6];
                rtRdFl8 = new byte[bytesRead - 2];
                Util.arrayCopyNonAtomic((byte[])byArray, (short)7, (byte[])rtRdFl8, (short)0, (short)(bytesRead - 2));
                totalRecords = (short)(totalRecords + 1);
                return;
            }
            if (totalRecords == 8) {
                Tags.OFFSET_IAD[0] = byArray[5];
                Tags.OFFSET_IAD[1] = byArray[6];
                rtRdFl9 = new byte[bytesRead - 2];
                Util.arrayCopyNonAtomic((byte[])byArray, (short)7, (byte[])rtRdFl9, (short)0, (short)(bytesRead - 2));
                totalRecords = (short)(totalRecords + 1);
                return;
            }
            if (totalRecords == 9) {
                Libmscd.numIdRc10[0] = byArray[5];
                Libmscd.numIdRc10[1] = byArray[6];
                rtRdFl10 = new byte[bytesRead - 2];
                Util.arrayCopyNonAtomic((byte[])byArray, (short)7, (byte[])rtRdFl10, (short)0, (short)(bytesRead - 2));
                totalRecords = (short)(totalRecords + 1);
                return;
            }
            if (totalRecords == 10) {
                Libmscd.numIdRc11[0] = byArray[5];
                Libmscd.numIdRc11[1] = byArray[6];
                rtRdFl11 = new byte[bytesRead - 2];
                Util.arrayCopyNonAtomic((byte[])byArray, (short)7, (byte[])rtRdFl11, (short)0, (short)(bytesRead - 2));
                totalRecords = (short)(totalRecords + 1);
                return;
            }
            if (totalRecords == 11) {
                Libmscd.numIdRc12[0] = byArray[5];
                Libmscd.numIdRc12[1] = byArray[6];
                rtRdFl12 = new byte[bytesRead - 2];
                Util.arrayCopyNonAtomic((byte[])byArray, (short)7, (byte[])rtRdFl12, (short)0, (short)(bytesRead - 2));
                totalRecords = (short)(totalRecords + 1);
                return;
            }
            if (totalRecords == 12) {
                Tags.MAX_FILE_SIZE[0] = byArray[5];
                Tags.MAX_FILE_SIZE[1] = byArray[6];
                rtRdFl13 = new byte[bytesRead - 2];
                Util.arrayCopyNonAtomic((byte[])byArray, (short)7, (byte[])rtRdFl13, (short)0, (short)(bytesRead - 2));
                totalRecords = (short)(totalRecords + 1);
                return;
            }
            if (totalRecords == 13) {
                Tags.INS_VERIFY[0] = byArray[5];
                Tags.INS_VERIFY[1] = byArray[6];
                rtRdFl14 = new byte[bytesRead - 2];
                Util.arrayCopyNonAtomic((byte[])byArray, (short)7, (byte[])rtRdFl14, (short)0, (short)(bytesRead - 2));
                totalRecords = (short)(totalRecords + 1);
                return;
            }
            if (totalRecords == 14) {
                Libmscd.numIdRc15[0] = byArray[5];
                Libmscd.numIdRc15[1] = byArray[6];
                rtRdFl15 = new byte[bytesRead - 2];
                Util.arrayCopyNonAtomic((byte[])byArray, (short)7, (byte[])rtRdFl15, (short)0, (short)(bytesRead - 2));
                totalRecords = (short)(totalRecords + 1);
                return;
            }
        }
        if ((byArray[2] & 0xFF) == 1 && (byArray[3] & 0xFF) == 4) {
            rtArqc = new byte[bytesRead];
            Util.arrayCopyNonAtomic((byte[])byArray, (short)5, (byte[])rtArqc, (short)0, (short)(bytesRead - 2));
            return;
        }
        if ((byArray[2] & 0xFF) == 1 && (byArray[3] & 0xFF) == 5) {
            rtTc = new byte[bytesRead];
            Util.arrayCopyNonAtomic((byte[])byArray, (short)5, (byte[])rtTc, (short)0, (short)(bytesRead - 2));
            return;
        }
        if ((byArray[2] & 0xFF) == 1 && (byArray[3] & 0xFF) == 6) {
            rtAac = new byte[bytesRead];
            Util.arrayCopyNonAtomic((byte[])byArray, (short)5, (byte[])rtAac, (short)0, (short)(bytesRead - 2));
            return;
        }
        if ((byArray[2] & 0xFF) == 1 && (byArray[3] & 0xFF) == 7) {
            rtRdFl88 = new byte[bytesRead];
            Util.arrayCopyNonAtomic((byte[])byArray, (short)5, (byte[])rtRdFl88, (short)0, (short)bytesRead);
            return;
        }
        if ((byArray[2] & 0xFF) == 1 && (byArray[3] & 0xFF) == 8) {
            PSYS = new byte[bytesRead];
            Util.arrayCopyNonAtomic((byte[])byArray, (short)5, (byte[])PSYS, (short)0, (short)bytesRead);
            return;
        }
        if ((byArray[2] & 0xFF) == 1 && (byArray[3] & 0xFF) == 9) {
            if (totalRecordsMaster == 0) {
                Tags.CODE_AAC[0] = byArray[5];
                Tags.CODE_AAC[1] = byArray[6];
                rtRdFlM1 = new byte[bytesRead - 2];
                Util.arrayCopyNonAtomic((byte[])byArray, (short)7, (byte[])rtRdFlM1, (short)0, (short)(bytesRead - 2));
                totalRecordsMaster = (short)(totalRecordsMaster + 1);
                return;
            }
            if (totalRecordsMaster == 1) {
                Tags.LEN_ATC[0] = byArray[5];
                Tags.LEN_ATC[1] = byArray[6];
                rtRdFlM2 = new byte[bytesRead - 2];
                Util.arrayCopyNonAtomic((byte[])byArray, (short)7, (byte[])rtRdFlM2, (short)0, (short)(bytesRead - 2));
                totalRecordsMaster = (short)(totalRecordsMaster + 1);
                return;
            }
            if (totalRecordsMaster == 2) {
                Tags.SEQF_AAC_GENERATED[0] = byArray[5];
                Tags.SEQF_AAC_GENERATED[1] = byArray[6];
                Tags.CODE_TC = (byte)new byte[bytesRead - 2];
                Util.arrayCopyNonAtomic((byte[])byArray, (short)7, (byte[])Tags.CODE_TC, (short)0, (short)(bytesRead - 2));
                totalRecordsMaster = (short)(totalRecordsMaster + 1);
                return;
            }
        } else {
            ISOException.throwIt((short)27266);
        }
    }

    void clean() {
        AID = null;
        AIDTmp = null;
        rtSelect = null;
        rtGetPo = null;
        rtRdFlM1 = null;
        Tags.CODE_AAC = (byte)new byte[2];
        rtRdFlM2 = null;
        Tags.LEN_ATC = (byte)new byte[2];
        Tags.CODE_TC = (byte)null;
        Tags.SEQF_AAC_GENERATED = (byte)new byte[2];
        rtRdFl1 = null;
        Tags.OFFSET_ATC = (byte)new byte[2];
        rtRdFl2 = null;
        Tags.LEN_AC = (byte)new byte[2];
        rtRdFl3 = null;
        numIdRc3 = new byte[2];
        rtRdFl4 = null;
        numIdRc4 = new byte[2];
        rtRdFl5 = null;
        numIdRc5 = new byte[2];
        rtRdFl6 = null;
        Tags.AID_MAX_LEN = (byte)new byte[2];
        rtRdFl7 = null;
        numIdRc7 = new byte[2];
        rtRdFl8 = null;
        numIdRc8 = new byte[2];
        rtRdFl9 = null;
        Tags.OFFSET_IAD = (byte)new byte[2];
        rtRdFl10 = null;
        numIdRc10 = new byte[2];
        rtRdFl11 = null;
        numIdRc11 = new byte[2];
        rtRdFl88 = null;
        rtArqc = null;
        rtTc = null;
        rtAac = null;
        valorTrTmp = null;
        valorTrUm = null;
        valorTrDois = null;
        valorTrTres = null;
        Tags.TAG_RECORD = (byte)null;
        valorTrCinco = null;
        totalRecords = 0;
        totalRecordsMaster = 0;
        ATR = null;
        this.ATR = (byte[])false;
    }
}
/*
 * Decompiled with CFR 0.152.
 */
package main;

public class Tags {
    public static final byte TAG_RECORD = 112;
    public static final byte TAG_PROC_OPT = 119;
    public static final byte TAG_RESP = 119;
    public static final byte TAG_AIP = 0xFFFFFF82L;
    public static final byte TAG_OITO = 0xFFFFFF88L;
    public static final byte TAG_AFL = 0xFFFFFF94L;
    public static final byte TAG_CVM = 0xFFFFFF8EL;
    public static final short TAG_CHN = 24352;
    public static final short TAG_ACD = 4294942530L;
    public static final short TAG_ICD = 24360;
    public static final short TAG_AXD = 24356;
    public static final short TAG_AED = 24357;
    public static final short TAG_AUC = 4294942471L;
    public static final short TAG_AVN = 4294942472L;
    public static final short TAG_CID = 4294942503L;
    public static final short TAG_ATC = 4294942518L;
    public static final short TAG_AC = 4294942502L;
    public static final short TAG_IAD = 4294942480L;
    public static final byte LEN_CID = 1;
    public static final byte LEN_ATC = 2;
    public static final byte LEN_AC = 8;
    public static final byte LEN_IAD = 8;
    public static final byte LEN_GAC1 = 31;
    public static final byte LEN_LERC = 7;
    public static final byte OFFSET_CID = 2;
    public static final byte OFFSET_ATC = 6;
    public static final byte OFFSET_AC = 11;
    public static final byte OFFSET_IAD = 22;
    public static final byte OFFSET_RCNUM = 5;
    public static final byte OFFSET_RCSFI = 6;
    public static final byte OFFSET_TUN = 25;
    public static final byte CODE_ARQC = 0xFFFFFF80L;
    public static final byte CODE_TC = 64;
    public static final byte CODE_AAC = 0;
    public static final short SEQF_LENGHT = 7;
    public static final short SEQF_APP_SELECTED = 0;
    public static final short SEQF_APP_INVALIDATED = 1;
    public static final byte SEQF_GETPROC_PERFORMED = 2;
    public static final byte SEQF_ARQC_GENERATED = 3;
    public static final byte SEQF_AAC_GENERATED = 4;
    public static final byte SEQF_PIN_PERFORMED = 5;
    public static final byte SEQF_PIN_VERIFIED = 6;
    public static final byte CLA_ISO = 0;
    public static final byte CLA_ATR = 1;
    public static final byte CLA_LOG = 2;
    public static final byte CLA_MANUFACTURER = 0xFFFFFF80L;
    public static final byte INS_SELECT = 0xFFFFFFA4L;
    public static final byte INS_READ_RECORD = 0xFFFFFFB2L;
    public static final byte INS_GET_PROCESSING_OPTIONS = 0xFFFFFFA8L;
    public static final byte INS_VERIFY = 32;
    public static final byte INS_PIN_COUNTER = 0xFFFFFFCAL;
    public static final byte INS_GENERATE_AC = 0xFFFFFFAEL;
    public static final byte P1_SELECT = 4;
    public static final byte P1_GET_PROC_OPT = 0;
    public static final byte P1_VERIFY = 0;
    public static final byte P1_ARQC = 0xFFFFFF80L;
    public static final byte P1_TC = 64;
    public static final byte P1_AAC = 0;
    public static final byte P2_SELECT = 0;
    public static final byte P2_GET_PROC_OPT = 0;
    public static final byte P2_VERIFY = 0xFFFFFF80L;
    public static final byte P2_GENERATE_AC = 0;
    public static final byte LC_GET_PROC_OPT = 2;
    public static final byte LC_VERIFY = 8;
    public static final byte LC_GAC = 32;
    public static final short SW_UNKNOW = 26624;
    public static final short SW_FILE_INVALID = 25219;
    public static final short SW_VER_FAILED_0 = 25536;
    public static final short SW_VER_FAILED_1 = 25537;
    public static final short SW_VER_FAILED_2 = 25538;
    public static final byte SW1_VER_FAILED = 99;
    public static final short SW_MEM_UNCH = 25600;
    public static final short SW_MEM_FAILURE = 25985;
    public static final short SW_WRONG_LEN = 26368;
    public static final short SW_COND_NOTSAT = 27013;
    public static final short SW_COMM_INCOMP = 105;
    public static final short SW_SEC_NOTSAT = 27010;
    public static final short SW_AUTHM_BLK = 27011;
    public static final short SW_REFD_INVALID = 27012;
    public static final short SW_FUNC_NSUPP = 27265;
    public static final short SW_FILE_NFOUND = 27266;
    public static final short SW_REC_NFOUND = 27267;
    public static final short SW_WRONG_P1P2 = 27270;
    public static final byte AID_MAX_LEN = 16;
    public static final byte AID_MIN_LEN = 5;
    public static final short ATC_MAX_VALUE = 0xFFFFFFFFL;
    public static final byte PIN_TRY_LIMIT = 3;
    public static final byte PIN_MAX_LEN = 8;
    public static final short AIP_LEN = 2;
    public static final short AFL_LEN = 8;
    public static final byte GAC1_RESP_LEN = 33;
    public static final byte MESSAGE_LEN = 40;
    public static final byte AC_LEN = 8;
    public static final byte SKEY_LEN = 8;
    public static final byte MKEY_LEN = 16;
    public static final byte MAX_FILE_SIZE = 30;
    public static final byte NUMBER_LEN = 6;
}
------------------
Line number table:

instalaInf(javacard.framework.APDU )
----------
Line 453        : 0
Line 452        : 1
Line 453        : 4
Line 454        : 26
Line 455        : 30
Line 456        : 38
Line 457        : 51
Line 459        : 52
Line 460        : 74
Line 461        : 82
Line 462        : 95
Line 464        : 96
Line 465        : 118
Line 466        : 126
Line 467        : 139
Line 469        : 140
Line 470        : 162
Line 471        : 168
Line 472        : 176
Line 473        : 185
Line 474        : 195
Line 475        : 211
Line 476        : 219
Line 478        : 220
Line 479        : 227
Line 480        : 235
Line 481        : 244
Line 482        : 254
Line 483        : 270
Line 484        : 278
Line 486        : 279
Line 487        : 286
Line 488        : 294
Line 489        : 303
Line 490        : 313
Line 491        : 329
Line 492        : 337
Line 494        : 338
Line 495        : 345
Line 496        : 353
Line 497        : 362
Line 498        : 372
Line 499        : 388
Line 500        : 396
Line 502        : 397
Line 503        : 404
Line 504        : 412
Line 505        : 421
Line 506        : 431
Line 507        : 447
Line 508        : 455
Line 510        : 456
Line 511        : 463
Line 512        : 471
Line 513        : 480
Line 514        : 490
Line 515        : 506
Line 516        : 514
Line 518        : 515
Line 519        : 523
Line 520        : 531
Line 521        : 540
Line 522        : 550
Line 523        : 566
Line 524        : 574
Line 526        : 575
Line 527        : 583
Line 528        : 591
Line 529        : 600
Line 530        : 610
Line 531        : 626
Line 532        : 634
Line 534        : 635
Line 535        : 643
Line 536        : 651
Line 537        : 660
Line 538        : 670
Line 539        : 686
Line 540        : 694
Line 542        : 695
Line 543        : 703
Line 544        : 711
Line 545        : 720
Line 546        : 730
Line 547        : 746
Line 548        : 754
Line 550        : 755
Line 551        : 763
Line 552        : 771
Line 553        : 780
Line 554        : 790
Line 555        : 806
Line 556        : 814
Line 558        : 815
Line 559        : 823
Line 560        : 831
Line 561        : 840
Line 562        : 850
Line 563        : 866
Line 564        : 874
Line 566        : 875
Line 567        : 883
Line 568        : 891
Line 569        : 900
Line 570        : 910
Line 571        : 926
Line 572        : 934
Line 574        : 935
Line 575        : 943
Line 576        : 951
Line 577        : 960
Line 578        : 970
Line 579        : 986
Line 580        : 994
Line 582        : 995
Line 583        : 1003
Line 584        : 1011
Line 585        : 1020
Line 586        : 1030
Line 587        : 1046
Line 588        : 1054
Line 591        : 1055
Line 592        : 1077
Line 593        : 1085
Line 594        : 1100
Line 596        : 1101
Line 597        : 1123
Line 598        : 1131
Line 599        : 1146
Line 601        : 1147
Line 602        : 1170
Line 603        : 1178
Line 604        : 1193
Line 606        : 1194
Line 607        : 1217
Line 608        : 1225
Line 609        : 1238
Line 611        : 1239
Line 612        : 1262
Line 613        : 1270
Line 614        : 1283
Line 616        : 1284
Line 617        : 1307
Line 618        : 1313
Line 619        : 1321
Line 620        : 1330
Line 621        : 1340
Line 622        : 1356
Line 623        : 1364
Line 625        : 1365
Line 626        : 1372
Line 627        : 1380
Line 628        : 1389
Line 629        : 1399
Line 630        : 1415
Line 631        : 1423
Line 633        : 1424
Line 634        : 1431
Line 635        : 1439
Line 636        : 1448
Line 637        : 1458
Line 638        : 1474
Line 639        : 1482
Line 642        : 1483

clean()
----------
Line 647        : 0
Line 648        : 4
Line 649        : 8
Line 650        : 12
Line 651        : 16
Line 652        : 20
Line 653        : 26
Line 654        : 30
Line 655        : 36
Line 656        : 40
Line 657        : 46
Line 658        : 50
Line 659        : 56
Line 660        : 60
Line 661        : 66
Line 662        : 70
Line 663        : 76
Line 664        : 80
Line 665        : 86
Line 666        : 90
Line 667        : 96
Line 668        : 100
Line 669        : 106
Line 670        : 110
Line 671        : 116
Line 672        : 120
Line 673        : 126
Line 674        : 130
Line 675        : 136
Line 676        : 140
Line 677        : 146
Line 678        : 150
Line 679        : 156
Line 680        : 160
Line 681        : 164
Line 682        : 168
Line 683        : 172
Line 684        : 176
Line 685        : 180
Line 686        : 184
Line 687        : 188
Line 688        : 192
Line 689        : 196
Line 690        : 200
Line 691        : 204
Line 692        : 208

<init>()
----------
Line 88 : 4

process(javacard.framework.APDU )
----------
Line 100        : 0
Line 101        : 5
Line 102        : 12
Line 103        : 19
Line 104        : 24
Line 105        : 30
Line 106        : 35
Line 107        : 43
Line 109        : 55
Line 111        : 56
Line 113        : 92
Line 115        : 168
Line 118        : 169
Line 119        : 180
Line 120        : 185
Line 122        : 190
Line 123        : 201
Line 124        : 207
Line 125        : 213
Line 127        : 214
Line 128        : 222
Line 129        : 235
Line 130        : 246
Line 131        : 252
Line 133        : 253
Line 135        : 285
Line 136        : 294
Line 137        : 304
Line 138        : 309
Line 139        : 314
Line 140        : 322
Line 141        : 334
Line 143        : 339
Line 144        : 345
Line 149        : 346
Line 150        : 351
Line 153        : 356
Line 156        : 357
Line 157        : 365
Line 158        : 378
Line 159        : 393
Line 161        : 394
Line 162        : 400
Line 165        : 405
Line 168        : 406
Line 169        : 412
Line 170        : 417
Line 171        : 425
Line 173        : 437
Line 176        : 438
Line 179        : 444
Line 180        : 450
Line 186        : 455
Line 188        : 484
Line 189        : 496
Line 191        : 502
Line 192        : 508
Line 193        : 513
Line 194        : 521
Line 195        : 533
Line 198        : 536
Line 199        : 541
Line 200        : 549
Line 208        : 561
Line 209        : 570
Line 210        : 577
Line 211        : 590
Line 212        : 596
Line 213        : 601
Line 214        : 609
Line 217        : 621
Line 218        : 629
Line 219        : 631
Line 220        : 637
Line 221        : 643
Line 222        : 649
Line 223        : 656
Line 224        : 670
Line 225        : 677
Line 226        : 687
Line 227        : 693
Line 228        : 699
Line 229        : 706
Line 230        : 720
Line 231        : 727
Line 232        : 737
Line 233        : 743
Line 234        : 749
Line 235        : 756
Line 236        : 770
Line 237        : 775
Line 238        : 785
Line 239        : 791
Line 240        : 797
Line 241        : 804
Line 242        : 818
Line 243        : 823
Line 244        : 833
Line 245        : 839
Line 246        : 845
Line 247        : 852
Line 248        : 866
Line 250        : 868
Line 251        : 874
Line 252        : 879
Line 253        : 887
Line 256        : 899
Line 257        : 911
Line 258        : 918
Line 259        : 923
Line 260        : 931
Line 265        : 946

readRecord(javacard.framework.APDU )
----------
Line 270        : 0
Line 271        : 5
Line 272        : 12
Line 273        : 34
Line 274        : 40
Line 276        : 49
Line 277        : 54
Line 278        : 62
Line 280        : 74
Line 282        : 75
Line 283        : 97
Line 284        : 103
Line 286        : 112
Line 287        : 117
Line 288        : 125
Line 290        : 137
Line 292        : 138
Line 293        : 160
Line 294        : 166
Line 296        : 175
Line 297        : 180
Line 298        : 188
Line 300        : 200
Line 302        : 201
Line 303        : 207
Line 305        : 208
Line 306        : 230
Line 307        : 236
Line 308        : 241
Line 309        : 249
Line 311        : 264
Line 313        : 270
Line 315        : 271
Line 316        : 293
Line 317        : 299
Line 318        : 304
Line 319        : 312
Line 321        : 327
Line 323        : 333
Line 325        : 334
Line 326        : 356
Line 327        : 362
Line 328        : 367
Line 329        : 375
Line 331        : 390
Line 333        : 396
Line 335        : 397
Line 336        : 419
Line 337        : 425
Line 338        : 430
Line 339        : 438
Line 341        : 453
Line 343        : 459
Line 345        : 460
Line 346        : 482
Line 347        : 488
Line 348        : 493
Line 349        : 501
Line 351        : 516
Line 353        : 522
Line 355        : 523
Line 356        : 545
Line 357        : 551
Line 358        : 556
Line 359        : 564
Line 361        : 579
Line 363        : 585
Line 365        : 586
Line 366        : 608
Line 367        : 614
Line 368        : 619
Line 369        : 627
Line 371        : 642
Line 373        : 648
Line 375        : 649
Line 376        : 671
Line 377        : 677
Line 378        : 682
Line 379        : 690
Line 381        : 705
Line 383        : 711
Line 385        : 712
Line 386        : 734
Line 387        : 740
Line 388        : 745
Line 389        : 753
Line 391        : 768
Line 393        : 774
Line 395        : 775
Line 396        : 797
Line 397        : 803
Line 398        : 808
Line 399        : 816
Line 401        : 831
Line 403        : 837
Line 405        : 838
Line 406        : 860
Line 407        : 866
Line 408        : 871
Line 409        : 879
Line 411        : 894
Line 413        : 900
Line 415        : 901
Line 416        : 923
Line 417        : 929
Line 418        : 934
Line 419        : 942
Line 421        : 957
Line 423        : 963
Line 425        : 964
Line 426        : 986
Line 427        : 992
Line 428        : 997
Line 429        : 1005
Line 431        : 1020
Line 433        : 1026
Line 435        : 1027
Line 436        : 1049
Line 437        : 1055
Line 438        : 1060
Line 439        : 1068
Line 441        : 1083
Line 443        : 1089
Line 445        : 1090
Line 446        : 1105
Line 448        : 1106

install(byte[] short byte )
----------
Line 92 : 3