.class Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;
.super Ljava/lang/Object;
.source "SelectBinding.java"

# interfaces
.implements Ljavafx/beans/InvalidationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/binding/SelectBinding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SelectBindingHelper"
.end annotation


# instance fields
.field private final binding:Ljavafx/beans/binding/Binding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/binding/Binding",
            "<*>;"
        }
    .end annotation
.end field

.field private dependencies:Ljavafx/collections/ObservableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/ObservableList",
            "<",
            "Ljavafx/beans/value/ObservableValue",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final observer:Ljavafx/beans/WeakInvalidationListener;

.field private final propRefs:[Lcom/sun/javafx/property/PropertyReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/sun/javafx/property/PropertyReference",
            "<*>;"
        }
    .end annotation
.end field

.field private final properties:[Ljavafx/beans/value/ObservableValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljavafx/beans/value/ObservableValue",
            "<*>;"
        }
    .end annotation
.end field

.field private final propertyNames:[Ljava/lang/String;


# direct methods
.method private varargs constructor <init>(Ljavafx/beans/binding/Binding;Ljava/lang/Object;[Ljava/lang/String;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/binding/Binding",
            "<*>;",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 463
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;
    move-object v1, p1

    .local v1, "binding":Ljavafx/beans/binding/Binding;, "Ljavafx/beans/binding/Binding<*>;"
    move-object v2, p2

    .local v2, "root":Ljava/lang/Object;
    move-object v3, p3

    .local v3, "steps":[Ljava/lang/String;
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-static {v6, v7}, Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;->checkAndCreateFirstStep(Ljava/lang/Object;[Ljava/lang/String;)Ljavafx/beans/value/ObservableValue;

    move-result-object v6

    move-object v7, v3

    const/4 v8, 0x1

    move-object v9, v3

    array-length v9, v9

    invoke-static {v7, v8, v9}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    invoke-direct {v4, v5, v6, v7}, Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;-><init>(Ljavafx/beans/binding/Binding;Ljavafx/beans/value/ObservableValue;[Ljava/lang/String;)V

    .line 464
    return-void
.end method

.method synthetic constructor <init>(Ljavafx/beans/binding/Binding;Ljava/lang/Object;[Ljava/lang/String;Lcom/sun/javafx/binding/SelectBinding$1;)V
    .locals 9

    .prologue
    .line 415
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;
    move-object v1, p1

    .local v1, "x0":Ljavafx/beans/binding/Binding;
    move-object v2, p2

    .local v2, "x1":Ljava/lang/Object;
    move-object v3, p3

    .local v3, "x2":[Ljava/lang/String;
    move-object v4, p4

    .local v4, "x3":Lcom/sun/javafx/binding/SelectBinding$1;
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    invoke-direct {v5, v6, v7, v8}, Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;-><init>(Ljavafx/beans/binding/Binding;Ljava/lang/Object;[Ljava/lang/String;)V

    return-void
.end method

.method private varargs constructor <init>(Ljavafx/beans/binding/Binding;Ljavafx/beans/value/ObservableValue;[Ljava/lang/String;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/binding/Binding",
            "<*>;",
            "Ljavafx/beans/value/ObservableValue",
            "<*>;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 425
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;
    move-object v1, p1

    .local v1, "binding":Ljavafx/beans/binding/Binding;, "Ljavafx/beans/binding/Binding<*>;"
    move-object v2, p2

    .local v2, "firstProperty":Ljavafx/beans/value/ObservableValue;, "Ljavafx/beans/value/ObservableValue<*>;"
    move-object v3, p3

    .local v3, "steps":[Ljava/lang/String;
    move-object v6, v0

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 426
    move-object v6, v2

    if-nez v6, :cond_0

    .line 427
    new-instance v6, Ljava/lang/NullPointerException;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    const-string v8, "Must specify the root"

    invoke-direct {v7, v8}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 429
    :cond_0
    move-object v6, v3

    if-nez v6, :cond_1

    .line 430
    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/String;

    move-object v3, v6

    .line 433
    :cond_1
    move-object v6, v0

    move-object v7, v1

    iput-object v7, v6, Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;->binding:Ljavafx/beans/binding/Binding;

    .line 435
    move-object v6, v3

    array-length v6, v6

    move v4, v6

    .line 436
    .local v4, "n":I
    const/4 v6, 0x0

    move v5, v6

    .local v5, "i":I
    :goto_0
    move v6, v5

    move v7, v4

    if-ge v6, v7, :cond_3

    .line 437
    move-object v6, v3

    move v7, v5

    aget-object v6, v6, v7

    if-nez v6, :cond_2

    .line 438
    new-instance v6, Ljava/lang/NullPointerException;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    const-string v8, "all steps must be specified"

    invoke-direct {v7, v8}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 436
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 442
    :cond_3
    move-object v6, v0

    new-instance v7, Ljavafx/beans/WeakInvalidationListener;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    move-object v9, v0

    invoke-direct {v8, v9}, Ljavafx/beans/WeakInvalidationListener;-><init>(Ljavafx/beans/InvalidationListener;)V

    iput-object v7, v6, Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;->observer:Ljavafx/beans/WeakInvalidationListener;

    .line 443
    move-object v6, v0

    move v7, v4

    new-array v7, v7, [Ljava/lang/String;

    iput-object v7, v6, Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;->propertyNames:[Ljava/lang/String;

    .line 444
    move-object v6, v3

    const/4 v7, 0x0

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;->propertyNames:[Ljava/lang/String;

    const/4 v9, 0x0

    move v10, v4

    invoke-static {v6, v7, v8, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 445
    move-object v6, v0

    move v7, v4

    new-array v7, v7, [Lcom/sun/javafx/property/PropertyReference;

    iput-object v7, v6, Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;->propRefs:[Lcom/sun/javafx/property/PropertyReference;

    .line 446
    move-object v6, v0

    move v7, v4

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    new-array v7, v7, [Ljavafx/beans/value/ObservableValue;

    iput-object v7, v6, Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;->properties:[Ljavafx/beans/value/ObservableValue;

    .line 447
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;->properties:[Ljavafx/beans/value/ObservableValue;

    const/4 v7, 0x0

    move-object v8, v2

    aput-object v8, v6, v7

    .line 448
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;->properties:[Ljavafx/beans/value/ObservableValue;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;->observer:Ljavafx/beans/WeakInvalidationListener;

    invoke-interface {v6, v7}, Ljavafx/beans/value/ObservableValue;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 449
    return-void
.end method

.method synthetic constructor <init>(Ljavafx/beans/binding/Binding;Ljavafx/beans/value/ObservableValue;[Ljava/lang/String;Lcom/sun/javafx/binding/SelectBinding$1;)V
    .locals 9

    .prologue
    .line 415
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;
    move-object v1, p1

    .local v1, "x0":Ljavafx/beans/binding/Binding;
    move-object v2, p2

    .local v2, "x1":Ljavafx/beans/value/ObservableValue;
    move-object v3, p3

    .local v3, "x2":[Ljava/lang/String;
    move-object v4, p4

    .local v4, "x3":Lcom/sun/javafx/binding/SelectBinding$1;
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    invoke-direct {v5, v6, v7, v8}, Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;-><init>(Ljavafx/beans/binding/Binding;Ljavafx/beans/value/ObservableValue;[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;)V
    .locals 2

    .prologue
    .line 415
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;->unregisterListener()V

    return-void
.end method

.method private static checkAndCreateFirstStep(Ljava/lang/Object;[Ljava/lang/String;)Ljavafx/beans/value/ObservableValue;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljavafx/beans/value/ObservableValue",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 452
    move-object v0, p0

    .local v0, "root":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "steps":[Ljava/lang/String;
    move-object v3, v0

    if-eqz v3, :cond_0

    move-object v3, v1

    if-eqz v3, :cond_0

    move-object v3, v1

    const/4 v4, 0x0

    aget-object v3, v3, v4

    if-nez v3, :cond_1

    .line 453
    :cond_0
    new-instance v3, Ljava/lang/NullPointerException;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const-string v5, "Must specify the root and the first property"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 456
    :cond_1
    move-object v3, v0

    move-object v4, v1

    const/4 v5, 0x0

    :try_start_0
    aget-object v4, v4, v5

    invoke-static {v3, v4}, Lcom/sun/javafx/property/JavaBeanAccessHelper;->createReadOnlyJavaBeanProperty(Ljava/lang/Object;Ljava/lang/String;)Ljavafx/beans/property/ReadOnlyObjectProperty;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    move-object v0, v3

    .end local v0    # "root":Ljava/lang/Object;
    return-object v0

    .line 457
    .restart local v0    # "root":Ljava/lang/Object;
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 458
    .local v2, "ex":Ljava/lang/NoSuchMethodException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The first property \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    const/4 v7, 0x0

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' doesn\'t exist"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private stepsToString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 521
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;->propertyNames:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;
    return-object v0
.end method

.method private unregisterListener()V
    .locals 6

    .prologue
    .line 525
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;->properties:[Ljavafx/beans/value/ObservableValue;

    array-length v3, v3

    move v1, v3

    .line 526
    .local v1, "n":I
    const/4 v3, 0x1

    move v2, v3

    .local v2, "i":I
    :goto_0
    move v3, v2

    move v4, v1

    if-ge v3, v4, :cond_0

    .line 527
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;->properties:[Ljavafx/beans/value/ObservableValue;

    move v4, v2

    aget-object v3, v3, v4

    if-nez v3, :cond_1

    .line 528
    .line 533
    :cond_0
    move-object v3, v0

    invoke-direct {v3}, Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;->updateDependencies()V

    .line 534
    return-void

    .line 530
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;->properties:[Ljavafx/beans/value/ObservableValue;

    move v4, v2

    aget-object v3, v3, v4

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;->observer:Ljavafx/beans/WeakInvalidationListener;

    invoke-interface {v3, v4}, Ljavafx/beans/value/ObservableValue;->removeListener(Ljavafx/beans/InvalidationListener;)V

    .line 531
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;->properties:[Ljavafx/beans/value/ObservableValue;

    move v4, v2

    const/4 v5, 0x0

    aput-object v5, v3, v4

    .line 526
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private updateDependencies()V
    .locals 6

    .prologue
    .line 537
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;->dependencies:Ljavafx/collections/ObservableList;

    if-eqz v3, :cond_0

    .line 538
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;->dependencies:Ljavafx/collections/ObservableList;

    invoke-interface {v3}, Ljavafx/collections/ObservableList;->clear()V

    .line 539
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;->properties:[Ljavafx/beans/value/ObservableValue;

    array-length v3, v3

    move v1, v3

    .line 540
    .local v1, "n":I
    const/4 v3, 0x0

    move v2, v3

    .local v2, "i":I
    :goto_0
    move v3, v2

    move v4, v1

    if-ge v3, v4, :cond_0

    .line 541
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;->properties:[Ljavafx/beans/value/ObservableValue;

    move v4, v2

    aget-object v3, v3, v4

    if-nez v3, :cond_1

    .line 542
    .line 547
    .end local v1    # "n":I
    .end local v2    # "i":I
    :cond_0
    return-void

    .line 544
    .restart local v1    # "n":I
    .restart local v2    # "i":I
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;->dependencies:Ljavafx/collections/ObservableList;

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;->properties:[Ljavafx/beans/value/ObservableValue;

    move v5, v2

    aget-object v4, v4, v5

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 540
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getDependencies()Ljavafx/collections/ObservableList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/collections/ObservableList",
            "<",
            "Ljavafx/beans/value/ObservableValue",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 551
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;->dependencies:Ljavafx/collections/ObservableList;

    if-nez v1, :cond_0

    .line 552
    move-object v1, v0

    invoke-static {}, Ljavafx/collections/FXCollections;->observableArrayList()Ljavafx/collections/ObservableList;

    move-result-object v2

    iput-object v2, v1, Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;->dependencies:Ljavafx/collections/ObservableList;

    .line 553
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;->updateDependencies()V

    .line 556
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;->dependencies:Ljavafx/collections/ObservableList;

    invoke-static {v1}, Ljavafx/collections/FXCollections;->unmodifiableObservableList(Ljavafx/collections/ObservableList;)Ljavafx/collections/ObservableList;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;
    return-object v0
.end method

.method public getObservableValue()Ljavafx/beans/value/ObservableValue;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/value/ObservableValue",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 474
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;->properties:[Ljavafx/beans/value/ObservableValue;

    array-length v6, v6

    move v1, v6

    .line 475
    .local v1, "n":I
    const/4 v6, 0x0

    move v2, v6

    .local v2, "i":I
    :goto_0
    move v6, v2

    move v7, v1

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    if-ge v6, v7, :cond_6

    .line 476
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;->properties:[Ljavafx/beans/value/ObservableValue;

    move v7, v2

    aget-object v6, v6, v7

    invoke-interface {v6}, Ljavafx/beans/value/ObservableValue;->getValue()Ljava/lang/Object;

    move-result-object v6

    move-object v3, v6

    .line 478
    .local v3, "obj":Ljava/lang/Object;
    move-object v6, v0

    :try_start_0
    iget-object v6, v6, Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;->propRefs:[Lcom/sun/javafx/property/PropertyReference;

    move v7, v2

    aget-object v6, v6, v7

    if-eqz v6, :cond_0

    move-object v6, v3

    .line 479
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;->propRefs:[Lcom/sun/javafx/property/PropertyReference;

    move v8, v2

    aget-object v7, v7, v8

    .line 480
    invoke-virtual {v7}, Lcom/sun/javafx/property/PropertyReference;->getContainingClass()Ljava/lang/Class;

    move-result-object v7

    .line 479
    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 481
    :cond_0
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;->propRefs:[Lcom/sun/javafx/property/PropertyReference;

    move v7, v2

    new-instance v8, Lcom/sun/javafx/property/PropertyReference;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    move-object v10, v3

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    move-object v11, v0

    iget-object v11, v11, Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;->propertyNames:[Ljava/lang/String;

    move v12, v2

    aget-object v11, v11, v12

    invoke-direct {v9, v10, v11}, Lcom/sun/javafx/property/PropertyReference;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v8, v6, v7

    .line 484
    :cond_1
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;->propRefs:[Lcom/sun/javafx/property/PropertyReference;

    move v7, v2

    aget-object v6, v6, v7

    invoke-virtual {v6}, Lcom/sun/javafx/property/PropertyReference;->hasProperty()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 485
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;->properties:[Ljavafx/beans/value/ObservableValue;

    move v7, v2

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;->propRefs:[Lcom/sun/javafx/property/PropertyReference;

    move v9, v2

    aget-object v8, v8, v9

    move-object v9, v3

    invoke-virtual {v8, v9}, Lcom/sun/javafx/property/PropertyReference;->getProperty(Ljava/lang/Object;)Ljavafx/beans/property/ReadOnlyProperty;

    move-result-object v8

    aput-object v8, v6, v7
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 509
    .line 510
    :goto_1
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;->properties:[Ljavafx/beans/value/ObservableValue;

    move v7, v2

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    aget-object v6, v6, v7

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;->observer:Ljavafx/beans/WeakInvalidationListener;

    invoke-interface {v6, v7}, Ljavafx/beans/value/ObservableValue;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 475
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 487
    :cond_2
    move-object v6, v0

    :try_start_1
    iget-object v6, v6, Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;->properties:[Ljavafx/beans/value/ObservableValue;

    move v7, v2

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    move-object v8, v3

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;->propRefs:[Lcom/sun/javafx/property/PropertyReference;

    move v10, v2

    aget-object v9, v9, v10

    invoke-virtual {v9}, Lcom/sun/javafx/property/PropertyReference;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/sun/javafx/property/JavaBeanAccessHelper;->createReadOnlyJavaBeanProperty(Ljava/lang/Object;Ljava/lang/String;)Ljavafx/beans/property/ReadOnlyObjectProperty;

    move-result-object v8

    aput-object v8, v6, v7
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 489
    :catch_0
    move-exception v6

    move-object v4, v6

    .line 490
    .local v4, "ex":Ljava/lang/NoSuchMethodException;
    invoke-static {}, Lcom/sun/javafx/binding/Logging;->getLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception while evaluating select-binding "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v0

    invoke-direct {v8}, Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;->stepsToString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v8, v4

    invoke-virtual {v6, v7, v8}, Lsun/util/logging/PlatformLogger;->warning(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 492
    move-object v6, v0

    invoke-direct {v6}, Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;->updateDependencies()V

    .line 493
    const/4 v6, 0x0

    move-object v0, v6

    .line 517
    .end local v0    # "this":Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;
    .end local v2    # "i":I
    .end local v3    # "obj":Ljava/lang/Object;
    .end local v4    # "ex":Ljava/lang/NoSuchMethodException;
    :goto_2
    return-object v0

    .line 494
    .restart local v0    # "this":Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;
    .restart local v2    # "i":I
    .restart local v3    # "obj":Ljava/lang/Object;
    :catch_1
    move-exception v6

    move-object v4, v6

    .line 495
    .local v4, "ex":Ljava/lang/RuntimeException;
    invoke-static {}, Lcom/sun/javafx/binding/Logging;->getLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v6

    move-object v5, v6

    .line 496
    .local v5, "logger":Lsun/util/logging/PlatformLogger;
    move-object v6, v5

    sget-object v7, Lsun/util/logging/PlatformLogger$Level;->WARNING:Lsun/util/logging/PlatformLogger$Level;

    invoke-virtual {v6, v7}, Lsun/util/logging/PlatformLogger;->isLoggable(Lsun/util/logging/PlatformLogger$Level;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 497
    invoke-static {}, Lcom/sun/javafx/binding/Logging;->getLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception while evaluating select-binding "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v0

    invoke-direct {v8}, Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;->stepsToString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lsun/util/logging/PlatformLogger;->warning(Ljava/lang/String;)V

    .line 498
    move-object v6, v4

    instance-of v6, v6, Ljava/lang/IllegalStateException;

    if-eqz v6, :cond_4

    .line 499
    move-object v6, v5

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Property \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;->propertyNames:[Ljava/lang/String;

    move v9, v2

    aget-object v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\' does not exist in "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v3

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v8, v4

    invoke-virtual {v6, v7, v8}, Lsun/util/logging/PlatformLogger;->warning(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 507
    :cond_3
    :goto_3
    move-object v6, v0

    invoke-direct {v6}, Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;->updateDependencies()V

    .line 508
    const/4 v6, 0x0

    move-object v0, v6

    goto :goto_2

    .line 500
    :cond_4
    move-object v6, v4

    instance-of v6, v6, Ljava/lang/NullPointerException;

    if-eqz v6, :cond_5

    .line 501
    move-object v6, v5

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Property \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;->propertyNames:[Ljava/lang/String;

    move v9, v2

    aget-object v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\' in "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;->properties:[Ljavafx/beans/value/ObservableValue;

    move v9, v2

    aget-object v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " is null"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v8, v4

    invoke-virtual {v6, v7, v8}, Lsun/util/logging/PlatformLogger;->fine(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 503
    :cond_5
    invoke-static {}, Lcom/sun/javafx/binding/Logging;->getLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v6

    const-string v7, ""

    move-object v8, v4

    invoke-virtual {v6, v7, v8}, Lsun/util/logging/PlatformLogger;->warning(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 512
    .end local v3    # "obj":Ljava/lang/Object;
    .end local v4    # "ex":Ljava/lang/RuntimeException;
    .end local v5    # "logger":Lsun/util/logging/PlatformLogger;
    :cond_6
    move-object v6, v0

    invoke-direct {v6}, Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;->updateDependencies()V

    .line 513
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;->properties:[Ljavafx/beans/value/ObservableValue;

    move v7, v1

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    aget-object v6, v6, v7

    move-object v2, v6

    .line 514
    .local v2, "result":Ljavafx/beans/value/ObservableValue;, "Ljavafx/beans/value/ObservableValue<*>;"
    move-object v6, v2

    if-nez v6, :cond_7

    .line 515
    invoke-static {}, Lcom/sun/javafx/binding/Logging;->getLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Property \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;->propertyNames:[Ljava/lang/String;

    move v9, v1

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    aget-object v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\' in "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;->properties:[Ljavafx/beans/value/ObservableValue;

    move v9, v1

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    aget-object v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " is null"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/NullPointerException;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    invoke-direct {v9}, Ljava/lang/NullPointerException;-><init>()V

    invoke-virtual {v6, v7, v8}, Lsun/util/logging/PlatformLogger;->fine(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 517
    :cond_7
    move-object v6, v2

    move-object v0, v6

    goto/16 :goto_2
.end method

.method public invalidated(Ljavafx/beans/Observable;)V
    .locals 3

    .prologue
    .line 468
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;
    move-object v1, p1

    .local v1, "observable":Ljavafx/beans/Observable;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/binding/SelectBinding$SelectBindingHelper;->binding:Ljavafx/beans/binding/Binding;

    invoke-interface {v2}, Ljavafx/beans/binding/Binding;->invalidate()V

    .line 469
    return-void
.end method
