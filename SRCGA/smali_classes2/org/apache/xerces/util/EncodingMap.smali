.class public Lorg/apache/xerces/util/EncodingMap;
.super Ljava/lang/Object;
.source "EncodingMap.java"


# static fields
.field protected static final fIANA2JavaMap:Ljava/util/Hashtable;

.field protected static final fJava2IANAMap:Ljava/util/Hashtable;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 520
    new-instance v0, Ljava/util/Hashtable;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    .line 523
    new-instance v0, Ljava/util/Hashtable;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lorg/apache/xerces/util/EncodingMap;->fJava2IANAMap:Ljava/util/Hashtable;

    .line 532
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "BIG5"

    const-string v2, "Big5"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 533
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "CSBIG5"

    const-string v2, "Big5"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 534
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "CP037"

    const-string v2, "CP037"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 535
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "IBM037"

    const-string v2, "CP037"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 536
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "CSIBM037"

    const-string v2, "CP037"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 537
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "EBCDIC-CP-US"

    const-string v2, "CP037"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 538
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "EBCDIC-CP-CA"

    const-string v2, "CP037"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 539
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "EBCDIC-CP-NL"

    const-string v2, "CP037"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 540
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "EBCDIC-CP-WT"

    const-string v2, "CP037"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 541
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "IBM273"

    const-string v2, "CP273"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 542
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "CP273"

    const-string v2, "CP273"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 543
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "CSIBM273"

    const-string v2, "CP273"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 544
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "IBM277"

    const-string v2, "CP277"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 545
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "CP277"

    const-string v2, "CP277"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 546
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "CSIBM277"

    const-string v2, "CP277"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 547
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "EBCDIC-CP-DK"

    const-string v2, "CP277"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 548
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "EBCDIC-CP-NO"

    const-string v2, "CP277"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 549
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "IBM278"

    const-string v2, "CP278"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 550
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "CP278"

    const-string v2, "CP278"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 551
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "CSIBM278"

    const-string v2, "CP278"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 552
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "EBCDIC-CP-FI"

    const-string v2, "CP278"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 553
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "EBCDIC-CP-SE"

    const-string v2, "CP278"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 554
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "IBM280"

    const-string v2, "CP280"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 555
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "CP280"

    const-string v2, "CP280"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 556
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "CSIBM280"

    const-string v2, "CP280"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 557
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "EBCDIC-CP-IT"

    const-string v2, "CP280"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 558
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "IBM284"

    const-string v2, "CP284"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 559
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "CP284"

    const-string v2, "CP284"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 560
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "CSIBM284"

    const-string v2, "CP284"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 561
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "EBCDIC-CP-ES"

    const-string v2, "CP284"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 562
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "EBCDIC-CP-GB"

    const-string v2, "CP285"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 563
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "IBM285"

    const-string v2, "CP285"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 564
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "CP285"

    const-string v2, "CP285"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 565
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "CSIBM285"

    const-string v2, "CP285"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 566
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "EBCDIC-JP-KANA"

    const-string v2, "CP290"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 567
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "IBM290"

    const-string v2, "CP290"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 568
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "CP290"

    const-string v2, "CP290"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 569
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "CSIBM290"

    const-string v2, "CP290"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 570
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "EBCDIC-CP-FR"

    const-string v2, "CP297"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 571
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "IBM297"

    const-string v2, "CP297"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 572
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "CP297"

    const-string v2, "CP297"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 573
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "CSIBM297"

    const-string v2, "CP297"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 574
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "EBCDIC-CP-AR1"

    const-string v2, "CP420"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 575
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "IBM420"

    const-string v2, "CP420"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 576
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "CP420"

    const-string v2, "CP420"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 577
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "CSIBM420"

    const-string v2, "CP420"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 578
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "EBCDIC-CP-HE"

    const-string v2, "CP424"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 579
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "IBM424"

    const-string v2, "CP424"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 580
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "CP424"

    const-string v2, "CP424"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 581
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "CSIBM424"

    const-string v2, "CP424"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 582
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "IBM437"

    const-string v2, "CP437"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 583
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "437"

    const-string v2, "CP437"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 584
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "CP437"

    const-string v2, "CP437"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 585
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "CSPC8CODEPAGE437"

    const-string v2, "CP437"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 586
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "EBCDIC-CP-CH"

    const-string v2, "CP500"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 587
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "IBM500"

    const-string v2, "CP500"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 588
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "CP500"

    const-string v2, "CP500"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 589
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "CSIBM500"

    const-string v2, "CP500"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 590
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "EBCDIC-CP-CH"

    const-string v2, "CP500"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 591
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "EBCDIC-CP-BE"

    const-string v2, "CP500"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 592
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "IBM775"

    const-string v2, "CP775"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 593
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "CP775"

    const-string v2, "CP775"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 594
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "CSPC775BALTIC"

    const-string v2, "CP775"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 595
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "IBM850"

    const-string v2, "CP850"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 596
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "850"

    const-string v2, "CP850"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 597
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "CP850"

    const-string v2, "CP850"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 598
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "CSPC850MULTILINGUAL"

    const-string v2, "CP850"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 599
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "IBM852"

    const-string v2, "CP852"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 600
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "852"

    const-string v2, "CP852"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 601
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "CP852"

    const-string v2, "CP852"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 602
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "CSPCP852"

    const-string v2, "CP852"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 603
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "IBM855"

    const-string v2, "CP855"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 604
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "855"

    const-string v2, "CP855"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 605
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "CP855"

    const-string v2, "CP855"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 606
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "CSIBM855"

    const-string v2, "CP855"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 607
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "IBM857"

    const-string v2, "CP857"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 608
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "857"

    const-string v2, "CP857"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 609
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "CP857"

    const-string v2, "CP857"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 610
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "CSIBM857"

    const-string v2, "CP857"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 611
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "IBM00858"

    const-string v2, "CP858"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 612
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "CP00858"

    const-string v2, "CP858"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 613
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "CCSID00858"

    const-string v2, "CP858"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 614
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "IBM860"

    const-string v2, "CP860"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 615
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "860"

    const-string v2, "CP860"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 616
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "CP860"

    const-string v2, "CP860"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 617
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "CSIBM860"

    const-string v2, "CP860"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 618
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "IBM861"

    const-string v2, "CP861"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 619
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "861"

    const-string v2, "CP861"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 620
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "CP861"

    const-string v2, "CP861"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 621
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "CP-IS"

    const-string v2, "CP861"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 622
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "CSIBM861"

    const-string v2, "CP861"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 623
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "IBM862"

    const-string v2, "CP862"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 624
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "862"

    const-string v2, "CP862"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 625
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "CP862"

    const-string v2, "CP862"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 626
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "CSPC862LATINHEBREW"

    const-string v2, "CP862"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 627
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "IBM863"

    const-string v2, "CP863"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 628
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "863"

    const-string v2, "CP863"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 629
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "CP863"

    const-string v2, "CP863"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 630
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "CSIBM863"

    const-string v2, "CP863"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 631
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "IBM864"

    const-string v2, "CP864"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 632
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "CP864"

    const-string v2, "CP864"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 633
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "CSIBM864"

    const-string v2, "CP864"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 634
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "IBM865"

    const-string v2, "CP865"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 635
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "865"

    const-string v2, "CP865"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 636
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "CP865"

    const-string v2, "CP865"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 637
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "CSIBM865"

    const-string v2, "CP865"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 638
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "IBM866"

    const-string v2, "CP866"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 639
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "866"

    const-string v2, "CP866"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 640
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "CP866"

    const-string v2, "CP866"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 641
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "CSIBM866"

    const-string v2, "CP866"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 642
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "IBM868"

    const-string v2, "CP868"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 643
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "CP868"

    const-string v2, "CP868"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 644
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "CSIBM868"

    const-string v2, "CP868"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 645
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "CP-AR"

    const-string v2, "CP868"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 646
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "IBM869"

    const-string v2, "CP869"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 647
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "CP869"

    const-string v2, "CP869"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 648
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "CSIBM869"

    const-string v2, "CP869"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 649
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "CP-GR"

    const-string v2, "CP869"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 650
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "IBM870"

    const-string v2, "CP870"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 651
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "CP870"

    const-string v2, "CP870"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 652
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "CSIBM870"

    const-string v2, "CP870"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 653
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "EBCDIC-CP-ROECE"

    const-string v2, "CP870"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 654
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "EBCDIC-CP-YU"

    const-string v2, "CP870"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 655
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "IBM871"

    const-string v2, "CP871"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 656
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "CP871"

    const-string v2, "CP871"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 657
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "CSIBM871"

    const-string v2, "CP871"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 658
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "EBCDIC-CP-IS"

    const-string v2, "CP871"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 659
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "IBM918"

    const-string v2, "CP918"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 660
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "CP918"

    const-string v2, "CP918"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 661
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "CSIBM918"

    const-string v2, "CP918"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 662
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "EBCDIC-CP-AR2"

    const-string v2, "CP918"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 663
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "IBM00924"

    const-string v2, "CP924"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 664
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "CP00924"

    const-string v2, "CP924"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 665
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "CCSID00924"

    const-string v2, "CP924"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 667
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "EBCDIC-LATIN9--EURO"

    const-string v2, "CP924"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 668
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "IBM1026"

    const-string v2, "CP1026"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 669
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "CP1026"

    const-string v2, "CP1026"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 670
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "CSIBM1026"

    const-string v2, "CP1026"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 671
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "IBM01140"

    const-string v2, "Cp1140"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 672
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "CP01140"

    const-string v2, "Cp1140"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 673
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "CCSID01140"

    const-string v2, "Cp1140"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 674
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "IBM01141"

    const-string v2, "Cp1141"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 675
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "CP01141"

    const-string v2, "Cp1141"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 676
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "CCSID01141"

    const-string v2, "Cp1141"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 677
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "IBM01142"

    const-string v2, "Cp1142"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 678
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "CP01142"

    const-string v2, "Cp1142"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 679
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "CCSID01142"

    const-string v2, "Cp1142"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 680
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "IBM01143"

    const-string v2, "Cp1143"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 681
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "CP01143"

    const-string v2, "Cp1143"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 682
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "CCSID01143"

    const-string v2, "Cp1143"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 683
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "IBM01144"

    const-string v2, "Cp1144"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 684
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "CP01144"

    const-string v2, "Cp1144"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 685
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "CCSID01144"

    const-string v2, "Cp1144"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 686
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "IBM01145"

    const-string v2, "Cp1145"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 687
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "CP01145"

    const-string v2, "Cp1145"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 688
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "CCSID01145"

    const-string v2, "Cp1145"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 689
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "IBM01146"

    const-string v2, "Cp1146"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 690
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "CP01146"

    const-string v2, "Cp1146"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 691
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "CCSID01146"

    const-string v2, "Cp1146"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 692
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "IBM01147"

    const-string v2, "Cp1147"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 693
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "CP01147"

    const-string v2, "Cp1147"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 694
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "CCSID01147"

    const-string v2, "Cp1147"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 695
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "IBM01148"

    const-string v2, "Cp1148"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 696
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "CP01148"

    const-string v2, "Cp1148"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 697
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "CCSID01148"

    const-string v2, "Cp1148"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 698
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "IBM01149"

    const-string v2, "Cp1149"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 699
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "CP01149"

    const-string v2, "Cp1149"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 700
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "CCSID01149"

    const-string v2, "Cp1149"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 701
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "EUC-JP"

    const-string v2, "EUCJIS"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 702
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "CSEUCPKDFMTJAPANESE"

    const-string v2, "EUCJIS"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 703
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "EXTENDED_UNIX_CODE_PACKED_FORMAT_FOR_JAPANESE"

    const-string v2, "EUCJIS"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 704
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "EUC-KR"

    const-string v2, "KSC5601"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 705
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "GB2312"

    const-string v2, "GB2312"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 706
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "CSGB2312"

    const-string v2, "GB2312"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 707
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "ISO-2022-JP"

    const-string v2, "JIS"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 708
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "CSISO2022JP"

    const-string v2, "JIS"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 709
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "ISO-2022-KR"

    const-string v2, "ISO2022KR"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 710
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "CSISO2022KR"

    const-string v2, "ISO2022KR"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 711
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "ISO-2022-CN"

    const-string v2, "ISO2022CN"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 713
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "X0201"

    const-string v2, "JIS0201"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 714
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "CSISO13JISC6220JP"

    const-string v2, "JIS0201"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 715
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "X0208"

    const-string v2, "JIS0208"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 716
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "ISO-IR-87"

    const-string v2, "JIS0208"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 717
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "X0208dbiJIS_X0208-1983"

    const-string v2, "JIS0208"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 718
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "CSISO87JISX0208"

    const-string v2, "JIS0208"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 719
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "X0212"

    const-string v2, "JIS0212"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 720
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "ISO-IR-159"

    const-string v2, "JIS0212"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 721
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "CSISO159JISX02121990"

    const-string v2, "JIS0212"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 722
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "GB18030"

    const-string v2, "GB18030"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 723
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "SHIFT_JIS"

    const-string v2, "SJIS"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 724
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "CSSHIFTJIS"

    const-string v2, "SJIS"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 725
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "MS_KANJI"

    const-string v2, "SJIS"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 726
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "WINDOWS-31J"

    const-string v2, "MS932"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 727
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "CSWINDOWS31J"

    const-string v2, "MS932"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 730
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "WINDOWS-1250"

    const-string v2, "Cp1250"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 731
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "WINDOWS-1251"

    const-string v2, "Cp1251"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 732
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "WINDOWS-1252"

    const-string v2, "Cp1252"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 733
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "WINDOWS-1253"

    const-string v2, "Cp1253"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 734
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "WINDOWS-1254"

    const-string v2, "Cp1254"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 735
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "WINDOWS-1255"

    const-string v2, "Cp1255"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 736
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "WINDOWS-1256"

    const-string v2, "Cp1256"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 737
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "WINDOWS-1257"

    const-string v2, "Cp1257"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 738
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "WINDOWS-1258"

    const-string v2, "Cp1258"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 739
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "TIS-620"

    const-string v2, "TIS620"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 741
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "ISO-8859-1"

    const-string v2, "ISO8859_1"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 742
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "ISO-IR-100"

    const-string v2, "ISO8859_1"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 743
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "ISO_8859-1"

    const-string v2, "ISO8859_1"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 744
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "LATIN1"

    const-string v2, "ISO8859_1"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 745
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "CSISOLATIN1"

    const-string v2, "ISO8859_1"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 746
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "L1"

    const-string v2, "ISO8859_1"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 747
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "IBM819"

    const-string v2, "ISO8859_1"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 748
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "CP819"

    const-string v2, "ISO8859_1"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 750
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "ISO-8859-2"

    const-string v2, "ISO8859_2"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 751
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "ISO-IR-101"

    const-string v2, "ISO8859_2"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 752
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "ISO_8859-2"

    const-string v2, "ISO8859_2"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 753
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "LATIN2"

    const-string v2, "ISO8859_2"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 754
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "CSISOLATIN2"

    const-string v2, "ISO8859_2"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 755
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "L2"

    const-string v2, "ISO8859_2"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 757
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "ISO-8859-3"

    const-string v2, "ISO8859_3"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 758
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "ISO-IR-109"

    const-string v2, "ISO8859_3"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 759
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "ISO_8859-3"

    const-string v2, "ISO8859_3"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 760
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "LATIN3"

    const-string v2, "ISO8859_3"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 761
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "CSISOLATIN3"

    const-string v2, "ISO8859_3"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 762
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "L3"

    const-string v2, "ISO8859_3"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 764
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "ISO-8859-4"

    const-string v2, "ISO8859_4"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 765
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "ISO-IR-110"

    const-string v2, "ISO8859_4"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 766
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "ISO_8859-4"

    const-string v2, "ISO8859_4"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 767
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "LATIN4"

    const-string v2, "ISO8859_4"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 768
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "CSISOLATIN4"

    const-string v2, "ISO8859_4"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 769
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "L4"

    const-string v2, "ISO8859_4"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 771
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "ISO-8859-5"

    const-string v2, "ISO8859_5"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 772
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "ISO-IR-144"

    const-string v2, "ISO8859_5"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 773
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "ISO_8859-5"

    const-string v2, "ISO8859_5"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 774
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "CYRILLIC"

    const-string v2, "ISO8859_5"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 775
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "CSISOLATINCYRILLIC"

    const-string v2, "ISO8859_5"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 777
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "ISO-8859-6"

    const-string v2, "ISO8859_6"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 778
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "ISO-IR-127"

    const-string v2, "ISO8859_6"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 779
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "ISO_8859-6"

    const-string v2, "ISO8859_6"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 780
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "ECMA-114"

    const-string v2, "ISO8859_6"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 781
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "ASMO-708"

    const-string v2, "ISO8859_6"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 782
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "ARABIC"

    const-string v2, "ISO8859_6"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 783
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "CSISOLATINARABIC"

    const-string v2, "ISO8859_6"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 785
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "ISO-8859-7"

    const-string v2, "ISO8859_7"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 786
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "ISO-IR-126"

    const-string v2, "ISO8859_7"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 787
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "ISO_8859-7"

    const-string v2, "ISO8859_7"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 788
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "ELOT_928"

    const-string v2, "ISO8859_7"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 789
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "ECMA-118"

    const-string v2, "ISO8859_7"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 790
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "GREEK"

    const-string v2, "ISO8859_7"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 791
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "CSISOLATINGREEK"

    const-string v2, "ISO8859_7"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 792
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "GREEK8"

    const-string v2, "ISO8859_7"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 794
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "ISO-8859-8"

    const-string v2, "ISO8859_8"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 795
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "ISO-8859-8-I"

    const-string v2, "ISO8859_8"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 796
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "ISO-IR-138"

    const-string v2, "ISO8859_8"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 797
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "ISO_8859-8"

    const-string v2, "ISO8859_8"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 798
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "HEBREW"

    const-string v2, "ISO8859_8"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 799
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "CSISOLATINHEBREW"

    const-string v2, "ISO8859_8"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 801
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "ISO-8859-9"

    const-string v2, "ISO8859_9"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 802
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "ISO-IR-148"

    const-string v2, "ISO8859_9"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 803
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "ISO_8859-9"

    const-string v2, "ISO8859_9"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 804
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "LATIN5"

    const-string v2, "ISO8859_9"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 805
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "CSISOLATIN5"

    const-string v2, "ISO8859_9"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 806
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "L5"

    const-string v2, "ISO8859_9"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 808
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "ISO-8859-15"

    const-string v2, "ISO8859_15"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 809
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "ISO_8859-15"

    const-string v2, "ISO8859_15"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 811
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "KOI8-R"

    const-string v2, "KOI8_R"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 812
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "CSKOI8R"

    const-string v2, "KOI8_R"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 813
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "US-ASCII"

    const-string v2, "ASCII"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 814
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "ISO-IR-6"

    const-string v2, "ASCII"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 815
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "ANSI_X3.4-1986"

    const-string v2, "ASCII"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 816
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "ISO_646.IRV:1991"

    const-string v2, "ASCII"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 817
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "ASCII"

    const-string v2, "ASCII"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 818
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "CSASCII"

    const-string v2, "ASCII"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 819
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "ISO646-US"

    const-string v2, "ASCII"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 820
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "US"

    const-string v2, "ASCII"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 821
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "IBM367"

    const-string v2, "ASCII"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 822
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "CP367"

    const-string v2, "ASCII"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 823
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "UTF-8"

    const-string v2, "UTF8"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 824
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "UTF-16"

    const-string v2, "UTF-16"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 825
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "UTF-16BE"

    const-string v2, "UnicodeBig"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 826
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "UTF-16LE"

    const-string v2, "UnicodeLittle"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 831
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "IBM-1047"

    const-string v2, "Cp1047"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 832
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "IBM1047"

    const-string v2, "Cp1047"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 833
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "CP1047"

    const-string v2, "Cp1047"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 837
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "IBM-37"

    const-string v2, "CP037"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 838
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "IBM-273"

    const-string v2, "CP273"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 839
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "IBM-277"

    const-string v2, "CP277"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 840
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "IBM-278"

    const-string v2, "CP278"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 841
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "IBM-280"

    const-string v2, "CP280"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 842
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "IBM-284"

    const-string v2, "CP284"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 843
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "IBM-285"

    const-string v2, "CP285"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 844
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "IBM-290"

    const-string v2, "CP290"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 845
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "IBM-297"

    const-string v2, "CP297"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 846
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "IBM-420"

    const-string v2, "CP420"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 847
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "IBM-424"

    const-string v2, "CP424"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 848
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "IBM-437"

    const-string v2, "CP437"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 849
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "IBM-500"

    const-string v2, "CP500"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 850
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "IBM-775"

    const-string v2, "CP775"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 851
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "IBM-850"

    const-string v2, "CP850"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 852
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "IBM-852"

    const-string v2, "CP852"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 853
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "IBM-855"

    const-string v2, "CP855"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 854
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "IBM-857"

    const-string v2, "CP857"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 855
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "IBM-858"

    const-string v2, "CP858"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 856
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "IBM-860"

    const-string v2, "CP860"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 857
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "IBM-861"

    const-string v2, "CP861"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 858
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "IBM-862"

    const-string v2, "CP862"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 859
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "IBM-863"

    const-string v2, "CP863"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 860
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "IBM-864"

    const-string v2, "CP864"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 861
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "IBM-865"

    const-string v2, "CP865"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 862
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "IBM-866"

    const-string v2, "CP866"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 863
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "IBM-868"

    const-string v2, "CP868"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 864
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "IBM-869"

    const-string v2, "CP869"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 865
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "IBM-870"

    const-string v2, "CP870"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 866
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "IBM-871"

    const-string v2, "CP871"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 867
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "IBM-918"

    const-string v2, "CP918"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 868
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "IBM-924"

    const-string v2, "CP924"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 869
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "IBM-1026"

    const-string v2, "CP1026"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 870
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "IBM-1140"

    const-string v2, "Cp1140"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 871
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "IBM-1141"

    const-string v2, "Cp1141"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 872
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "IBM-1142"

    const-string v2, "Cp1142"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 873
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "IBM-1143"

    const-string v2, "Cp1143"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 874
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "IBM-1144"

    const-string v2, "Cp1144"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 875
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "IBM-1145"

    const-string v2, "Cp1145"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 876
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "IBM-1146"

    const-string v2, "Cp1146"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 877
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "IBM-1147"

    const-string v2, "Cp1147"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 878
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "IBM-1148"

    const-string v2, "Cp1148"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 879
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "IBM-1149"

    const-string v2, "Cp1149"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 880
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "IBM-819"

    const-string v2, "ISO8859_1"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 881
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    const-string v1, "IBM-367"

    const-string v2, "ASCII"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 889
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fJava2IANAMap:Ljava/util/Hashtable;

    const-string v1, "ISO8859_1"

    const-string v2, "ISO-8859-1"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 890
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fJava2IANAMap:Ljava/util/Hashtable;

    const-string v1, "ISO8859_2"

    const-string v2, "ISO-8859-2"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 891
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fJava2IANAMap:Ljava/util/Hashtable;

    const-string v1, "ISO8859_3"

    const-string v2, "ISO-8859-3"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 892
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fJava2IANAMap:Ljava/util/Hashtable;

    const-string v1, "ISO8859_4"

    const-string v2, "ISO-8859-4"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 893
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fJava2IANAMap:Ljava/util/Hashtable;

    const-string v1, "ISO8859_5"

    const-string v2, "ISO-8859-5"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 894
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fJava2IANAMap:Ljava/util/Hashtable;

    const-string v1, "ISO8859_6"

    const-string v2, "ISO-8859-6"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 895
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fJava2IANAMap:Ljava/util/Hashtable;

    const-string v1, "ISO8859_7"

    const-string v2, "ISO-8859-7"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 896
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fJava2IANAMap:Ljava/util/Hashtable;

    const-string v1, "ISO8859_8"

    const-string v2, "ISO-8859-8"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 897
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fJava2IANAMap:Ljava/util/Hashtable;

    const-string v1, "ISO8859_9"

    const-string v2, "ISO-8859-9"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 898
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fJava2IANAMap:Ljava/util/Hashtable;

    const-string v1, "ISO8859_15"

    const-string v2, "ISO-8859-15"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 899
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fJava2IANAMap:Ljava/util/Hashtable;

    const-string v1, "Big5"

    const-string v2, "BIG5"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 900
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fJava2IANAMap:Ljava/util/Hashtable;

    const-string v1, "CP037"

    const-string v2, "EBCDIC-CP-US"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 901
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fJava2IANAMap:Ljava/util/Hashtable;

    const-string v1, "CP273"

    const-string v2, "IBM273"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 902
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fJava2IANAMap:Ljava/util/Hashtable;

    const-string v1, "CP277"

    const-string v2, "EBCDIC-CP-DK"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 903
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fJava2IANAMap:Ljava/util/Hashtable;

    const-string v1, "CP278"

    const-string v2, "EBCDIC-CP-FI"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 904
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fJava2IANAMap:Ljava/util/Hashtable;

    const-string v1, "CP280"

    const-string v2, "EBCDIC-CP-IT"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 905
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fJava2IANAMap:Ljava/util/Hashtable;

    const-string v1, "CP284"

    const-string v2, "EBCDIC-CP-ES"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 906
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fJava2IANAMap:Ljava/util/Hashtable;

    const-string v1, "CP285"

    const-string v2, "EBCDIC-CP-GB"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 907
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fJava2IANAMap:Ljava/util/Hashtable;

    const-string v1, "CP290"

    const-string v2, "EBCDIC-JP-KANA"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 908
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fJava2IANAMap:Ljava/util/Hashtable;

    const-string v1, "CP297"

    const-string v2, "EBCDIC-CP-FR"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 909
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fJava2IANAMap:Ljava/util/Hashtable;

    const-string v1, "CP420"

    const-string v2, "EBCDIC-CP-AR1"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 910
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fJava2IANAMap:Ljava/util/Hashtable;

    const-string v1, "CP424"

    const-string v2, "EBCDIC-CP-HE"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 911
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fJava2IANAMap:Ljava/util/Hashtable;

    const-string v1, "CP437"

    const-string v2, "IBM437"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 912
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fJava2IANAMap:Ljava/util/Hashtable;

    const-string v1, "CP500"

    const-string v2, "EBCDIC-CP-CH"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 913
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fJava2IANAMap:Ljava/util/Hashtable;

    const-string v1, "CP775"

    const-string v2, "IBM775"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 914
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fJava2IANAMap:Ljava/util/Hashtable;

    const-string v1, "CP850"

    const-string v2, "IBM850"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 915
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fJava2IANAMap:Ljava/util/Hashtable;

    const-string v1, "CP852"

    const-string v2, "IBM852"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 916
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fJava2IANAMap:Ljava/util/Hashtable;

    const-string v1, "CP855"

    const-string v2, "IBM855"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 917
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fJava2IANAMap:Ljava/util/Hashtable;

    const-string v1, "CP857"

    const-string v2, "IBM857"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 918
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fJava2IANAMap:Ljava/util/Hashtable;

    const-string v1, "CP858"

    const-string v2, "IBM00858"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 919
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fJava2IANAMap:Ljava/util/Hashtable;

    const-string v1, "CP860"

    const-string v2, "IBM860"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 920
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fJava2IANAMap:Ljava/util/Hashtable;

    const-string v1, "CP861"

    const-string v2, "IBM861"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 921
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fJava2IANAMap:Ljava/util/Hashtable;

    const-string v1, "CP862"

    const-string v2, "IBM862"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 922
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fJava2IANAMap:Ljava/util/Hashtable;

    const-string v1, "CP863"

    const-string v2, "IBM863"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 923
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fJava2IANAMap:Ljava/util/Hashtable;

    const-string v1, "CP864"

    const-string v2, "IBM864"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 924
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fJava2IANAMap:Ljava/util/Hashtable;

    const-string v1, "CP865"

    const-string v2, "IBM865"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 925
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fJava2IANAMap:Ljava/util/Hashtable;

    const-string v1, "CP866"

    const-string v2, "IBM866"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 926
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fJava2IANAMap:Ljava/util/Hashtable;

    const-string v1, "CP868"

    const-string v2, "IBM868"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 927
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fJava2IANAMap:Ljava/util/Hashtable;

    const-string v1, "CP869"

    const-string v2, "IBM869"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 928
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fJava2IANAMap:Ljava/util/Hashtable;

    const-string v1, "CP870"

    const-string v2, "EBCDIC-CP-ROECE"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 929
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fJava2IANAMap:Ljava/util/Hashtable;

    const-string v1, "CP871"

    const-string v2, "EBCDIC-CP-IS"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 930
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fJava2IANAMap:Ljava/util/Hashtable;

    const-string v1, "CP918"

    const-string v2, "EBCDIC-CP-AR2"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 931
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fJava2IANAMap:Ljava/util/Hashtable;

    const-string v1, "CP924"

    const-string v2, "IBM00924"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 932
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fJava2IANAMap:Ljava/util/Hashtable;

    const-string v1, "CP1026"

    const-string v2, "IBM1026"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 933
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fJava2IANAMap:Ljava/util/Hashtable;

    const-string v1, "Cp01140"

    const-string v2, "IBM01140"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 934
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fJava2IANAMap:Ljava/util/Hashtable;

    const-string v1, "Cp01141"

    const-string v2, "IBM01141"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 935
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fJava2IANAMap:Ljava/util/Hashtable;

    const-string v1, "Cp01142"

    const-string v2, "IBM01142"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 936
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fJava2IANAMap:Ljava/util/Hashtable;

    const-string v1, "Cp01143"

    const-string v2, "IBM01143"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 937
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fJava2IANAMap:Ljava/util/Hashtable;

    const-string v1, "Cp01144"

    const-string v2, "IBM01144"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 938
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fJava2IANAMap:Ljava/util/Hashtable;

    const-string v1, "Cp01145"

    const-string v2, "IBM01145"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 939
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fJava2IANAMap:Ljava/util/Hashtable;

    const-string v1, "Cp01146"

    const-string v2, "IBM01146"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 940
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fJava2IANAMap:Ljava/util/Hashtable;

    const-string v1, "Cp01147"

    const-string v2, "IBM01147"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 941
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fJava2IANAMap:Ljava/util/Hashtable;

    const-string v1, "Cp01148"

    const-string v2, "IBM01148"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 942
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fJava2IANAMap:Ljava/util/Hashtable;

    const-string v1, "Cp01149"

    const-string v2, "IBM01149"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 943
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fJava2IANAMap:Ljava/util/Hashtable;

    const-string v1, "EUCJIS"

    const-string v2, "EUC-JP"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 944
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fJava2IANAMap:Ljava/util/Hashtable;

    const-string v1, "GB2312"

    const-string v2, "GB2312"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 945
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fJava2IANAMap:Ljava/util/Hashtable;

    const-string v1, "ISO2022KR"

    const-string v2, "ISO-2022-KR"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 946
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fJava2IANAMap:Ljava/util/Hashtable;

    const-string v1, "ISO2022CN"

    const-string v2, "ISO-2022-CN"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 947
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fJava2IANAMap:Ljava/util/Hashtable;

    const-string v1, "JIS"

    const-string v2, "ISO-2022-JP"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 948
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fJava2IANAMap:Ljava/util/Hashtable;

    const-string v1, "KOI8_R"

    const-string v2, "KOI8-R"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 949
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fJava2IANAMap:Ljava/util/Hashtable;

    const-string v1, "KSC5601"

    const-string v2, "EUC-KR"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 950
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fJava2IANAMap:Ljava/util/Hashtable;

    const-string v1, "GB18030"

    const-string v2, "GB18030"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 951
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fJava2IANAMap:Ljava/util/Hashtable;

    const-string v1, "SJIS"

    const-string v2, "SHIFT_JIS"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 952
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fJava2IANAMap:Ljava/util/Hashtable;

    const-string v1, "MS932"

    const-string v2, "WINDOWS-31J"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 953
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fJava2IANAMap:Ljava/util/Hashtable;

    const-string v1, "UTF8"

    const-string v2, "UTF-8"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 954
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fJava2IANAMap:Ljava/util/Hashtable;

    const-string v1, "Unicode"

    const-string v2, "UTF-16"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 955
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fJava2IANAMap:Ljava/util/Hashtable;

    const-string v1, "UnicodeBig"

    const-string v2, "UTF-16BE"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 956
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fJava2IANAMap:Ljava/util/Hashtable;

    const-string v1, "UnicodeLittle"

    const-string v2, "UTF-16LE"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 957
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fJava2IANAMap:Ljava/util/Hashtable;

    const-string v1, "JIS0201"

    const-string v2, "X0201"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 958
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fJava2IANAMap:Ljava/util/Hashtable;

    const-string v1, "JIS0208"

    const-string v2, "X0208"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 959
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fJava2IANAMap:Ljava/util/Hashtable;

    const-string v1, "JIS0212"

    const-string v2, "ISO-IR-159"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 962
    sget-object v0, Lorg/apache/xerces/util/EncodingMap;->fJava2IANAMap:Ljava/util/Hashtable;

    const-string v1, "CP1047"

    const-string v2, "IBM1047"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 964
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 971
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/EncodingMap;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getIANA2JavaMapping(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 994
    move-object v0, p0

    .local v0, "ianaEncoding":Ljava/lang/String;
    sget-object v1, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "ianaEncoding":Ljava/lang/String;
    return-object v0
.end method

.method public static getJava2IANAMapping(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 1023
    move-object v0, p0

    .local v0, "javaEncoding":Ljava/lang/String;
    sget-object v1, Lorg/apache/xerces/util/EncodingMap;->fJava2IANAMap:Ljava/util/Hashtable;

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "javaEncoding":Ljava/lang/String;
    return-object v0
.end method

.method public static putIANA2JavaMapping(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 985
    move-object v0, p0

    .local v0, "ianaEncoding":Ljava/lang/String;
    move-object v1, p1

    .local v1, "javaEncoding":Ljava/lang/String;
    sget-object v2, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 986
    return-void
.end method

.method public static putJava2IANAMapping(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 1014
    move-object v0, p0

    .local v0, "javaEncoding":Ljava/lang/String;
    move-object v1, p1

    .local v1, "ianaEncoding":Ljava/lang/String;
    sget-object v2, Lorg/apache/xerces/util/EncodingMap;->fJava2IANAMap:Ljava/util/Hashtable;

    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1015
    return-void
.end method

.method public static removeIANA2JavaMapping(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 1003
    move-object v0, p0

    .local v0, "ianaEncoding":Ljava/lang/String;
    sget-object v1, Lorg/apache/xerces/util/EncodingMap;->fIANA2JavaMap:Ljava/util/Hashtable;

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "ianaEncoding":Ljava/lang/String;
    return-object v0
.end method

.method public static removeJava2IANAMapping(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 1032
    move-object v0, p0

    .local v0, "javaEncoding":Ljava/lang/String;
    sget-object v1, Lorg/apache/xerces/util/EncodingMap;->fJava2IANAMap:Ljava/util/Hashtable;

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "javaEncoding":Ljava/lang/String;
    return-object v0
.end method
