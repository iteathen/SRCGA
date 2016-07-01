.class public Lcom/sun/xml/stream/XMLEntityStorage;
.super Ljava/lang/Object;
.source "XMLEntityStorage.java"


# static fields
.field protected static final ERROR_REPORTER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/error-reporter"

.field protected static final WARN_ON_DUPLICATE_ENTITYDEF:Ljava/lang/String; = "http://apache.org/xml/features/warn-on-duplicate-entitydef"

.field private static gAfterEscaping1:[C

.field private static gAfterEscaping2:[C

.field private static gEscapedUserDir:Ljava/lang/String;

.field private static gHexChs:[C

.field private static gNeedEscaping:[Z

.field private static gUserDir:Ljava/lang/String;


# instance fields
.field protected fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

.field protected fEntities:Ljava/util/Hashtable;

.field private fEntityManager:Lcom/sun/xml/stream/XMLEntityManager;

.field protected fErrorReporter:Lcom/sun/xml/stream/XMLErrorReporter;

.field protected fPropertyManager:Lcom/sun/xml/stream/PropertyManager;

.field protected fWarnDuplicateEntityDef:Z


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    .line 386
    const/16 v4, 0x80

    new-array v4, v4, [Z

    sput-object v4, Lcom/sun/xml/stream/XMLEntityStorage;->gNeedEscaping:[Z

    .line 388
    const/16 v4, 0x80

    new-array v4, v4, [C

    sput-object v4, Lcom/sun/xml/stream/XMLEntityStorage;->gAfterEscaping1:[C

    .line 390
    const/16 v4, 0x80

    new-array v4, v4, [C

    sput-object v4, Lcom/sun/xml/stream/XMLEntityStorage;->gAfterEscaping2:[C

    .line 391
    const/16 v4, 0x10

    new-array v4, v4, [C

    fill-array-data v4, :array_0

    sput-object v4, Lcom/sun/xml/stream/XMLEntityStorage;->gHexChs:[C

    .line 395
    const/4 v4, 0x0

    move v0, v4

    .local v0, "i":I
    :goto_0
    move v4, v0

    const/16 v5, 0x1f

    if-gt v4, v5, :cond_0

    .line 396
    sget-object v4, Lcom/sun/xml/stream/XMLEntityStorage;->gNeedEscaping:[Z

    move v5, v0

    const/4 v6, 0x1

    aput-boolean v6, v4, v5

    .line 397
    sget-object v4, Lcom/sun/xml/stream/XMLEntityStorage;->gAfterEscaping1:[C

    move v5, v0

    sget-object v6, Lcom/sun/xml/stream/XMLEntityStorage;->gHexChs:[C

    move v7, v0

    const/4 v8, 0x4

    shr-int/lit8 v7, v7, 0x4

    aget-char v6, v6, v7

    aput-char v6, v4, v5

    .line 398
    sget-object v4, Lcom/sun/xml/stream/XMLEntityStorage;->gAfterEscaping2:[C

    move v5, v0

    sget-object v6, Lcom/sun/xml/stream/XMLEntityStorage;->gHexChs:[C

    move v7, v0

    const/16 v8, 0xf

    and-int/lit8 v7, v7, 0xf

    aget-char v6, v6, v7

    aput-char v6, v4, v5

    .line 395
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 400
    :cond_0
    sget-object v4, Lcom/sun/xml/stream/XMLEntityStorage;->gNeedEscaping:[Z

    const/16 v5, 0x7f

    const/4 v6, 0x1

    aput-boolean v6, v4, v5

    .line 401
    sget-object v4, Lcom/sun/xml/stream/XMLEntityStorage;->gAfterEscaping1:[C

    const/16 v5, 0x7f

    const/16 v6, 0x37

    aput-char v6, v4, v5

    .line 402
    sget-object v4, Lcom/sun/xml/stream/XMLEntityStorage;->gAfterEscaping2:[C

    const/16 v5, 0x7f

    const/16 v6, 0x46

    aput-char v6, v4, v5

    .line 403
    const/16 v4, 0xf

    new-array v4, v4, [C

    fill-array-data v4, :array_1

    move-object v0, v4

    .line 405
    .local v0, "escChs":[C
    move-object v4, v0

    array-length v4, v4

    move v1, v4

    .line 407
    .local v1, "len":I
    const/4 v4, 0x0

    move v3, v4

    .local v3, "i":I
    :goto_1
    move v4, v3

    move v5, v1

    if-ge v4, v5, :cond_1

    .line 408
    move-object v4, v0

    move v5, v3

    aget-char v4, v4, v5

    move v2, v4

    .line 409
    .local v2, "ch":C
    sget-object v4, Lcom/sun/xml/stream/XMLEntityStorage;->gNeedEscaping:[Z

    move v5, v2

    const/4 v6, 0x1

    aput-boolean v6, v4, v5

    .line 410
    sget-object v4, Lcom/sun/xml/stream/XMLEntityStorage;->gAfterEscaping1:[C

    move v5, v2

    sget-object v6, Lcom/sun/xml/stream/XMLEntityStorage;->gHexChs:[C

    move v7, v2

    const/4 v8, 0x4

    shr-int/lit8 v7, v7, 0x4

    aget-char v6, v6, v7

    aput-char v6, v4, v5

    .line 411
    sget-object v4, Lcom/sun/xml/stream/XMLEntityStorage;->gAfterEscaping2:[C

    move v5, v2

    sget-object v6, Lcom/sun/xml/stream/XMLEntityStorage;->gHexChs:[C

    move v7, v2

    const/16 v8, 0xf

    and-int/lit8 v7, v7, 0xf

    aget-char v6, v6, v7

    aput-char v6, v4, v5

    .line 407
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 413
    .end local v2    # "ch":C
    :cond_1
    return-void

    .line 391
    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data

    .line 403
    :array_1
    .array-data 2
        0x20s
        0x3cs
        0x3es
        0x23s
        0x25s
        0x22s
        0x7bs
        0x7ds
        0x7cs
        0x5cs
        0x5es
        0x7es
        0x5bs
        0x5ds
        0x60s
    .end array-data
.end method

.method public constructor <init>(Lcom/sun/xml/stream/PropertyManager;)V
    .locals 6

    .prologue
    .line 90
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLEntityStorage;
    move-object v1, p1

    .local v1, "propertyManager":Lcom/sun/xml/stream/PropertyManager;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 77
    move-object v2, v0

    new-instance v3, Ljava/util/Hashtable;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/util/Hashtable;-><init>()V

    iput-object v3, v2, Lcom/sun/xml/stream/XMLEntityStorage;->fEntities:Ljava/util/Hashtable;

    .line 91
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/xml/stream/XMLEntityStorage;->fPropertyManager:Lcom/sun/xml/stream/PropertyManager;

    .line 92
    return-void
.end method

.method public constructor <init>(Lcom/sun/xml/stream/XMLEntityManager;)V
    .locals 6

    .prologue
    .line 97
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLEntityStorage;
    move-object v1, p1

    .local v1, "entityManager":Lcom/sun/xml/stream/XMLEntityManager;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 77
    move-object v2, v0

    new-instance v3, Ljava/util/Hashtable;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/util/Hashtable;-><init>()V

    iput-object v3, v2, Lcom/sun/xml/stream/XMLEntityStorage;->fEntities:Ljava/util/Hashtable;

    .line 98
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/xml/stream/XMLEntityStorage;->fEntityManager:Lcom/sun/xml/stream/XMLEntityManager;

    .line 99
    return-void
.end method

.method public static expandSystemId(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 378
    move-object v0, p0

    .local v0, "systemId":Ljava/lang/String;
    move-object v1, v0

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sun/xml/stream/XMLEntityStorage;->expandSystemId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "systemId":Ljava/lang/String;
    return-object v0
.end method

.method public static expandSystemId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 15

    .prologue
    .line 536
    move-object v0, p0

    .local v0, "systemId":Ljava/lang/String;
    move-object/from16 v1, p1

    .local v1, "baseSystemId":Ljava/lang/String;
    move-object v7, v0

    if-eqz v7, :cond_0

    move-object v7, v0

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_1

    .line 537
    :cond_0
    move-object v7, v0

    move-object v0, v7

    .line 589
    .end local v0    # "systemId":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 541
    .restart local v0    # "systemId":Ljava/lang/String;
    :cond_1
    :try_start_0
    new-instance v7, Lorg/apache/xerces/util/URI;

    move-object v14, v7

    move-object v7, v14

    move-object v8, v14

    move-object v9, v0

    invoke-direct {v8, v9}, Lorg/apache/xerces/util/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/apache/xerces/util/URI$MalformedURIException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v7

    .line 542
    .local v2, "uri":Lorg/apache/xerces/util/URI;
    move-object v7, v2

    if-eqz v7, :cond_2

    .line 543
    move-object v7, v0

    move-object v0, v7

    goto :goto_0

    .line 548
    .line 550
    .end local v2    # "uri":Lorg/apache/xerces/util/URI;
    :cond_2
    :goto_1
    move-object v7, v0

    invoke-static {v7}, Lcom/sun/xml/stream/XMLEntityStorage;->fixURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v2, v7

    .line 553
    .local v2, "id":Ljava/lang/String;
    const/4 v7, 0x0

    move-object v3, v7

    .line 554
    .local v3, "base":Lorg/apache/xerces/util/URI;
    const/4 v7, 0x0

    move-object v4, v7

    .line 556
    .local v4, "uri":Lorg/apache/xerces/util/URI;
    move-object v7, v1

    if-eqz v7, :cond_3

    move-object v7, v1

    :try_start_1
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_3

    move-object v7, v1

    move-object v8, v0

    .line 557
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 558
    :cond_3
    invoke-static {}, Lcom/sun/xml/stream/XMLEntityStorage;->getUserDir()Ljava/lang/String;

    move-result-object v7

    move-object v5, v7

    .line 559
    .local v5, "dir":Ljava/lang/String;
    new-instance v7, Lorg/apache/xerces/util/URI;

    move-object v14, v7

    move-object v7, v14

    move-object v8, v14

    const-string v9, "file"

    const-string v10, ""

    move-object v11, v5

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-direct/range {v8 .. v13}, Lorg/apache/xerces/util/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v7

    .line 579
    .end local v5    # "dir":Ljava/lang/String;
    :goto_2
    new-instance v7, Lorg/apache/xerces/util/URI;

    move-object v14, v7

    move-object v7, v14

    move-object v8, v14

    move-object v9, v3

    move-object v10, v2

    invoke-direct {v8, v9, v10}, Lorg/apache/xerces/util/URI;-><init>(Lorg/apache/xerces/util/URI;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-object v4, v7

    .line 584
    .line 586
    :goto_3
    move-object v7, v4

    if-nez v7, :cond_6

    .line 587
    move-object v7, v0

    move-object v0, v7

    goto :goto_0

    .line 546
    .end local v2    # "id":Ljava/lang/String;
    .end local v3    # "base":Lorg/apache/xerces/util/URI;
    .end local v4    # "uri":Lorg/apache/xerces/util/URI;
    :catch_0
    move-exception v7

    move-object v2, v7

    goto :goto_1

    .line 563
    .restart local v2    # "id":Ljava/lang/String;
    .restart local v3    # "base":Lorg/apache/xerces/util/URI;
    .restart local v4    # "uri":Lorg/apache/xerces/util/URI;
    :cond_4
    :try_start_2
    new-instance v7, Lorg/apache/xerces/util/URI;

    move-object v14, v7

    move-object v7, v14

    move-object v8, v14

    move-object v9, v1

    invoke-static {v9}, Lcom/sun/xml/stream/XMLEntityStorage;->fixURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/apache/xerces/util/URI;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/apache/xerces/util/URI$MalformedURIException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-object v3, v7

    .line 576
    goto :goto_2

    .line 565
    :catch_1
    move-exception v7

    move-object v5, v7

    .line 566
    .local v5, "e":Lorg/apache/xerces/util/URI$MalformedURIException;
    move-object v7, v1

    const/16 v8, 0x3a

    :try_start_3
    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_5

    .line 569
    new-instance v7, Lorg/apache/xerces/util/URI;

    move-object v14, v7

    move-object v7, v14

    move-object v8, v14

    const-string v9, "file"

    const-string v10, ""

    move-object v11, v1

    invoke-static {v11}, Lcom/sun/xml/stream/XMLEntityStorage;->fixURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-direct/range {v8 .. v13}, Lorg/apache/xerces/util/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v7

    goto :goto_2

    .line 572
    :cond_5
    invoke-static {}, Lcom/sun/xml/stream/XMLEntityStorage;->getUserDir()Ljava/lang/String;

    move-result-object v7

    move-object v6, v7

    .line 573
    .local v6, "dir":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    move-object v14, v7

    move-object v7, v14

    move-object v8, v14

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object v8, v6

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v1

    invoke-static {v8}, Lcom/sun/xml/stream/XMLEntityStorage;->fixURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v6, v7

    .line 574
    new-instance v7, Lorg/apache/xerces/util/URI;

    move-object v14, v7

    move-object v7, v14

    move-object v8, v14

    const-string v9, "file"

    const-string v10, ""

    move-object v11, v6

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-direct/range {v8 .. v13}, Lorg/apache/xerces/util/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-object v3, v7

    goto :goto_2

    .line 581
    .end local v5    # "e":Lorg/apache/xerces/util/URI$MalformedURIException;
    .end local v6    # "dir":Ljava/lang/String;
    :catch_2
    move-exception v7

    move-object v5, v7

    goto :goto_3

    .line 589
    :cond_6
    move-object v7, v4

    invoke-virtual {v7}, Lorg/apache/xerces/util/URI;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v0, v7

    goto/16 :goto_0
.end method

.method protected static fixURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    .line 606
    move-object v0, p0

    .local v0, "str":Ljava/lang/String;
    move-object v3, v0

    sget-char v4, Ljava/io/File;->separatorChar:C

    const/16 v5, 0x2f

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .line 609
    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x2

    if-lt v3, v4, :cond_0

    .line 610
    move-object v3, v0

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    move v1, v3

    .line 612
    .local v1, "ch1":C
    move v3, v1

    const/16 v4, 0x3a

    if-ne v3, v4, :cond_1

    .line 613
    move-object v3, v0

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v3

    move v2, v3

    .line 614
    .local v2, "ch0":C
    move v3, v2

    const/16 v4, 0x41

    if-lt v3, v4, :cond_0

    move v3, v2

    const/16 v4, 0x5a

    if-gt v3, v4, :cond_0

    .line 615
    new-instance v3, Ljava/lang/StringBuilder;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .line 617
    .line 625
    .end local v1    # "ch1":C
    .end local v2    # "ch0":C
    :cond_0
    :goto_0
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "str":Ljava/lang/String;
    return-object v0

    .line 619
    .restart local v0    # "str":Ljava/lang/String;
    .restart local v1    # "ch1":C
    :cond_1
    move v3, v1

    const/16 v4, 0x2f

    if-ne v3, v4, :cond_0

    move-object v3, v0

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2f

    if-ne v3, v4, :cond_0

    .line 620
    new-instance v3, Ljava/lang/StringBuilder;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "file:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    goto :goto_0
.end method

.method private static declared-synchronized getUserDir()Ljava/lang/String;
    .locals 15

    .prologue
    .line 426
    const-class v13, Lcom/sun/xml/stream/XMLEntityStorage;

    monitor-enter v13

    :try_start_0
    const-string v9, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v9

    .line 428
    .local v0, "userDir":Ljava/lang/String;
    :try_start_1
    const-string v9, "user.dir"

    invoke-static {v9}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v9

    move-object v0, v9

    .line 431
    .line 434
    :goto_0
    move-object v9, v0

    :try_start_2
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_0

    .line 435
    const-string v9, ""
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v0, v9

    .line 517
    .end local v0    # "userDir":Ljava/lang/String;
    .local v1, "separator":C
    .local v2, "len":I
    .local v4, "buffer":Ljava/lang/StringBuffer;
    .local v5, "i":I
    :goto_1
    monitor-exit v13

    return-object v0

    .line 430
    .end local v1    # "separator":C
    .end local v2    # "len":I
    .end local v4    # "buffer":Ljava/lang/StringBuffer;
    .end local v5    # "i":I
    .restart local v0    # "userDir":Ljava/lang/String;
    :catch_0
    move-exception v9

    move-object v1, v9

    goto :goto_0

    .line 439
    :cond_0
    move-object v9, v0

    :try_start_3
    sget-object v10, Lcom/sun/xml/stream/XMLEntityStorage;->gUserDir:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 440
    sget-object v9, Lcom/sun/xml/stream/XMLEntityStorage;->gEscapedUserDir:Ljava/lang/String;

    move-object v0, v9

    goto :goto_1

    .line 444
    :cond_1
    move-object v9, v0

    sput-object v9, Lcom/sun/xml/stream/XMLEntityStorage;->gUserDir:Ljava/lang/String;

    .line 446
    sget-char v9, Ljava/io/File;->separatorChar:C

    move v1, v9

    .line 447
    .restart local v1    # "separator":C
    move-object v9, v0

    move v10, v1

    const/16 v11, 0x2f

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v9

    move-object v0, v9

    .line 449
    move-object v9, v0

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    move v2, v9

    .line 450
    .restart local v2    # "len":I
    new-instance v9, Ljava/lang/StringBuffer;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    move v11, v2

    const/4 v12, 0x3

    mul-int/lit8 v11, v11, 0x3

    invoke-direct {v10, v11}, Ljava/lang/StringBuffer;-><init>(I)V

    move-object v4, v9

    .line 452
    .restart local v4    # "buffer":Ljava/lang/StringBuffer;
    move v9, v2

    const/4 v10, 0x2

    if-lt v9, v10, :cond_2

    move-object v9, v0

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x3a

    if-ne v9, v10, :cond_2

    .line 453
    move-object v9, v0

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {v9}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v9

    move v3, v9

    .line 454
    .local v3, "ch":I
    move v9, v3

    const/16 v10, 0x41

    if-lt v9, v10, :cond_2

    move v9, v3

    const/16 v10, 0x5a

    if-gt v9, v10, :cond_2

    .line 455
    move-object v9, v4

    const/16 v10, 0x2f

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v9

    .line 460
    .end local v3    # "ch":I
    :cond_2
    const/4 v9, 0x0

    move v5, v9

    .line 461
    .restart local v5    # "i":I
    :goto_2
    move v9, v5

    move v10, v2

    if-ge v9, v10, :cond_3

    .line 462
    move-object v9, v0

    move v10, v5

    invoke-virtual {v9, v10}, Ljava/lang/String;->charAt(I)C
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v9

    move v3, v9

    .line 464
    .restart local v3    # "ch":I
    move v9, v3

    const/16 v10, 0x80

    if-lt v9, v10, :cond_4

    .line 465
    .line 478
    .end local v3    # "ch":I
    :cond_3
    move v9, v5

    move v10, v2

    if-ge v9, v10, :cond_8

    .line 480
    const/4 v9, 0x0

    move-object v6, v9

    .line 483
    .local v6, "bytes":[B
    move-object v9, v0

    move v10, v5

    :try_start_4
    invoke-virtual {v9, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, "UTF-8"

    invoke-virtual {v9, v10}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_4
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v9

    move-object v6, v9

    .line 487
    .line 488
    move-object v9, v6

    :try_start_5
    array-length v9, v9

    move v2, v9

    .line 491
    const/4 v9, 0x0

    move v5, v9

    :goto_3
    move v9, v5

    move v10, v2

    if-ge v9, v10, :cond_8

    .line 492
    move-object v9, v6

    move v10, v5

    aget-byte v9, v9, v10

    move v7, v9

    .line 494
    .local v7, "b":B
    move v9, v7

    if-gez v9, :cond_6

    .line 495
    move v9, v7

    const/16 v10, 0x100

    add-int/lit16 v9, v9, 0x100

    move v3, v9

    .line 496
    .restart local v3    # "ch":I
    move-object v9, v4

    const/16 v10, 0x25

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v9

    .line 497
    move-object v9, v4

    sget-object v10, Lcom/sun/xml/stream/XMLEntityStorage;->gHexChs:[C

    move v11, v3

    const/4 v12, 0x4

    shr-int/lit8 v11, v11, 0x4

    aget-char v10, v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v9

    .line 498
    move-object v9, v4

    sget-object v10, Lcom/sun/xml/stream/XMLEntityStorage;->gHexChs:[C

    move v11, v3

    const/16 v12, 0xf

    and-int/lit8 v11, v11, 0xf

    aget-char v10, v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v9

    .line 491
    .end local v3    # "ch":I
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 466
    .end local v6    # "bytes":[B
    .end local v7    # "b":B
    .restart local v3    # "ch":I
    :cond_4
    sget-object v9, Lcom/sun/xml/stream/XMLEntityStorage;->gNeedEscaping:[Z

    move v10, v3

    aget-boolean v9, v9, v10

    if-eqz v9, :cond_5

    .line 467
    move-object v9, v4

    const/16 v10, 0x25

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v9

    .line 468
    move-object v9, v4

    sget-object v10, Lcom/sun/xml/stream/XMLEntityStorage;->gAfterEscaping1:[C

    move v11, v3

    aget-char v10, v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v9

    .line 469
    move-object v9, v4

    sget-object v10, Lcom/sun/xml/stream/XMLEntityStorage;->gAfterEscaping2:[C

    move v11, v3

    aget-char v10, v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v9

    .line 461
    :goto_5
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2

    .line 473
    :cond_5
    move-object v9, v4

    move v10, v3

    int-to-char v10, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v9

    goto :goto_5

    .line 484
    .end local v3    # "ch":I
    .restart local v6    # "bytes":[B
    :catch_1
    move-exception v9

    move-object v8, v9

    .line 486
    .local v8, "e":Ljava/io/UnsupportedEncodingException;
    move-object v9, v0

    move-object v0, v9

    goto/16 :goto_1

    .line 500
    .end local v8    # "e":Ljava/io/UnsupportedEncodingException;
    .restart local v7    # "b":B
    :cond_6
    sget-object v9, Lcom/sun/xml/stream/XMLEntityStorage;->gNeedEscaping:[Z

    move v10, v7

    aget-boolean v9, v9, v10

    if-eqz v9, :cond_7

    .line 501
    move-object v9, v4

    const/16 v10, 0x25

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v9

    .line 502
    move-object v9, v4

    sget-object v10, Lcom/sun/xml/stream/XMLEntityStorage;->gAfterEscaping1:[C

    move v11, v7

    aget-char v10, v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v9

    .line 503
    move-object v9, v4

    sget-object v10, Lcom/sun/xml/stream/XMLEntityStorage;->gAfterEscaping2:[C

    move v11, v7

    aget-char v10, v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v9

    goto :goto_4

    .line 506
    :cond_7
    move-object v9, v4

    move v10, v7

    int-to-char v10, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v9

    goto :goto_4

    .line 512
    .end local v6    # "bytes":[B
    .end local v7    # "b":B
    :cond_8
    move-object v9, v0

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_9

    .line 513
    move-object v9, v4

    const/16 v10, 0x2f

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v9

    .line 515
    :cond_9
    move-object v9, v4

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    sput-object v9, Lcom/sun/xml/stream/XMLEntityStorage;->gEscapedUserDir:Ljava/lang/String;

    .line 517
    sget-object v9, Lcom/sun/xml/stream/XMLEntityStorage;->gEscapedUserDir:Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object v0, v9

    goto/16 :goto_1

    .line 426
    .end local v1    # "separator":C
    .end local v2    # "len":I
    .end local v4    # "buffer":Ljava/lang/StringBuffer;
    .end local v5    # "i":I
    :catchall_0
    move-exception v0

    monitor-exit v13

    .end local v0    # "userDir":Ljava/lang/String;
    throw v0
.end method


# virtual methods
.method public addExternalEntity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 17

    .prologue
    .line 219
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLEntityStorage;
    move-object/from16 v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object/from16 v2, p2

    .local v2, "publicId":Ljava/lang/String;
    move-object/from16 v3, p3

    .local v3, "literalSystemId":Ljava/lang/String;
    move-object/from16 v4, p4

    .local v4, "baseSystemId":Ljava/lang/String;
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/XMLEntityStorage;->fEntities:Ljava/util/Hashtable;

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 220
    move-object v6, v4

    if-nez v6, :cond_0

    .line 231
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/XMLEntityStorage;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    if-eqz v6, :cond_0

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/XMLEntityStorage;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget-object v6, v6, Lcom/sun/xml/stream/Entity$ScannedEntity;->entityLocation:Lorg/apache/xerces/xni/XMLResourceIdentifier;

    if-eqz v6, :cond_0

    .line 232
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/XMLEntityStorage;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    iget-object v6, v6, Lcom/sun/xml/stream/Entity$ScannedEntity;->entityLocation:Lorg/apache/xerces/xni/XMLResourceIdentifier;

    invoke-interface {v6}, Lorg/apache/xerces/xni/XMLResourceIdentifier;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v6

    move-object v4, v6

    .line 246
    :cond_0
    move-object v6, v0

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/xml/stream/XMLEntityStorage;->fEntityManager:Lcom/sun/xml/stream/XMLEntityManager;

    invoke-virtual {v7}, Lcom/sun/xml/stream/XMLEntityManager;->getCurrentEntity()Lcom/sun/xml/stream/Entity$ScannedEntity;

    move-result-object v7

    iput-object v7, v6, Lcom/sun/xml/stream/XMLEntityStorage;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    .line 247
    new-instance v6, Lcom/sun/xml/stream/Entity$ExternalEntity;

    move-object/from16 v16, v6

    move-object/from16 v6, v16

    move-object/from16 v7, v16

    move-object v8, v1

    new-instance v9, Lorg/apache/xerces/util/XMLResourceIdentifierImpl;

    move-object/from16 v16, v9

    move-object/from16 v9, v16

    move-object/from16 v10, v16

    move-object v11, v2

    move-object v12, v3

    move-object v13, v4

    move-object v14, v3

    move-object v15, v4

    .line 249
    invoke-static {v14, v15}, Lcom/sun/xml/stream/XMLEntityStorage;->expandSystemId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v10, v11, v12, v13, v14}, Lorg/apache/xerces/util/XMLResourceIdentifierImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/sun/xml/stream/Entity$ExternalEntity;-><init>(Ljava/lang/String;Lorg/apache/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;Z)V

    move-object v5, v6

    .line 254
    .local v5, "entity":Lcom/sun/xml/stream/Entity;
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/XMLEntityStorage;->fEntities:Ljava/util/Hashtable;

    move-object v7, v1

    move-object v8, v5

    invoke-virtual {v6, v7, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 255
    .line 265
    .end local v5    # "entity":Lcom/sun/xml/stream/Entity;
    :cond_1
    :goto_0
    return-void

    .line 257
    :cond_2
    move-object v6, v0

    iget-boolean v6, v6, Lcom/sun/xml/stream/XMLEntityStorage;->fWarnDuplicateEntityDef:Z

    if-eqz v6, :cond_1

    .line 258
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/XMLEntityStorage;->fErrorReporter:Lcom/sun/xml/stream/XMLErrorReporter;

    const-string v7, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string v8, "MSG_DUPLICATE_ENTITY_DEFINITION"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    move-object/from16 v16, v9

    move-object/from16 v9, v16

    move-object/from16 v10, v16

    const/4 v11, 0x0

    move-object v12, v1

    aput-object v12, v10, v11

    const/4 v10, 0x0

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/sun/xml/stream/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)V

    goto :goto_0
.end method

.method public addInternalEntity(Ljava/lang/String;Ljava/lang/String;)V
    .locals 12

    .prologue
    .line 176
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLEntityStorage;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, p2

    .local v2, "text":Ljava/lang/String;
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/XMLEntityStorage;->fEntities:Ljava/util/Hashtable;

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 178
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/xml/stream/XMLEntityStorage;->fEntityManager:Lcom/sun/xml/stream/XMLEntityManager;

    invoke-virtual {v5}, Lcom/sun/xml/stream/XMLEntityManager;->getCurrentEntity()Lcom/sun/xml/stream/Entity$ScannedEntity;

    move-result-object v5

    iput-object v5, v4, Lcom/sun/xml/stream/XMLEntityStorage;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    .line 179
    new-instance v4, Lcom/sun/xml/stream/Entity$InternalEntity;

    move-object v11, v4

    move-object v4, v11

    move-object v5, v11

    move-object v6, v1

    move-object v7, v2

    const/4 v8, 0x0

    invoke-direct {v5, v6, v7, v8}, Lcom/sun/xml/stream/Entity$InternalEntity;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    move-object v3, v4

    .line 181
    .local v3, "entity":Lcom/sun/xml/stream/Entity;
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/XMLEntityStorage;->fEntities:Ljava/util/Hashtable;

    move-object v5, v1

    move-object v6, v3

    invoke-virtual {v4, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 182
    .line 192
    .end local v3    # "entity":Lcom/sun/xml/stream/Entity;
    :cond_0
    :goto_0
    return-void

    .line 184
    :cond_1
    move-object v4, v0

    iget-boolean v4, v4, Lcom/sun/xml/stream/XMLEntityStorage;->fWarnDuplicateEntityDef:Z

    if-eqz v4, :cond_0

    .line 185
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/XMLEntityStorage;->fErrorReporter:Lcom/sun/xml/stream/XMLErrorReporter;

    const-string v5, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string v6, "MSG_DUPLICATE_ENTITY_DEFINITION"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x0

    move-object v10, v1

    aput-object v10, v8, v9

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/sun/xml/stream/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)V

    goto :goto_0
.end method

.method public addUnparsedEntity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 17

    .prologue
    .line 320
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLEntityStorage;
    move-object/from16 v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object/from16 v2, p2

    .local v2, "publicId":Ljava/lang/String;
    move-object/from16 v3, p3

    .local v3, "systemId":Ljava/lang/String;
    move-object/from16 v4, p4

    .local v4, "baseSystemId":Ljava/lang/String;
    move-object/from16 v5, p5

    .local v5, "notation":Ljava/lang/String;
    move-object v7, v0

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/xml/stream/XMLEntityStorage;->fEntityManager:Lcom/sun/xml/stream/XMLEntityManager;

    invoke-virtual {v8}, Lcom/sun/xml/stream/XMLEntityManager;->getCurrentEntity()Lcom/sun/xml/stream/Entity$ScannedEntity;

    move-result-object v8

    iput-object v8, v7, Lcom/sun/xml/stream/XMLEntityStorage;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    .line 321
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/xml/stream/XMLEntityStorage;->fEntities:Ljava/util/Hashtable;

    move-object v8, v1

    invoke-virtual {v7, v8}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 322
    new-instance v7, Lcom/sun/xml/stream/Entity$ExternalEntity;

    move-object/from16 v16, v7

    move-object/from16 v7, v16

    move-object/from16 v8, v16

    move-object v9, v1

    new-instance v10, Lorg/apache/xerces/util/XMLResourceIdentifierImpl;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    move-object v12, v2

    move-object v13, v3

    move-object v14, v4

    const/4 v15, 0x0

    invoke-direct {v11, v12, v13, v14, v15}, Lorg/apache/xerces/util/XMLResourceIdentifierImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v11, v5

    const/4 v12, 0x0

    invoke-direct {v8, v9, v10, v11, v12}, Lcom/sun/xml/stream/Entity$ExternalEntity;-><init>(Ljava/lang/String;Lorg/apache/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;Z)V

    move-object v6, v7

    .line 325
    .local v6, "entity":Lcom/sun/xml/stream/Entity;
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/xml/stream/XMLEntityStorage;->fEntities:Ljava/util/Hashtable;

    move-object v8, v1

    move-object v9, v6

    invoke-virtual {v7, v8, v9}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 326
    .line 335
    .end local v6    # "entity":Lcom/sun/xml/stream/Entity;
    :cond_0
    :goto_0
    return-void

    .line 328
    :cond_1
    move-object v7, v0

    iget-boolean v7, v7, Lcom/sun/xml/stream/XMLEntityStorage;->fWarnDuplicateEntityDef:Z

    if-eqz v7, :cond_0

    .line 329
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/xml/stream/XMLEntityStorage;->fErrorReporter:Lcom/sun/xml/stream/XMLErrorReporter;

    const-string v8, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string v9, "MSG_DUPLICATE_ENTITY_DEFINITION"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    const/4 v12, 0x0

    move-object v13, v1

    aput-object v13, v11, v12

    const/4 v11, 0x0

    invoke-virtual {v7, v8, v9, v10, v11}, Lcom/sun/xml/stream/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)V

    goto :goto_0
.end method

.method public getDeclaredEntities()Ljava/util/Hashtable;
    .locals 2

    .prologue
    .line 158
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLEntityStorage;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/XMLEntityStorage;->fEntities:Ljava/util/Hashtable;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/XMLEntityStorage;
    return-object v0
.end method

.method public isDeclaredEntity(Ljava/lang/String;)Z
    .locals 5

    .prologue
    .line 361
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLEntityStorage;
    move-object v1, p1

    .local v1, "entityName":Ljava/lang/String;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLEntityStorage;->fEntities:Ljava/util/Hashtable;

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/xml/stream/Entity;

    move-object v2, v3

    .line 362
    .local v2, "entity":Lcom/sun/xml/stream/Entity;
    move-object v3, v2

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    move v0, v3

    .end local v0    # "this":Lcom/sun/xml/stream/XMLEntityStorage;
    return v0

    .restart local v0    # "this":Lcom/sun/xml/stream/XMLEntityStorage;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public isEntityDeclInExternalSubset(Ljava/lang/String;)Z
    .locals 5

    .prologue
    .line 293
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLEntityStorage;
    move-object v1, p1

    .local v1, "entityName":Ljava/lang/String;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLEntityStorage;->fEntities:Ljava/util/Hashtable;

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/xml/stream/Entity;

    move-object v2, v3

    .line 294
    .local v2, "entity":Lcom/sun/xml/stream/Entity;
    move-object v3, v2

    if-nez v3, :cond_0

    .line 295
    const/4 v3, 0x0

    move v0, v3

    .line 297
    .end local v0    # "this":Lcom/sun/xml/stream/XMLEntityStorage;
    :goto_0
    return v0

    .restart local v0    # "this":Lcom/sun/xml/stream/XMLEntityStorage;
    :cond_0
    move-object v3, v2

    invoke-virtual {v3}, Lcom/sun/xml/stream/Entity;->isEntityDeclInExternalSubset()Z

    move-result v3

    move v0, v3

    goto :goto_0
.end method

.method public isExternalEntity(Ljava/lang/String;)Z
    .locals 5

    .prologue
    .line 276
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLEntityStorage;
    move-object v1, p1

    .local v1, "entityName":Ljava/lang/String;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLEntityStorage;->fEntities:Ljava/util/Hashtable;

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/xml/stream/Entity;

    move-object v2, v3

    .line 277
    .local v2, "entity":Lcom/sun/xml/stream/Entity;
    move-object v3, v2

    if-nez v3, :cond_0

    .line 278
    const/4 v3, 0x0

    move v0, v3

    .line 280
    .end local v0    # "this":Lcom/sun/xml/stream/XMLEntityStorage;
    :goto_0
    return v0

    .restart local v0    # "this":Lcom/sun/xml/stream/XMLEntityStorage;
    :cond_0
    move-object v3, v2

    invoke-virtual {v3}, Lcom/sun/xml/stream/Entity;->isExternal()Z

    move-result v3

    move v0, v3

    goto :goto_0
.end method

.method public isUnparsedEntity(Ljava/lang/String;)Z
    .locals 5

    .prologue
    .line 346
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLEntityStorage;
    move-object v1, p1

    .local v1, "entityName":Ljava/lang/String;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLEntityStorage;->fEntities:Ljava/util/Hashtable;

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/xml/stream/Entity;

    move-object v2, v3

    .line 347
    .local v2, "entity":Lcom/sun/xml/stream/Entity;
    move-object v3, v2

    if-nez v3, :cond_0

    .line 348
    const/4 v3, 0x0

    move v0, v3

    .line 350
    .end local v0    # "this":Lcom/sun/xml/stream/XMLEntityStorage;
    :goto_0
    return v0

    .restart local v0    # "this":Lcom/sun/xml/stream/XMLEntityStorage;
    :cond_0
    move-object v3, v2

    invoke-virtual {v3}, Lcom/sun/xml/stream/Entity;->isUnparsed()Z

    move-result v3

    move v0, v3

    goto :goto_0
.end method

.method public reset()V
    .locals 3

    .prologue
    .line 110
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLEntityStorage;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/XMLEntityStorage;->fEntities:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->clear()V

    .line 111
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sun/xml/stream/XMLEntityStorage;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    .line 112
    return-void
.end method

.method public reset(Lcom/sun/xml/stream/PropertyManager;)V
    .locals 5

    .prologue
    .line 103
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLEntityStorage;
    move-object v1, p1

    .local v1, "propertyManager":Lcom/sun/xml/stream/PropertyManager;
    move-object v2, v0

    move-object v3, v1

    const-string v4, "http://apache.org/xml/properties/internal/error-reporter"

    invoke-virtual {v3, v4}, Lcom/sun/xml/stream/PropertyManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/xml/stream/XMLErrorReporter;

    iput-object v3, v2, Lcom/sun/xml/stream/XMLEntityStorage;->fErrorReporter:Lcom/sun/xml/stream/XMLErrorReporter;

    .line 104
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/XMLEntityStorage;->fEntities:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->clear()V

    .line 105
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/sun/xml/stream/XMLEntityStorage;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    .line 107
    return-void
.end method

.method public reset(Lorg/apache/xerces/xni/parser/XMLComponentManager;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    .prologue
    .line 134
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/XMLEntityStorage;
    move-object v1, p1

    .local v1, "componentManager":Lorg/apache/xerces/xni/parser/XMLComponentManager;
    move-object v3, v0

    move-object v4, v1

    :try_start_0
    const-string v5, "http://apache.org/xml/features/warn-on-duplicate-entitydef"

    invoke-interface {v4, v5}, Lorg/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, v3, Lcom/sun/xml/stream/XMLEntityStorage;->fWarnDuplicateEntityDef:Z
    :try_end_0
    .catch Lorg/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    .line 140
    :goto_0
    move-object v3, v0

    move-object v4, v1

    const-string v5, "http://apache.org/xml/properties/internal/error-reporter"

    invoke-interface {v4, v5}, Lorg/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/xml/stream/XMLErrorReporter;

    iput-object v4, v3, Lcom/sun/xml/stream/XMLEntityStorage;->fErrorReporter:Lcom/sun/xml/stream/XMLErrorReporter;

    .line 142
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/XMLEntityStorage;->fEntities:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->clear()V

    .line 143
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/sun/xml/stream/XMLEntityStorage;->fCurrentEntity:Lcom/sun/xml/stream/Entity$ScannedEntity;

    .line 145
    return-void

    .line 136
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 137
    .local v2, "e":Lorg/apache/xerces/xni/parser/XMLConfigurationException;
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/sun/xml/stream/XMLEntityStorage;->fWarnDuplicateEntityDef:Z

    goto :goto_0
.end method
