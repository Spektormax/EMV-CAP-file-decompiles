.class public class0
.super javacard/framework/Applet

.field static public static_field0 [B
.field public field0 [B
.field public field1 [B
.field public field2 [B
.field public field3 [B
.field public field4 S
.field public field5 S
.field public field6 B
.field public field7 S
.field public field8 B

.method Method0()V
	LMethod00:
 aload_0
	LMethod01:
 invokespecial javacard/framework/Applet/<init>()V
	LMethod04:
 aload_0
	LMethod05:
 sipush 256
	LMethod08:
 newarray byte
	LMethod010:
 putfield class0/field0 [B
	LMethod012:
 aload_0
	LMethod013:
 sipush 6000
	LMethod016:
 newarray byte
	LMethod018:
 putfield class0/field1 [B
	LMethod020:
 aload_0
	LMethod021:
 bipush 20
	LMethod023:
 newarray byte
	LMethod025:
 putfield class0/field2 [B
	LMethod027:
 aload_0
	LMethod028:
 sipush 6000
	LMethod031:
 newarray byte
	LMethod033:
 putfield class0/field3 [B
	LMethod035:
 aload_0
	LMethod036:
 invokevirtual javacard/framework/Applet/register()V
	LMethod039:
 aload_0
	LMethod040:
 iconst_0
	LMethod041:
 putfield class0/field4 [B
	LMethod043:
 aload_0
	LMethod044:
 iconst_0
	LMethod045:
 putfield class0/field5 [B
	LMethod047:
 aload_0
	LMethod048:
 iconst_0
	LMethod049:
 putfield class0/field6 [B
	LMethod051:
 return
.end method

.method Method1([B)V
	LMethod10:
 return
.end method

.method Method2([BSB)V
	LMethod20:
 new class0
	LMethod23:
 dup
	LMethod24:
 invokespecial class0/Method0()V
	LMethod27:
 pop
	LMethod28:
 return
.end method

.method Method3(Ljavacard/framework/ISO7816)V
	LMethod30:
 aload_1
	LMethod31:
 invokevirtual javacard/framework/APDU/getBuffer()[B
	LMethod34:
 astore_2
	LMethod35:
 aload_1
	LMethod36:
 invokevirtual javacard/framework/APDU/setIncomingAndReceive()S
	LMethod39:
 istore 4
	LMethod311:
 iconst_0
	LMethod312:
 istore 5
	LMethod314:
 iconst_0
	LMethod315:
 istore 6
	LMethod317:
 getfield class0/field0 [B
	LMethod320:
 iconst_0
	LMethod320:
 iconst_0
	LMethod321:
 bastore
	LMethod322:
 getfield class0/field0 [B
	LMethod325:
 iconst_1
	LMethod325:
 iconst_0
	LMethod326:
 bastore
	LMethod327:
 getfield class0/field0 [B
	LMethod330:
 iconst_2
	LMethod330:
 iconst_0
	LMethod331:
 bastore
	LMethod332:
 getfield class0/field0 [B
	LMethod335:
 iconst_3
	LMethod335:
 iconst_0
	LMethod336:
 bastore
	LMethod337:
 getfield class0/field0 [B
	LMethod340:
 iconst_4
	LMethod340:
 iconst_0
	LMethod341:
 bastore
	LMethod342:
 getfield class0/field0 [B
	LMethod345:
 iconst_5
	LMethod345:
 iconst_0
	LMethod346:
 bastore
	LMethod347:
 getfield class0/field0 [B
	LMethod350:
 bipush 6
	LMethod351:
 iconst_0
	LMethod352:
 bastore
	LMethod353:
 getfield class0/field0 [B
	LMethod356:
 bipush 7
	LMethod357:
 iconst_0
	LMethod358:
 bastore
	LMethod359:
 aload_2
	LMethod360:
 iconst_0
	LMethod361:
 baload
	LMethod362:
 istore 7
	LMethod364:
 aload_2
	LMethod365:
 iconst_1
	LMethod366:
 baload
	LMethod367:
 istore 8
	LMethod369:
 aload_2
	LMethod370:
 iconst_2
	LMethod371:
 baload
	LMethod372:
 istore 9
	LMethod374:
 aload_2
	LMethod375:
 iconst_3
	LMethod376:
 baload
	LMethod377:
 istore 10
	LMethod379:
 iconst_2
	LMethod380:
 newarray byte
	LMethod382:
 astore_3
	LMethod383:
 iconst_0
	LMethod384:
 istore 6
	LMethod386:
 aload_0
	LMethod387:
 dup
	LMethod388:
 getfield class0/field6 S
	LMethod390:
 iconst_1
	LMethod391:
 iadd
	LMethod392:
 i2b
	LMethod393:
 putfield class0/field6 [B
	LMethod395:
 iconst_0
	LMethod396:
 istore 16
	LMethod398:
 goto LMethod3126
	LMethod3100:
 aload_2
	LMethod3101:
 iconst_5
	LMethod3102:
 getfield class0/field0 [B
	LMethod3105:
 iload 5
	LMethod3106:
 iload 4
	LMethod3108:
 invokestatic javacard/framework/Util/arrayCopyNonAtomic([BS[BSS)S
	LMethod3111:
 pop
	LMethod3112:
 iload 5
	LMethod3114:
 iload 4
	LMethod3116:
 iadd
	LMethod3117:
 istore 5
	LMethod3119:
 aload_1
	LMethod3120:
 iconst_5
	LMethod3121:
 invokevirtual javacard/framework/APDU/receiveBytes(S)S
	LMethod3124:
 istore 4
	LMethod3126:
 iload 4
	LMethod3128:
 ifgt LMethod3100
	LMethod3130:
 iload 7
	LMethod3132:
 ifne LMethod3202
	LMethod3134:
 iload 8
	LMethod3136:
 sipush 164
	LMethod3138:
 if_icmpne LMethod3202
	LMethod3140:
 iload 9
	LMethod3142:
 iconst_4
	LMethod3143:
 if_icmpne LMethod3202
	LMethod3145:
 iload 10
	LMethod3147:
 ifne LMethod3202
	LMethod3149:
 getfield class0/field0 [B
	LMethod3152:
 iconst_0
	LMethod3152:
 baload
	LMethod3153:
 bipush 49
	LMethod3155:
 if_icmpne LMethod3185
	LMethod3157:
 getfield class0/field0 [B
	LMethod3160:
 iconst_1
	LMethod3160:
 baload
	LMethod3161:
 bipush 80
	LMethod3163:
 if_icmpne LMethod3185
	LMethod3165:
 getfield class0/field0 [B
	LMethod3168:
 iconst_2
	LMethod3168:
 baload
	LMethod3169:
 bipush 65
	LMethod3171:
 if_icmpne LMethod3185
	LMethod3173:
 getfield class0/field0 [B
	LMethod3176:
 iconst_3
	LMethod3176:
 baload
	LMethod3177:
 bipush 89
	LMethod3179:
 if_icmpne LMethod3185
	LMethod3181:
 aload_0
	LMethod3182:
 iconst_0
	LMethod3183:
 putfield class0/field6 [B
	LMethod3185:
 getfield class0/field0 [B
	LMethod3188:
 iconst_0
	LMethod3188:
 getfield class0/field2 [B
	LMethod3191:
 iconst_0
	LMethod3191:
 iload 5
	LMethod3193:
 invokestatic javacard/framework/Util/arrayCopyNonAtomic([BS[BSS)S
	LMethod3196:
 pop
	LMethod3197:
 aload_0
	LMethod3198:
 iload 5
	LMethod3200:
 putfield class0/field7 [B
	LMethod3202:
 iload 7
	LMethod3204:
 ifne LMethod3232
	LMethod3206:
 iload 8
	LMethod3208:
 sipush 164
	LMethod3210:
 if_icmpne LMethod3232
	LMethod3212:
 iload 9
	LMethod3214:
 iconst_1
	LMethod3215:
 if_icmpne LMethod3232
	LMethod3217:
 iload 10
	LMethod3219:
 iconst_1
	LMethod3220:
 if_icmpne LMethod3232
	LMethod3222:
 aload_0
	LMethod3223:
 iconst_0
	LMethod3224:
 putfield class0/field8 [B
	LMethod3226:
 iconst_1
	LMethod3227:
 istore 16
	LMethod3229:
 goto_w LMethod31076
	LMethod3232:
 iload 7
	LMethod3234:
 ifne LMethod3386
	LMethod3237:
 iload 8
	LMethod3239:
 sipush 164
	LMethod3241:
 if_icmpne LMethod3386
	LMethod3244:
 iload 9
	LMethod3246:
 iconst_1
	LMethod3247:
 if_icmpne LMethod3386
	LMethod3250:
 iload 10
	LMethod3252:
 iconst_2
	LMethod3253:
 if_icmpne LMethod3386
	LMethod3256:
 getfield class0/field0 [B
	LMethod3259:
 iconst_1
	LMethod3259:
 baload
	LMethod3260:
 ifne LMethod3318
	LMethod3262:
 getfield class0/field0 [B
	LMethod3265:
 iconst_2
	LMethod3265:
 baload
	LMethod3266:
 sipush 164
	LMethod3268:
 if_icmpne LMethod3318
	LMethod3270:
 getfield class0/field0 [B
	LMethod3273:
 iconst_3
	LMethod3273:
 baload
	LMethod3274:
 iconst_4
	LMethod3275:
 if_icmpne LMethod3318
	LMethod3277:
 getfield class0/field0 [B
	LMethod3280:
 iconst_4
	LMethod3280:
 baload
	LMethod3281:
 ifne LMethod3318
	LMethod3283:
 aload_0
	LMethod3284:
 getfield class0/field0 [B
	LMethod3287:
 iconst_5
	LMethod3287:
 baload
	LMethod3288:
 putfield class0/field7 [B
	LMethod3290:
 getfield class0/field0 [B
	LMethod3293:
 bipush 6
	LMethod3294:
 getfield class0/field2 [B
	LMethod3297:
 iconst_0
	LMethod3297:
 getfield class0/field5 S
	LMethod3300:
 invokestatic javacard/framework/Util/arrayCopyNonAtomic([BS[BSS)S
	LMethod3302:
 pop
	LMethod3303:
 getfield class0/field0 [B
	LMethod3306:
 iconst_0
	LMethod3306:
 getfield class0/field1 [B
	LMethod3309:
 getfield class0/field4 [B
	LMethod3311:
 iload 5
	LMethod3312:
 invokestatic javacard/framework/Util/arrayCopyNonAtomic([BS[BSS)S
	LMethod3315:
 pop
	LMethod3316:
 goto LMethod3371
	LMethod3318:
 getfield class0/field1 [B
	LMethod3321:
 getfield class0/field4 [B
	LMethod3323:
 getfield class0/field5 S
	LMethod3325:
 iconst_1
	LMethod3325:
 iadd
	LMethod3326:
 i2b
	LMethod3327:
 bastore
	LMethod3328:
 aload_0
	LMethod3329:
 dup
	LMethod3330:
 getfield class0/field4 [B
	LMethod3332:
 iconst_1
	LMethod3333:
 iadd
	LMethod3334:
 putfield class0/field8 [B
	LMethod3336:
 getfield class0/field2 [B
	LMethod3339:
 iconst_0
	LMethod3339:
 getfield class0/field1 [B
	LMethod3342:
 getfield class0/field4 [B
	LMethod3344:
 getfield class0/field5 S
	LMethod3346:
 invokestatic javacard/framework/Util/arrayCopyNonAtomic([BS[BSS)S
	LMethod3348:
 pop
	LMethod3349:
 aload_0
	LMethod3350:
 dup
	LMethod3351:
 getfield class0/field4 [B
	LMethod3353:
 getfield class0/field5 S
	LMethod3356:
 iadd
	LMethod3356:
 putfield class0/field8 [B
	LMethod3358:
 getfield class0/field0 [B
	LMethod3361:
 iconst_0
	LMethod3361:
 getfield class0/field1 [B
	LMethod3364:
 getfield class0/field4 [B
	LMethod3366:
 iload 5
	LMethod3367:
 invokestatic javacard/framework/Util/arrayCopyNonAtomic([BS[BSS)S
	LMethod3370:
 pop
	LMethod3371:
 aload_0
	LMethod3372:
 dup
	LMethod3373:
 getfield class0/field4 [B
	LMethod3375:
 iload 5
	LMethod3377:
 iadd
	LMethod3378:
 putfield class0/field8 [B
	LMethod3380:
 iconst_1
	LMethod3381:
 istore 16
	LMethod3383:
 goto_w LMethod31076
	LMethod3386:
 iload 7
	LMethod3388:
 ifne LMethod3429
	LMethod3390:
 iload 8
	LMethod3392:
 sipush 164
	LMethod3394:
 if_icmpne LMethod3429
	LMethod3396:
 iload 9
	LMethod3398:
 iconst_1
	LMethod3399:
 if_icmpne LMethod3429
	LMethod3401:
 iload 10
	LMethod3403:
 iconst_3
	LMethod3404:
 if_icmpne LMethod3429
	LMethod3406:
 getfield class0/field4 [B
	LMethod3409:
 newarray byte
	LMethod3410:
 astore_3
	LMethod3411:
 getfield class0/field1 [B
	LMethod3414:
 iconst_0
	LMethod3414:
 aload_3
	LMethod3415:
 iconst_0
	LMethod3416:
 getfield class0/field4 [B
	LMethod3419:
 invokestatic javacard/framework/Util/arrayCopyNonAtomic([BS[BSS)S
	LMethod3421:
 pop
	LMethod3422:
 getfield class0/field4 [B
	LMethod3425:
 istore 6
	LMethod3426:
 goto_w LMethod31076
	LMethod3429:
 iload 7
	LMethod3431:
 ifne LMethod3527
	LMethod3433:
 iload 8
	LMethod3435:
 sipush 164
	LMethod3437:
 if_icmpne LMethod3527
	LMethod3439:
 iload 9
	LMethod3441:
 iconst_1
	LMethod3442:
 if_icmpne LMethod3527
	LMethod3444:
 iload 10
	LMethod3446:
 iconst_4
	LMethod3447:
 if_icmpne LMethod3527
	LMethod3449:
 getfield class0/field0 [B
	LMethod3452:
 iconst_0
	LMethod3452:
 baload
	LMethod3453:
 istore 12
	LMethod3455:
 iload 12
	LMethod3457:
 sipush 255
	LMethod3460:
 imul
	LMethod3461:
 istore 11
	LMethod3463:
 getfield class0/field7 B
	LMethod3466:
 iload 11
	LMethod3467:
 if_icmple LMethod3521
	LMethod3469:
 getfield class0/field7 B
	LMethod3472:
 iload 11
	LMethod3473:
 sipush 255
	LMethod3476:
 iadd
	LMethod3477:
 if_icmple LMethod3486
	LMethod3479:
 sipush 255
	LMethod3482:
 istore 6
	LMethod3484:
 goto LMethod3497
	LMethod3486:
 getfield class0/field7 B
	LMethod3489:
 iload 12
	LMethod3490:
 sipush 255
	LMethod3493:
 imul
	LMethod3494:
 isub
	LMethod3495:
 istore 6
	LMethod3497:
 iload 6
	LMethod3499:
 newarray byte
	LMethod3501:
 astore_3
	LMethod3502:
 getfield class0/field3 [B
	LMethod3505:
 iload 12
	LMethod3506:
 sipush 255
	LMethod3509:
 imul
	LMethod3510:
 aload_3
	LMethod3511:
 iconst_0
	LMethod3512:
 iload 6
	LMethod3514:
 invokestatic javacard/framework/Util/arrayCopyNonAtomic([BS[BSS)S
	LMethod3517:
 pop
	LMethod3518:
 goto_w LMethod31076
	LMethod3521:
 iconst_1
	LMethod3522:
 istore 16
	LMethod3524:
 goto_w LMethod31076
	LMethod3527:
 iload 7
	LMethod3529:
 ifne LMethod3561
	LMethod3531:
 iload 8
	LMethod3533:
 sipush 164
	LMethod3535:
 if_icmpne LMethod3561
	LMethod3537:
 iload 9
	LMethod3539:
 iconst_1
	LMethod3540:
 if_icmpne LMethod3561
	LMethod3542:
 iload 10
	LMethod3544:
 iconst_5
	LMethod3545:
 if_icmpne LMethod3561
	LMethod3547:
 iconst_1
	LMethod3548:
 istore 16
	LMethod3550:
 aload_0
	LMethod3551:
 iconst_0
	LMethod3552:
 putfield class0/field4 [B
	LMethod3554:
 aload_0
	LMethod3555:
 iconst_0
	LMethod3556:
 putfield class0/field6 [B
	LMethod3558:
 goto_w LMethod31076
	LMethod3561:
 iload 7
	LMethod3563:
 ifne LMethod3595
	LMethod3565:
 iload 8
	LMethod3567:
 sipush 164
	LMethod3569:
 if_icmpne LMethod3595
	LMethod3571:
 iload 9
	LMethod3573:
 iconst_1
	LMethod3574:
 if_icmpne LMethod3595
	LMethod3576:
 iload 10
	LMethod3578:
 bipush 6
	LMethod3580:
 if_icmpne LMethod3595
	LMethod3582:
 iconst_1
	LMethod3583:
 istore 16
	LMethod3585:
 aload_0
	LMethod3586:
 getfield class0/field0 [B
	LMethod3589:
 iconst_0
	LMethod3589:
 baload
	LMethod3590:
 putfield class0/field5 [B
	LMethod3592:
 goto_w LMethod31076
	LMethod3595:
 iload 7
	LMethod3597:
 ifne LMethod3634
	LMethod3599:
 iload 8
	LMethod3601:
 sipush 164
	LMethod3603:
 if_icmpne LMethod3634
	LMethod3605:
 iload 9
	LMethod3607:
 iconst_1
	LMethod3608:
 if_icmpne LMethod3634
	LMethod3610:
 iload 10
	LMethod3612:
 bipush 7
	LMethod3614:
 if_icmpne LMethod3634
	LMethod3616:
 iconst_2
	LMethod3617:
 istore 6
	LMethod3619:
 iconst_2
	LMethod3620:
 newarray byte
	LMethod3622:
 astore_3
	LMethod3623:
 aload_3
	LMethod3624:
 iconst_0
	LMethod3625:
 iconst_1
	LMethod3626:
 bastore
	LMethod3627:
 aload_3
	LMethod3628:
 iconst_1
	LMethod3629:
 iconst_0
	LMethod3630:
 bastore
	LMethod3631:
 goto_w LMethod31076
	LMethod3634:
 iconst_0
	LMethod3635:
 istore 11
	LMethod3637:
 goto_w LMethod31069
	LMethod3640:
 iconst_1
	LMethod3641:
 istore 15
	LMethod3643:
 iload 7
	LMethod3645:
 ifne LMethod3662
	LMethod3647:
 iload 8
	LMethod3649:
 sipush 164
	LMethod3651:
 if_icmpne LMethod3662
	LMethod3653:
 iload 9
	LMethod3655:
 iconst_4
	LMethod3656:
 if_icmpne LMethod3662
	LMethod3658:
 iload 10
	LMethod3660:
 ifeq LMethod3729
	LMethod3662:
 iconst_0
	LMethod3663:
 istore 13
	LMethod3665:
 goto LMethod3690
	LMethod3667:
 getfield class0/field2 [B
	LMethod3670:
 iload 13
	LMethod3671:
 baload
	LMethod3672:
 getfield class0/field1 [B
	LMethod3675:
 iload 11
	LMethod3676:
 iload 13
	LMethod3678:
 iadd
	LMethod3679:
 iconst_1
	LMethod3680:
 iadd
	LMethod3681:
 baload
	LMethod3682:
 if_icmpeq LMethod3687
	LMethod3684:
 iconst_0
	LMethod3685:
 istore 15
	LMethod3687:
 iinc 13 1
	LMethod3690:
 iload 13
	LMethod3692:
 getfield class0/field5 S
	LMethod3695:
 if_icmplt LMethod3667
	LMethod3696:
 iload 15
	LMethod3698:
 iconst_1
	LMethod3699:
 if_icmpne LMethod3729
	LMethod3701:
 getfield class0/field1 [B
	LMethod3704:
 iload 11
	LMethod3705:
 baload
	LMethod3706:
 istore 12
	LMethod3708:
 iload 12
	LMethod3710:
 ifge LMethod3722
	LMethod3712:
 iload 12
	LMethod3714:
 sipush 255
	LMethod3717:
 iadd
	LMethod3718:
 iconst_1
	LMethod3719:
 iadd
	LMethod3720:
 istore 12
	LMethod3722:
 iload 11
	LMethod3724:
 iload 12
	LMethod3726:
 iadd
	LMethod3727:
 istore 11
	LMethod3729:
 iload 15
	LMethod3731:
 iconst_1
	LMethod3732:
 if_icmpne LMethod31041
	LMethod3735:
 iload 7
	LMethod3737:
 getfield class0/field1 [B
	LMethod3740:
 iload 11
	LMethod3741:
 iconst_1
	LMethod3742:
 iadd
	LMethod3743:
 baload
	LMethod3744:
 if_icmpne LMethod31011
	LMethod3747:
 iload 8
	LMethod3749:
 getfield class0/field1 [B
	LMethod3752:
 iload 11
	LMethod3753:
 iconst_2
	LMethod3754:
 iadd
	LMethod3755:
 baload
	LMethod3756:
 if_icmpne LMethod31011
	LMethod3759:
 iload 9
	LMethod3761:
 getfield class0/field1 [B
	LMethod3764:
 iload 11
	LMethod3765:
 iconst_3
	LMethod3766:
 iadd
	LMethod3767:
 baload
	LMethod3768:
 if_icmpne LMethod31011
	LMethod3771:
 iload 10
	LMethod3773:
 getfield class0/field1 [B
	LMethod3776:
 iload 11
	LMethod3777:
 iconst_4
	LMethod3778:
 iadd
	LMethod3779:
 baload
	LMethod3780:
 if_icmpne LMethod31011
	LMethod3783:
 getfield class0/field1 [B
	LMethod3786:
 iload 11
	LMethod3787:
 iconst_5
	LMethod3788:
 iadd
	LMethod3789:
 baload
	LMethod3790:
 istore 12
	LMethod3792:
 iload 12
	LMethod3794:
 ifge LMethod3806
	LMethod3796:
 iload 12
	LMethod3798:
 sipush 255
	LMethod3801:
 iadd
	LMethod3802:
 iconst_1
	LMethod3803:
 iadd
	LMethod3804:
 istore 12
	LMethod3806:
 iload 12
	LMethod3808:
 ifle LMethod3925
	LMethod3810:
 iconst_1
	LMethod3811:
 istore 15
	LMethod3813:
 iconst_0
	LMethod3814:
 istore 13
	LMethod3816:
 goto LMethod3846
	LMethod3818:
 getfield class0/field0 [B
	LMethod3821:
 iload 13
	LMethod3822:
 baload
	LMethod3823:
 getfield class0/field1 [B
	LMethod3826:
 iload 11
	LMethod3827:
 bipush 6
	LMethod3829:
 iadd
	LMethod3830:
 iload 13
	LMethod3832:
 iadd
	LMethod3833:
 baload
	LMethod3834:
 if_icmpeq LMethod3843
	LMethod3836:
 iconst_0
	LMethod3837:
 istore 15
	LMethod3839:
 iload 12
	LMethod3841:
 istore 13
	LMethod3843:
 iinc 13 1
	LMethod3846:
 iload 13
	LMethod3848:
 iload 12
	LMethod3850:
 if_icmplt LMethod3818
	LMethod3852:
 iload 15
	LMethod3854:
 iconst_1
	LMethod3855:
 if_icmpne LMethod3981
	LMethod3858:
 getfield class0/field1 [B
	LMethod3861:
 iload 11
	LMethod3862:
 iconst_5
	LMethod3863:
 iadd
	LMethod3864:
 iconst_1
	LMethod3865:
 iadd
	LMethod3866:
 iload 12
	LMethod3868:
 iadd
	LMethod3869:
 baload
	LMethod3870:
 istore 14
	LMethod3872:
 iload 14
	LMethod3874:
 ifge LMethod3886
	LMethod3876:
 iload 14
	LMethod3878:
 sipush 255
	LMethod3881:
 iadd
	LMethod3882:
 iconst_1
	LMethod3883:
 iadd
	LMethod3884:
 istore 14
	LMethod3886:
 iload 14
	LMethod3888:
 newarray byte
	LMethod3890:
 astore_3
	LMethod3891:
 iload 14
	LMethod3893:
 istore 6
	LMethod3895:
 getfield class0/field1 [B
	LMethod3898:
 iload 11
	LMethod3899:
 iconst_5
	LMethod3900:
 iadd
	LMethod3901:
 iconst_1
	LMethod3902:
 iadd
	LMethod3903:
 iload 12
	LMethod3905:
 iadd
	LMethod3906:
 iconst_1
	LMethod3907:
 iadd
	LMethod3908:
 aload_3
	LMethod3909:
 iconst_0
	LMethod3910:
 iload 14
	LMethod3912:
 invokestatic javacard/framework/Util/arrayCopyNonAtomic([BS[BSS)S
	LMethod3915:
 pop
	LMethod3916:
 iload 11
	LMethod3918:
 getfield class0/field4 [B
	LMethod3921:
 iadd
	LMethod3921:
 istore 11
	LMethod3923:
 goto LMethod3981
	LMethod3925:
 getfield class0/field1 [B
	LMethod3928:
 iload 11
	LMethod3929:
 iconst_5
	LMethod3930:
 iadd
	LMethod3931:
 iconst_1
	LMethod3932:
 iadd
	LMethod3933:
 baload
	LMethod3934:
 istore 14
	LMethod3936:
 iload 14
	LMethod3938:
 ifge LMethod3950
	LMethod3940:
 iload 14
	LMethod3942:
 sipush 255
	LMethod3945:
 iadd
	LMethod3946:
 iconst_1
	LMethod3947:
 iadd
	LMethod3948:
 istore 14
	LMethod3950:
 iload 14
	LMethod3952:
 istore 6
	LMethod3954:
 iload 14
	LMethod3956:
 newarray byte
	LMethod3958:
 astore_3
	LMethod3959:
 getfield class0/field1 [B
	LMethod3962:
 iload 11
	LMethod3963:
 bipush 7
	LMethod3965:
 iadd
	LMethod3966:
 aload_3
	LMethod3967:
 iconst_0
	LMethod3968:
 iload 14
	LMethod3970:
 invokestatic javacard/framework/Util/arrayCopyNonAtomic([BS[BSS)S
	LMethod3973:
 pop
	LMethod3974:
 iload 11
	LMethod3976:
 getfield class0/field4 [B
	LMethod3979:
 iadd
	LMethod3979:
 istore 11
	LMethod3981:
 getfield class0/field1 [B
	LMethod3984:
 iload 11
	LMethod3985:
 baload
	LMethod3986:
 istore 12
	LMethod3988:
 iload 12
	LMethod3990:
 ifge LMethod31002
	LMethod3992:
 iload 12
	LMethod3994:
 sipush 255
	LMethod3997:
 iadd
	LMethod3998:
 iconst_1
	LMethod3999:
 iadd
	LMethod31000:
 istore 12
	LMethod31002:
 iload 11
	LMethod31004:
 iload 12
	LMethod31006:
 iadd
	LMethod31007:
 istore 11
	LMethod31009:
 goto LMethod31069
	LMethod31011:
 getfield class0/field1 [B
	LMethod31014:
 iload 11
	LMethod31015:
 baload
	LMethod31016:
 istore 12
	LMethod31018:
 iload 12
	LMethod31020:
 ifge LMethod31032
	LMethod31022:
 iload 12
	LMethod31024:
 sipush 255
	LMethod31027:
 iadd
	LMethod31028:
 iconst_1
	LMethod31029:
 iadd
	LMethod31030:
 istore 12
	LMethod31032:
 iload 11
	LMethod31034:
 iload 12
	LMethod31036:
 iadd
	LMethod31037:
 istore 11
	LMethod31039:
 goto LMethod31069
	LMethod31041:
 getfield class0/field1 [B
	LMethod31044:
 iload 11
	LMethod31045:
 baload
	LMethod31046:
 istore 12
	LMethod31048:
 iload 12
	LMethod31050:
 ifge LMethod31062
	LMethod31052:
 iload 12
	LMethod31054:
 sipush 255
	LMethod31057:
 iadd
	LMethod31058:
 iconst_1
	LMethod31059:
 iadd
	LMethod31060:
 istore 12
	LMethod31062:
 iload 11
	LMethod31064:
 iload 12
	LMethod31066:
 iadd
	LMethod31067:
 istore 11
	LMethod31069:
 iload 11
	LMethod31071:
 getfield class0/field4 [B
	LMethod31074:
 if_icmplt LMethod3640
	LMethod31076:
 iload 16
	LMethod31078:
 iconst_1
	LMethod31079:
 if_icmpne LMethod31106
	LMethod31081:
 iconst_3
	LMethod31082:
 istore 6
	LMethod31084:
 iconst_3
	LMethod31085:
 newarray byte
	LMethod31087:
 astore_3
	LMethod31088:
 aload_3
	LMethod31089:
 iconst_0
	LMethod31090:
 bipush 79
	LMethod31092:
 bastore
	LMethod31093:
 aload_3
	LMethod31094:
 iconst_1
	LMethod31095:
 bipush 107
	LMethod31097:
 bastore
	LMethod31098:
 aload_3
	LMethod31099:
 iconst_2
	LMethod31100:
 bipush 33
	LMethod31102:
 bastore
	LMethod31103:
 goto_w LMethod31235
	LMethod31106:
 getfield class0/field8 S
	LMethod31109:
 iconst_1
	LMethod31109:
 if_icmpne LMethod31235
	LMethod31112:
 getfield class0/field7 B
	LMethod31115:
 iload 5
	LMethod31116:
 iadd
	LMethod31117:
 sipush 6000
	LMethod31120:
 if_icmpge LMethod31235
	LMethod31122:
 getfield class0/field3 [B
	LMethod31124:
 aload_0
	LMethod31125:
 dup
	LMethod31127:
 getfield class0/field7 B
	LMethod31128:
 dup_x1
	LMethod31130:
 iconst_1
	LMethod31131:
 iadd
	LMethod31132:
 putfield class0/field4 [B
	LMethod31134:
 getfield class0/field6 S
	LMethod31136:
 bastore
	LMethod31138:
 getfield class0/field3 [B
	LMethod31139:
 aload_0
	LMethod31140:
 dup
	LMethod31142:
 getfield class0/field7 B
	LMethod31143:
 dup_x1
	LMethod31145:
 iconst_1
	LMethod31146:
 iadd
	LMethod31147:
 putfield class0/field4 [B
	LMethod31149:
 iload 7
	LMethod31151:
 bastore
	LMethod31152:
 getfield class0/field3 [B
	LMethod31154:
 aload_0
	LMethod31155:
 dup
	LMethod31157:
 getfield class0/field7 B
	LMethod31158:
 dup_x1
	LMethod31160:
 iconst_1
	LMethod31161:
 iadd
	LMethod31162:
 putfield class0/field4 [B
	LMethod31164:
 iload 8
	LMethod31166:
 bastore
	LMethod31167:
 getfield class0/field3 [B
	LMethod31169:
 aload_0
	LMethod31170:
 dup
	LMethod31172:
 getfield class0/field7 B
	LMethod31173:
 dup_x1
	LMethod31175:
 iconst_1
	LMethod31176:
 iadd
	LMethod31177:
 putfield class0/field4 [B
	LMethod31179:
 iload 9
	LMethod31181:
 bastore
	LMethod31182:
 getfield class0/field3 [B
	LMethod31184:
 aload_0
	LMethod31185:
 dup
	LMethod31187:
 getfield class0/field7 B
	LMethod31188:
 dup_x1
	LMethod31190:
 iconst_1
	LMethod31191:
 iadd
	LMethod31192:
 putfield class0/field4 [B
	LMethod31194:
 iload 10
	LMethod31196:
 bastore
	LMethod31197:
 getfield class0/field3 [B
	LMethod31199:
 aload_0
	LMethod31200:
 dup
	LMethod31202:
 getfield class0/field7 B
	LMethod31203:
 dup_x1
	LMethod31205:
 iconst_1
	LMethod31206:
 iadd
	LMethod31207:
 putfield class0/field4 [B
	LMethod31209:
 iload 5
	LMethod31211:
 i2b
	LMethod31212:
 bastore
	LMethod31213:
 getfield class0/field0 [B
	LMethod31216:
 iconst_0
	LMethod31216:
 getfield class0/field3 [B
	LMethod31219:
 getfield class0/field7 B
	LMethod31221:
 iload 5
	LMethod31222:
 invokestatic javacard/framework/Util/arrayCopyNonAtomic([BS[BSS)S
	LMethod31225:
 pop
	LMethod31226:
 aload_0
	LMethod31227:
 dup
	LMethod31228:
 getfield class0/field7 B
	LMethod31230:
 iload 5
	LMethod31232:
 iadd
	LMethod31233:
 putfield class0/field4 [B
	LMethod31235:
 iload 6
	LMethod31237:
 iconst_2
	LMethod31238:
 if_icmpne LMethod31323
	LMethod31240:
 aload_3
	LMethod31241:
 iconst_0
	LMethod31242:
 baload
	LMethod31243:
 bipush 106
	LMethod31245:
 if_icmpne LMethod31267
	LMethod31247:
 aload_3
	LMethod31248:
 iconst_0
	LMethod31249:
 baload
	LMethod31250:
 sipush 256
	LMethod31253:
 imul
	LMethod31254:
 aload_3
	LMethod31255:
 iconst_1
	LMethod31256:
 baload
	LMethod31257:
 iadd
	LMethod31258:
 sipush 256
	LMethod31261:
 iadd
	LMethod31262:
 invokestatic javacard/framework/ISOException/throwIt(S)V
	LMethod31265:
 goto LMethod31354
	LMethod31267:
 aload_3
	LMethod31268:
 iconst_0
	LMethod31269:
 baload
	LMethod31270:
 bipush 108
	LMethod31272:
 if_icmpne LMethod31294
	LMethod31274:
 aload_3
	LMethod31275:
 iconst_0
	LMethod31276:
 baload
	LMethod31277:
 sipush 256
	LMethod31280:
 imul
	LMethod31281:
 aload_3
	LMethod31282:
 iconst_1
	LMethod31283:
 baload
	LMethod31284:
 iadd
	LMethod31285:
 sipush 256
	LMethod31288:
 iadd
	LMethod31289:
 invokestatic javacard/framework/ISOException/throwIt(S)V
	LMethod31292:
 goto LMethod31354
	LMethod31294:
 aload_3
	LMethod31295:
 iconst_0
	LMethod31296:
 baload
	LMethod31297:
 sipush 144
	LMethod31299:
 if_icmpne LMethod31302
	LMethod31301:
 return
	LMethod31302:
 aload_1
	LMethod31303:
 invokevirtual javacard/framework/APDU/setOutgoing()S
	LMethod31306:
 pop
	LMethod31307:
 aload_1
	LMethod31308:
 iload 6
	LMethod31310:
 invokevirtual javacard/framework/APDU/setOutgoingLength(S)V
	LMethod31313:
 aload_1
	LMethod31314:
 aload_3
	LMethod31315:
 iconst_0
	LMethod31316:
 iload 6
	LMethod31318:
 invokevirtual javacard/framework/APDU/sendBytesLong([BSS)V
	LMethod31321:
 goto LMethod31354
	LMethod31323:
 iload 6
	LMethod31325:
 ifne LMethod31335
	LMethod31327:
 sipush 27266
	LMethod31330:
 invokestatic javacard/framework/ISOException/throwIt(S)V
	LMethod31333:
 goto LMethod31354
	LMethod31335:
 aload_1
	LMethod31336:
 invokevirtual javacard/framework/APDU/setOutgoing()S
	LMethod31339:
 pop
	LMethod31340:
 aload_1
	LMethod31341:
 iload 6
	LMethod31343:
 invokevirtual javacard/framework/APDU/setOutgoingLength(S)V
	LMethod31346:
 aload_1
	LMethod31347:
 aload_3
	LMethod31348:
 iconst_0
	LMethod31349:
 iload 6
	LMethod31351:
 invokevirtual javacard/framework/APDU/sendBytesLong([BSS)V
	LMethod31354:
 return
.end method
