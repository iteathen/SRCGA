.class Lcom/sun/javafx/binding/MapExpressionHelper$Generic;
.super Lcom/sun/javafx/binding/MapExpressionHelper;
.source "MapExpressionHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/binding/MapExpressionHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Generic"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/sun/javafx/binding/MapExpressionHelper",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field private changeListeners:[Ljavafx/beans/value/ChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljavafx/beans/value/ChangeListener",
            "<-",
            "Ljavafx/collections/ObservableMap",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field private changeSize:I

.field private currentValue:Ljavafx/collections/ObservableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/ObservableMap",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private invalidationListeners:[Ljavafx/beans/InvalidationListener;

.field private invalidationSize:I

.field private locked:Z

.field private mapChangeListeners:[Ljavafx/collections/MapChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljavafx/collections/MapChangeListener",
            "<-TK;-TV;>;"
        }
    .end annotation
.end field

.field private mapChangeSize:I


# direct methods
.method private constructor <init>(Ljavafx/beans/value/ObservableMapValue;Ljavafx/beans/InvalidationListener;Ljavafx/beans/InvalidationListener;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/value/ObservableMapValue",
            "<TK;TV;>;",
            "Ljavafx/beans/InvalidationListener;",
            "Ljavafx/beans/InvalidationListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 325
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/MapExpressionHelper$Generic;, "Lcom/sun/javafx/binding/MapExpressionHelper$Generic<TK;TV;>;"
    move-object v1, p1

    .local v1, "observable":Ljavafx/beans/value/ObservableMapValue;, "Ljavafx/beans/value/ObservableMapValue<TK;TV;>;"
    move-object v2, p2

    .local v2, "listener0":Ljavafx/beans/InvalidationListener;
    move-object v3, p3

    .local v3, "listener1":Ljavafx/beans/InvalidationListener;
    move-object v4, v0

    move-object v5, v1

    invoke-direct {v4, v5}, Lcom/sun/javafx/binding/MapExpressionHelper;-><init>(Ljavafx/beans/value/ObservableMapValue;)V

    .line 326
    move-object v4, v0

    const/4 v5, 0x2

    new-array v5, v5, [Ljavafx/beans/InvalidationListener;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move-object v8, v2

    aput-object v8, v6, v7

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x1

    move-object v8, v3

    aput-object v8, v6, v7

    iput-object v5, v4, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->invalidationListeners:[Ljavafx/beans/InvalidationListener;

    .line 327
    move-object v4, v0

    const/4 v5, 0x2

    iput v5, v4, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->invalidationSize:I

    .line 328
    return-void
.end method

.method synthetic constructor <init>(Ljavafx/beans/value/ObservableMapValue;Ljavafx/beans/InvalidationListener;Ljavafx/beans/InvalidationListener;Lcom/sun/javafx/binding/MapExpressionHelper$1;)V
    .locals 9

    .prologue
    .line 313
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/MapExpressionHelper$Generic;, "Lcom/sun/javafx/binding/MapExpressionHelper$Generic<TK;TV;>;"
    move-object v1, p1

    .local v1, "x0":Ljavafx/beans/value/ObservableMapValue;
    move-object v2, p2

    .local v2, "x1":Ljavafx/beans/InvalidationListener;
    move-object v3, p3

    .local v3, "x2":Ljavafx/beans/InvalidationListener;
    move-object v4, p4

    .local v4, "x3":Lcom/sun/javafx/binding/MapExpressionHelper$1;
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    invoke-direct {v5, v6, v7, v8}, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;-><init>(Ljavafx/beans/value/ObservableMapValue;Ljavafx/beans/InvalidationListener;Ljavafx/beans/InvalidationListener;)V

    return-void
.end method

.method private constructor <init>(Ljavafx/beans/value/ObservableMapValue;Ljavafx/beans/InvalidationListener;Ljavafx/beans/value/ChangeListener;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/value/ObservableMapValue",
            "<TK;TV;>;",
            "Ljavafx/beans/InvalidationListener;",
            "Ljavafx/beans/value/ChangeListener",
            "<-",
            "Ljavafx/collections/ObservableMap",
            "<TK;TV;>;>;)V"
        }
    .end annotation

    .prologue
    .line 345
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/MapExpressionHelper$Generic;, "Lcom/sun/javafx/binding/MapExpressionHelper$Generic<TK;TV;>;"
    move-object v1, p1

    .local v1, "observable":Ljavafx/beans/value/ObservableMapValue;, "Ljavafx/beans/value/ObservableMapValue<TK;TV;>;"
    move-object v2, p2

    .local v2, "invalidationListener":Ljavafx/beans/InvalidationListener;
    move-object v3, p3

    .local v3, "changeListener":Ljavafx/beans/value/ChangeListener;, "Ljavafx/beans/value/ChangeListener<-Ljavafx/collections/ObservableMap<TK;TV;>;>;"
    move-object v4, v0

    move-object v5, v1

    invoke-direct {v4, v5}, Lcom/sun/javafx/binding/MapExpressionHelper;-><init>(Ljavafx/beans/value/ObservableMapValue;)V

    .line 346
    move-object v4, v0

    const/4 v5, 0x1

    new-array v5, v5, [Ljavafx/beans/InvalidationListener;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move-object v8, v2

    aput-object v8, v6, v7

    iput-object v5, v4, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->invalidationListeners:[Ljavafx/beans/InvalidationListener;

    .line 347
    move-object v4, v0

    const/4 v5, 0x1

    iput v5, v4, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->invalidationSize:I

    .line 348
    move-object v4, v0

    const/4 v5, 0x1

    new-array v5, v5, [Ljavafx/beans/value/ChangeListener;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move-object v8, v3

    aput-object v8, v6, v7

    iput-object v5, v4, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->changeListeners:[Ljavafx/beans/value/ChangeListener;

    .line 349
    move-object v4, v0

    const/4 v5, 0x1

    iput v5, v4, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->changeSize:I

    .line 350
    move-object v4, v0

    move-object v5, v1

    invoke-interface {v5}, Ljavafx/beans/value/ObservableMapValue;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavafx/collections/ObservableMap;

    iput-object v5, v4, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->currentValue:Ljavafx/collections/ObservableMap;

    .line 351
    return-void
.end method

.method synthetic constructor <init>(Ljavafx/beans/value/ObservableMapValue;Ljavafx/beans/InvalidationListener;Ljavafx/beans/value/ChangeListener;Lcom/sun/javafx/binding/MapExpressionHelper$1;)V
    .locals 9

    .prologue
    .line 313
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/MapExpressionHelper$Generic;, "Lcom/sun/javafx/binding/MapExpressionHelper$Generic<TK;TV;>;"
    move-object v1, p1

    .local v1, "x0":Ljavafx/beans/value/ObservableMapValue;
    move-object v2, p2

    .local v2, "x1":Ljavafx/beans/InvalidationListener;
    move-object v3, p3

    .local v3, "x2":Ljavafx/beans/value/ChangeListener;
    move-object v4, p4

    .local v4, "x3":Lcom/sun/javafx/binding/MapExpressionHelper$1;
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    invoke-direct {v5, v6, v7, v8}, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;-><init>(Ljavafx/beans/value/ObservableMapValue;Ljavafx/beans/InvalidationListener;Ljavafx/beans/value/ChangeListener;)V

    return-void
.end method

.method private constructor <init>(Ljavafx/beans/value/ObservableMapValue;Ljavafx/beans/InvalidationListener;Ljavafx/collections/MapChangeListener;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/value/ObservableMapValue",
            "<TK;TV;>;",
            "Ljavafx/beans/InvalidationListener;",
            "Ljavafx/collections/MapChangeListener",
            "<-TK;-TV;>;)V"
        }
    .end annotation

    .prologue
    .line 354
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/MapExpressionHelper$Generic;, "Lcom/sun/javafx/binding/MapExpressionHelper$Generic<TK;TV;>;"
    move-object v1, p1

    .local v1, "observable":Ljavafx/beans/value/ObservableMapValue;, "Ljavafx/beans/value/ObservableMapValue<TK;TV;>;"
    move-object v2, p2

    .local v2, "invalidationListener":Ljavafx/beans/InvalidationListener;
    move-object v3, p3

    .local v3, "listChangeListener":Ljavafx/collections/MapChangeListener;, "Ljavafx/collections/MapChangeListener<-TK;-TV;>;"
    move-object v4, v0

    move-object v5, v1

    invoke-direct {v4, v5}, Lcom/sun/javafx/binding/MapExpressionHelper;-><init>(Ljavafx/beans/value/ObservableMapValue;)V

    .line 355
    move-object v4, v0

    const/4 v5, 0x1

    new-array v5, v5, [Ljavafx/beans/InvalidationListener;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move-object v8, v2

    aput-object v8, v6, v7

    iput-object v5, v4, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->invalidationListeners:[Ljavafx/beans/InvalidationListener;

    .line 356
    move-object v4, v0

    const/4 v5, 0x1

    iput v5, v4, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->invalidationSize:I

    .line 357
    move-object v4, v0

    const/4 v5, 0x1

    new-array v5, v5, [Ljavafx/collections/MapChangeListener;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move-object v8, v3

    aput-object v8, v6, v7

    iput-object v5, v4, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->mapChangeListeners:[Ljavafx/collections/MapChangeListener;

    .line 358
    move-object v4, v0

    const/4 v5, 0x1

    iput v5, v4, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->mapChangeSize:I

    .line 359
    move-object v4, v0

    move-object v5, v1

    invoke-interface {v5}, Ljavafx/beans/value/ObservableMapValue;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavafx/collections/ObservableMap;

    iput-object v5, v4, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->currentValue:Ljavafx/collections/ObservableMap;

    .line 360
    return-void
.end method

.method synthetic constructor <init>(Ljavafx/beans/value/ObservableMapValue;Ljavafx/beans/InvalidationListener;Ljavafx/collections/MapChangeListener;Lcom/sun/javafx/binding/MapExpressionHelper$1;)V
    .locals 9

    .prologue
    .line 313
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/MapExpressionHelper$Generic;, "Lcom/sun/javafx/binding/MapExpressionHelper$Generic<TK;TV;>;"
    move-object v1, p1

    .local v1, "x0":Ljavafx/beans/value/ObservableMapValue;
    move-object v2, p2

    .local v2, "x1":Ljavafx/beans/InvalidationListener;
    move-object v3, p3

    .local v3, "x2":Ljavafx/collections/MapChangeListener;
    move-object v4, p4

    .local v4, "x3":Lcom/sun/javafx/binding/MapExpressionHelper$1;
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    invoke-direct {v5, v6, v7, v8}, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;-><init>(Ljavafx/beans/value/ObservableMapValue;Ljavafx/beans/InvalidationListener;Ljavafx/collections/MapChangeListener;)V

    return-void
.end method

.method private constructor <init>(Ljavafx/beans/value/ObservableMapValue;Ljavafx/beans/value/ChangeListener;Ljavafx/beans/value/ChangeListener;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/value/ObservableMapValue",
            "<TK;TV;>;",
            "Ljavafx/beans/value/ChangeListener",
            "<-",
            "Ljavafx/collections/ObservableMap",
            "<TK;TV;>;>;",
            "Ljavafx/beans/value/ChangeListener",
            "<-",
            "Ljavafx/collections/ObservableMap",
            "<TK;TV;>;>;)V"
        }
    .end annotation

    .prologue
    .line 331
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/MapExpressionHelper$Generic;, "Lcom/sun/javafx/binding/MapExpressionHelper$Generic<TK;TV;>;"
    move-object v1, p1

    .local v1, "observable":Ljavafx/beans/value/ObservableMapValue;, "Ljavafx/beans/value/ObservableMapValue<TK;TV;>;"
    move-object v2, p2

    .local v2, "listener0":Ljavafx/beans/value/ChangeListener;, "Ljavafx/beans/value/ChangeListener<-Ljavafx/collections/ObservableMap<TK;TV;>;>;"
    move-object v3, p3

    .local v3, "listener1":Ljavafx/beans/value/ChangeListener;, "Ljavafx/beans/value/ChangeListener<-Ljavafx/collections/ObservableMap<TK;TV;>;>;"
    move-object v4, v0

    move-object v5, v1

    invoke-direct {v4, v5}, Lcom/sun/javafx/binding/MapExpressionHelper;-><init>(Ljavafx/beans/value/ObservableMapValue;)V

    .line 332
    move-object v4, v0

    const/4 v5, 0x2

    new-array v5, v5, [Ljavafx/beans/value/ChangeListener;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move-object v8, v2

    aput-object v8, v6, v7

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x1

    move-object v8, v3

    aput-object v8, v6, v7

    iput-object v5, v4, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->changeListeners:[Ljavafx/beans/value/ChangeListener;

    .line 333
    move-object v4, v0

    const/4 v5, 0x2

    iput v5, v4, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->changeSize:I

    .line 334
    move-object v4, v0

    move-object v5, v1

    invoke-interface {v5}, Ljavafx/beans/value/ObservableMapValue;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavafx/collections/ObservableMap;

    iput-object v5, v4, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->currentValue:Ljavafx/collections/ObservableMap;

    .line 335
    return-void
.end method

.method synthetic constructor <init>(Ljavafx/beans/value/ObservableMapValue;Ljavafx/beans/value/ChangeListener;Ljavafx/beans/value/ChangeListener;Lcom/sun/javafx/binding/MapExpressionHelper$1;)V
    .locals 9

    .prologue
    .line 313
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/MapExpressionHelper$Generic;, "Lcom/sun/javafx/binding/MapExpressionHelper$Generic<TK;TV;>;"
    move-object v1, p1

    .local v1, "x0":Ljavafx/beans/value/ObservableMapValue;
    move-object v2, p2

    .local v2, "x1":Ljavafx/beans/value/ChangeListener;
    move-object v3, p3

    .local v3, "x2":Ljavafx/beans/value/ChangeListener;
    move-object v4, p4

    .local v4, "x3":Lcom/sun/javafx/binding/MapExpressionHelper$1;
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    invoke-direct {v5, v6, v7, v8}, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;-><init>(Ljavafx/beans/value/ObservableMapValue;Ljavafx/beans/value/ChangeListener;Ljavafx/beans/value/ChangeListener;)V

    return-void
.end method

.method private constructor <init>(Ljavafx/beans/value/ObservableMapValue;Ljavafx/beans/value/ChangeListener;Ljavafx/collections/MapChangeListener;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/value/ObservableMapValue",
            "<TK;TV;>;",
            "Ljavafx/beans/value/ChangeListener",
            "<-",
            "Ljavafx/collections/ObservableMap",
            "<TK;TV;>;>;",
            "Ljavafx/collections/MapChangeListener",
            "<-TK;-TV;>;)V"
        }
    .end annotation

    .prologue
    .line 363
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/MapExpressionHelper$Generic;, "Lcom/sun/javafx/binding/MapExpressionHelper$Generic<TK;TV;>;"
    move-object v1, p1

    .local v1, "observable":Ljavafx/beans/value/ObservableMapValue;, "Ljavafx/beans/value/ObservableMapValue<TK;TV;>;"
    move-object v2, p2

    .local v2, "changeListener":Ljavafx/beans/value/ChangeListener;, "Ljavafx/beans/value/ChangeListener<-Ljavafx/collections/ObservableMap<TK;TV;>;>;"
    move-object v3, p3

    .local v3, "listChangeListener":Ljavafx/collections/MapChangeListener;, "Ljavafx/collections/MapChangeListener<-TK;-TV;>;"
    move-object v4, v0

    move-object v5, v1

    invoke-direct {v4, v5}, Lcom/sun/javafx/binding/MapExpressionHelper;-><init>(Ljavafx/beans/value/ObservableMapValue;)V

    .line 364
    move-object v4, v0

    const/4 v5, 0x1

    new-array v5, v5, [Ljavafx/beans/value/ChangeListener;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move-object v8, v2

    aput-object v8, v6, v7

    iput-object v5, v4, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->changeListeners:[Ljavafx/beans/value/ChangeListener;

    .line 365
    move-object v4, v0

    const/4 v5, 0x1

    iput v5, v4, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->changeSize:I

    .line 366
    move-object v4, v0

    const/4 v5, 0x1

    new-array v5, v5, [Ljavafx/collections/MapChangeListener;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move-object v8, v3

    aput-object v8, v6, v7

    iput-object v5, v4, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->mapChangeListeners:[Ljavafx/collections/MapChangeListener;

    .line 367
    move-object v4, v0

    const/4 v5, 0x1

    iput v5, v4, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->mapChangeSize:I

    .line 368
    move-object v4, v0

    move-object v5, v1

    invoke-interface {v5}, Ljavafx/beans/value/ObservableMapValue;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavafx/collections/ObservableMap;

    iput-object v5, v4, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->currentValue:Ljavafx/collections/ObservableMap;

    .line 369
    return-void
.end method

.method synthetic constructor <init>(Ljavafx/beans/value/ObservableMapValue;Ljavafx/beans/value/ChangeListener;Ljavafx/collections/MapChangeListener;Lcom/sun/javafx/binding/MapExpressionHelper$1;)V
    .locals 9

    .prologue
    .line 313
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/MapExpressionHelper$Generic;, "Lcom/sun/javafx/binding/MapExpressionHelper$Generic<TK;TV;>;"
    move-object v1, p1

    .local v1, "x0":Ljavafx/beans/value/ObservableMapValue;
    move-object v2, p2

    .local v2, "x1":Ljavafx/beans/value/ChangeListener;
    move-object v3, p3

    .local v3, "x2":Ljavafx/collections/MapChangeListener;
    move-object v4, p4

    .local v4, "x3":Lcom/sun/javafx/binding/MapExpressionHelper$1;
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    invoke-direct {v5, v6, v7, v8}, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;-><init>(Ljavafx/beans/value/ObservableMapValue;Ljavafx/beans/value/ChangeListener;Ljavafx/collections/MapChangeListener;)V

    return-void
.end method

.method private constructor <init>(Ljavafx/beans/value/ObservableMapValue;Ljavafx/collections/MapChangeListener;Ljavafx/collections/MapChangeListener;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/value/ObservableMapValue",
            "<TK;TV;>;",
            "Ljavafx/collections/MapChangeListener",
            "<-TK;-TV;>;",
            "Ljavafx/collections/MapChangeListener",
            "<-TK;-TV;>;)V"
        }
    .end annotation

    .prologue
    .line 338
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/MapExpressionHelper$Generic;, "Lcom/sun/javafx/binding/MapExpressionHelper$Generic<TK;TV;>;"
    move-object v1, p1

    .local v1, "observable":Ljavafx/beans/value/ObservableMapValue;, "Ljavafx/beans/value/ObservableMapValue<TK;TV;>;"
    move-object v2, p2

    .local v2, "listener0":Ljavafx/collections/MapChangeListener;, "Ljavafx/collections/MapChangeListener<-TK;-TV;>;"
    move-object v3, p3

    .local v3, "listener1":Ljavafx/collections/MapChangeListener;, "Ljavafx/collections/MapChangeListener<-TK;-TV;>;"
    move-object v4, v0

    move-object v5, v1

    invoke-direct {v4, v5}, Lcom/sun/javafx/binding/MapExpressionHelper;-><init>(Ljavafx/beans/value/ObservableMapValue;)V

    .line 339
    move-object v4, v0

    const/4 v5, 0x2

    new-array v5, v5, [Ljavafx/collections/MapChangeListener;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move-object v8, v2

    aput-object v8, v6, v7

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x1

    move-object v8, v3

    aput-object v8, v6, v7

    iput-object v5, v4, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->mapChangeListeners:[Ljavafx/collections/MapChangeListener;

    .line 340
    move-object v4, v0

    const/4 v5, 0x2

    iput v5, v4, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->mapChangeSize:I

    .line 341
    move-object v4, v0

    move-object v5, v1

    invoke-interface {v5}, Ljavafx/beans/value/ObservableMapValue;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavafx/collections/ObservableMap;

    iput-object v5, v4, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->currentValue:Ljavafx/collections/ObservableMap;

    .line 342
    return-void
.end method

.method synthetic constructor <init>(Ljavafx/beans/value/ObservableMapValue;Ljavafx/collections/MapChangeListener;Ljavafx/collections/MapChangeListener;Lcom/sun/javafx/binding/MapExpressionHelper$1;)V
    .locals 9

    .prologue
    .line 313
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/MapExpressionHelper$Generic;, "Lcom/sun/javafx/binding/MapExpressionHelper$Generic<TK;TV;>;"
    move-object v1, p1

    .local v1, "x0":Ljavafx/beans/value/ObservableMapValue;
    move-object v2, p2

    .local v2, "x1":Ljavafx/collections/MapChangeListener;
    move-object v3, p3

    .local v3, "x2":Ljavafx/collections/MapChangeListener;
    move-object v4, p4

    .local v4, "x3":Lcom/sun/javafx/binding/MapExpressionHelper$1;
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    invoke-direct {v5, v6, v7, v8}, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;-><init>(Ljavafx/beans/value/ObservableMapValue;Ljavafx/collections/MapChangeListener;Ljavafx/collections/MapChangeListener;)V

    return-void
.end method

.method private notifyListeners(Ljavafx/collections/ObservableMap;Lcom/sun/javafx/binding/MapExpressionHelper$SimpleChange;)V
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ObservableMap",
            "<TK;TV;>;",
            "Lcom/sun/javafx/binding/MapExpressionHelper$SimpleChange",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 566
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/javafx/binding/MapExpressionHelper$Generic;, "Lcom/sun/javafx/binding/MapExpressionHelper$Generic<TK;TV;>;"
    move-object/from16 v3, p1

    .local v3, "oldValue":Ljavafx/collections/ObservableMap;, "Ljavafx/collections/ObservableMap<TK;TV;>;"
    move-object/from16 v4, p2

    .local v4, "change":Lcom/sun/javafx/binding/MapExpressionHelper$SimpleChange;, "Lcom/sun/javafx/binding/MapExpressionHelper$SimpleChange<TK;TV;>;"
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->invalidationListeners:[Ljavafx/beans/InvalidationListener;

    move-object/from16 v18, v0

    move-object/from16 v5, v18

    .line 567
    .local v5, "curInvalidationList":[Ljavafx/beans/InvalidationListener;
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget v0, v0, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->invalidationSize:I

    move/from16 v18, v0

    move/from16 v6, v18

    .line 568
    .local v6, "curInvalidationSize":I
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->changeListeners:[Ljavafx/beans/value/ChangeListener;

    move-object/from16 v18, v0

    move-object/from16 v7, v18

    .line 569
    .local v7, "curChangeList":[Ljavafx/beans/value/ChangeListener;, "[Ljavafx/beans/value/ChangeListener<-Ljavafx/collections/ObservableMap<TK;TV;>;>;"
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget v0, v0, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->changeSize:I

    move/from16 v18, v0

    move/from16 v8, v18

    .line 570
    .local v8, "curChangeSize":I
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->mapChangeListeners:[Ljavafx/collections/MapChangeListener;

    move-object/from16 v18, v0

    move-object/from16 v9, v18

    .line 571
    .local v9, "curListChangeList":[Ljavafx/collections/MapChangeListener;, "[Ljavafx/collections/MapChangeListener<-TK;-TV;>;"
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget v0, v0, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->mapChangeSize:I

    move/from16 v18, v0

    move/from16 v10, v18

    .line 573
    .local v10, "curListChangeSize":I
    move-object/from16 v18, v2

    const/16 v19, 0x1

    :try_start_0
    move/from16 v0, v19

    move-object/from16 v1, v18

    iput-boolean v0, v1, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->locked:Z

    .line 574
    const/16 v18, 0x0

    move/from16 v11, v18

    .local v11, "i":I
    :goto_0
    move/from16 v18, v11

    move/from16 v19, v6

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_0

    .line 575
    move-object/from16 v18, v5

    move/from16 v19, v11

    aget-object v18, v18, v19

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->observable:Ljavafx/beans/value/ObservableMapValue;

    move-object/from16 v19, v0

    invoke-interface/range {v18 .. v19}, Ljavafx/beans/InvalidationListener;->invalidated(Ljavafx/beans/Observable;)V

    .line 574
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 577
    :cond_0
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->currentValue:Ljavafx/collections/ObservableMap;

    move-object/from16 v18, v0

    move-object/from16 v19, v3

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_1

    move-object/from16 v18, v4

    if-eqz v18, :cond_3

    .line 578
    :cond_1
    const/16 v18, 0x0

    move/from16 v11, v18

    :goto_1
    move/from16 v18, v11

    move/from16 v19, v8

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_2

    .line 579
    move-object/from16 v18, v7

    move/from16 v19, v11

    aget-object v18, v18, v19

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->observable:Ljavafx/beans/value/ObservableMapValue;

    move-object/from16 v19, v0

    move-object/from16 v20, v3

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->currentValue:Ljavafx/collections/ObservableMap;

    move-object/from16 v21, v0

    invoke-interface/range {v18 .. v21}, Ljavafx/beans/value/ChangeListener;->changed(Ljavafx/beans/value/ObservableValue;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 578
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 581
    :cond_2
    move/from16 v18, v10

    if-lez v18, :cond_3

    .line 582
    move-object/from16 v18, v4

    if-eqz v18, :cond_4

    .line 583
    const/16 v18, 0x0

    move/from16 v11, v18

    :goto_2
    move/from16 v18, v11

    move/from16 v19, v10

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_3

    .line 584
    move-object/from16 v18, v9

    move/from16 v19, v11

    aget-object v18, v18, v19

    move-object/from16 v19, v4

    invoke-interface/range {v18 .. v19}, Ljavafx/collections/MapChangeListener;->onChanged(Ljavafx/collections/MapChangeListener$Change;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 583
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 635
    .end local v11    # "i":I
    :cond_3
    :goto_3
    move-object/from16 v18, v2

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput-boolean v0, v1, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->locked:Z

    .line 636
    .line 637
    return-void

    .line 587
    .restart local v11    # "i":I
    :cond_4
    :try_start_1
    new-instance v18, Lcom/sun/javafx/binding/MapExpressionHelper$SimpleChange;

    move-object/from16 v22, v18

    move-object/from16 v18, v22

    move-object/from16 v19, v22

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->observable:Ljavafx/beans/value/ObservableMapValue;

    move-object/from16 v20, v0

    invoke-direct/range {v19 .. v20}, Lcom/sun/javafx/binding/MapExpressionHelper$SimpleChange;-><init>(Ljavafx/collections/ObservableMap;)V

    move-object/from16 v4, v18

    .line 588
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->currentValue:Ljavafx/collections/ObservableMap;

    move-object/from16 v18, v0

    if-nez v18, :cond_7

    .line 589
    move-object/from16 v18, v3

    invoke-interface/range {v18 .. v18}, Ljavafx/collections/ObservableMap;->entrySet()Ljava/util/Set;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v18

    move-object/from16 v11, v18

    .end local v11    # "i":I
    :goto_4
    move-object/from16 v18, v11

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_6

    move-object/from16 v18, v11

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/Map$Entry;

    move-object/from16 v12, v18

    .line 590
    .local v12, "element":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    move-object/from16 v18, v4

    move-object/from16 v19, v12

    invoke-interface/range {v19 .. v19}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v20, v12

    invoke-interface/range {v20 .. v20}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Lcom/sun/javafx/binding/MapExpressionHelper$SimpleChange;->setRemoved(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sun/javafx/binding/MapExpressionHelper$SimpleChange;

    move-result-object v18

    .line 591
    const/16 v18, 0x0

    move/from16 v13, v18

    .local v13, "i":I
    :goto_5
    move/from16 v18, v13

    move/from16 v19, v10

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_5

    .line 592
    move-object/from16 v18, v9

    move/from16 v19, v13

    aget-object v18, v18, v19

    move-object/from16 v19, v4

    invoke-interface/range {v18 .. v19}, Ljavafx/collections/MapChangeListener;->onChanged(Ljavafx/collections/MapChangeListener$Change;)V

    .line 591
    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    .line 594
    :cond_5
    goto :goto_4

    .end local v12    # "element":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    .end local v13    # "i":I
    :cond_6
    goto :goto_3

    .line 595
    .restart local v11    # "i":I
    :cond_7
    move-object/from16 v18, v3

    if-nez v18, :cond_a

    .line 596
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->currentValue:Ljavafx/collections/ObservableMap;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljavafx/collections/ObservableMap;->entrySet()Ljava/util/Set;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v18

    move-object/from16 v11, v18

    .end local v11    # "i":I
    :goto_6
    move-object/from16 v18, v11

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_9

    move-object/from16 v18, v11

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/Map$Entry;

    move-object/from16 v12, v18

    .line 597
    .restart local v12    # "element":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    move-object/from16 v18, v4

    move-object/from16 v19, v12

    invoke-interface/range {v19 .. v19}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v20, v12

    invoke-interface/range {v20 .. v20}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Lcom/sun/javafx/binding/MapExpressionHelper$SimpleChange;->setAdded(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sun/javafx/binding/MapExpressionHelper$SimpleChange;

    move-result-object v18

    .line 598
    const/16 v18, 0x0

    move/from16 v13, v18

    .restart local v13    # "i":I
    :goto_7
    move/from16 v18, v13

    move/from16 v19, v10

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_8

    .line 599
    move-object/from16 v18, v9

    move/from16 v19, v13

    aget-object v18, v18, v19

    move-object/from16 v19, v4

    invoke-interface/range {v18 .. v19}, Ljavafx/collections/MapChangeListener;->onChanged(Ljavafx/collections/MapChangeListener$Change;)V

    .line 598
    add-int/lit8 v13, v13, 0x1

    goto :goto_7

    .line 601
    :cond_8
    goto :goto_6

    .end local v12    # "element":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    .end local v13    # "i":I
    :cond_9
    goto/16 :goto_3

    .line 603
    .restart local v11    # "i":I
    :cond_a
    move-object/from16 v18, v3

    invoke-interface/range {v18 .. v18}, Ljavafx/collections/ObservableMap;->entrySet()Ljava/util/Set;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v18

    move-object/from16 v11, v18

    .end local v11    # "i":I
    :goto_8
    move-object/from16 v18, v11

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_f

    move-object/from16 v18, v11

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/Map$Entry;

    move-object/from16 v12, v18

    .line 604
    .restart local v12    # "element":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    move-object/from16 v18, v12

    invoke-interface/range {v18 .. v18}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v13, v18

    .line 605
    .local v13, "key":Ljava/lang/Object;, "TK;"
    move-object/from16 v18, v12

    invoke-interface/range {v18 .. v18}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v14, v18

    .line 606
    .local v14, "oldEntry":Ljava/lang/Object;, "TV;"
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->currentValue:Ljavafx/collections/ObservableMap;

    move-object/from16 v18, v0

    move-object/from16 v19, v13

    invoke-interface/range {v18 .. v19}, Ljavafx/collections/ObservableMap;->containsKey(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_e

    .line 607
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->currentValue:Ljavafx/collections/ObservableMap;

    move-object/from16 v18, v0

    move-object/from16 v19, v13

    invoke-interface/range {v18 .. v19}, Ljavafx/collections/ObservableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v15, v18

    .line 608
    .local v15, "newEntry":Ljava/lang/Object;, "TV;"
    move-object/from16 v18, v14

    if-nez v18, :cond_c

    move-object/from16 v18, v15

    if-eqz v18, :cond_d

    .line 609
    :cond_b
    move-object/from16 v18, v4

    move-object/from16 v19, v13

    move-object/from16 v20, v14

    move-object/from16 v21, v15

    invoke-virtual/range {v18 .. v21}, Lcom/sun/javafx/binding/MapExpressionHelper$SimpleChange;->setPut(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/sun/javafx/binding/MapExpressionHelper$SimpleChange;

    move-result-object v18

    .line 610
    const/16 v18, 0x0

    move/from16 v16, v18

    .local v16, "i":I
    :goto_9
    move/from16 v18, v16

    move/from16 v19, v10

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_d

    .line 611
    move-object/from16 v18, v9

    move/from16 v19, v16

    aget-object v18, v18, v19

    move-object/from16 v19, v4

    invoke-interface/range {v18 .. v19}, Ljavafx/collections/MapChangeListener;->onChanged(Ljavafx/collections/MapChangeListener$Change;)V

    .line 610
    add-int/lit8 v16, v16, 0x1

    goto :goto_9

    .line 608
    .end local v16    # "i":I
    :cond_c
    move-object/from16 v18, v15

    move-object/from16 v19, v14

    invoke-virtual/range {v18 .. v19}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_b

    .line 614
    .line 620
    .end local v15    # "newEntry":Ljava/lang/Object;, "TV;"
    :cond_d
    goto :goto_8

    .line 615
    :cond_e
    move-object/from16 v18, v4

    move-object/from16 v19, v13

    move-object/from16 v20, v14

    invoke-virtual/range {v18 .. v20}, Lcom/sun/javafx/binding/MapExpressionHelper$SimpleChange;->setRemoved(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sun/javafx/binding/MapExpressionHelper$SimpleChange;

    move-result-object v18

    .line 616
    const/16 v18, 0x0

    move/from16 v15, v18

    .local v15, "i":I
    :goto_a
    move/from16 v18, v15

    move/from16 v19, v10

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_d

    .line 617
    move-object/from16 v18, v9

    move/from16 v19, v15

    aget-object v18, v18, v19

    move-object/from16 v19, v4

    invoke-interface/range {v18 .. v19}, Ljavafx/collections/MapChangeListener;->onChanged(Ljavafx/collections/MapChangeListener$Change;)V

    .line 616
    add-int/lit8 v15, v15, 0x1

    goto :goto_a

    .line 621
    .end local v12    # "element":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    .end local v13    # "key":Ljava/lang/Object;, "TK;"
    .end local v14    # "oldEntry":Ljava/lang/Object;, "TV;"
    .end local v15    # "i":I
    :cond_f
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->currentValue:Ljavafx/collections/ObservableMap;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljavafx/collections/ObservableMap;->entrySet()Ljava/util/Set;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v18

    move-object/from16 v11, v18

    :goto_b
    move-object/from16 v18, v11

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_3

    move-object/from16 v18, v11

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/Map$Entry;

    move-object/from16 v12, v18

    .line 622
    .restart local v12    # "element":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    move-object/from16 v18, v12

    invoke-interface/range {v18 .. v18}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v13, v18

    .line 623
    .restart local v13    # "key":Ljava/lang/Object;, "TK;"
    move-object/from16 v18, v3

    move-object/from16 v19, v13

    invoke-interface/range {v18 .. v19}, Ljavafx/collections/ObservableMap;->containsKey(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_10

    .line 624
    move-object/from16 v18, v4

    move-object/from16 v19, v13

    move-object/from16 v20, v12

    invoke-interface/range {v20 .. v20}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Lcom/sun/javafx/binding/MapExpressionHelper$SimpleChange;->setAdded(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sun/javafx/binding/MapExpressionHelper$SimpleChange;

    move-result-object v18

    .line 625
    const/16 v18, 0x0

    move/from16 v14, v18

    .local v14, "i":I
    :goto_c
    move/from16 v18, v14

    move/from16 v19, v10

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_10

    .line 626
    move-object/from16 v18, v9

    move/from16 v19, v14

    aget-object v18, v18, v19

    move-object/from16 v19, v4

    invoke-interface/range {v18 .. v19}, Ljavafx/collections/MapChangeListener;->onChanged(Ljavafx/collections/MapChangeListener$Change;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 625
    add-int/lit8 v14, v14, 0x1

    goto :goto_c

    .line 629
    .end local v14    # "i":I
    :cond_10
    goto :goto_b

    .line 635
    .end local v12    # "element":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    .end local v13    # "key":Ljava/lang/Object;, "TK;"
    :catchall_0
    move-exception v18

    move-object/from16 v17, v18

    move-object/from16 v18, v2

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput-boolean v0, v1, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->locked:Z

    move-object/from16 v18, v17

    throw v18
.end method


# virtual methods
.method protected addListener(Ljavafx/beans/InvalidationListener;)Lcom/sun/javafx/binding/MapExpressionHelper;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/InvalidationListener;",
            ")",
            "Lcom/sun/javafx/binding/MapExpressionHelper",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 373
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/MapExpressionHelper$Generic;, "Lcom/sun/javafx/binding/MapExpressionHelper$Generic<TK;TV;>;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/InvalidationListener;
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->invalidationListeners:[Ljavafx/beans/InvalidationListener;

    if-nez v4, :cond_0

    .line 374
    move-object v4, v0

    const/4 v5, 0x1

    new-array v5, v5, [Ljavafx/beans/InvalidationListener;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move-object v8, v1

    aput-object v8, v6, v7

    iput-object v5, v4, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->invalidationListeners:[Ljavafx/beans/InvalidationListener;

    .line 375
    move-object v4, v0

    const/4 v5, 0x1

    iput v5, v4, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->invalidationSize:I

    .line 390
    :goto_0
    move-object v4, v0

    move-object v0, v4

    .end local v0    # "this":Lcom/sun/javafx/binding/MapExpressionHelper$Generic;, "Lcom/sun/javafx/binding/MapExpressionHelper$Generic<TK;TV;>;"
    return-object v0

    .line 377
    .restart local v0    # "this":Lcom/sun/javafx/binding/MapExpressionHelper$Generic;, "Lcom/sun/javafx/binding/MapExpressionHelper$Generic<TK;TV;>;"
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->invalidationListeners:[Ljavafx/beans/InvalidationListener;

    array-length v4, v4

    move v2, v4

    .line 378
    .local v2, "oldCapacity":I
    move-object v4, v0

    iget-boolean v4, v4, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->locked:Z

    if-eqz v4, :cond_3

    .line 379
    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->invalidationSize:I

    move v5, v2

    if-ge v4, v5, :cond_2

    move v4, v2

    :goto_1
    move v3, v4

    .line 380
    .local v3, "newCapacity":I
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->invalidationListeners:[Ljavafx/beans/InvalidationListener;

    move v6, v3

    invoke-static {v5, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljavafx/beans/InvalidationListener;

    iput-object v5, v4, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->invalidationListeners:[Ljavafx/beans/InvalidationListener;

    .line 381
    .line 388
    .end local v3    # "newCapacity":I
    :cond_1
    :goto_2
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->invalidationListeners:[Ljavafx/beans/InvalidationListener;

    move-object v5, v0

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    iget v6, v6, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->invalidationSize:I

    move-object v9, v5

    move v10, v6

    move v5, v10

    move-object v6, v9

    move v7, v10

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->invalidationSize:I

    move-object v6, v1

    aput-object v6, v4, v5

    goto :goto_0

    .line 379
    :cond_2
    move v4, v2

    const/4 v5, 0x3

    mul-int/lit8 v4, v4, 0x3

    const/4 v5, 0x2

    div-int/lit8 v4, v4, 0x2

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 381
    :cond_3
    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->invalidationSize:I

    move v5, v2

    if-ne v4, v5, :cond_1

    .line 382
    move-object v4, v0

    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->invalidationSize:I

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->invalidationListeners:[Ljavafx/beans/InvalidationListener;

    invoke-static {v5, v6}, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->trim(I[Ljava/lang/Object;)I

    move-result v5

    iput v5, v4, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->invalidationSize:I

    .line 383
    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->invalidationSize:I

    move v5, v2

    if-ne v4, v5, :cond_1

    .line 384
    move v4, v2

    const/4 v5, 0x3

    mul-int/lit8 v4, v4, 0x3

    const/4 v5, 0x2

    div-int/lit8 v4, v4, 0x2

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    move v3, v4

    .line 385
    .restart local v3    # "newCapacity":I
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->invalidationListeners:[Ljavafx/beans/InvalidationListener;

    move v6, v3

    invoke-static {v5, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljavafx/beans/InvalidationListener;

    iput-object v5, v4, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->invalidationListeners:[Ljavafx/beans/InvalidationListener;

    goto :goto_2
.end method

.method protected addListener(Ljavafx/beans/value/ChangeListener;)Lcom/sun/javafx/binding/MapExpressionHelper;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/value/ChangeListener",
            "<-",
            "Ljavafx/collections/ObservableMap",
            "<TK;TV;>;>;)",
            "Lcom/sun/javafx/binding/MapExpressionHelper",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 430
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/MapExpressionHelper$Generic;, "Lcom/sun/javafx/binding/MapExpressionHelper$Generic<TK;TV;>;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/value/ChangeListener;, "Ljavafx/beans/value/ChangeListener<-Ljavafx/collections/ObservableMap<TK;TV;>;>;"
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->changeListeners:[Ljavafx/beans/value/ChangeListener;

    if-nez v4, :cond_1

    .line 431
    move-object v4, v0

    const/4 v5, 0x1

    new-array v5, v5, [Ljavafx/beans/value/ChangeListener;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move-object v8, v1

    aput-object v8, v6, v7

    iput-object v5, v4, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->changeListeners:[Ljavafx/beans/value/ChangeListener;

    .line 432
    move-object v4, v0

    const/4 v5, 0x1

    iput v5, v4, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->changeSize:I

    .line 447
    :goto_0
    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->changeSize:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 448
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->observable:Ljavafx/beans/value/ObservableMapValue;

    invoke-interface {v5}, Ljavafx/beans/value/ObservableMapValue;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavafx/collections/ObservableMap;

    iput-object v5, v4, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->currentValue:Ljavafx/collections/ObservableMap;

    .line 450
    :cond_0
    move-object v4, v0

    move-object v0, v4

    .end local v0    # "this":Lcom/sun/javafx/binding/MapExpressionHelper$Generic;, "Lcom/sun/javafx/binding/MapExpressionHelper$Generic<TK;TV;>;"
    return-object v0

    .line 434
    .restart local v0    # "this":Lcom/sun/javafx/binding/MapExpressionHelper$Generic;, "Lcom/sun/javafx/binding/MapExpressionHelper$Generic<TK;TV;>;"
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->changeListeners:[Ljavafx/beans/value/ChangeListener;

    array-length v4, v4

    move v2, v4

    .line 435
    .local v2, "oldCapacity":I
    move-object v4, v0

    iget-boolean v4, v4, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->locked:Z

    if-eqz v4, :cond_4

    .line 436
    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->changeSize:I

    move v5, v2

    if-ge v4, v5, :cond_3

    move v4, v2

    :goto_1
    move v3, v4

    .line 437
    .local v3, "newCapacity":I
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->changeListeners:[Ljavafx/beans/value/ChangeListener;

    move v6, v3

    invoke-static {v5, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljavafx/beans/value/ChangeListener;

    iput-object v5, v4, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->changeListeners:[Ljavafx/beans/value/ChangeListener;

    .line 438
    .line 445
    .end local v3    # "newCapacity":I
    :cond_2
    :goto_2
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->changeListeners:[Ljavafx/beans/value/ChangeListener;

    move-object v5, v0

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    iget v6, v6, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->changeSize:I

    move-object v9, v5

    move v10, v6

    move v5, v10

    move-object v6, v9

    move v7, v10

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->changeSize:I

    move-object v6, v1

    aput-object v6, v4, v5

    goto :goto_0

    .line 436
    :cond_3
    move v4, v2

    const/4 v5, 0x3

    mul-int/lit8 v4, v4, 0x3

    const/4 v5, 0x2

    div-int/lit8 v4, v4, 0x2

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 438
    :cond_4
    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->changeSize:I

    move v5, v2

    if-ne v4, v5, :cond_2

    .line 439
    move-object v4, v0

    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->changeSize:I

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->changeListeners:[Ljavafx/beans/value/ChangeListener;

    invoke-static {v5, v6}, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->trim(I[Ljava/lang/Object;)I

    move-result v5

    iput v5, v4, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->changeSize:I

    .line 440
    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->changeSize:I

    move v5, v2

    if-ne v4, v5, :cond_2

    .line 441
    move v4, v2

    const/4 v5, 0x3

    mul-int/lit8 v4, v4, 0x3

    const/4 v5, 0x2

    div-int/lit8 v4, v4, 0x2

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    move v3, v4

    .line 442
    .restart local v3    # "newCapacity":I
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->changeListeners:[Ljavafx/beans/value/ChangeListener;

    move v6, v3

    invoke-static {v5, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljavafx/beans/value/ChangeListener;

    iput-object v5, v4, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->changeListeners:[Ljavafx/beans/value/ChangeListener;

    goto :goto_2
.end method

.method protected addListener(Ljavafx/collections/MapChangeListener;)Lcom/sun/javafx/binding/MapExpressionHelper;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/MapChangeListener",
            "<-TK;-TV;>;)",
            "Lcom/sun/javafx/binding/MapExpressionHelper",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 490
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/MapExpressionHelper$Generic;, "Lcom/sun/javafx/binding/MapExpressionHelper$Generic<TK;TV;>;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/collections/MapChangeListener;, "Ljavafx/collections/MapChangeListener<-TK;-TV;>;"
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->mapChangeListeners:[Ljavafx/collections/MapChangeListener;

    if-nez v4, :cond_1

    .line 491
    move-object v4, v0

    const/4 v5, 0x1

    new-array v5, v5, [Ljavafx/collections/MapChangeListener;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move-object v8, v1

    aput-object v8, v6, v7

    iput-object v5, v4, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->mapChangeListeners:[Ljavafx/collections/MapChangeListener;

    .line 492
    move-object v4, v0

    const/4 v5, 0x1

    iput v5, v4, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->mapChangeSize:I

    .line 507
    :goto_0
    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->mapChangeSize:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 508
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->observable:Ljavafx/beans/value/ObservableMapValue;

    invoke-interface {v5}, Ljavafx/beans/value/ObservableMapValue;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavafx/collections/ObservableMap;

    iput-object v5, v4, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->currentValue:Ljavafx/collections/ObservableMap;

    .line 510
    :cond_0
    move-object v4, v0

    move-object v0, v4

    .end local v0    # "this":Lcom/sun/javafx/binding/MapExpressionHelper$Generic;, "Lcom/sun/javafx/binding/MapExpressionHelper$Generic<TK;TV;>;"
    return-object v0

    .line 494
    .restart local v0    # "this":Lcom/sun/javafx/binding/MapExpressionHelper$Generic;, "Lcom/sun/javafx/binding/MapExpressionHelper$Generic<TK;TV;>;"
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->mapChangeListeners:[Ljavafx/collections/MapChangeListener;

    array-length v4, v4

    move v2, v4

    .line 495
    .local v2, "oldCapacity":I
    move-object v4, v0

    iget-boolean v4, v4, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->locked:Z

    if-eqz v4, :cond_4

    .line 496
    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->mapChangeSize:I

    move v5, v2

    if-ge v4, v5, :cond_3

    move v4, v2

    :goto_1
    move v3, v4

    .line 497
    .local v3, "newCapacity":I
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->mapChangeListeners:[Ljavafx/collections/MapChangeListener;

    move v6, v3

    invoke-static {v5, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljavafx/collections/MapChangeListener;

    iput-object v5, v4, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->mapChangeListeners:[Ljavafx/collections/MapChangeListener;

    .line 498
    .line 505
    .end local v3    # "newCapacity":I
    :cond_2
    :goto_2
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->mapChangeListeners:[Ljavafx/collections/MapChangeListener;

    move-object v5, v0

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    iget v6, v6, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->mapChangeSize:I

    move-object v9, v5

    move v10, v6

    move v5, v10

    move-object v6, v9

    move v7, v10

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->mapChangeSize:I

    move-object v6, v1

    aput-object v6, v4, v5

    goto :goto_0

    .line 496
    :cond_3
    move v4, v2

    const/4 v5, 0x3

    mul-int/lit8 v4, v4, 0x3

    const/4 v5, 0x2

    div-int/lit8 v4, v4, 0x2

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 498
    :cond_4
    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->mapChangeSize:I

    move v5, v2

    if-ne v4, v5, :cond_2

    .line 499
    move-object v4, v0

    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->mapChangeSize:I

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->mapChangeListeners:[Ljavafx/collections/MapChangeListener;

    invoke-static {v5, v6}, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->trim(I[Ljava/lang/Object;)I

    move-result v5

    iput v5, v4, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->mapChangeSize:I

    .line 500
    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->mapChangeSize:I

    move v5, v2

    if-ne v4, v5, :cond_2

    .line 501
    move v4, v2

    const/4 v5, 0x3

    mul-int/lit8 v4, v4, 0x3

    const/4 v5, 0x2

    div-int/lit8 v4, v4, 0x2

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    move v3, v4

    .line 502
    .restart local v3    # "newCapacity":I
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->mapChangeListeners:[Ljavafx/collections/MapChangeListener;

    move v6, v3

    invoke-static {v5, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljavafx/collections/MapChangeListener;

    iput-object v5, v4, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->mapChangeListeners:[Ljavafx/collections/MapChangeListener;

    goto :goto_2
.end method

.method protected fireValueChangedEvent()V
    .locals 5

    .prologue
    .line 550
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/MapExpressionHelper$Generic;, "Lcom/sun/javafx/binding/MapExpressionHelper$Generic<TK;TV;>;"
    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->changeSize:I

    if-nez v2, :cond_0

    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->mapChangeSize:I

    if-nez v2, :cond_0

    .line 551
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->currentValue:Ljavafx/collections/ObservableMap;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->notifyListeners(Ljavafx/collections/ObservableMap;Lcom/sun/javafx/binding/MapExpressionHelper$SimpleChange;)V

    .line 557
    :goto_0
    return-void

    .line 553
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->currentValue:Ljavafx/collections/ObservableMap;

    move-object v1, v2

    .line 554
    .local v1, "oldValue":Ljavafx/collections/ObservableMap;, "Ljavafx/collections/ObservableMap<TK;TV;>;"
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->observable:Ljavafx/beans/value/ObservableMapValue;

    invoke-interface {v3}, Ljavafx/beans/value/ObservableMapValue;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavafx/collections/ObservableMap;

    iput-object v3, v2, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->currentValue:Ljavafx/collections/ObservableMap;

    .line 555
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->notifyListeners(Ljavafx/collections/ObservableMap;Lcom/sun/javafx/binding/MapExpressionHelper$SimpleChange;)V

    goto :goto_0
.end method

.method protected fireValueChangedEvent(Ljavafx/collections/MapChangeListener$Change;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/MapChangeListener$Change",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 561
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/MapExpressionHelper$Generic;, "Lcom/sun/javafx/binding/MapExpressionHelper$Generic<TK;TV;>;"
    move-object v1, p1

    .local v1, "change":Ljavafx/collections/MapChangeListener$Change;, "Ljavafx/collections/MapChangeListener$Change<+TK;+TV;>;"
    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->mapChangeSize:I

    if-nez v3, :cond_0

    const/4 v3, 0x0

    :goto_0
    move-object v2, v3

    .line 562
    .local v2, "mappedChange":Lcom/sun/javafx/binding/MapExpressionHelper$SimpleChange;, "Lcom/sun/javafx/binding/MapExpressionHelper$SimpleChange<TK;TV;>;"
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->currentValue:Ljavafx/collections/ObservableMap;

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->notifyListeners(Ljavafx/collections/ObservableMap;Lcom/sun/javafx/binding/MapExpressionHelper$SimpleChange;)V

    .line 563
    return-void

    .line 561
    .end local v2    # "mappedChange":Lcom/sun/javafx/binding/MapExpressionHelper$SimpleChange;, "Lcom/sun/javafx/binding/MapExpressionHelper$SimpleChange<TK;TV;>;"
    :cond_0
    new-instance v3, Lcom/sun/javafx/binding/MapExpressionHelper$SimpleChange;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->observable:Ljavafx/beans/value/ObservableMapValue;

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Lcom/sun/javafx/binding/MapExpressionHelper$SimpleChange;-><init>(Ljavafx/collections/ObservableMap;Ljavafx/collections/MapChangeListener$Change;)V

    goto :goto_0
.end method

.method protected removeListener(Ljavafx/beans/InvalidationListener;)Lcom/sun/javafx/binding/MapExpressionHelper;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/InvalidationListener;",
            ")",
            "Lcom/sun/javafx/binding/MapExpressionHelper",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 395
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/MapExpressionHelper$Generic;, "Lcom/sun/javafx/binding/MapExpressionHelper$Generic<TK;TV;>;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/InvalidationListener;
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->invalidationListeners:[Ljavafx/beans/InvalidationListener;

    if-eqz v5, :cond_2

    .line 396
    const/4 v5, 0x0

    move v2, v5

    .local v2, "index":I
    :goto_0
    move v5, v2

    move-object v6, v0

    iget v6, v6, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->invalidationSize:I

    if-ge v5, v6, :cond_2

    .line 397
    move-object v5, v1

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->invalidationListeners:[Ljavafx/beans/InvalidationListener;

    move v7, v2

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 398
    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->invalidationSize:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_3

    .line 399
    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->changeSize:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->mapChangeSize:I

    if-nez v5, :cond_0

    .line 400
    new-instance v5, Lcom/sun/javafx/binding/MapExpressionHelper$SingleChange;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->observable:Ljavafx/beans/value/ObservableMapValue;

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->changeListeners:[Ljavafx/beans/value/ChangeListener;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    const/4 v9, 0x0

    invoke-direct {v6, v7, v8, v9}, Lcom/sun/javafx/binding/MapExpressionHelper$SingleChange;-><init>(Ljavafx/beans/value/ObservableMapValue;Ljavafx/beans/value/ChangeListener;Lcom/sun/javafx/binding/MapExpressionHelper$1;)V

    move-object v0, v5

    .line 425
    .end local v0    # "this":Lcom/sun/javafx/binding/MapExpressionHelper$Generic;, "Lcom/sun/javafx/binding/MapExpressionHelper$Generic<TK;TV;>;"
    .end local v2    # "index":I
    :goto_1
    return-object v0

    .line 401
    .restart local v0    # "this":Lcom/sun/javafx/binding/MapExpressionHelper$Generic;, "Lcom/sun/javafx/binding/MapExpressionHelper$Generic<TK;TV;>;"
    .restart local v2    # "index":I
    :cond_0
    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->changeSize:I

    if-nez v5, :cond_1

    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->mapChangeSize:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 402
    new-instance v5, Lcom/sun/javafx/binding/MapExpressionHelper$SingleMapChange;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->observable:Ljavafx/beans/value/ObservableMapValue;

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->mapChangeListeners:[Ljavafx/collections/MapChangeListener;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    const/4 v9, 0x0

    invoke-direct {v6, v7, v8, v9}, Lcom/sun/javafx/binding/MapExpressionHelper$SingleMapChange;-><init>(Ljavafx/beans/value/ObservableMapValue;Ljavafx/collections/MapChangeListener;Lcom/sun/javafx/binding/MapExpressionHelper$1;)V

    move-object v0, v5

    goto :goto_1

    .line 404
    :cond_1
    move-object v5, v0

    const/4 v6, 0x0

    iput-object v6, v5, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->invalidationListeners:[Ljavafx/beans/InvalidationListener;

    .line 405
    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->invalidationSize:I

    .line 425
    .end local v2    # "index":I
    :cond_2
    :goto_2
    move-object v5, v0

    move-object v0, v5

    goto :goto_1

    .line 407
    .restart local v2    # "index":I
    :cond_3
    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->invalidationSize:I

    move v6, v2

    sub-int/2addr v5, v6

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    move v3, v5

    .line 408
    .local v3, "numMoved":I
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->invalidationListeners:[Ljavafx/beans/InvalidationListener;

    move-object v4, v5

    .line 409
    .local v4, "oldListeners":[Ljavafx/beans/InvalidationListener;
    move-object v5, v0

    iget-boolean v5, v5, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->locked:Z

    if-eqz v5, :cond_4

    .line 410
    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->invalidationListeners:[Ljavafx/beans/InvalidationListener;

    array-length v6, v6

    new-array v6, v6, [Ljavafx/beans/InvalidationListener;

    iput-object v6, v5, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->invalidationListeners:[Ljavafx/beans/InvalidationListener;

    .line 411
    move-object v5, v4

    const/4 v6, 0x0

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->invalidationListeners:[Ljavafx/beans/InvalidationListener;

    const/4 v8, 0x0

    move v9, v2

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    invoke-static {v5, v6, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 413
    :cond_4
    move v5, v3

    if-lez v5, :cond_5

    .line 414
    move-object v5, v4

    move v6, v2

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->invalidationListeners:[Ljavafx/beans/InvalidationListener;

    move v8, v2

    move v9, v3

    invoke-static {v5, v6, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 416
    :cond_5
    move-object v5, v0

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    iget v6, v6, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->invalidationSize:I

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    iput v6, v5, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->invalidationSize:I

    .line 417
    move-object v5, v0

    iget-boolean v5, v5, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->locked:Z

    if-nez v5, :cond_6

    .line 418
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->invalidationListeners:[Ljavafx/beans/InvalidationListener;

    move-object v6, v0

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    iget v7, v7, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->invalidationSize:I

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    move-object v11, v6

    move v12, v7

    move v6, v12

    move-object v7, v11

    move v8, v12

    iput v8, v7, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->invalidationSize:I

    const/4 v7, 0x0

    aput-object v7, v5, v6

    .line 421
    :cond_6
    goto :goto_2

    .line 396
    .end local v3    # "numMoved":I
    .end local v4    # "oldListeners":[Ljavafx/beans/InvalidationListener;
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0
.end method

.method protected removeListener(Ljavafx/beans/value/ChangeListener;)Lcom/sun/javafx/binding/MapExpressionHelper;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/value/ChangeListener",
            "<-",
            "Ljavafx/collections/ObservableMap",
            "<TK;TV;>;>;)",
            "Lcom/sun/javafx/binding/MapExpressionHelper",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 455
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/MapExpressionHelper$Generic;, "Lcom/sun/javafx/binding/MapExpressionHelper$Generic<TK;TV;>;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/value/ChangeListener;, "Ljavafx/beans/value/ChangeListener<-Ljavafx/collections/ObservableMap<TK;TV;>;>;"
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->changeListeners:[Ljavafx/beans/value/ChangeListener;

    if-eqz v5, :cond_2

    .line 456
    const/4 v5, 0x0

    move v2, v5

    .local v2, "index":I
    :goto_0
    move v5, v2

    move-object v6, v0

    iget v6, v6, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->changeSize:I

    if-ge v5, v6, :cond_2

    .line 457
    move-object v5, v1

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->changeListeners:[Ljavafx/beans/value/ChangeListener;

    move v7, v2

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 458
    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->changeSize:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_3

    .line 459
    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->invalidationSize:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->mapChangeSize:I

    if-nez v5, :cond_0

    .line 460
    new-instance v5, Lcom/sun/javafx/binding/MapExpressionHelper$SingleInvalidation;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->observable:Ljavafx/beans/value/ObservableMapValue;

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->invalidationListeners:[Ljavafx/beans/InvalidationListener;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    const/4 v9, 0x0

    invoke-direct {v6, v7, v8, v9}, Lcom/sun/javafx/binding/MapExpressionHelper$SingleInvalidation;-><init>(Ljavafx/beans/value/ObservableMapValue;Ljavafx/beans/InvalidationListener;Lcom/sun/javafx/binding/MapExpressionHelper$1;)V

    move-object v0, v5

    .line 485
    .end local v0    # "this":Lcom/sun/javafx/binding/MapExpressionHelper$Generic;, "Lcom/sun/javafx/binding/MapExpressionHelper$Generic<TK;TV;>;"
    .end local v2    # "index":I
    :goto_1
    return-object v0

    .line 461
    .restart local v0    # "this":Lcom/sun/javafx/binding/MapExpressionHelper$Generic;, "Lcom/sun/javafx/binding/MapExpressionHelper$Generic<TK;TV;>;"
    .restart local v2    # "index":I
    :cond_0
    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->invalidationSize:I

    if-nez v5, :cond_1

    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->mapChangeSize:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 462
    new-instance v5, Lcom/sun/javafx/binding/MapExpressionHelper$SingleMapChange;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->observable:Ljavafx/beans/value/ObservableMapValue;

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->mapChangeListeners:[Ljavafx/collections/MapChangeListener;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    const/4 v9, 0x0

    invoke-direct {v6, v7, v8, v9}, Lcom/sun/javafx/binding/MapExpressionHelper$SingleMapChange;-><init>(Ljavafx/beans/value/ObservableMapValue;Ljavafx/collections/MapChangeListener;Lcom/sun/javafx/binding/MapExpressionHelper$1;)V

    move-object v0, v5

    goto :goto_1

    .line 464
    :cond_1
    move-object v5, v0

    const/4 v6, 0x0

    iput-object v6, v5, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->changeListeners:[Ljavafx/beans/value/ChangeListener;

    .line 465
    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->changeSize:I

    .line 485
    .end local v2    # "index":I
    :cond_2
    :goto_2
    move-object v5, v0

    move-object v0, v5

    goto :goto_1

    .line 467
    .restart local v2    # "index":I
    :cond_3
    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->changeSize:I

    move v6, v2

    sub-int/2addr v5, v6

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    move v3, v5

    .line 468
    .local v3, "numMoved":I
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->changeListeners:[Ljavafx/beans/value/ChangeListener;

    move-object v4, v5

    .line 469
    .local v4, "oldListeners":[Ljavafx/beans/value/ChangeListener;, "[Ljavafx/beans/value/ChangeListener<-Ljavafx/collections/ObservableMap<TK;TV;>;>;"
    move-object v5, v0

    iget-boolean v5, v5, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->locked:Z

    if-eqz v5, :cond_4

    .line 470
    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->changeListeners:[Ljavafx/beans/value/ChangeListener;

    array-length v6, v6

    new-array v6, v6, [Ljavafx/beans/value/ChangeListener;

    iput-object v6, v5, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->changeListeners:[Ljavafx/beans/value/ChangeListener;

    .line 471
    move-object v5, v4

    const/4 v6, 0x0

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->changeListeners:[Ljavafx/beans/value/ChangeListener;

    const/4 v8, 0x0

    move v9, v2

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    invoke-static {v5, v6, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 473
    :cond_4
    move v5, v3

    if-lez v5, :cond_5

    .line 474
    move-object v5, v4

    move v6, v2

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->changeListeners:[Ljavafx/beans/value/ChangeListener;

    move v8, v2

    move v9, v3

    invoke-static {v5, v6, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 476
    :cond_5
    move-object v5, v0

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    iget v6, v6, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->changeSize:I

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    iput v6, v5, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->changeSize:I

    .line 477
    move-object v5, v0

    iget-boolean v5, v5, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->locked:Z

    if-nez v5, :cond_6

    .line 478
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->changeListeners:[Ljavafx/beans/value/ChangeListener;

    move-object v6, v0

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    iget v7, v7, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->changeSize:I

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    move-object v11, v6

    move v12, v7

    move v6, v12

    move-object v7, v11

    move v8, v12

    iput v8, v7, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->changeSize:I

    const/4 v7, 0x0

    aput-object v7, v5, v6

    .line 481
    :cond_6
    goto :goto_2

    .line 456
    .end local v3    # "numMoved":I
    .end local v4    # "oldListeners":[Ljavafx/beans/value/ChangeListener;, "[Ljavafx/beans/value/ChangeListener<-Ljavafx/collections/ObservableMap<TK;TV;>;>;"
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0
.end method

.method protected removeListener(Ljavafx/collections/MapChangeListener;)Lcom/sun/javafx/binding/MapExpressionHelper;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/MapChangeListener",
            "<-TK;-TV;>;)",
            "Lcom/sun/javafx/binding/MapExpressionHelper",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 515
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/MapExpressionHelper$Generic;, "Lcom/sun/javafx/binding/MapExpressionHelper$Generic<TK;TV;>;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/collections/MapChangeListener;, "Ljavafx/collections/MapChangeListener<-TK;-TV;>;"
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->mapChangeListeners:[Ljavafx/collections/MapChangeListener;

    if-eqz v5, :cond_2

    .line 516
    const/4 v5, 0x0

    move v2, v5

    .local v2, "index":I
    :goto_0
    move v5, v2

    move-object v6, v0

    iget v6, v6, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->mapChangeSize:I

    if-ge v5, v6, :cond_2

    .line 517
    move-object v5, v1

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->mapChangeListeners:[Ljavafx/collections/MapChangeListener;

    move v7, v2

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 518
    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->mapChangeSize:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_3

    .line 519
    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->invalidationSize:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->changeSize:I

    if-nez v5, :cond_0

    .line 520
    new-instance v5, Lcom/sun/javafx/binding/MapExpressionHelper$SingleInvalidation;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->observable:Ljavafx/beans/value/ObservableMapValue;

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->invalidationListeners:[Ljavafx/beans/InvalidationListener;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    const/4 v9, 0x0

    invoke-direct {v6, v7, v8, v9}, Lcom/sun/javafx/binding/MapExpressionHelper$SingleInvalidation;-><init>(Ljavafx/beans/value/ObservableMapValue;Ljavafx/beans/InvalidationListener;Lcom/sun/javafx/binding/MapExpressionHelper$1;)V

    move-object v0, v5

    .line 545
    .end local v0    # "this":Lcom/sun/javafx/binding/MapExpressionHelper$Generic;, "Lcom/sun/javafx/binding/MapExpressionHelper$Generic<TK;TV;>;"
    .end local v2    # "index":I
    :goto_1
    return-object v0

    .line 521
    .restart local v0    # "this":Lcom/sun/javafx/binding/MapExpressionHelper$Generic;, "Lcom/sun/javafx/binding/MapExpressionHelper$Generic<TK;TV;>;"
    .restart local v2    # "index":I
    :cond_0
    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->invalidationSize:I

    if-nez v5, :cond_1

    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->changeSize:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 522
    new-instance v5, Lcom/sun/javafx/binding/MapExpressionHelper$SingleChange;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->observable:Ljavafx/beans/value/ObservableMapValue;

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->changeListeners:[Ljavafx/beans/value/ChangeListener;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    const/4 v9, 0x0

    invoke-direct {v6, v7, v8, v9}, Lcom/sun/javafx/binding/MapExpressionHelper$SingleChange;-><init>(Ljavafx/beans/value/ObservableMapValue;Ljavafx/beans/value/ChangeListener;Lcom/sun/javafx/binding/MapExpressionHelper$1;)V

    move-object v0, v5

    goto :goto_1

    .line 524
    :cond_1
    move-object v5, v0

    const/4 v6, 0x0

    iput-object v6, v5, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->mapChangeListeners:[Ljavafx/collections/MapChangeListener;

    .line 525
    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->mapChangeSize:I

    .line 545
    .end local v2    # "index":I
    :cond_2
    :goto_2
    move-object v5, v0

    move-object v0, v5

    goto :goto_1

    .line 527
    .restart local v2    # "index":I
    :cond_3
    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->mapChangeSize:I

    move v6, v2

    sub-int/2addr v5, v6

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    move v3, v5

    .line 528
    .local v3, "numMoved":I
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->mapChangeListeners:[Ljavafx/collections/MapChangeListener;

    move-object v4, v5

    .line 529
    .local v4, "oldListeners":[Ljavafx/collections/MapChangeListener;, "[Ljavafx/collections/MapChangeListener<-TK;-TV;>;"
    move-object v5, v0

    iget-boolean v5, v5, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->locked:Z

    if-eqz v5, :cond_4

    .line 530
    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->mapChangeListeners:[Ljavafx/collections/MapChangeListener;

    array-length v6, v6

    new-array v6, v6, [Ljavafx/collections/MapChangeListener;

    iput-object v6, v5, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->mapChangeListeners:[Ljavafx/collections/MapChangeListener;

    .line 531
    move-object v5, v4

    const/4 v6, 0x0

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->mapChangeListeners:[Ljavafx/collections/MapChangeListener;

    const/4 v8, 0x0

    move v9, v2

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    invoke-static {v5, v6, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 533
    :cond_4
    move v5, v3

    if-lez v5, :cond_5

    .line 534
    move-object v5, v4

    move v6, v2

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->mapChangeListeners:[Ljavafx/collections/MapChangeListener;

    move v8, v2

    move v9, v3

    invoke-static {v5, v6, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 536
    :cond_5
    move-object v5, v0

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    iget v6, v6, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->mapChangeSize:I

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    iput v6, v5, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->mapChangeSize:I

    .line 537
    move-object v5, v0

    iget-boolean v5, v5, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->locked:Z

    if-nez v5, :cond_6

    .line 538
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->mapChangeListeners:[Ljavafx/collections/MapChangeListener;

    move-object v6, v0

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    iget v7, v7, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->mapChangeSize:I

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    move-object v11, v6

    move v12, v7

    move v6, v12

    move-object v7, v11

    move v8, v12

    iput v8, v7, Lcom/sun/javafx/binding/MapExpressionHelper$Generic;->mapChangeSize:I

    const/4 v7, 0x0

    aput-object v7, v5, v6

    .line 541
    :cond_6
    goto :goto_2

    .line 516
    .end local v3    # "numMoved":I
    .end local v4    # "oldListeners":[Ljavafx/collections/MapChangeListener;, "[Ljavafx/collections/MapChangeListener<-TK;-TV;>;"
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0
.end method
