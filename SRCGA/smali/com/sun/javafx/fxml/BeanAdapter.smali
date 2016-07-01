.class public Lcom/sun/javafx/fxml/BeanAdapter;
.super Ljava/util/AbstractMap;
.source "BeanAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/javafx/fxml/BeanAdapter$MethodCache;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final GET_PREFIX:Ljava/lang/String; = "get"

.field public static final IS_PREFIX:Ljava/lang/String; = "is"

.field public static final PROPERTY_SUFFIX:Ljava/lang/String; = "Property"

.field public static final SET_PREFIX:Ljava/lang/String; = "set"

.field public static final VALUE_OF_METHOD_NAME:Ljava/lang/String; = "valueOf"

.field private static final globalMethodCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/sun/javafx/fxml/BeanAdapter$MethodCache;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final bean:Ljava/lang/Object;

.field private final localCache:Lcom/sun/javafx/fxml/BeanAdapter$MethodCache;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 83
    new-instance v0, Ljava/util/HashMap;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sun/javafx/fxml/BeanAdapter;->globalMethodCache:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 101
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/fxml/BeanAdapter;
    move-object v1, p1

    .local v1, "bean":Ljava/lang/Object;
    move-object v2, v0

    invoke-direct {v2}, Ljava/util/AbstractMap;-><init>()V

    .line 102
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/fxml/BeanAdapter;->bean:Ljava/lang/Object;

    .line 104
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3}, Lcom/sun/javafx/fxml/BeanAdapter;->getClassMethodCache(Ljava/lang/Class;)Lcom/sun/javafx/fxml/BeanAdapter$MethodCache;

    move-result-object v3

    iput-object v3, v2, Lcom/sun/javafx/fxml/BeanAdapter;->localCache:Lcom/sun/javafx/fxml/BeanAdapter$MethodCache;

    .line 105
    return-void
.end method

.method public static coerce(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<+TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 386
    move-object v0, p0

    .local v0, "value":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "type":Ljava/lang/Class;, "Ljava/lang/Class<+TT;>;"
    move-object v6, v1

    if-nez v6, :cond_0

    .line 387
    new-instance v6, Ljava/lang/NullPointerException;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    invoke-direct {v7}, Ljava/lang/NullPointerException;-><init>()V

    throw v6

    .line 390
    :cond_0
    const/4 v6, 0x0

    move-object v2, v6

    .line 392
    .local v2, "coercedValue":Ljava/lang/Object;
    move-object v6, v0

    if-nez v6, :cond_1

    .line 394
    const/4 v6, 0x0

    move-object v2, v6

    .line 515
    .end local v0    # "value":Ljava/lang/Object;
    .end local v2    # "coercedValue":Ljava/lang/Object;
    :goto_0
    move-object v6, v2

    move-object v0, v6

    return-object v0

    .line 395
    .restart local v0    # "value":Ljava/lang/Object;
    .restart local v2    # "coercedValue":Ljava/lang/Object;
    :cond_1
    move-object v6, v1

    move-object v7, v0

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 397
    move-object v6, v0

    move-object v2, v6

    goto :goto_0

    .line 398
    :cond_2
    move-object v6, v1

    const-class v7, Ljava/lang/Boolean;

    if-eq v6, v7, :cond_3

    move-object v6, v1

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v6, v7, :cond_4

    .line 400
    :cond_3
    move-object v6, v0

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    move-object v2, v6

    .local v2, "coercedValue":Ljava/lang/Boolean;
    goto :goto_0

    .line 401
    .local v2, "coercedValue":Ljava/lang/Object;
    :cond_4
    move-object v6, v1

    const-class v7, Ljava/lang/Character;

    if-eq v6, v7, :cond_5

    move-object v6, v1

    sget-object v7, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v6, v7, :cond_6

    .line 403
    :cond_5
    move-object v6, v0

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v6

    move-object v2, v6

    .local v2, "coercedValue":Ljava/lang/Character;
    goto :goto_0

    .line 404
    .local v2, "coercedValue":Ljava/lang/Object;
    :cond_6
    move-object v6, v1

    const-class v7, Ljava/lang/Byte;

    if-eq v6, v7, :cond_7

    move-object v6, v1

    sget-object v7, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v6, v7, :cond_9

    .line 406
    :cond_7
    move-object v6, v0

    instance-of v6, v6, Ljava/lang/Number;

    if-eqz v6, :cond_8

    .line 407
    move-object v6, v0

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->byteValue()B

    move-result v6

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    move-object v2, v6

    .local v2, "coercedValue":Ljava/lang/Byte;
    goto :goto_0

    .line 409
    .local v2, "coercedValue":Ljava/lang/Object;
    :cond_8
    move-object v6, v0

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(Ljava/lang/String;)Ljava/lang/Byte;

    move-result-object v6

    move-object v2, v6

    .local v2, "coercedValue":Ljava/lang/Byte;
    goto :goto_0

    .line 411
    .local v2, "coercedValue":Ljava/lang/Object;
    :cond_9
    move-object v6, v1

    const-class v7, Ljava/lang/Short;

    if-eq v6, v7, :cond_a

    move-object v6, v1

    sget-object v7, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v6, v7, :cond_c

    .line 413
    :cond_a
    move-object v6, v0

    instance-of v6, v6, Ljava/lang/Number;

    if-eqz v6, :cond_b

    .line 414
    move-object v6, v0

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->shortValue()S

    move-result v6

    invoke-static {v6}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v6

    move-object v2, v6

    .local v2, "coercedValue":Ljava/lang/Short;
    goto/16 :goto_0

    .line 416
    .local v2, "coercedValue":Ljava/lang/Object;
    :cond_b
    move-object v6, v0

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Short;->valueOf(Ljava/lang/String;)Ljava/lang/Short;

    move-result-object v6

    move-object v2, v6

    .local v2, "coercedValue":Ljava/lang/Short;
    goto/16 :goto_0

    .line 418
    .local v2, "coercedValue":Ljava/lang/Object;
    :cond_c
    move-object v6, v1

    const-class v7, Ljava/lang/Integer;

    if-eq v6, v7, :cond_d

    move-object v6, v1

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v6, v7, :cond_f

    .line 420
    :cond_d
    move-object v6, v0

    instance-of v6, v6, Ljava/lang/Number;

    if-eqz v6, :cond_e

    .line 421
    move-object v6, v0

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object v2, v6

    .local v2, "coercedValue":Ljava/lang/Integer;
    goto/16 :goto_0

    .line 423
    .local v2, "coercedValue":Ljava/lang/Object;
    :cond_e
    move-object v6, v0

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    move-object v2, v6

    .local v2, "coercedValue":Ljava/lang/Integer;
    goto/16 :goto_0

    .line 425
    .local v2, "coercedValue":Ljava/lang/Object;
    :cond_f
    move-object v6, v1

    const-class v7, Ljava/lang/Long;

    if-eq v6, v7, :cond_10

    move-object v6, v1

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v6, v7, :cond_12

    .line 427
    :cond_10
    move-object v6, v0

    instance-of v6, v6, Ljava/lang/Number;

    if-eqz v6, :cond_11

    .line 428
    move-object v6, v0

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object v2, v6

    .local v2, "coercedValue":Ljava/lang/Long;
    goto/16 :goto_0

    .line 430
    .local v2, "coercedValue":Ljava/lang/Object;
    :cond_11
    move-object v6, v0

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    move-object v2, v6

    .local v2, "coercedValue":Ljava/lang/Long;
    goto/16 :goto_0

    .line 432
    .local v2, "coercedValue":Ljava/lang/Object;
    :cond_12
    move-object v6, v1

    const-class v7, Ljava/math/BigInteger;

    if-ne v6, v7, :cond_14

    .line 433
    move-object v6, v0

    instance-of v6, v6, Ljava/lang/Number;

    if-eqz v6, :cond_13

    .line 434
    move-object v6, v0

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v6

    move-object v2, v6

    .local v2, "coercedValue":Ljava/math/BigInteger;
    goto/16 :goto_0

    .line 436
    .local v2, "coercedValue":Ljava/lang/Object;
    :cond_13
    new-instance v6, Ljava/math/BigInteger;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move-object v8, v0

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    move-object v2, v6

    .local v2, "coercedValue":Ljava/math/BigInteger;
    goto/16 :goto_0

    .line 438
    .local v2, "coercedValue":Ljava/lang/Object;
    :cond_14
    move-object v6, v1

    const-class v7, Ljava/lang/Float;

    if-eq v6, v7, :cond_15

    move-object v6, v1

    sget-object v7, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v6, v7, :cond_17

    .line 440
    :cond_15
    move-object v6, v0

    instance-of v6, v6, Ljava/lang/Number;

    if-eqz v6, :cond_16

    .line 441
    move-object v6, v0

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->floatValue()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    move-object v2, v6

    .local v2, "coercedValue":Ljava/lang/Float;
    goto/16 :goto_0

    .line 443
    .local v2, "coercedValue":Ljava/lang/Object;
    :cond_16
    move-object v6, v0

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v6

    move-object v2, v6

    .local v2, "coercedValue":Ljava/lang/Float;
    goto/16 :goto_0

    .line 445
    .local v2, "coercedValue":Ljava/lang/Object;
    :cond_17
    move-object v6, v1

    const-class v7, Ljava/lang/Double;

    if-eq v6, v7, :cond_18

    move-object v6, v1

    sget-object v7, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v6, v7, :cond_1a

    .line 447
    :cond_18
    move-object v6, v0

    instance-of v6, v6, Ljava/lang/Number;

    if-eqz v6, :cond_19

    .line 448
    move-object v6, v0

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    move-object v2, v6

    .local v2, "coercedValue":Ljava/lang/Double;
    goto/16 :goto_0

    .line 450
    .local v2, "coercedValue":Ljava/lang/Object;
    :cond_19
    move-object v6, v0

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v6

    move-object v2, v6

    .local v2, "coercedValue":Ljava/lang/Double;
    goto/16 :goto_0

    .line 452
    .local v2, "coercedValue":Ljava/lang/Object;
    :cond_1a
    move-object v6, v1

    const-class v7, Ljava/lang/Number;

    if-ne v6, v7, :cond_1c

    .line 453
    move-object v6, v0

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v3, v6

    .line 454
    .local v3, "number":Ljava/lang/String;
    move-object v6, v3

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1b

    .line 455
    move-object v6, v3

    invoke-static {v6}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v6

    move-object v2, v6

    .line 459
    .end local v2    # "coercedValue":Ljava/lang/Object;
    :goto_1
    goto/16 :goto_0

    .line 457
    .restart local v2    # "coercedValue":Ljava/lang/Object;
    :cond_1b
    move-object v6, v3

    invoke-static {v6}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    move-object v2, v6

    .local v2, "coercedValue":Ljava/lang/Long;
    goto :goto_1

    .line 459
    .end local v3    # "number":Ljava/lang/String;
    .local v2, "coercedValue":Ljava/lang/Object;
    :cond_1c
    move-object v6, v1

    const-class v7, Ljava/math/BigDecimal;

    if-ne v6, v7, :cond_1e

    .line 460
    move-object v6, v0

    instance-of v6, v6, Ljava/lang/Number;

    if-eqz v6, :cond_1d

    .line 461
    move-object v6, v0

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v6

    move-object v2, v6

    .local v2, "coercedValue":Ljava/math/BigDecimal;
    goto/16 :goto_0

    .line 463
    .local v2, "coercedValue":Ljava/lang/Object;
    :cond_1d
    new-instance v6, Ljava/math/BigDecimal;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move-object v8, v0

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    move-object v2, v6

    .local v2, "coercedValue":Ljava/math/BigDecimal;
    goto/16 :goto_0

    .line 465
    .local v2, "coercedValue":Ljava/lang/Object;
    :cond_1e
    move-object v6, v1

    const-class v7, Ljava/lang/Class;

    if-ne v6, v7, :cond_1f

    .line 467
    move-object v6, v0

    :try_start_0
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lsun/reflect/misc/ReflectUtil;->checkPackageAccess(Ljava/lang/String;)V

    .line 468
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    move-object v3, v6

    .line 469
    .local v3, "cl":Ljava/lang/ClassLoader;
    move-object v6, v0

    .line 470
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    move-object v8, v3

    .line 469
    invoke-static {v6, v7, v8}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    move-object v2, v6

    .line 475
    .local v2, "coercedValue":Ljava/lang/Class;
    goto/16 :goto_0

    .line 473
    .end local v3    # "cl":Ljava/lang/ClassLoader;
    .local v2, "coercedValue":Ljava/lang/Object;
    :catch_0
    move-exception v6

    move-object v3, v6

    .line 474
    .local v3, "exception":Ljava/lang/ClassNotFoundException;
    new-instance v6, Ljava/lang/IllegalArgumentException;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move-object v8, v3

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 477
    .end local v3    # "exception":Ljava/lang/ClassNotFoundException;
    :cond_1f
    move-object v6, v0

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    move-object v3, v6

    .line 478
    .local v3, "valueType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v6, 0x0

    move-object v4, v6

    .line 480
    .local v4, "valueOfMethod":Ljava/lang/reflect/Method;
    :cond_20
    :goto_2
    move-object v6, v4

    if-nez v6, :cond_21

    move-object v6, v3

    if-eqz v6, :cond_21

    .line 483
    move-object v6, v1

    :try_start_1
    invoke-static {v6}, Lsun/reflect/misc/ReflectUtil;->checkPackageAccess(Ljava/lang/Class;)V

    .line 484
    move-object v6, v1

    const-string v7, "valueOf"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Class;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x0

    move-object v11, v3

    aput-object v11, v9, v10

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v6

    move-object v4, v6

    .line 487
    .line 489
    :goto_3
    move-object v6, v4

    if-nez v6, :cond_20

    .line 490
    move-object v6, v3

    invoke-virtual {v6}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v6

    move-object v3, v6

    goto :goto_2

    .line 485
    :catch_1
    move-exception v6

    move-object v5, v6

    goto :goto_3

    .line 494
    :cond_21
    move-object v6, v4

    if-nez v6, :cond_22

    .line 495
    new-instance v6, Ljava/lang/IllegalArgumentException;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to coerce "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v0

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 498
    :cond_22
    move-object v6, v1

    invoke-virtual {v6}, Ljava/lang/Class;->isEnum()Z

    move-result v6

    if-eqz v6, :cond_23

    move-object v6, v0

    instance-of v6, v6, Ljava/lang/String;

    if-eqz v6, :cond_23

    move-object v6, v0

    check-cast v6, Ljava/lang/String;

    const/4 v7, 0x0

    .line 500
    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v6

    if-eqz v6, :cond_23

    .line 501
    move-object v6, v0

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Lcom/sun/javafx/fxml/BeanAdapter;->toAllCaps(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    .line 505
    .end local v0    # "value":Ljava/lang/Object;
    :cond_23
    move-object v6, v4

    const/4 v7, 0x0

    const/4 v8, 0x1

    :try_start_2
    new-array v8, v8, [Ljava/lang/Object;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x0

    move-object v11, v0

    aput-object v11, v9, v10

    invoke-static {v6, v7, v8}, Lsun/reflect/misc/MethodUtil;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_4

    move-result-object v6

    move-object v2, v6

    .line 512
    goto/16 :goto_0

    .line 506
    :catch_2
    move-exception v6

    move-object v5, v6

    .line 507
    .local v5, "exception":Ljava/lang/IllegalAccessException;
    new-instance v6, Ljava/lang/RuntimeException;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move-object v8, v5

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 508
    .end local v5    # "exception":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v6

    move-object v5, v6

    .line 509
    .local v5, "exception":Ljava/lang/reflect/InvocationTargetException;
    new-instance v6, Ljava/lang/RuntimeException;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move-object v8, v5

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 510
    .end local v5    # "exception":Ljava/lang/reflect/InvocationTargetException;
    :catch_4
    move-exception v6

    move-object v5, v6

    .line 511
    .local v5, "exception":Ljava/lang/SecurityException;
    new-instance v6, Ljava/lang/RuntimeException;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move-object v8, v5

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v6
.end method

.method public static get(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 536
    move-object v0, p0

    .local v0, "target":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "sourceType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object/from16 v2, p2

    .local v2, "key":Ljava/lang/String;
    const/4 v7, 0x0

    move-object v3, v7

    .line 538
    .local v3, "value":Ljava/lang/Object;, "TT;"
    move-object v7, v0

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    move-object v4, v7

    .line 539
    .local v4, "targetType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v7, v1

    move-object v8, v2

    move-object v9, v4

    invoke-static {v7, v8, v9}, Lcom/sun/javafx/fxml/BeanAdapter;->getStaticGetterMethod(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    move-object v5, v7

    .line 541
    .local v5, "getterMethod":Ljava/lang/reflect/Method;
    move-object v7, v5

    if-eqz v7, :cond_0

    .line 543
    move-object v7, v5

    const/4 v8, 0x0

    const/4 v9, 0x1

    :try_start_0
    new-array v9, v9, [Ljava/lang/Object;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const/4 v11, 0x0

    move-object v12, v0

    aput-object v12, v10, v11

    invoke-static {v7, v8, v9}, Lsun/reflect/misc/MethodUtil;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v7

    move-object v3, v7

    .line 548
    .line 551
    .end local v3    # "value":Ljava/lang/Object;, "TT;"
    :cond_0
    move-object v7, v3

    move-object v0, v7

    .end local v0    # "target":Ljava/lang/Object;
    return-object v0

    .line 544
    .restart local v0    # "target":Ljava/lang/Object;
    .restart local v3    # "value":Ljava/lang/Object;, "TT;"
    :catch_0
    move-exception v7

    move-object v6, v7

    .line 545
    .local v6, "exception":Ljava/lang/reflect/InvocationTargetException;
    new-instance v7, Ljava/lang/RuntimeException;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    move-object v9, v6

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .line 546
    .end local v6    # "exception":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v7

    move-object v6, v7

    .line 547
    .local v6, "exception":Ljava/lang/IllegalAccessException;
    new-instance v7, Ljava/lang/RuntimeException;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    move-object v9, v6

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v7
.end method

.method private get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 9

    .prologue
    .line 207
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/fxml/BeanAdapter;
    move-object v1, p1

    .local v1, "key":Ljava/lang/String;
    move-object v5, v1

    const-string v6, "Property"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/fxml/BeanAdapter;->localCache:Lcom/sun/javafx/fxml/BeanAdapter$MethodCache;

    move-object v6, v1

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Class;

    invoke-static {v5, v6, v7}, Lcom/sun/javafx/fxml/BeanAdapter$MethodCache;->access$100(Lcom/sun/javafx/fxml/BeanAdapter$MethodCache;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    :goto_0
    move-object v2, v5

    .line 210
    .local v2, "getterMethod":Ljava/lang/reflect/Method;
    move-object v5, v2

    if-eqz v5, :cond_1

    .line 212
    move-object v5, v2

    move-object v6, v0

    :try_start_0
    iget-object v6, v6, Lcom/sun/javafx/fxml/BeanAdapter;->bean:Ljava/lang/Object;

    const/4 v7, 0x0

    check-cast v7, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lsun/reflect/misc/MethodUtil;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v5

    move-object v3, v5

    .line 217
    .line 222
    :goto_1
    move-object v5, v3

    move-object v0, v5

    .end local v0    # "this":Lcom/sun/javafx/fxml/BeanAdapter;
    return-object v0

    .line 207
    .end local v2    # "getterMethod":Ljava/lang/reflect/Method;
    .restart local v0    # "this":Lcom/sun/javafx/fxml/BeanAdapter;
    :cond_0
    move-object v5, v0

    move-object v6, v1

    invoke-direct {v5, v6}, Lcom/sun/javafx/fxml/BeanAdapter;->getGetterMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v5

    goto :goto_0

    .line 213
    .restart local v2    # "getterMethod":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v5

    move-object v4, v5

    .line 214
    .local v4, "exception":Ljava/lang/IllegalAccessException;
    new-instance v5, Ljava/lang/RuntimeException;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v4

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 215
    .end local v4    # "exception":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v5

    move-object v4, v5

    .line 216
    .local v4, "exception":Ljava/lang/reflect/InvocationTargetException;
    new-instance v5, Ljava/lang/RuntimeException;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v4

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 219
    .end local v4    # "exception":Ljava/lang/reflect/InvocationTargetException;
    :cond_1
    const/4 v5, 0x0

    move-object v3, v5

    .local v3, "value":Ljava/lang/Object;
    goto :goto_1
.end method

.method private static getClassMethodCache(Ljava/lang/Class;)Lcom/sun/javafx/fxml/BeanAdapter$MethodCache;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/sun/javafx/fxml/BeanAdapter$MethodCache;"
        }
    .end annotation

    .prologue
    .line 108
    move-object/from16 v0, p0

    .local v0, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v11, v0

    const-class v12, Ljava/lang/Object;

    if-ne v11, v12, :cond_0

    .line 109
    const/4 v11, 0x0

    move-object v0, v11

    .line 149
    .end local v0    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v1, "classMethodCache":Lcom/sun/javafx/fxml/BeanAdapter$MethodCache;
    :goto_0
    return-object v0

    .line 112
    .end local v1    # "classMethodCache":Lcom/sun/javafx/fxml/BeanAdapter$MethodCache;
    .restart local v0    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    sget-object v11, Lcom/sun/javafx/fxml/BeanAdapter;->globalMethodCache:Ljava/util/HashMap;

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    move-object v2, v12

    monitor-enter v11

    .line 113
    :try_start_0
    sget-object v11, Lcom/sun/javafx/fxml/BeanAdapter;->globalMethodCache:Ljava/util/HashMap;

    move-object v12, v0

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/sun/javafx/fxml/BeanAdapter$MethodCache;

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    move-object v1, v12

    .restart local v1    # "classMethodCache":Lcom/sun/javafx/fxml/BeanAdapter$MethodCache;
    if-eqz v11, :cond_1

    .line 114
    move-object v11, v1

    move-object v12, v2

    monitor-exit v12

    move-object v0, v11

    goto :goto_0

    .line 116
    :cond_1
    new-instance v11, Ljava/util/HashMap;

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    move-object v3, v11

    .line 118
    .local v3, "classMethods":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/reflect/Method;>;>;"
    move-object v11, v0

    invoke-static {v11}, Lsun/reflect/misc/ReflectUtil;->checkPackageAccess(Ljava/lang/Class;)V

    .line 119
    move-object v11, v0

    invoke-virtual {v11}, Ljava/lang/Class;->getModifiers()I

    move-result v11

    invoke-static {v11}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 122
    new-instance v11, Lcom/sun/javafx/fxml/BeanAdapter$1;

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    move-object v13, v0

    invoke-direct {v12, v13}, Lcom/sun/javafx/fxml/BeanAdapter$1;-><init>(Ljava/lang/Class;)V

    .line 123
    invoke-static {v11}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/lang/reflect/Method;

    move-object v4, v11

    .line 130
    .local v4, "declaredMethods":[Ljava/lang/reflect/Method;
    const/4 v11, 0x0

    move v5, v11

    .local v5, "i":I
    :goto_1
    move v11, v5

    move-object v12, v4

    array-length v12, v12

    if-ge v11, v12, :cond_4

    .line 131
    move-object v11, v4

    move v12, v5

    aget-object v11, v11, v12

    move-object v6, v11

    .line 132
    .local v6, "method":Ljava/lang/reflect/Method;
    move-object v11, v6

    invoke-virtual {v11}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v11

    move v7, v11

    .line 134
    .local v7, "modifiers":I
    move v11, v7

    invoke-static {v11}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v11

    if-eqz v11, :cond_3

    move v11, v7

    invoke-static {v11}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v11

    if-nez v11, :cond_3

    .line 135
    move-object v11, v6

    invoke-virtual {v11}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v11

    move-object v8, v11

    .line 136
    .local v8, "name":Ljava/lang/String;
    move-object v11, v3

    move-object v12, v8

    invoke-interface {v11, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    move-object v9, v11

    .line 138
    .local v9, "namedMethods":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Method;>;"
    move-object v11, v9

    if-nez v11, :cond_2

    .line 139
    new-instance v11, Ljava/util/ArrayList;

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    move-object v9, v11

    .line 140
    move-object v11, v3

    move-object v12, v8

    move-object v13, v9

    invoke-interface {v11, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .line 143
    :cond_2
    move-object v11, v9

    move-object v12, v6

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v11

    .line 130
    .end local v8    # "name":Ljava/lang/String;
    .end local v9    # "namedMethods":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Method;>;"
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 147
    .end local v4    # "declaredMethods":[Ljava/lang/reflect/Method;
    .end local v5    # "i":I
    .end local v6    # "method":Ljava/lang/reflect/Method;
    .end local v7    # "modifiers":I
    :cond_4
    new-instance v11, Lcom/sun/javafx/fxml/BeanAdapter$MethodCache;

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    move-object v13, v3

    move-object v14, v0

    invoke-virtual {v14}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v14

    invoke-static {v14}, Lcom/sun/javafx/fxml/BeanAdapter;->getClassMethodCache(Ljava/lang/Class;)Lcom/sun/javafx/fxml/BeanAdapter$MethodCache;

    move-result-object v14

    const/4 v15, 0x0

    invoke-direct {v12, v13, v14, v15}, Lcom/sun/javafx/fxml/BeanAdapter$MethodCache;-><init>(Ljava/util/Map;Lcom/sun/javafx/fxml/BeanAdapter$MethodCache;Lcom/sun/javafx/fxml/BeanAdapter$1;)V

    move-object v4, v11

    .line 148
    .local v4, "cache":Lcom/sun/javafx/fxml/BeanAdapter$MethodCache;
    sget-object v11, Lcom/sun/javafx/fxml/BeanAdapter;->globalMethodCache:Ljava/util/HashMap;

    move-object v12, v0

    move-object v13, v4

    invoke-virtual {v11, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .line 149
    move-object v11, v4

    move-object v12, v2

    monitor-exit v12

    move-object v0, v11

    goto/16 :goto_0

    .line 150
    .end local v1    # "classMethodCache":Lcom/sun/javafx/fxml/BeanAdapter$MethodCache;
    .end local v3    # "classMethods":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/reflect/Method;>;>;"
    .end local v4    # "cache":Lcom/sun/javafx/fxml/BeanAdapter$MethodCache;
    :catchall_0
    move-exception v11

    move-object v10, v11

    move-object v11, v2

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v11, v10

    throw v11
.end method

.method public static getConstantValue(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 806
    move-object v0, p0

    .local v0, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v6, v0

    if-nez v6, :cond_0

    .line 807
    new-instance v6, Ljava/lang/IllegalArgumentException;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v6

    .line 810
    :cond_0
    move-object v6, v1

    if-nez v6, :cond_1

    .line 811
    new-instance v6, Ljava/lang/IllegalArgumentException;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v6

    .line 816
    :cond_1
    move-object v6, v0

    move-object v7, v1

    :try_start_0
    invoke-static {v6, v7}, Lsun/reflect/misc/FieldUtil;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    move-object v2, v6

    .line 819
    .line 821
    .local v2, "field":Ljava/lang/reflect/Field;
    move-object v6, v2

    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v6

    move v3, v6

    .line 822
    .local v3, "fieldModifiers":I
    move v6, v3

    const/16 v7, 0x8

    and-int/lit8 v6, v6, 0x8

    if-eqz v6, :cond_2

    move v6, v3

    const/16 v7, 0x10

    and-int/lit8 v6, v6, 0x10

    if-nez v6, :cond_3

    .line 824
    :cond_2
    new-instance v6, Ljava/lang/IllegalArgumentException;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    const-string v8, "Field is not a constant."

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 817
    .end local v2    # "field":Ljava/lang/reflect/Field;
    .end local v3    # "fieldModifiers":I
    :catch_0
    move-exception v6

    move-object v3, v6

    .line 818
    .local v3, "exception":Ljava/lang/NoSuchFieldException;
    new-instance v6, Ljava/lang/IllegalArgumentException;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v3

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 829
    .restart local v2    # "field":Ljava/lang/reflect/Field;
    .local v3, "fieldModifiers":I
    :cond_3
    move-object v6, v2

    const/4 v7, 0x0

    :try_start_1
    invoke-virtual {v6, v7}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v6

    move-object v4, v6

    .line 832
    .line 834
    .local v4, "value":Ljava/lang/Object;
    move-object v6, v4

    move-object v0, v6

    .end local v0    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    return-object v0

    .line 830
    .end local v4    # "value":Ljava/lang/Object;
    .restart local v0    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_1
    move-exception v6

    move-object v5, v6

    .line 831
    .local v5, "exception":Ljava/lang/IllegalAccessException;
    new-instance v6, Ljava/lang/IllegalArgumentException;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v5

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v6
.end method

.method public static getGenericListItemType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 11

    .prologue
    .line 698
    move-object v0, p0

    .local v0, "listType":Ljava/lang/reflect/Type;
    const/4 v9, 0x0

    move-object v1, v9

    .line 700
    .local v1, "itemType":Ljava/lang/reflect/Type;
    move-object v9, v0

    move-object v2, v9

    .line 701
    .local v2, "parentType":Ljava/lang/reflect/Type;
    :goto_0
    move-object v9, v2

    if-eqz v9, :cond_0

    .line 702
    move-object v9, v2

    instance-of v9, v9, Ljava/lang/reflect/ParameterizedType;

    if-eqz v9, :cond_2

    .line 703
    move-object v9, v2

    check-cast v9, Ljava/lang/reflect/ParameterizedType;

    move-object v3, v9

    .line 704
    .local v3, "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    move-object v9, v3

    invoke-interface {v9}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v9

    check-cast v9, Ljava/lang/Class;

    move-object v4, v9

    .line 706
    .local v4, "rawType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v9, Ljava/util/List;

    move-object v10, v4

    invoke-virtual {v9, v10}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 707
    move-object v9, v3

    invoke-interface {v9}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v9

    const/4 v10, 0x0

    aget-object v9, v9, v10

    move-object v1, v9

    .line 737
    .end local v3    # "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    .end local v4    # "rawType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    :goto_1
    move-object v9, v1

    if-eqz v9, :cond_1

    move-object v9, v1

    instance-of v9, v9, Ljava/lang/reflect/TypeVariable;

    if-eqz v9, :cond_1

    .line 738
    const-class v9, Ljava/lang/Object;

    move-object v1, v9

    .line 741
    :cond_1
    move-object v9, v1

    move-object v0, v9

    .end local v0    # "listType":Ljava/lang/reflect/Type;
    return-object v0

    .line 713
    .restart local v0    # "listType":Ljava/lang/reflect/Type;
    :cond_2
    move-object v9, v2

    check-cast v9, Ljava/lang/Class;

    move-object v3, v9

    .line 714
    .local v3, "classType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v9, v3

    invoke-virtual {v9}, Ljava/lang/Class;->getGenericInterfaces()[Ljava/lang/reflect/Type;

    move-result-object v9

    move-object v4, v9

    .line 716
    .local v4, "genericInterfaces":[Ljava/lang/reflect/Type;
    const/4 v9, 0x0

    move v5, v9

    .local v5, "i":I
    :goto_2
    move v9, v5

    move-object v10, v4

    array-length v10, v10

    if-ge v9, v10, :cond_3

    .line 717
    move-object v9, v4

    move v10, v5

    aget-object v9, v9, v10

    move-object v6, v9

    .line 719
    .local v6, "genericInterface":Ljava/lang/reflect/Type;
    move-object v9, v6

    instance-of v9, v9, Ljava/lang/reflect/ParameterizedType;

    if-eqz v9, :cond_4

    .line 720
    move-object v9, v6

    check-cast v9, Ljava/lang/reflect/ParameterizedType;

    move-object v7, v9

    .line 721
    .local v7, "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    move-object v9, v7

    invoke-interface {v9}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v9

    check-cast v9, Ljava/lang/Class;

    move-object v8, v9

    .line 723
    .local v8, "interfaceType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v9, Ljava/util/List;

    move-object v10, v8

    invoke-virtual {v9, v10}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 724
    move-object v9, v7

    invoke-interface {v9}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v9

    const/4 v10, 0x0

    aget-object v9, v9, v10

    move-object v1, v9

    .line 730
    .end local v6    # "genericInterface":Ljava/lang/reflect/Type;
    .end local v7    # "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    .end local v8    # "interfaceType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_3
    move-object v9, v1

    if-eqz v9, :cond_5

    .line 731
    goto :goto_1

    .line 716
    .restart local v6    # "genericInterface":Ljava/lang/reflect/Type;
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 734
    .end local v6    # "genericInterface":Ljava/lang/reflect/Type;
    :cond_5
    move-object v9, v3

    invoke-virtual {v9}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v9

    move-object v2, v9

    .line 735
    goto :goto_0
.end method

.method public static getGenericMapValueType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 11

    .prologue
    .line 750
    move-object v0, p0

    .local v0, "mapType":Ljava/lang/reflect/Type;
    const/4 v9, 0x0

    move-object v1, v9

    .line 752
    .local v1, "valueType":Ljava/lang/reflect/Type;
    move-object v9, v0

    move-object v2, v9

    .line 753
    .local v2, "parentType":Ljava/lang/reflect/Type;
    :goto_0
    move-object v9, v2

    if-eqz v9, :cond_0

    .line 754
    move-object v9, v2

    instance-of v9, v9, Ljava/lang/reflect/ParameterizedType;

    if-eqz v9, :cond_2

    .line 755
    move-object v9, v2

    check-cast v9, Ljava/lang/reflect/ParameterizedType;

    move-object v3, v9

    .line 756
    .local v3, "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    move-object v9, v3

    invoke-interface {v9}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v9

    check-cast v9, Ljava/lang/Class;

    move-object v4, v9

    .line 758
    .local v4, "rawType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v9, Ljava/util/Map;

    move-object v10, v4

    invoke-virtual {v9, v10}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 759
    move-object v9, v3

    invoke-interface {v9}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v9

    const/4 v10, 0x1

    aget-object v9, v9, v10

    move-object v1, v9

    .line 789
    .end local v3    # "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    .end local v4    # "rawType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    :goto_1
    move-object v9, v1

    if-eqz v9, :cond_1

    move-object v9, v1

    instance-of v9, v9, Ljava/lang/reflect/TypeVariable;

    if-eqz v9, :cond_1

    .line 790
    const-class v9, Ljava/lang/Object;

    move-object v1, v9

    .line 793
    :cond_1
    move-object v9, v1

    move-object v0, v9

    .end local v0    # "mapType":Ljava/lang/reflect/Type;
    return-object v0

    .line 765
    .restart local v0    # "mapType":Ljava/lang/reflect/Type;
    :cond_2
    move-object v9, v2

    check-cast v9, Ljava/lang/Class;

    move-object v3, v9

    .line 766
    .local v3, "classType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v9, v3

    invoke-virtual {v9}, Ljava/lang/Class;->getGenericInterfaces()[Ljava/lang/reflect/Type;

    move-result-object v9

    move-object v4, v9

    .line 768
    .local v4, "genericInterfaces":[Ljava/lang/reflect/Type;
    const/4 v9, 0x0

    move v5, v9

    .local v5, "i":I
    :goto_2
    move v9, v5

    move-object v10, v4

    array-length v10, v10

    if-ge v9, v10, :cond_3

    .line 769
    move-object v9, v4

    move v10, v5

    aget-object v9, v9, v10

    move-object v6, v9

    .line 771
    .local v6, "genericInterface":Ljava/lang/reflect/Type;
    move-object v9, v6

    instance-of v9, v9, Ljava/lang/reflect/ParameterizedType;

    if-eqz v9, :cond_4

    .line 772
    move-object v9, v6

    check-cast v9, Ljava/lang/reflect/ParameterizedType;

    move-object v7, v9

    .line 773
    .local v7, "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    move-object v9, v7

    invoke-interface {v9}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v9

    check-cast v9, Ljava/lang/Class;

    move-object v8, v9

    .line 775
    .local v8, "interfaceType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v9, Ljava/util/Map;

    move-object v10, v8

    invoke-virtual {v9, v10}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 776
    move-object v9, v7

    invoke-interface {v9}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v9

    const/4 v10, 0x1

    aget-object v9, v9, v10

    move-object v1, v9

    .line 782
    .end local v6    # "genericInterface":Ljava/lang/reflect/Type;
    .end local v7    # "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    .end local v8    # "interfaceType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_3
    move-object v9, v1

    if-eqz v9, :cond_5

    .line 783
    goto :goto_1

    .line 768
    .restart local v6    # "genericInterface":Ljava/lang/reflect/Type;
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 786
    .end local v6    # "genericInterface":Ljava/lang/reflect/Type;
    :cond_5
    move-object v9, v3

    invoke-virtual {v9}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v9

    move-object v2, v9

    .line 787
    goto :goto_0
.end method

.method public static getGenericType(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Type;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    .prologue
    .line 658
    move-object v0, p0

    .local v0, "sourceType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v1, p1

    .local v1, "key":Ljava/lang/String;
    move-object v2, p2

    .local v2, "targetType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-static {v4, v5, v6}, Lcom/sun/javafx/fxml/BeanAdapter;->getStaticGetterMethod(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    move-object v3, v4

    .line 659
    .local v3, "getterMethod":Ljava/lang/reflect/Method;
    move-object v4, v3

    if-nez v4, :cond_0

    const/4 v4, 0x0

    :goto_0
    move-object v0, v4

    .end local v0    # "sourceType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    return-object v0

    .restart local v0    # "sourceType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    move-object v4, v3

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getGenericReturnType()Ljava/lang/reflect/Type;

    move-result-object v4

    goto :goto_0
.end method

.method private getGetterMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;
    .locals 6

    .prologue
    .line 164
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/fxml/BeanAdapter;
    move-object v1, p1

    .local v1, "key":Ljava/lang/String;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/fxml/BeanAdapter;->localCache:Lcom/sun/javafx/fxml/BeanAdapter$MethodCache;

    const-string v4, "get"

    move-object v5, v1

    invoke-static {v4, v5}, Lcom/sun/javafx/fxml/BeanAdapter;->getMethodName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-static {v3, v4, v5}, Lcom/sun/javafx/fxml/BeanAdapter$MethodCache;->access$100(Lcom/sun/javafx/fxml/BeanAdapter$MethodCache;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    move-object v2, v3

    .line 166
    .local v2, "getterMethod":Ljava/lang/reflect/Method;
    move-object v3, v2

    if-nez v3, :cond_0

    .line 167
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/fxml/BeanAdapter;->localCache:Lcom/sun/javafx/fxml/BeanAdapter$MethodCache;

    const-string v4, "is"

    move-object v5, v1

    invoke-static {v4, v5}, Lcom/sun/javafx/fxml/BeanAdapter;->getMethodName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-static {v3, v4, v5}, Lcom/sun/javafx/fxml/BeanAdapter$MethodCache;->access$100(Lcom/sun/javafx/fxml/BeanAdapter$MethodCache;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    move-object v2, v3

    .line 170
    :cond_0
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/javafx/fxml/BeanAdapter;
    return-object v0
.end method

.method public static getListItemType(Ljava/lang/reflect/Type;)Ljava/lang/Class;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 668
    move-object v0, p0

    .local v0, "listType":Ljava/lang/reflect/Type;
    move-object v2, v0

    invoke-static {v2}, Lcom/sun/javafx/fxml/BeanAdapter;->getGenericListItemType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v2

    move-object v1, v2

    .line 670
    .local v1, "itemType":Ljava/lang/reflect/Type;
    move-object v2, v1

    instance-of v2, v2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v2, :cond_0

    .line 671
    move-object v2, v1

    check-cast v2, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v2}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v2

    move-object v1, v2

    .line 674
    :cond_0
    move-object v2, v1

    check-cast v2, Ljava/lang/Class;

    move-object v0, v2

    .end local v0    # "listType":Ljava/lang/reflect/Type;
    return-object v0
.end method

.method public static getMapValueType(Ljava/lang/reflect/Type;)Ljava/lang/Class;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 683
    move-object v0, p0

    .local v0, "mapType":Ljava/lang/reflect/Type;
    move-object v2, v0

    invoke-static {v2}, Lcom/sun/javafx/fxml/BeanAdapter;->getGenericMapValueType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v2

    move-object v1, v2

    .line 685
    .local v1, "valueType":Ljava/lang/reflect/Type;
    move-object v2, v1

    instance-of v2, v2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v2, :cond_0

    .line 686
    move-object v2, v1

    check-cast v2, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v2}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v2

    move-object v1, v2

    .line 689
    :cond_0
    move-object v2, v1

    check-cast v2, Ljava/lang/Class;

    move-object v0, v2

    .end local v0    # "mapType":Ljava/lang/reflect/Type;
    return-object v0
.end method

.method private static getMethodName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 184
    move-object v0, p0

    .local v0, "prefix":Ljava/lang/String;
    move-object v1, p1

    .local v1, "key":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v1

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v1

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "prefix":Ljava/lang/String;
    return-object v0
.end method

.method private getSetterMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;
    .locals 10

    .prologue
    .line 174
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/fxml/BeanAdapter;
    move-object v1, p1

    .local v1, "key":Ljava/lang/String;
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Lcom/sun/javafx/fxml/BeanAdapter;->getType(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    move-object v2, v3

    .line 176
    .local v2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v3, v2

    if-nez v3, :cond_0

    .line 177
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    const-string v5, "Cannot determine type for property."

    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 180
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/fxml/BeanAdapter;->localCache:Lcom/sun/javafx/fxml/BeanAdapter$MethodCache;

    const-string v4, "set"

    move-object v5, v1

    invoke-static {v4, v5}, Lcom/sun/javafx/fxml/BeanAdapter;->getMethodName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move-object v8, v2

    aput-object v8, v6, v7

    invoke-static {v3, v4, v5}, Lcom/sun/javafx/fxml/BeanAdapter$MethodCache;->access$100(Lcom/sun/javafx/fxml/BeanAdapter$MethodCache;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/javafx/fxml/BeanAdapter;
    return-object v0
.end method

.method private static getStaticGetterMethod(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .prologue
    .line 839
    move-object/from16 v0, p0

    .local v0, "sourceType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object/from16 v1, p1

    .local v1, "key":Ljava/lang/String;
    move-object/from16 v2, p2

    .local v2, "targetType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v9, v0

    if-nez v9, :cond_0

    .line 840
    new-instance v9, Ljava/lang/NullPointerException;

    move-object/from16 v16, v9

    move-object/from16 v9, v16

    move-object/from16 v10, v16

    invoke-direct {v10}, Ljava/lang/NullPointerException;-><init>()V

    throw v9

    .line 843
    :cond_0
    move-object v9, v1

    if-nez v9, :cond_1

    .line 844
    new-instance v9, Ljava/lang/NullPointerException;

    move-object/from16 v16, v9

    move-object/from16 v9, v16

    move-object/from16 v10, v16

    invoke-direct {v10}, Ljava/lang/NullPointerException;-><init>()V

    throw v9

    .line 847
    :cond_1
    const/4 v9, 0x0

    move-object v3, v9

    .line 849
    .local v3, "method":Ljava/lang/reflect/Method;
    move-object v9, v2

    if-eqz v9, :cond_5

    .line 850
    new-instance v9, Ljava/lang/StringBuilder;

    move-object/from16 v16, v9

    move-object/from16 v9, v16

    move-object/from16 v10, v16

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object v10, v1

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-static {v10}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v1

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object v1, v9

    .line 852
    new-instance v9, Ljava/lang/StringBuilder;

    move-object/from16 v16, v9

    move-object/from16 v9, v16

    move-object/from16 v10, v16

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "get"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object v4, v9

    .line 853
    .local v4, "getMethodName":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    move-object/from16 v16, v9

    move-object/from16 v9, v16

    move-object/from16 v10, v16

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "is"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object v5, v9

    .line 856
    .local v5, "isMethodName":Ljava/lang/String;
    move-object v9, v0

    move-object v10, v4

    const/4 v11, 0x1

    :try_start_0
    new-array v11, v11, [Ljava/lang/Class;

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    const/4 v13, 0x0

    move-object v14, v2

    aput-object v14, v12, v13

    invoke-static {v9, v10, v11}, Lsun/reflect/misc/MethodUtil;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    move-object v3, v9

    .line 859
    .line 861
    :goto_0
    move-object v9, v3

    if-nez v9, :cond_2

    .line 863
    move-object v9, v0

    move-object v10, v5

    const/4 v11, 0x1

    :try_start_1
    new-array v11, v11, [Ljava/lang/Class;

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    const/4 v13, 0x0

    move-object v14, v2

    aput-object v14, v12, v13

    invoke-static {v9, v10, v11}, Lsun/reflect/misc/MethodUtil;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v9

    move-object v3, v9

    .line 866
    .line 870
    :cond_2
    :goto_1
    move-object v9, v3

    if-nez v9, :cond_4

    .line 871
    move-object v9, v2

    invoke-virtual {v9}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v9

    move-object v6, v9

    .line 872
    .local v6, "interfaces":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v9, 0x0

    move v7, v9

    .local v7, "i":I
    :goto_2
    move v9, v7

    move-object v10, v6

    array-length v10, v10

    if-ge v9, v10, :cond_4

    .line 874
    move-object v9, v0

    move-object v10, v4

    const/4 v11, 0x1

    :try_start_2
    new-array v11, v11, [Ljava/lang/Class;

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    const/4 v13, 0x0

    move-object v14, v6

    move v15, v7

    aget-object v14, v14, v15

    aput-object v14, v12, v13

    invoke-static {v9, v10, v11}, Lsun/reflect/misc/MethodUtil;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v9

    move-object v3, v9

    .line 877
    .line 879
    :goto_3
    move-object v9, v3

    if-nez v9, :cond_3

    .line 881
    move-object v9, v0

    move-object v10, v5

    const/4 v11, 0x1

    :try_start_3
    new-array v11, v11, [Ljava/lang/Class;

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    const/4 v13, 0x0

    move-object v14, v6

    move v15, v7

    aget-object v14, v14, v15

    aput-object v14, v12, v13

    invoke-static {v9, v10, v11}, Lsun/reflect/misc/MethodUtil;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v9

    move-object v3, v9

    .line 884
    .line 887
    :cond_3
    :goto_4
    move-object v9, v3

    if-eqz v9, :cond_6

    .line 888
    .line 893
    .end local v6    # "interfaces":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v7    # "i":I
    :cond_4
    move-object v9, v3

    if-nez v9, :cond_5

    .line 894
    move-object v9, v0

    move-object v10, v1

    move-object v11, v2

    invoke-virtual {v11}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v11

    invoke-static {v9, v10, v11}, Lcom/sun/javafx/fxml/BeanAdapter;->getStaticGetterMethod(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    move-object v3, v9

    .line 898
    .end local v4    # "getMethodName":Ljava/lang/String;
    .end local v5    # "isMethodName":Ljava/lang/String;
    :cond_5
    move-object v9, v3

    move-object v0, v9

    .end local v0    # "sourceType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    return-object v0

    .line 857
    .restart local v0    # "sourceType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v4    # "getMethodName":Ljava/lang/String;
    .restart local v5    # "isMethodName":Ljava/lang/String;
    :catch_0
    move-exception v9

    move-object v6, v9

    goto :goto_0

    .line 864
    :catch_1
    move-exception v9

    move-object v6, v9

    goto :goto_1

    .line 875
    .restart local v6    # "interfaces":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .restart local v7    # "i":I
    :catch_2
    move-exception v9

    move-object v8, v9

    goto :goto_3

    .line 882
    :catch_3
    move-exception v9

    move-object v8, v9

    goto :goto_4

    .line 872
    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_2
.end method

.method private static getStaticSetterMethod(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .prologue
    .line 903
    move-object/from16 v0, p0

    .local v0, "sourceType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object/from16 v1, p1

    .local v1, "key":Ljava/lang/String;
    move-object/from16 v2, p2

    .local v2, "valueType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object/from16 v3, p3

    .local v3, "targetType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v9, v0

    if-nez v9, :cond_0

    .line 904
    new-instance v9, Ljava/lang/NullPointerException;

    move-object/from16 v16, v9

    move-object/from16 v9, v16

    move-object/from16 v10, v16

    invoke-direct {v10}, Ljava/lang/NullPointerException;-><init>()V

    throw v9

    .line 907
    :cond_0
    move-object v9, v1

    if-nez v9, :cond_1

    .line 908
    new-instance v9, Ljava/lang/NullPointerException;

    move-object/from16 v16, v9

    move-object/from16 v9, v16

    move-object/from16 v10, v16

    invoke-direct {v10}, Ljava/lang/NullPointerException;-><init>()V

    throw v9

    .line 911
    :cond_1
    move-object v9, v2

    if-nez v9, :cond_2

    .line 912
    new-instance v9, Ljava/lang/NullPointerException;

    move-object/from16 v16, v9

    move-object/from16 v9, v16

    move-object/from16 v10, v16

    invoke-direct {v10}, Ljava/lang/NullPointerException;-><init>()V

    throw v9

    .line 915
    :cond_2
    const/4 v9, 0x0

    move-object v4, v9

    .line 917
    .local v4, "method":Ljava/lang/reflect/Method;
    move-object v9, v3

    if-eqz v9, :cond_4

    .line 918
    new-instance v9, Ljava/lang/StringBuilder;

    move-object/from16 v16, v9

    move-object/from16 v9, v16

    move-object/from16 v10, v16

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object v10, v1

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-static {v10}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v1

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object v1, v9

    .line 920
    new-instance v9, Ljava/lang/StringBuilder;

    move-object/from16 v16, v9

    move-object/from16 v9, v16

    move-object/from16 v10, v16

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "set"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object v5, v9

    .line 922
    .local v5, "setMethodName":Ljava/lang/String;
    move-object v9, v0

    move-object v10, v5

    const/4 v11, 0x2

    :try_start_0
    new-array v11, v11, [Ljava/lang/Class;

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    const/4 v13, 0x0

    move-object v14, v3

    aput-object v14, v12, v13

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    const/4 v13, 0x1

    move-object v14, v2

    aput-object v14, v12, v13

    invoke-static {v9, v10, v11}, Lsun/reflect/misc/MethodUtil;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    move-object v4, v9

    .line 925
    .line 928
    :goto_0
    move-object v9, v4

    if-nez v9, :cond_3

    .line 929
    move-object v9, v3

    invoke-virtual {v9}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v9

    move-object v6, v9

    .line 930
    .local v6, "interfaces":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v9, 0x0

    move v7, v9

    .local v7, "i":I
    :goto_1
    move v9, v7

    move-object v10, v6

    array-length v10, v10

    if-ge v9, v10, :cond_3

    .line 932
    move-object v9, v0

    move-object v10, v5

    const/4 v11, 0x2

    :try_start_1
    new-array v11, v11, [Ljava/lang/Class;

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    const/4 v13, 0x0

    move-object v14, v6

    move v15, v7

    aget-object v14, v14, v15

    aput-object v14, v12, v13

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    const/4 v13, 0x1

    move-object v14, v2

    aput-object v14, v12, v13

    invoke-static {v9, v10, v11}, Lsun/reflect/misc/MethodUtil;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v9

    move-object v4, v9

    .line 935
    .line 937
    :goto_2
    move-object v9, v4

    if-eqz v9, :cond_5

    .line 938
    .line 943
    .end local v6    # "interfaces":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v7    # "i":I
    :cond_3
    move-object v9, v4

    if-nez v9, :cond_4

    .line 944
    move-object v9, v0

    move-object v10, v1

    move-object v11, v2

    move-object v12, v3

    invoke-virtual {v12}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v12

    invoke-static {v9, v10, v11, v12}, Lcom/sun/javafx/fxml/BeanAdapter;->getStaticSetterMethod(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    move-object v4, v9

    .line 948
    .end local v5    # "setMethodName":Ljava/lang/String;
    :cond_4
    move-object v9, v4

    move-object v0, v9

    .end local v0    # "sourceType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    return-object v0

    .line 923
    .restart local v0    # "sourceType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v5    # "setMethodName":Ljava/lang/String;
    :catch_0
    move-exception v9

    move-object v6, v9

    goto :goto_0

    .line 933
    .restart local v6    # "interfaces":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .restart local v7    # "i":I
    :catch_1
    move-exception v9

    move-object v8, v9

    goto :goto_2

    .line 930
    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_1
.end method

.method public static getType(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Class;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 641
    move-object v0, p0

    .local v0, "sourceType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v1, p1

    .local v1, "key":Ljava/lang/String;
    move-object v2, p2

    .local v2, "targetType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-static {v4, v5, v6}, Lcom/sun/javafx/fxml/BeanAdapter;->getStaticGetterMethod(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    move-object v3, v4

    .line 642
    .local v3, "getterMethod":Ljava/lang/reflect/Method;
    move-object v4, v3

    if-nez v4, :cond_0

    const/4 v4, 0x0

    :goto_0
    move-object v0, v4

    .end local v0    # "sourceType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    return-object v0

    .restart local v0    # "sourceType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    move-object v4, v3

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v4

    goto :goto_0
.end method

.method public static isDefined(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 625
    move-object v0, p0

    .local v0, "sourceType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v1, p1

    .local v1, "key":Ljava/lang/String;
    move-object v2, p2

    .local v2, "targetType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-static {v3, v4, v5}, Lcom/sun/javafx/fxml/BeanAdapter;->getStaticGetterMethod(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    move v0, v3

    .end local v0    # "sourceType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    return v0

    .restart local v0    # "sourceType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static put(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 577
    move-object v0, p0

    .local v0, "target":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "sourceType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object/from16 v2, p2

    .local v2, "key":Ljava/lang/String;
    move-object/from16 v3, p3

    .local v3, "value":Ljava/lang/Object;
    move-object v7, v0

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    move-object v4, v7

    .line 579
    .local v4, "targetType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v7, 0x0

    move-object v5, v7

    .line 580
    .local v5, "setterMethod":Ljava/lang/reflect/Method;
    move-object v7, v3

    if-eqz v7, :cond_0

    .line 581
    move-object v7, v1

    move-object v8, v2

    move-object v9, v3

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    move-object v10, v4

    invoke-static {v7, v8, v9, v10}, Lcom/sun/javafx/fxml/BeanAdapter;->getStaticSetterMethod(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    move-object v5, v7

    .line 584
    :cond_0
    move-object v7, v5

    if-nez v7, :cond_1

    .line 586
    move-object v7, v1

    move-object v8, v2

    move-object v9, v4

    invoke-static {v7, v8, v9}, Lcom/sun/javafx/fxml/BeanAdapter;->getType(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v7

    move-object v6, v7

    .line 588
    .local v6, "propertyType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v7, v6

    if-eqz v7, :cond_1

    .line 589
    move-object v7, v1

    move-object v8, v2

    move-object v9, v6

    move-object v10, v4

    invoke-static {v7, v8, v9, v10}, Lcom/sun/javafx/fxml/BeanAdapter;->getStaticSetterMethod(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    move-object v5, v7

    .line 590
    move-object v7, v3

    move-object v8, v6

    invoke-static {v7, v8}, Lcom/sun/javafx/fxml/BeanAdapter;->coerce(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    move-object v3, v7

    .line 594
    .end local v6    # "propertyType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    move-object v7, v5

    if-nez v7, :cond_2

    .line 595
    new-instance v7, Lcom/sun/javafx/fxml/PropertyNotFoundException;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Static property \""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v2

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\" does not exist"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " or is read-only."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/sun/javafx/fxml/PropertyNotFoundException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 601
    :cond_2
    move-object v7, v5

    const/4 v8, 0x0

    const/4 v9, 0x2

    :try_start_0
    new-array v9, v9, [Ljava/lang/Object;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const/4 v11, 0x0

    move-object v12, v0

    aput-object v12, v10, v11

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const/4 v11, 0x1

    move-object v12, v3

    aput-object v12, v10, v11

    invoke-static {v7, v8, v9}, Lsun/reflect/misc/MethodUtil;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v7

    .line 606
    .line 607
    return-void

    .line 602
    :catch_0
    move-exception v7

    move-object v6, v7

    .line 603
    .local v6, "exception":Ljava/lang/reflect/InvocationTargetException;
    new-instance v7, Ljava/lang/RuntimeException;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    move-object v9, v6

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .line 604
    .end local v6    # "exception":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v7

    move-object v6, v7

    .line 605
    .local v6, "exception":Ljava/lang/IllegalAccessException;
    new-instance v7, Ljava/lang/RuntimeException;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    move-object v9, v6

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v7
.end method

.method private static toAllCaps(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .prologue
    .line 952
    move-object v0, p0

    .local v0, "value":Ljava/lang/String;
    move-object v5, v0

    if-nez v5, :cond_0

    .line 953
    new-instance v5, Ljava/lang/NullPointerException;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/NullPointerException;-><init>()V

    throw v5

    .line 956
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object v1, v5

    .line 958
    .local v1, "allCapsBuilder":Ljava/lang/StringBuilder;
    const/4 v5, 0x0

    move v2, v5

    .local v2, "i":I
    move-object v5, v0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    move v3, v5

    .local v3, "n":I
    :goto_0
    move v5, v2

    move v6, v3

    if-ge v5, v6, :cond_2

    .line 959
    move-object v5, v0

    move v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    move v4, v5

    .line 961
    .local v4, "c":C
    move v5, v4

    invoke-static {v5}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 962
    move-object v5, v1

    const/16 v6, 0x5f

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 965
    :cond_1
    move-object v5, v1

    move v6, v4

    invoke-static {v6}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 958
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 968
    .end local v4    # "c":C
    :cond_2
    move-object v5, v1

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    .end local v0    # "value":Ljava/lang/String;
    return-object v0
.end method


# virtual methods
.method public containsKey(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    .line 279
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/fxml/BeanAdapter;
    move-object v1, p1

    .local v1, "key":Ljava/lang/Object;
    move-object v2, v1

    if-nez v2, :cond_0

    .line 280
    new-instance v2, Ljava/lang/NullPointerException;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 283
    :cond_0
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sun/javafx/fxml/BeanAdapter;->getType(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "this":Lcom/sun/javafx/fxml/BeanAdapter;
    return v0

    .restart local v0    # "this":Lcom/sun/javafx/fxml/BeanAdapter;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 288
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/fxml/BeanAdapter;
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    .line 360
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/fxml/BeanAdapter;
    move-object v1, p1

    .local v1, "object":Ljava/lang/Object;
    const/4 v4, 0x0

    move v2, v4

    .line 362
    .local v2, "equals":Z
    move-object v4, v1

    instance-of v4, v4, Lcom/sun/javafx/fxml/BeanAdapter;

    if-eqz v4, :cond_0

    .line 363
    move-object v4, v1

    check-cast v4, Lcom/sun/javafx/fxml/BeanAdapter;

    move-object v3, v4

    .line 364
    .local v3, "beanAdapter":Lcom/sun/javafx/fxml/BeanAdapter;
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/fxml/BeanAdapter;->bean:Ljava/lang/Object;

    move-object v5, v3

    iget-object v5, v5, Lcom/sun/javafx/fxml/BeanAdapter;->bean:Ljava/lang/Object;

    if-ne v4, v5, :cond_1

    const/4 v4, 0x1

    :goto_0
    move v2, v4

    .line 367
    .end local v3    # "beanAdapter":Lcom/sun/javafx/fxml/BeanAdapter;
    :cond_0
    move v4, v2

    move v0, v4

    .end local v0    # "this":Lcom/sun/javafx/fxml/BeanAdapter;
    return v0

    .line 364
    .restart local v0    # "this":Lcom/sun/javafx/fxml/BeanAdapter;
    .restart local v3    # "beanAdapter":Lcom/sun/javafx/fxml/BeanAdapter;
    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .prologue
    .line 199
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/fxml/BeanAdapter;
    move-object v1, p1

    .local v1, "key":Ljava/lang/Object;
    move-object v2, v1

    if-nez v2, :cond_0

    .line 200
    new-instance v2, Ljava/lang/NullPointerException;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 203
    :cond_0
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/sun/javafx/fxml/BeanAdapter;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/fxml/BeanAdapter;
    return-object v0
.end method

.method public getBean()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 160
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/fxml/BeanAdapter;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/fxml/BeanAdapter;->bean:Ljava/lang/Object;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/fxml/BeanAdapter;
    return-object v0
.end method

.method public getGenericType(Ljava/lang/String;)Ljava/lang/reflect/Type;
    .locals 6

    .prologue
    .line 349
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/fxml/BeanAdapter;
    move-object v1, p1

    .local v1, "key":Ljava/lang/String;
    move-object v3, v1

    if-nez v3, :cond_0

    .line 350
    new-instance v3, Ljava/lang/NullPointerException;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    .line 353
    :cond_0
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lcom/sun/javafx/fxml/BeanAdapter;->getGetterMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v3

    move-object v2, v3

    .line 355
    .local v2, "getterMethod":Ljava/lang/reflect/Method;
    move-object v3, v2

    if-nez v3, :cond_1

    const/4 v3, 0x0

    :goto_0
    move-object v0, v3

    .end local v0    # "this":Lcom/sun/javafx/fxml/BeanAdapter;
    return-object v0

    .restart local v0    # "this":Lcom/sun/javafx/fxml/BeanAdapter;
    :cond_1
    move-object v3, v2

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getGenericReturnType()Ljava/lang/reflect/Type;

    move-result-object v3

    goto :goto_0
.end method

.method public getPropertyModel(Ljava/lang/String;)Ljavafx/beans/value/ObservableValue;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Ljavafx/beans/value/ObservableValue",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 319
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/fxml/BeanAdapter;
    move-object v1, p1

    .local v1, "key":Ljava/lang/String;
    move-object v2, v1

    if-nez v2, :cond_0

    .line 320
    new-instance v2, Ljava/lang/NullPointerException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 323
    :cond_0
    move-object v2, v0

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Property"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/sun/javafx/fxml/BeanAdapter;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavafx/beans/value/ObservableValue;

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/fxml/BeanAdapter;
    return-object v0
.end method

.method public getType(Ljava/lang/String;)Ljava/lang/Class;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 333
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/fxml/BeanAdapter;
    move-object v1, p1

    .local v1, "key":Ljava/lang/String;
    move-object v3, v1

    if-nez v3, :cond_0

    .line 334
    new-instance v3, Ljava/lang/NullPointerException;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    .line 337
    :cond_0
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lcom/sun/javafx/fxml/BeanAdapter;->getGetterMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v3

    move-object v2, v3

    .line 339
    .local v2, "getterMethod":Ljava/lang/reflect/Method;
    move-object v3, v2

    if-nez v3, :cond_1

    const/4 v3, 0x0

    :goto_0
    move-object v0, v3

    .end local v0    # "this":Lcom/sun/javafx/fxml/BeanAdapter;
    return-object v0

    .restart local v0    # "this":Lcom/sun/javafx/fxml/BeanAdapter;
    :cond_1
    move-object v3, v2

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v3

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 372
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/fxml/BeanAdapter;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/fxml/BeanAdapter;->bean:Ljava/lang/Object;

    if-nez v1, :cond_0

    const/4 v1, -0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/fxml/BeanAdapter;
    return v0

    .restart local v0    # "this":Lcom/sun/javafx/fxml/BeanAdapter;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/fxml/BeanAdapter;->bean:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0
.end method

.method public isReadOnly(Ljava/lang/String;)Z
    .locals 5

    .prologue
    .line 301
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/fxml/BeanAdapter;
    move-object v1, p1

    .local v1, "key":Ljava/lang/String;
    move-object v2, v1

    if-nez v2, :cond_0

    .line 302
    new-instance v2, Ljava/lang/NullPointerException;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 305
    :cond_0
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/fxml/BeanAdapter;->getSetterMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "this":Lcom/sun/javafx/fxml/BeanAdapter;
    return v0

    .restart local v0    # "this":Lcom/sun/javafx/fxml/BeanAdapter;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 54
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/fxml/BeanAdapter;
    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    check-cast v4, Ljava/lang/String;

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/fxml/BeanAdapter;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/javafx/fxml/BeanAdapter;
    return-object v0
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    .prologue
    .line 246
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/fxml/BeanAdapter;
    move-object v1, p1

    .local v1, "key":Ljava/lang/String;
    move-object/from16 v2, p2

    .local v2, "value":Ljava/lang/Object;
    move-object v5, v1

    if-nez v5, :cond_0

    .line 247
    new-instance v5, Ljava/lang/NullPointerException;

    move-object v13, v5

    move-object v5, v13

    move-object v6, v13

    invoke-direct {v6}, Ljava/lang/NullPointerException;-><init>()V

    throw v5

    .line 250
    :cond_0
    move-object v5, v0

    move-object v6, v1

    invoke-direct {v5, v6}, Lcom/sun/javafx/fxml/BeanAdapter;->getSetterMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v5

    move-object v3, v5

    .line 252
    .local v3, "setterMethod":Ljava/lang/reflect/Method;
    move-object v5, v3

    if-nez v5, :cond_1

    .line 253
    new-instance v5, Lcom/sun/javafx/fxml/PropertyNotFoundException;

    move-object v13, v5

    move-object v5, v13

    move-object v6, v13

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Property \""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\" does not exist"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " or is read-only."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/sun/javafx/fxml/PropertyNotFoundException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 258
    :cond_1
    move-object v5, v3

    move-object v6, v0

    :try_start_0
    iget-object v6, v6, Lcom/sun/javafx/fxml/BeanAdapter;->bean:Ljava/lang/Object;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    const/4 v9, 0x0

    move-object v10, v2

    move-object v11, v0

    move-object v12, v1

    invoke-virtual {v11, v12}, Lcom/sun/javafx/fxml/BeanAdapter;->getType(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/sun/javafx/fxml/BeanAdapter;->coerce(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v5, v6, v7}, Lsun/reflect/misc/MethodUtil;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v5

    .line 263
    .line 265
    const/4 v5, 0x0

    move-object v0, v5

    .end local v0    # "this":Lcom/sun/javafx/fxml/BeanAdapter;
    return-object v0

    .line 259
    .restart local v0    # "this":Lcom/sun/javafx/fxml/BeanAdapter;
    :catch_0
    move-exception v5

    move-object v4, v5

    .line 260
    .local v4, "exception":Ljava/lang/IllegalAccessException;
    new-instance v5, Ljava/lang/RuntimeException;

    move-object v13, v5

    move-object v5, v13

    move-object v6, v13

    move-object v7, v4

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 261
    .end local v4    # "exception":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v5

    move-object v4, v5

    .line 262
    .local v4, "exception":Ljava/lang/reflect/InvocationTargetException;
    new-instance v5, Ljava/lang/RuntimeException;

    move-object v13, v5

    move-object v5, v13

    move-object v6, v13

    move-object v7, v4

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5
.end method
