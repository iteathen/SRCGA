.class Lcom/sun/javafx/binding/BidirectionalBinding$BidirectionalIntegerBinding;
.super Lcom/sun/javafx/binding/BidirectionalBinding;
.source "BidirectionalBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/binding/BidirectionalBinding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BidirectionalIntegerBinding"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sun/javafx/binding/BidirectionalBinding",
        "<",
        "Ljava/lang/Number;",
        ">;"
    }
.end annotation


# instance fields
.field private final propertyRef1:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljavafx/beans/property/IntegerProperty;",
            ">;"
        }
    .end annotation
.end field

.field private final propertyRef2:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljavafx/beans/property/IntegerProperty;",
            ">;"
        }
    .end annotation
.end field

.field private updating:Z


# direct methods
.method private constructor <init>(Ljavafx/beans/property/IntegerProperty;Ljavafx/beans/property/IntegerProperty;)V
    .locals 8

    .prologue
    .line 434
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/BidirectionalBinding$BidirectionalIntegerBinding;
    move-object v1, p1

    .local v1, "property1":Ljavafx/beans/property/IntegerProperty;
    move-object v2, p2

    .local v2, "property2":Ljavafx/beans/property/IntegerProperty;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Lcom/sun/javafx/binding/BidirectionalBinding;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/sun/javafx/binding/BidirectionalBinding$1;)V

    .line 431
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/sun/javafx/binding/BidirectionalBinding$BidirectionalIntegerBinding;->updating:Z

    .line 435
    move-object v3, v0

    new-instance v4, Ljava/lang/ref/WeakReference;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v1

    invoke-direct {v5, v6}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v4, v3, Lcom/sun/javafx/binding/BidirectionalBinding$BidirectionalIntegerBinding;->propertyRef1:Ljava/lang/ref/WeakReference;

    .line 436
    move-object v3, v0

    new-instance v4, Ljava/lang/ref/WeakReference;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v2

    invoke-direct {v5, v6}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v4, v3, Lcom/sun/javafx/binding/BidirectionalBinding$BidirectionalIntegerBinding;->propertyRef2:Ljava/lang/ref/WeakReference;

    .line 437
    return-void
.end method

.method synthetic constructor <init>(Ljavafx/beans/property/IntegerProperty;Ljavafx/beans/property/IntegerProperty;Lcom/sun/javafx/binding/BidirectionalBinding$1;)V
    .locals 7

    .prologue
    .line 428
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/BidirectionalBinding$BidirectionalIntegerBinding;
    move-object v1, p1

    .local v1, "x0":Ljavafx/beans/property/IntegerProperty;
    move-object v2, p2

    .local v2, "x1":Ljavafx/beans/property/IntegerProperty;
    move-object v3, p3

    .local v3, "x2":Lcom/sun/javafx/binding/BidirectionalBinding$1;
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Lcom/sun/javafx/binding/BidirectionalBinding$BidirectionalIntegerBinding;-><init>(Ljavafx/beans/property/IntegerProperty;Ljavafx/beans/property/IntegerProperty;)V

    return-void
.end method


# virtual methods
.method public changed(Ljavafx/beans/value/ObservableValue;Ljava/lang/Number;Ljava/lang/Number;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/value/ObservableValue",
            "<+",
            "Ljava/lang/Number;",
            ">;",
            "Ljava/lang/Number;",
            "Ljava/lang/Number;",
            ")V"
        }
    .end annotation

    .prologue
    .line 451
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/BidirectionalBinding$BidirectionalIntegerBinding;
    move-object v1, p1

    .local v1, "sourceProperty":Ljavafx/beans/value/ObservableValue;, "Ljavafx/beans/value/ObservableValue<+Ljava/lang/Number;>;"
    move-object/from16 v2, p2

    .local v2, "oldValue":Ljava/lang/Number;
    move-object/from16 v3, p3

    .local v3, "newValue":Ljava/lang/Number;
    move-object v9, v0

    iget-boolean v9, v9, Lcom/sun/javafx/binding/BidirectionalBinding$BidirectionalIntegerBinding;->updating:Z

    if-nez v9, :cond_2

    .line 452
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/binding/BidirectionalBinding$BidirectionalIntegerBinding;->propertyRef1:Ljava/lang/ref/WeakReference;

    invoke-virtual {v9}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljavafx/beans/property/IntegerProperty;

    move-object v4, v9

    .line 453
    .local v4, "property1":Ljavafx/beans/property/IntegerProperty;
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/binding/BidirectionalBinding$BidirectionalIntegerBinding;->propertyRef2:Ljava/lang/ref/WeakReference;

    invoke-virtual {v9}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljavafx/beans/property/IntegerProperty;

    move-object v5, v9

    .line 454
    .local v5, "property2":Ljavafx/beans/property/IntegerProperty;
    move-object v9, v4

    if-eqz v9, :cond_0

    move-object v9, v5

    if-nez v9, :cond_3

    .line 455
    :cond_0
    move-object v9, v4

    if-eqz v9, :cond_1

    .line 456
    move-object v9, v4

    move-object v10, v0

    invoke-virtual {v9, v10}, Ljavafx/beans/property/IntegerProperty;->removeListener(Ljavafx/beans/value/ChangeListener;)V

    .line 458
    :cond_1
    move-object v9, v5

    if-eqz v9, :cond_2

    .line 459
    move-object v9, v5

    move-object v10, v0

    invoke-virtual {v9, v10}, Ljavafx/beans/property/IntegerProperty;->removeListener(Ljavafx/beans/value/ChangeListener;)V

    .line 492
    .end local v4    # "property1":Ljavafx/beans/property/IntegerProperty;
    .end local v5    # "property2":Ljavafx/beans/property/IntegerProperty;
    :cond_2
    :goto_0
    return-void

    .line 463
    .restart local v4    # "property1":Ljavafx/beans/property/IntegerProperty;
    .restart local v5    # "property2":Ljavafx/beans/property/IntegerProperty;
    :cond_3
    move-object v9, v0

    const/4 v10, 0x1

    :try_start_0
    iput-boolean v10, v9, Lcom/sun/javafx/binding/BidirectionalBinding$BidirectionalIntegerBinding;->updating:Z

    .line 464
    move-object v9, v4

    move-object v10, v1

    if-ne v9, v10, :cond_4

    .line 465
    move-object v9, v5

    move-object v10, v3

    invoke-virtual {v10}, Ljava/lang/Number;->intValue()I

    move-result v10

    invoke-virtual {v9, v10}, Ljavafx/beans/property/IntegerProperty;->set(I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 488
    :goto_1
    move-object v9, v0

    const/4 v10, 0x0

    iput-boolean v10, v9, Lcom/sun/javafx/binding/BidirectionalBinding$BidirectionalIntegerBinding;->updating:Z

    .line 489
    goto :goto_0

    .line 467
    :cond_4
    move-object v9, v4

    move-object v10, v3

    :try_start_1
    invoke-virtual {v10}, Ljava/lang/Number;->intValue()I

    move-result v10

    invoke-virtual {v9, v10}, Ljavafx/beans/property/IntegerProperty;->set(I)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 469
    :catch_0
    move-exception v9

    move-object v6, v9

    .line 471
    .local v6, "e":Ljava/lang/RuntimeException;
    move-object v9, v4

    move-object v10, v1

    if-ne v9, v10, :cond_5

    .line 472
    move-object v9, v4

    move-object v10, v2

    :try_start_2
    invoke-virtual {v10}, Ljava/lang/Number;->intValue()I

    move-result v10

    invoke-virtual {v9, v10}, Ljavafx/beans/property/IntegerProperty;->set(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 484
    .line 485
    :goto_2
    :try_start_3
    new-instance v9, Ljava/lang/RuntimeException;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const-string v11, "Bidirectional binding failed, setting to the previous value"

    move-object v12, v6

    invoke-direct {v10, v11, v12}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 488
    .end local v6    # "e":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v9

    move-object v8, v9

    move-object v9, v0

    const/4 v10, 0x0

    iput-boolean v10, v9, Lcom/sun/javafx/binding/BidirectionalBinding$BidirectionalIntegerBinding;->updating:Z

    move-object v9, v8

    throw v9

    .line 474
    .restart local v6    # "e":Ljava/lang/RuntimeException;
    :cond_5
    move-object v9, v5

    move-object v10, v2

    :try_start_4
    invoke-virtual {v10}, Ljava/lang/Number;->intValue()I

    move-result v10

    invoke-virtual {v9, v10}, Ljavafx/beans/property/IntegerProperty;->set(I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 476
    :catch_1
    move-exception v9

    move-object v7, v9

    .line 477
    .local v7, "e2":Ljava/lang/Exception;
    move-object v9, v7

    move-object v10, v6

    :try_start_5
    invoke-virtual {v9, v10}, Ljava/lang/Exception;->addSuppressed(Ljava/lang/Throwable;)V

    .line 478
    move-object v9, v4

    move-object v10, v5

    invoke-static {v9, v10}, Lcom/sun/javafx/binding/BidirectionalBinding$BidirectionalIntegerBinding;->unbind(Ljavafx/beans/property/Property;Ljavafx/beans/property/Property;)V

    .line 479
    new-instance v9, Ljava/lang/RuntimeException;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    new-instance v11, Ljava/lang/StringBuilder;

    move-object v13, v11

    move-object v11, v13

    move-object v12, v13

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Bidirectional binding failed together with an attempt to restore the source property to the previous value. Removing the bidirectional binding from properties "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object v12, v4

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " and "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object v12, v5

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object v12, v7

    invoke-direct {v10, v11, v12}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public bridge synthetic changed(Ljavafx/beans/value/ObservableValue;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8

    .prologue
    .line 428
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/BidirectionalBinding$BidirectionalIntegerBinding;
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    check-cast v6, Ljava/lang/Number;

    move-object v7, v3

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v4, v5, v6, v7}, Lcom/sun/javafx/binding/BidirectionalBinding$BidirectionalIntegerBinding;->changed(Ljavafx/beans/value/ObservableValue;Ljava/lang/Number;Ljava/lang/Number;)V

    return-void
.end method

.method protected bridge synthetic getProperty1()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 428
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/BidirectionalBinding$BidirectionalIntegerBinding;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/binding/BidirectionalBinding$BidirectionalIntegerBinding;->getProperty1()Ljavafx/beans/property/Property;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/binding/BidirectionalBinding$BidirectionalIntegerBinding;
    return-object v0
.end method

.method protected getProperty1()Ljavafx/beans/property/Property;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/Property",
            "<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    .prologue
    .line 441
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/BidirectionalBinding$BidirectionalIntegerBinding;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/binding/BidirectionalBinding$BidirectionalIntegerBinding;->propertyRef1:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/beans/property/Property;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/binding/BidirectionalBinding$BidirectionalIntegerBinding;
    return-object v0
.end method

.method protected bridge synthetic getProperty2()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 428
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/BidirectionalBinding$BidirectionalIntegerBinding;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/binding/BidirectionalBinding$BidirectionalIntegerBinding;->getProperty2()Ljavafx/beans/property/Property;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/binding/BidirectionalBinding$BidirectionalIntegerBinding;
    return-object v0
.end method

.method protected getProperty2()Ljavafx/beans/property/Property;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/Property",
            "<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    .prologue
    .line 446
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/BidirectionalBinding$BidirectionalIntegerBinding;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/binding/BidirectionalBinding$BidirectionalIntegerBinding;->propertyRef2:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/beans/property/Property;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/binding/BidirectionalBinding$BidirectionalIntegerBinding;
    return-object v0
.end method
