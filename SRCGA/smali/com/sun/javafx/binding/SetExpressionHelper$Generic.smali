.class Lcom/sun/javafx/binding/SetExpressionHelper$Generic;
.super Lcom/sun/javafx/binding/SetExpressionHelper;
.source "SetExpressionHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/binding/SetExpressionHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Generic"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/sun/javafx/binding/SetExpressionHelper",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private changeListeners:[Ljavafx/beans/value/ChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljavafx/beans/value/ChangeListener",
            "<-",
            "Ljavafx/collections/ObservableSet",
            "<TE;>;>;"
        }
    .end annotation
.end field

.field private changeSize:I

.field private currentValue:Ljavafx/collections/ObservableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/ObservableSet",
            "<TE;>;"
        }
    .end annotation
.end field

.field private invalidationListeners:[Ljavafx/beans/InvalidationListener;

.field private invalidationSize:I

.field private locked:Z

.field private setChangeListeners:[Ljavafx/collections/SetChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljavafx/collections/SetChangeListener",
            "<-TE;>;"
        }
    .end annotation
.end field

.field private setChangeSize:I


# direct methods
.method private constructor <init>(Ljavafx/beans/value/ObservableSetValue;Ljavafx/beans/InvalidationListener;Ljavafx/beans/InvalidationListener;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/value/ObservableSetValue",
            "<TE;>;",
            "Ljavafx/beans/InvalidationListener;",
            "Ljavafx/beans/InvalidationListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 316
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/SetExpressionHelper$Generic;, "Lcom/sun/javafx/binding/SetExpressionHelper$Generic<TE;>;"
    move-object v1, p1

    .local v1, "observable":Ljavafx/beans/value/ObservableSetValue;, "Ljavafx/beans/value/ObservableSetValue<TE;>;"
    move-object v2, p2

    .local v2, "listener0":Ljavafx/beans/InvalidationListener;
    move-object v3, p3

    .local v3, "listener1":Ljavafx/beans/InvalidationListener;
    move-object v4, v0

    move-object v5, v1

    invoke-direct {v4, v5}, Lcom/sun/javafx/binding/SetExpressionHelper;-><init>(Ljavafx/beans/value/ObservableSetValue;)V

    .line 317
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

    iput-object v5, v4, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->invalidationListeners:[Ljavafx/beans/InvalidationListener;

    .line 318
    move-object v4, v0

    const/4 v5, 0x2

    iput v5, v4, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->invalidationSize:I

    .line 319
    return-void
.end method

.method synthetic constructor <init>(Ljavafx/beans/value/ObservableSetValue;Ljavafx/beans/InvalidationListener;Ljavafx/beans/InvalidationListener;Lcom/sun/javafx/binding/SetExpressionHelper$1;)V
    .locals 9

    .prologue
    .line 304
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/SetExpressionHelper$Generic;, "Lcom/sun/javafx/binding/SetExpressionHelper$Generic<TE;>;"
    move-object v1, p1

    .local v1, "x0":Ljavafx/beans/value/ObservableSetValue;
    move-object v2, p2

    .local v2, "x1":Ljavafx/beans/InvalidationListener;
    move-object v3, p3

    .local v3, "x2":Ljavafx/beans/InvalidationListener;
    move-object v4, p4

    .local v4, "x3":Lcom/sun/javafx/binding/SetExpressionHelper$1;
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    invoke-direct {v5, v6, v7, v8}, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;-><init>(Ljavafx/beans/value/ObservableSetValue;Ljavafx/beans/InvalidationListener;Ljavafx/beans/InvalidationListener;)V

    return-void
.end method

.method private constructor <init>(Ljavafx/beans/value/ObservableSetValue;Ljavafx/beans/InvalidationListener;Ljavafx/beans/value/ChangeListener;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/value/ObservableSetValue",
            "<TE;>;",
            "Ljavafx/beans/InvalidationListener;",
            "Ljavafx/beans/value/ChangeListener",
            "<-",
            "Ljavafx/collections/ObservableSet",
            "<TE;>;>;)V"
        }
    .end annotation

    .prologue
    .line 336
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/SetExpressionHelper$Generic;, "Lcom/sun/javafx/binding/SetExpressionHelper$Generic<TE;>;"
    move-object v1, p1

    .local v1, "observable":Ljavafx/beans/value/ObservableSetValue;, "Ljavafx/beans/value/ObservableSetValue<TE;>;"
    move-object v2, p2

    .local v2, "invalidationListener":Ljavafx/beans/InvalidationListener;
    move-object v3, p3

    .local v3, "changeListener":Ljavafx/beans/value/ChangeListener;, "Ljavafx/beans/value/ChangeListener<-Ljavafx/collections/ObservableSet<TE;>;>;"
    move-object v4, v0

    move-object v5, v1

    invoke-direct {v4, v5}, Lcom/sun/javafx/binding/SetExpressionHelper;-><init>(Ljavafx/beans/value/ObservableSetValue;)V

    .line 337
    move-object v4, v0

    const/4 v5, 0x1

    new-array v5, v5, [Ljavafx/beans/InvalidationListener;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move-object v8, v2

    aput-object v8, v6, v7

    iput-object v5, v4, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->invalidationListeners:[Ljavafx/beans/InvalidationListener;

    .line 338
    move-object v4, v0

    const/4 v5, 0x1

    iput v5, v4, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->invalidationSize:I

    .line 339
    move-object v4, v0

    const/4 v5, 0x1

    new-array v5, v5, [Ljavafx/beans/value/ChangeListener;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move-object v8, v3

    aput-object v8, v6, v7

    iput-object v5, v4, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->changeListeners:[Ljavafx/beans/value/ChangeListener;

    .line 340
    move-object v4, v0

    const/4 v5, 0x1

    iput v5, v4, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->changeSize:I

    .line 341
    move-object v4, v0

    move-object v5, v1

    invoke-interface {v5}, Ljavafx/beans/value/ObservableSetValue;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavafx/collections/ObservableSet;

    iput-object v5, v4, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->currentValue:Ljavafx/collections/ObservableSet;

    .line 342
    return-void
.end method

.method synthetic constructor <init>(Ljavafx/beans/value/ObservableSetValue;Ljavafx/beans/InvalidationListener;Ljavafx/beans/value/ChangeListener;Lcom/sun/javafx/binding/SetExpressionHelper$1;)V
    .locals 9

    .prologue
    .line 304
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/SetExpressionHelper$Generic;, "Lcom/sun/javafx/binding/SetExpressionHelper$Generic<TE;>;"
    move-object v1, p1

    .local v1, "x0":Ljavafx/beans/value/ObservableSetValue;
    move-object v2, p2

    .local v2, "x1":Ljavafx/beans/InvalidationListener;
    move-object v3, p3

    .local v3, "x2":Ljavafx/beans/value/ChangeListener;
    move-object v4, p4

    .local v4, "x3":Lcom/sun/javafx/binding/SetExpressionHelper$1;
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    invoke-direct {v5, v6, v7, v8}, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;-><init>(Ljavafx/beans/value/ObservableSetValue;Ljavafx/beans/InvalidationListener;Ljavafx/beans/value/ChangeListener;)V

    return-void
.end method

.method private constructor <init>(Ljavafx/beans/value/ObservableSetValue;Ljavafx/beans/InvalidationListener;Ljavafx/collections/SetChangeListener;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/value/ObservableSetValue",
            "<TE;>;",
            "Ljavafx/beans/InvalidationListener;",
            "Ljavafx/collections/SetChangeListener",
            "<-TE;>;)V"
        }
    .end annotation

    .prologue
    .line 345
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/SetExpressionHelper$Generic;, "Lcom/sun/javafx/binding/SetExpressionHelper$Generic<TE;>;"
    move-object v1, p1

    .local v1, "observable":Ljavafx/beans/value/ObservableSetValue;, "Ljavafx/beans/value/ObservableSetValue<TE;>;"
    move-object v2, p2

    .local v2, "invalidationListener":Ljavafx/beans/InvalidationListener;
    move-object v3, p3

    .local v3, "listChangeListener":Ljavafx/collections/SetChangeListener;, "Ljavafx/collections/SetChangeListener<-TE;>;"
    move-object v4, v0

    move-object v5, v1

    invoke-direct {v4, v5}, Lcom/sun/javafx/binding/SetExpressionHelper;-><init>(Ljavafx/beans/value/ObservableSetValue;)V

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

    iput-object v5, v4, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->invalidationListeners:[Ljavafx/beans/InvalidationListener;

    .line 347
    move-object v4, v0

    const/4 v5, 0x1

    iput v5, v4, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->invalidationSize:I

    .line 348
    move-object v4, v0

    const/4 v5, 0x1

    new-array v5, v5, [Ljavafx/collections/SetChangeListener;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move-object v8, v3

    aput-object v8, v6, v7

    iput-object v5, v4, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->setChangeListeners:[Ljavafx/collections/SetChangeListener;

    .line 349
    move-object v4, v0

    const/4 v5, 0x1

    iput v5, v4, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->setChangeSize:I

    .line 350
    move-object v4, v0

    move-object v5, v1

    invoke-interface {v5}, Ljavafx/beans/value/ObservableSetValue;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavafx/collections/ObservableSet;

    iput-object v5, v4, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->currentValue:Ljavafx/collections/ObservableSet;

    .line 351
    return-void
.end method

.method synthetic constructor <init>(Ljavafx/beans/value/ObservableSetValue;Ljavafx/beans/InvalidationListener;Ljavafx/collections/SetChangeListener;Lcom/sun/javafx/binding/SetExpressionHelper$1;)V
    .locals 9

    .prologue
    .line 304
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/SetExpressionHelper$Generic;, "Lcom/sun/javafx/binding/SetExpressionHelper$Generic<TE;>;"
    move-object v1, p1

    .local v1, "x0":Ljavafx/beans/value/ObservableSetValue;
    move-object v2, p2

    .local v2, "x1":Ljavafx/beans/InvalidationListener;
    move-object v3, p3

    .local v3, "x2":Ljavafx/collections/SetChangeListener;
    move-object v4, p4

    .local v4, "x3":Lcom/sun/javafx/binding/SetExpressionHelper$1;
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    invoke-direct {v5, v6, v7, v8}, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;-><init>(Ljavafx/beans/value/ObservableSetValue;Ljavafx/beans/InvalidationListener;Ljavafx/collections/SetChangeListener;)V

    return-void
.end method

.method private constructor <init>(Ljavafx/beans/value/ObservableSetValue;Ljavafx/beans/value/ChangeListener;Ljavafx/beans/value/ChangeListener;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/value/ObservableSetValue",
            "<TE;>;",
            "Ljavafx/beans/value/ChangeListener",
            "<-",
            "Ljavafx/collections/ObservableSet",
            "<TE;>;>;",
            "Ljavafx/beans/value/ChangeListener",
            "<-",
            "Ljavafx/collections/ObservableSet",
            "<TE;>;>;)V"
        }
    .end annotation

    .prologue
    .line 322
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/SetExpressionHelper$Generic;, "Lcom/sun/javafx/binding/SetExpressionHelper$Generic<TE;>;"
    move-object v1, p1

    .local v1, "observable":Ljavafx/beans/value/ObservableSetValue;, "Ljavafx/beans/value/ObservableSetValue<TE;>;"
    move-object v2, p2

    .local v2, "listener0":Ljavafx/beans/value/ChangeListener;, "Ljavafx/beans/value/ChangeListener<-Ljavafx/collections/ObservableSet<TE;>;>;"
    move-object v3, p3

    .local v3, "listener1":Ljavafx/beans/value/ChangeListener;, "Ljavafx/beans/value/ChangeListener<-Ljavafx/collections/ObservableSet<TE;>;>;"
    move-object v4, v0

    move-object v5, v1

    invoke-direct {v4, v5}, Lcom/sun/javafx/binding/SetExpressionHelper;-><init>(Ljavafx/beans/value/ObservableSetValue;)V

    .line 323
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

    iput-object v5, v4, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->changeListeners:[Ljavafx/beans/value/ChangeListener;

    .line 324
    move-object v4, v0

    const/4 v5, 0x2

    iput v5, v4, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->changeSize:I

    .line 325
    move-object v4, v0

    move-object v5, v1

    invoke-interface {v5}, Ljavafx/beans/value/ObservableSetValue;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavafx/collections/ObservableSet;

    iput-object v5, v4, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->currentValue:Ljavafx/collections/ObservableSet;

    .line 326
    return-void
.end method

.method synthetic constructor <init>(Ljavafx/beans/value/ObservableSetValue;Ljavafx/beans/value/ChangeListener;Ljavafx/beans/value/ChangeListener;Lcom/sun/javafx/binding/SetExpressionHelper$1;)V
    .locals 9

    .prologue
    .line 304
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/SetExpressionHelper$Generic;, "Lcom/sun/javafx/binding/SetExpressionHelper$Generic<TE;>;"
    move-object v1, p1

    .local v1, "x0":Ljavafx/beans/value/ObservableSetValue;
    move-object v2, p2

    .local v2, "x1":Ljavafx/beans/value/ChangeListener;
    move-object v3, p3

    .local v3, "x2":Ljavafx/beans/value/ChangeListener;
    move-object v4, p4

    .local v4, "x3":Lcom/sun/javafx/binding/SetExpressionHelper$1;
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    invoke-direct {v5, v6, v7, v8}, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;-><init>(Ljavafx/beans/value/ObservableSetValue;Ljavafx/beans/value/ChangeListener;Ljavafx/beans/value/ChangeListener;)V

    return-void
.end method

.method private constructor <init>(Ljavafx/beans/value/ObservableSetValue;Ljavafx/beans/value/ChangeListener;Ljavafx/collections/SetChangeListener;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/value/ObservableSetValue",
            "<TE;>;",
            "Ljavafx/beans/value/ChangeListener",
            "<-",
            "Ljavafx/collections/ObservableSet",
            "<TE;>;>;",
            "Ljavafx/collections/SetChangeListener",
            "<-TE;>;)V"
        }
    .end annotation

    .prologue
    .line 354
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/SetExpressionHelper$Generic;, "Lcom/sun/javafx/binding/SetExpressionHelper$Generic<TE;>;"
    move-object v1, p1

    .local v1, "observable":Ljavafx/beans/value/ObservableSetValue;, "Ljavafx/beans/value/ObservableSetValue<TE;>;"
    move-object v2, p2

    .local v2, "changeListener":Ljavafx/beans/value/ChangeListener;, "Ljavafx/beans/value/ChangeListener<-Ljavafx/collections/ObservableSet<TE;>;>;"
    move-object v3, p3

    .local v3, "listChangeListener":Ljavafx/collections/SetChangeListener;, "Ljavafx/collections/SetChangeListener<-TE;>;"
    move-object v4, v0

    move-object v5, v1

    invoke-direct {v4, v5}, Lcom/sun/javafx/binding/SetExpressionHelper;-><init>(Ljavafx/beans/value/ObservableSetValue;)V

    .line 355
    move-object v4, v0

    const/4 v5, 0x1

    new-array v5, v5, [Ljavafx/beans/value/ChangeListener;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move-object v8, v2

    aput-object v8, v6, v7

    iput-object v5, v4, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->changeListeners:[Ljavafx/beans/value/ChangeListener;

    .line 356
    move-object v4, v0

    const/4 v5, 0x1

    iput v5, v4, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->changeSize:I

    .line 357
    move-object v4, v0

    const/4 v5, 0x1

    new-array v5, v5, [Ljavafx/collections/SetChangeListener;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move-object v8, v3

    aput-object v8, v6, v7

    iput-object v5, v4, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->setChangeListeners:[Ljavafx/collections/SetChangeListener;

    .line 358
    move-object v4, v0

    const/4 v5, 0x1

    iput v5, v4, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->setChangeSize:I

    .line 359
    move-object v4, v0

    move-object v5, v1

    invoke-interface {v5}, Ljavafx/beans/value/ObservableSetValue;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavafx/collections/ObservableSet;

    iput-object v5, v4, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->currentValue:Ljavafx/collections/ObservableSet;

    .line 360
    return-void
.end method

.method synthetic constructor <init>(Ljavafx/beans/value/ObservableSetValue;Ljavafx/beans/value/ChangeListener;Ljavafx/collections/SetChangeListener;Lcom/sun/javafx/binding/SetExpressionHelper$1;)V
    .locals 9

    .prologue
    .line 304
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/SetExpressionHelper$Generic;, "Lcom/sun/javafx/binding/SetExpressionHelper$Generic<TE;>;"
    move-object v1, p1

    .local v1, "x0":Ljavafx/beans/value/ObservableSetValue;
    move-object v2, p2

    .local v2, "x1":Ljavafx/beans/value/ChangeListener;
    move-object v3, p3

    .local v3, "x2":Ljavafx/collections/SetChangeListener;
    move-object v4, p4

    .local v4, "x3":Lcom/sun/javafx/binding/SetExpressionHelper$1;
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    invoke-direct {v5, v6, v7, v8}, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;-><init>(Ljavafx/beans/value/ObservableSetValue;Ljavafx/beans/value/ChangeListener;Ljavafx/collections/SetChangeListener;)V

    return-void
.end method

.method private constructor <init>(Ljavafx/beans/value/ObservableSetValue;Ljavafx/collections/SetChangeListener;Ljavafx/collections/SetChangeListener;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/value/ObservableSetValue",
            "<TE;>;",
            "Ljavafx/collections/SetChangeListener",
            "<-TE;>;",
            "Ljavafx/collections/SetChangeListener",
            "<-TE;>;)V"
        }
    .end annotation

    .prologue
    .line 329
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/SetExpressionHelper$Generic;, "Lcom/sun/javafx/binding/SetExpressionHelper$Generic<TE;>;"
    move-object v1, p1

    .local v1, "observable":Ljavafx/beans/value/ObservableSetValue;, "Ljavafx/beans/value/ObservableSetValue<TE;>;"
    move-object v2, p2

    .local v2, "listener0":Ljavafx/collections/SetChangeListener;, "Ljavafx/collections/SetChangeListener<-TE;>;"
    move-object v3, p3

    .local v3, "listener1":Ljavafx/collections/SetChangeListener;, "Ljavafx/collections/SetChangeListener<-TE;>;"
    move-object v4, v0

    move-object v5, v1

    invoke-direct {v4, v5}, Lcom/sun/javafx/binding/SetExpressionHelper;-><init>(Ljavafx/beans/value/ObservableSetValue;)V

    .line 330
    move-object v4, v0

    const/4 v5, 0x2

    new-array v5, v5, [Ljavafx/collections/SetChangeListener;

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

    iput-object v5, v4, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->setChangeListeners:[Ljavafx/collections/SetChangeListener;

    .line 331
    move-object v4, v0

    const/4 v5, 0x2

    iput v5, v4, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->setChangeSize:I

    .line 332
    move-object v4, v0

    move-object v5, v1

    invoke-interface {v5}, Ljavafx/beans/value/ObservableSetValue;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavafx/collections/ObservableSet;

    iput-object v5, v4, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->currentValue:Ljavafx/collections/ObservableSet;

    .line 333
    return-void
.end method

.method synthetic constructor <init>(Ljavafx/beans/value/ObservableSetValue;Ljavafx/collections/SetChangeListener;Ljavafx/collections/SetChangeListener;Lcom/sun/javafx/binding/SetExpressionHelper$1;)V
    .locals 9

    .prologue
    .line 304
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/SetExpressionHelper$Generic;, "Lcom/sun/javafx/binding/SetExpressionHelper$Generic<TE;>;"
    move-object v1, p1

    .local v1, "x0":Ljavafx/beans/value/ObservableSetValue;
    move-object v2, p2

    .local v2, "x1":Ljavafx/collections/SetChangeListener;
    move-object v3, p3

    .local v3, "x2":Ljavafx/collections/SetChangeListener;
    move-object v4, p4

    .local v4, "x3":Lcom/sun/javafx/binding/SetExpressionHelper$1;
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    invoke-direct {v5, v6, v7, v8}, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;-><init>(Ljavafx/beans/value/ObservableSetValue;Ljavafx/collections/SetChangeListener;Ljavafx/collections/SetChangeListener;)V

    return-void
.end method

.method private notifyListeners(Ljavafx/collections/ObservableSet;Lcom/sun/javafx/binding/SetExpressionHelper$SimpleChange;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ObservableSet",
            "<TE;>;",
            "Lcom/sun/javafx/binding/SetExpressionHelper$SimpleChange",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 557
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/binding/SetExpressionHelper$Generic;, "Lcom/sun/javafx/binding/SetExpressionHelper$Generic<TE;>;"
    move-object/from16 v2, p1

    .local v2, "oldValue":Ljavafx/collections/ObservableSet;, "Ljavafx/collections/ObservableSet<TE;>;"
    move-object/from16 v3, p2

    .local v3, "change":Lcom/sun/javafx/binding/SetExpressionHelper$SimpleChange;, "Lcom/sun/javafx/binding/SetExpressionHelper$SimpleChange<TE;>;"
    move-object v14, v1

    iget-object v14, v14, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->invalidationListeners:[Ljavafx/beans/InvalidationListener;

    move-object v4, v14

    .line 558
    .local v4, "curInvalidationList":[Ljavafx/beans/InvalidationListener;
    move-object v14, v1

    iget v14, v14, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->invalidationSize:I

    move v5, v14

    .line 559
    .local v5, "curInvalidationSize":I
    move-object v14, v1

    iget-object v14, v14, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->changeListeners:[Ljavafx/beans/value/ChangeListener;

    move-object v6, v14

    .line 560
    .local v6, "curChangeList":[Ljavafx/beans/value/ChangeListener;, "[Ljavafx/beans/value/ChangeListener<-Ljavafx/collections/ObservableSet<TE;>;>;"
    move-object v14, v1

    iget v14, v14, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->changeSize:I

    move v7, v14

    .line 561
    .local v7, "curChangeSize":I
    move-object v14, v1

    iget-object v14, v14, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->setChangeListeners:[Ljavafx/collections/SetChangeListener;

    move-object v8, v14

    .line 562
    .local v8, "curListChangeList":[Ljavafx/collections/SetChangeListener;, "[Ljavafx/collections/SetChangeListener<-TE;>;"
    move-object v14, v1

    iget v14, v14, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->setChangeSize:I

    move v9, v14

    .line 564
    .local v9, "curListChangeSize":I
    move-object v14, v1

    const/4 v15, 0x1

    :try_start_0
    iput-boolean v15, v14, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->locked:Z

    .line 565
    const/4 v14, 0x0

    move v10, v14

    .local v10, "i":I
    :goto_0
    move v14, v10

    move v15, v5

    if-ge v14, v15, :cond_0

    .line 566
    move-object v14, v4

    move v15, v10

    aget-object v14, v14, v15

    move-object v15, v1

    iget-object v15, v15, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->observable:Ljavafx/beans/value/ObservableSetValue;

    invoke-interface {v14, v15}, Ljavafx/beans/InvalidationListener;->invalidated(Ljavafx/beans/Observable;)V

    .line 565
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 568
    :cond_0
    move-object v14, v1

    iget-object v14, v14, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->currentValue:Ljavafx/collections/ObservableSet;

    move-object v15, v2

    if-ne v14, v15, :cond_1

    move-object v14, v3

    if-eqz v14, :cond_3

    .line 569
    :cond_1
    const/4 v14, 0x0

    move v10, v14

    :goto_1
    move v14, v10

    move v15, v7

    if-ge v14, v15, :cond_2

    .line 570
    move-object v14, v6

    move v15, v10

    aget-object v14, v14, v15

    move-object v15, v1

    iget-object v15, v15, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->observable:Ljavafx/beans/value/ObservableSetValue;

    move-object/from16 v16, v2

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->currentValue:Ljavafx/collections/ObservableSet;

    move-object/from16 v17, v0

    invoke-interface/range {v14 .. v17}, Ljavafx/beans/value/ChangeListener;->changed(Ljavafx/beans/value/ObservableValue;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 569
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 572
    :cond_2
    move v14, v9

    if-lez v14, :cond_3

    .line 573
    move-object v14, v3

    if-eqz v14, :cond_4

    .line 574
    const/4 v14, 0x0

    move v10, v14

    :goto_2
    move v14, v10

    move v15, v9

    if-ge v14, v15, :cond_3

    .line 575
    move-object v14, v8

    move v15, v10

    aget-object v14, v14, v15

    move-object v15, v3

    invoke-interface {v14, v15}, Ljavafx/collections/SetChangeListener;->onChanged(Ljavafx/collections/SetChangeListener$Change;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 574
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 616
    .end local v10    # "i":I
    :cond_3
    :goto_3
    move-object v14, v1

    const/4 v15, 0x0

    iput-boolean v15, v14, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->locked:Z

    .line 617
    .line 618
    return-void

    .line 578
    .restart local v10    # "i":I
    :cond_4
    :try_start_1
    new-instance v14, Lcom/sun/javafx/binding/SetExpressionHelper$SimpleChange;

    move-object/from16 v18, v14

    move-object/from16 v14, v18

    move-object/from16 v15, v18

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->observable:Ljavafx/beans/value/ObservableSetValue;

    move-object/from16 v16, v0

    invoke-direct/range {v15 .. v16}, Lcom/sun/javafx/binding/SetExpressionHelper$SimpleChange;-><init>(Ljavafx/collections/ObservableSet;)V

    move-object v3, v14

    .line 579
    move-object v14, v1

    iget-object v14, v14, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->currentValue:Ljavafx/collections/ObservableSet;

    if-nez v14, :cond_7

    .line 580
    move-object v14, v2

    invoke-interface {v14}, Ljavafx/collections/ObservableSet;->iterator()Ljava/util/Iterator;

    move-result-object v14

    move-object v10, v14

    .end local v10    # "i":I
    :goto_4
    move-object v14, v10

    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_6

    move-object v14, v10

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    move-object v11, v14

    .line 581
    .local v11, "element":Ljava/lang/Object;, "TE;"
    move-object v14, v3

    move-object v15, v11

    invoke-virtual {v14, v15}, Lcom/sun/javafx/binding/SetExpressionHelper$SimpleChange;->setRemoved(Ljava/lang/Object;)Lcom/sun/javafx/binding/SetExpressionHelper$SimpleChange;

    move-result-object v14

    .line 582
    const/4 v14, 0x0

    move v12, v14

    .local v12, "i":I
    :goto_5
    move v14, v12

    move v15, v9

    if-ge v14, v15, :cond_5

    .line 583
    move-object v14, v8

    move v15, v12

    aget-object v14, v14, v15

    move-object v15, v3

    invoke-interface {v14, v15}, Ljavafx/collections/SetChangeListener;->onChanged(Ljavafx/collections/SetChangeListener$Change;)V

    .line 582
    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    .line 585
    :cond_5
    goto :goto_4

    .end local v11    # "element":Ljava/lang/Object;, "TE;"
    .end local v12    # "i":I
    :cond_6
    goto :goto_3

    .line 586
    .restart local v10    # "i":I
    :cond_7
    move-object v14, v2

    if-nez v14, :cond_a

    .line 587
    move-object v14, v1

    iget-object v14, v14, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->currentValue:Ljavafx/collections/ObservableSet;

    invoke-interface {v14}, Ljavafx/collections/ObservableSet;->iterator()Ljava/util/Iterator;

    move-result-object v14

    move-object v10, v14

    .end local v10    # "i":I
    :goto_6
    move-object v14, v10

    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_9

    move-object v14, v10

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    move-object v11, v14

    .line 588
    .restart local v11    # "element":Ljava/lang/Object;, "TE;"
    move-object v14, v3

    move-object v15, v11

    invoke-virtual {v14, v15}, Lcom/sun/javafx/binding/SetExpressionHelper$SimpleChange;->setAdded(Ljava/lang/Object;)Lcom/sun/javafx/binding/SetExpressionHelper$SimpleChange;

    move-result-object v14

    .line 589
    const/4 v14, 0x0

    move v12, v14

    .restart local v12    # "i":I
    :goto_7
    move v14, v12

    move v15, v9

    if-ge v14, v15, :cond_8

    .line 590
    move-object v14, v8

    move v15, v12

    aget-object v14, v14, v15

    move-object v15, v3

    invoke-interface {v14, v15}, Ljavafx/collections/SetChangeListener;->onChanged(Ljavafx/collections/SetChangeListener$Change;)V

    .line 589
    add-int/lit8 v12, v12, 0x1

    goto :goto_7

    .line 592
    :cond_8
    goto :goto_6

    .end local v11    # "element":Ljava/lang/Object;, "TE;"
    .end local v12    # "i":I
    :cond_9
    goto :goto_3

    .line 594
    .restart local v10    # "i":I
    :cond_a
    move-object v14, v2

    invoke-interface {v14}, Ljavafx/collections/ObservableSet;->iterator()Ljava/util/Iterator;

    move-result-object v14

    move-object v10, v14

    .end local v10    # "i":I
    :goto_8
    move-object v14, v10

    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_c

    move-object v14, v10

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    move-object v11, v14

    .line 595
    .restart local v11    # "element":Ljava/lang/Object;, "TE;"
    move-object v14, v1

    iget-object v14, v14, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->currentValue:Ljavafx/collections/ObservableSet;

    move-object v15, v11

    invoke-interface {v14, v15}, Ljavafx/collections/ObservableSet;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_b

    .line 596
    move-object v14, v3

    move-object v15, v11

    invoke-virtual {v14, v15}, Lcom/sun/javafx/binding/SetExpressionHelper$SimpleChange;->setRemoved(Ljava/lang/Object;)Lcom/sun/javafx/binding/SetExpressionHelper$SimpleChange;

    move-result-object v14

    .line 597
    const/4 v14, 0x0

    move v12, v14

    .restart local v12    # "i":I
    :goto_9
    move v14, v12

    move v15, v9

    if-ge v14, v15, :cond_b

    .line 598
    move-object v14, v8

    move v15, v12

    aget-object v14, v14, v15

    move-object v15, v3

    invoke-interface {v14, v15}, Ljavafx/collections/SetChangeListener;->onChanged(Ljavafx/collections/SetChangeListener$Change;)V

    .line 597
    add-int/lit8 v12, v12, 0x1

    goto :goto_9

    .line 601
    .end local v12    # "i":I
    :cond_b
    goto :goto_8

    .line 602
    .end local v11    # "element":Ljava/lang/Object;, "TE;"
    :cond_c
    move-object v14, v1

    iget-object v14, v14, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->currentValue:Ljavafx/collections/ObservableSet;

    invoke-interface {v14}, Ljavafx/collections/ObservableSet;->iterator()Ljava/util/Iterator;

    move-result-object v14

    move-object v10, v14

    :goto_a
    move-object v14, v10

    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_3

    move-object v14, v10

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    move-object v11, v14

    .line 603
    .restart local v11    # "element":Ljava/lang/Object;, "TE;"
    move-object v14, v2

    move-object v15, v11

    invoke-interface {v14, v15}, Ljavafx/collections/ObservableSet;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_d

    .line 604
    move-object v14, v3

    move-object v15, v11

    invoke-virtual {v14, v15}, Lcom/sun/javafx/binding/SetExpressionHelper$SimpleChange;->setAdded(Ljava/lang/Object;)Lcom/sun/javafx/binding/SetExpressionHelper$SimpleChange;

    move-result-object v14

    .line 605
    const/4 v14, 0x0

    move v12, v14

    .restart local v12    # "i":I
    :goto_b
    move v14, v12

    move v15, v9

    if-ge v14, v15, :cond_d

    .line 606
    move-object v14, v8

    move v15, v12

    aget-object v14, v14, v15

    move-object v15, v3

    invoke-interface {v14, v15}, Ljavafx/collections/SetChangeListener;->onChanged(Ljavafx/collections/SetChangeListener$Change;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 605
    add-int/lit8 v12, v12, 0x1

    goto :goto_b

    .line 609
    .end local v12    # "i":I
    :cond_d
    goto :goto_a

    .line 616
    .end local v11    # "element":Ljava/lang/Object;, "TE;"
    :catchall_0
    move-exception v14

    move-object v13, v14

    move-object v14, v1

    const/4 v15, 0x0

    iput-boolean v15, v14, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->locked:Z

    move-object v14, v13

    throw v14
.end method


# virtual methods
.method protected addListener(Ljavafx/beans/InvalidationListener;)Lcom/sun/javafx/binding/SetExpressionHelper;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/InvalidationListener;",
            ")",
            "Lcom/sun/javafx/binding/SetExpressionHelper",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 364
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/SetExpressionHelper$Generic;, "Lcom/sun/javafx/binding/SetExpressionHelper$Generic<TE;>;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/InvalidationListener;
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->invalidationListeners:[Ljavafx/beans/InvalidationListener;

    if-nez v4, :cond_0

    .line 365
    move-object v4, v0

    const/4 v5, 0x1

    new-array v5, v5, [Ljavafx/beans/InvalidationListener;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move-object v8, v1

    aput-object v8, v6, v7

    iput-object v5, v4, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->invalidationListeners:[Ljavafx/beans/InvalidationListener;

    .line 366
    move-object v4, v0

    const/4 v5, 0x1

    iput v5, v4, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->invalidationSize:I

    .line 381
    :goto_0
    move-object v4, v0

    move-object v0, v4

    .end local v0    # "this":Lcom/sun/javafx/binding/SetExpressionHelper$Generic;, "Lcom/sun/javafx/binding/SetExpressionHelper$Generic<TE;>;"
    return-object v0

    .line 368
    .restart local v0    # "this":Lcom/sun/javafx/binding/SetExpressionHelper$Generic;, "Lcom/sun/javafx/binding/SetExpressionHelper$Generic<TE;>;"
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->invalidationListeners:[Ljavafx/beans/InvalidationListener;

    array-length v4, v4

    move v2, v4

    .line 369
    .local v2, "oldCapacity":I
    move-object v4, v0

    iget-boolean v4, v4, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->locked:Z

    if-eqz v4, :cond_3

    .line 370
    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->invalidationSize:I

    move v5, v2

    if-ge v4, v5, :cond_2

    move v4, v2

    :goto_1
    move v3, v4

    .line 371
    .local v3, "newCapacity":I
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->invalidationListeners:[Ljavafx/beans/InvalidationListener;

    move v6, v3

    invoke-static {v5, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljavafx/beans/InvalidationListener;

    iput-object v5, v4, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->invalidationListeners:[Ljavafx/beans/InvalidationListener;

    .line 372
    .line 379
    .end local v3    # "newCapacity":I
    :cond_1
    :goto_2
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->invalidationListeners:[Ljavafx/beans/InvalidationListener;

    move-object v5, v0

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    iget v6, v6, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->invalidationSize:I

    move-object v9, v5

    move v10, v6

    move v5, v10

    move-object v6, v9

    move v7, v10

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->invalidationSize:I

    move-object v6, v1

    aput-object v6, v4, v5

    goto :goto_0

    .line 370
    :cond_2
    move v4, v2

    const/4 v5, 0x3

    mul-int/lit8 v4, v4, 0x3

    const/4 v5, 0x2

    div-int/lit8 v4, v4, 0x2

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 372
    :cond_3
    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->invalidationSize:I

    move v5, v2

    if-ne v4, v5, :cond_1

    .line 373
    move-object v4, v0

    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->invalidationSize:I

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->invalidationListeners:[Ljavafx/beans/InvalidationListener;

    invoke-static {v5, v6}, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->trim(I[Ljava/lang/Object;)I

    move-result v5

    iput v5, v4, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->invalidationSize:I

    .line 374
    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->invalidationSize:I

    move v5, v2

    if-ne v4, v5, :cond_1

    .line 375
    move v4, v2

    const/4 v5, 0x3

    mul-int/lit8 v4, v4, 0x3

    const/4 v5, 0x2

    div-int/lit8 v4, v4, 0x2

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    move v3, v4

    .line 376
    .restart local v3    # "newCapacity":I
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->invalidationListeners:[Ljavafx/beans/InvalidationListener;

    move v6, v3

    invoke-static {v5, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljavafx/beans/InvalidationListener;

    iput-object v5, v4, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->invalidationListeners:[Ljavafx/beans/InvalidationListener;

    goto :goto_2
.end method

.method protected addListener(Ljavafx/beans/value/ChangeListener;)Lcom/sun/javafx/binding/SetExpressionHelper;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/value/ChangeListener",
            "<-",
            "Ljavafx/collections/ObservableSet",
            "<TE;>;>;)",
            "Lcom/sun/javafx/binding/SetExpressionHelper",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 421
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/SetExpressionHelper$Generic;, "Lcom/sun/javafx/binding/SetExpressionHelper$Generic<TE;>;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/value/ChangeListener;, "Ljavafx/beans/value/ChangeListener<-Ljavafx/collections/ObservableSet<TE;>;>;"
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->changeListeners:[Ljavafx/beans/value/ChangeListener;

    if-nez v4, :cond_1

    .line 422
    move-object v4, v0

    const/4 v5, 0x1

    new-array v5, v5, [Ljavafx/beans/value/ChangeListener;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move-object v8, v1

    aput-object v8, v6, v7

    iput-object v5, v4, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->changeListeners:[Ljavafx/beans/value/ChangeListener;

    .line 423
    move-object v4, v0

    const/4 v5, 0x1

    iput v5, v4, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->changeSize:I

    .line 438
    :goto_0
    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->changeSize:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 439
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->observable:Ljavafx/beans/value/ObservableSetValue;

    invoke-interface {v5}, Ljavafx/beans/value/ObservableSetValue;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavafx/collections/ObservableSet;

    iput-object v5, v4, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->currentValue:Ljavafx/collections/ObservableSet;

    .line 441
    :cond_0
    move-object v4, v0

    move-object v0, v4

    .end local v0    # "this":Lcom/sun/javafx/binding/SetExpressionHelper$Generic;, "Lcom/sun/javafx/binding/SetExpressionHelper$Generic<TE;>;"
    return-object v0

    .line 425
    .restart local v0    # "this":Lcom/sun/javafx/binding/SetExpressionHelper$Generic;, "Lcom/sun/javafx/binding/SetExpressionHelper$Generic<TE;>;"
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->changeListeners:[Ljavafx/beans/value/ChangeListener;

    array-length v4, v4

    move v2, v4

    .line 426
    .local v2, "oldCapacity":I
    move-object v4, v0

    iget-boolean v4, v4, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->locked:Z

    if-eqz v4, :cond_4

    .line 427
    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->changeSize:I

    move v5, v2

    if-ge v4, v5, :cond_3

    move v4, v2

    :goto_1
    move v3, v4

    .line 428
    .local v3, "newCapacity":I
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->changeListeners:[Ljavafx/beans/value/ChangeListener;

    move v6, v3

    invoke-static {v5, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljavafx/beans/value/ChangeListener;

    iput-object v5, v4, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->changeListeners:[Ljavafx/beans/value/ChangeListener;

    .line 429
    .line 436
    .end local v3    # "newCapacity":I
    :cond_2
    :goto_2
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->changeListeners:[Ljavafx/beans/value/ChangeListener;

    move-object v5, v0

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    iget v6, v6, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->changeSize:I

    move-object v9, v5

    move v10, v6

    move v5, v10

    move-object v6, v9

    move v7, v10

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->changeSize:I

    move-object v6, v1

    aput-object v6, v4, v5

    goto :goto_0

    .line 427
    :cond_3
    move v4, v2

    const/4 v5, 0x3

    mul-int/lit8 v4, v4, 0x3

    const/4 v5, 0x2

    div-int/lit8 v4, v4, 0x2

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 429
    :cond_4
    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->changeSize:I

    move v5, v2

    if-ne v4, v5, :cond_2

    .line 430
    move-object v4, v0

    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->changeSize:I

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->changeListeners:[Ljavafx/beans/value/ChangeListener;

    invoke-static {v5, v6}, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->trim(I[Ljava/lang/Object;)I

    move-result v5

    iput v5, v4, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->changeSize:I

    .line 431
    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->changeSize:I

    move v5, v2

    if-ne v4, v5, :cond_2

    .line 432
    move v4, v2

    const/4 v5, 0x3

    mul-int/lit8 v4, v4, 0x3

    const/4 v5, 0x2

    div-int/lit8 v4, v4, 0x2

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    move v3, v4

    .line 433
    .restart local v3    # "newCapacity":I
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->changeListeners:[Ljavafx/beans/value/ChangeListener;

    move v6, v3

    invoke-static {v5, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljavafx/beans/value/ChangeListener;

    iput-object v5, v4, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->changeListeners:[Ljavafx/beans/value/ChangeListener;

    goto :goto_2
.end method

.method protected addListener(Ljavafx/collections/SetChangeListener;)Lcom/sun/javafx/binding/SetExpressionHelper;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/SetChangeListener",
            "<-TE;>;)",
            "Lcom/sun/javafx/binding/SetExpressionHelper",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 481
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/SetExpressionHelper$Generic;, "Lcom/sun/javafx/binding/SetExpressionHelper$Generic<TE;>;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/collections/SetChangeListener;, "Ljavafx/collections/SetChangeListener<-TE;>;"
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->setChangeListeners:[Ljavafx/collections/SetChangeListener;

    if-nez v4, :cond_1

    .line 482
    move-object v4, v0

    const/4 v5, 0x1

    new-array v5, v5, [Ljavafx/collections/SetChangeListener;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move-object v8, v1

    aput-object v8, v6, v7

    iput-object v5, v4, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->setChangeListeners:[Ljavafx/collections/SetChangeListener;

    .line 483
    move-object v4, v0

    const/4 v5, 0x1

    iput v5, v4, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->setChangeSize:I

    .line 498
    :goto_0
    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->setChangeSize:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 499
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->observable:Ljavafx/beans/value/ObservableSetValue;

    invoke-interface {v5}, Ljavafx/beans/value/ObservableSetValue;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavafx/collections/ObservableSet;

    iput-object v5, v4, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->currentValue:Ljavafx/collections/ObservableSet;

    .line 501
    :cond_0
    move-object v4, v0

    move-object v0, v4

    .end local v0    # "this":Lcom/sun/javafx/binding/SetExpressionHelper$Generic;, "Lcom/sun/javafx/binding/SetExpressionHelper$Generic<TE;>;"
    return-object v0

    .line 485
    .restart local v0    # "this":Lcom/sun/javafx/binding/SetExpressionHelper$Generic;, "Lcom/sun/javafx/binding/SetExpressionHelper$Generic<TE;>;"
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->setChangeListeners:[Ljavafx/collections/SetChangeListener;

    array-length v4, v4

    move v2, v4

    .line 486
    .local v2, "oldCapacity":I
    move-object v4, v0

    iget-boolean v4, v4, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->locked:Z

    if-eqz v4, :cond_4

    .line 487
    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->setChangeSize:I

    move v5, v2

    if-ge v4, v5, :cond_3

    move v4, v2

    :goto_1
    move v3, v4

    .line 488
    .local v3, "newCapacity":I
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->setChangeListeners:[Ljavafx/collections/SetChangeListener;

    move v6, v3

    invoke-static {v5, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljavafx/collections/SetChangeListener;

    iput-object v5, v4, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->setChangeListeners:[Ljavafx/collections/SetChangeListener;

    .line 489
    .line 496
    .end local v3    # "newCapacity":I
    :cond_2
    :goto_2
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->setChangeListeners:[Ljavafx/collections/SetChangeListener;

    move-object v5, v0

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    iget v6, v6, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->setChangeSize:I

    move-object v9, v5

    move v10, v6

    move v5, v10

    move-object v6, v9

    move v7, v10

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->setChangeSize:I

    move-object v6, v1

    aput-object v6, v4, v5

    goto :goto_0

    .line 487
    :cond_3
    move v4, v2

    const/4 v5, 0x3

    mul-int/lit8 v4, v4, 0x3

    const/4 v5, 0x2

    div-int/lit8 v4, v4, 0x2

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 489
    :cond_4
    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->setChangeSize:I

    move v5, v2

    if-ne v4, v5, :cond_2

    .line 490
    move-object v4, v0

    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->setChangeSize:I

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->setChangeListeners:[Ljavafx/collections/SetChangeListener;

    invoke-static {v5, v6}, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->trim(I[Ljava/lang/Object;)I

    move-result v5

    iput v5, v4, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->setChangeSize:I

    .line 491
    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->setChangeSize:I

    move v5, v2

    if-ne v4, v5, :cond_2

    .line 492
    move v4, v2

    const/4 v5, 0x3

    mul-int/lit8 v4, v4, 0x3

    const/4 v5, 0x2

    div-int/lit8 v4, v4, 0x2

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    move v3, v4

    .line 493
    .restart local v3    # "newCapacity":I
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->setChangeListeners:[Ljavafx/collections/SetChangeListener;

    move v6, v3

    invoke-static {v5, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljavafx/collections/SetChangeListener;

    iput-object v5, v4, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->setChangeListeners:[Ljavafx/collections/SetChangeListener;

    goto :goto_2
.end method

.method protected fireValueChangedEvent()V
    .locals 5

    .prologue
    .line 541
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/SetExpressionHelper$Generic;, "Lcom/sun/javafx/binding/SetExpressionHelper$Generic<TE;>;"
    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->changeSize:I

    if-nez v2, :cond_0

    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->setChangeSize:I

    if-nez v2, :cond_0

    .line 542
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->currentValue:Ljavafx/collections/ObservableSet;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->notifyListeners(Ljavafx/collections/ObservableSet;Lcom/sun/javafx/binding/SetExpressionHelper$SimpleChange;)V

    .line 548
    :goto_0
    return-void

    .line 544
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->currentValue:Ljavafx/collections/ObservableSet;

    move-object v1, v2

    .line 545
    .local v1, "oldValue":Ljavafx/collections/ObservableSet;, "Ljavafx/collections/ObservableSet<TE;>;"
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->observable:Ljavafx/beans/value/ObservableSetValue;

    invoke-interface {v3}, Ljavafx/beans/value/ObservableSetValue;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavafx/collections/ObservableSet;

    iput-object v3, v2, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->currentValue:Ljavafx/collections/ObservableSet;

    .line 546
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->notifyListeners(Ljavafx/collections/ObservableSet;Lcom/sun/javafx/binding/SetExpressionHelper$SimpleChange;)V

    goto :goto_0
.end method

.method protected fireValueChangedEvent(Ljavafx/collections/SetChangeListener$Change;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/SetChangeListener$Change",
            "<+TE;>;)V"
        }
    .end annotation

    .prologue
    .line 552
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/SetExpressionHelper$Generic;, "Lcom/sun/javafx/binding/SetExpressionHelper$Generic<TE;>;"
    move-object v1, p1

    .local v1, "change":Ljavafx/collections/SetChangeListener$Change;, "Ljavafx/collections/SetChangeListener$Change<+TE;>;"
    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->setChangeSize:I

    if-nez v3, :cond_0

    const/4 v3, 0x0

    :goto_0
    move-object v2, v3

    .line 553
    .local v2, "mappedChange":Lcom/sun/javafx/binding/SetExpressionHelper$SimpleChange;, "Lcom/sun/javafx/binding/SetExpressionHelper$SimpleChange<TE;>;"
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->currentValue:Ljavafx/collections/ObservableSet;

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->notifyListeners(Ljavafx/collections/ObservableSet;Lcom/sun/javafx/binding/SetExpressionHelper$SimpleChange;)V

    .line 554
    return-void

    .line 552
    .end local v2    # "mappedChange":Lcom/sun/javafx/binding/SetExpressionHelper$SimpleChange;, "Lcom/sun/javafx/binding/SetExpressionHelper$SimpleChange<TE;>;"
    :cond_0
    new-instance v3, Lcom/sun/javafx/binding/SetExpressionHelper$SimpleChange;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->observable:Ljavafx/beans/value/ObservableSetValue;

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Lcom/sun/javafx/binding/SetExpressionHelper$SimpleChange;-><init>(Ljavafx/collections/ObservableSet;Ljavafx/collections/SetChangeListener$Change;)V

    goto :goto_0
.end method

.method protected removeListener(Ljavafx/beans/InvalidationListener;)Lcom/sun/javafx/binding/SetExpressionHelper;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/InvalidationListener;",
            ")",
            "Lcom/sun/javafx/binding/SetExpressionHelper",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 386
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/SetExpressionHelper$Generic;, "Lcom/sun/javafx/binding/SetExpressionHelper$Generic<TE;>;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/InvalidationListener;
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->invalidationListeners:[Ljavafx/beans/InvalidationListener;

    if-eqz v5, :cond_2

    .line 387
    const/4 v5, 0x0

    move v2, v5

    .local v2, "index":I
    :goto_0
    move v5, v2

    move-object v6, v0

    iget v6, v6, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->invalidationSize:I

    if-ge v5, v6, :cond_2

    .line 388
    move-object v5, v1

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->invalidationListeners:[Ljavafx/beans/InvalidationListener;

    move v7, v2

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 389
    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->invalidationSize:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_3

    .line 390
    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->changeSize:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->setChangeSize:I

    if-nez v5, :cond_0

    .line 391
    new-instance v5, Lcom/sun/javafx/binding/SetExpressionHelper$SingleChange;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->observable:Ljavafx/beans/value/ObservableSetValue;

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->changeListeners:[Ljavafx/beans/value/ChangeListener;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    const/4 v9, 0x0

    invoke-direct {v6, v7, v8, v9}, Lcom/sun/javafx/binding/SetExpressionHelper$SingleChange;-><init>(Ljavafx/beans/value/ObservableSetValue;Ljavafx/beans/value/ChangeListener;Lcom/sun/javafx/binding/SetExpressionHelper$1;)V

    move-object v0, v5

    .line 416
    .end local v0    # "this":Lcom/sun/javafx/binding/SetExpressionHelper$Generic;, "Lcom/sun/javafx/binding/SetExpressionHelper$Generic<TE;>;"
    .end local v2    # "index":I
    :goto_1
    return-object v0

    .line 392
    .restart local v0    # "this":Lcom/sun/javafx/binding/SetExpressionHelper$Generic;, "Lcom/sun/javafx/binding/SetExpressionHelper$Generic<TE;>;"
    .restart local v2    # "index":I
    :cond_0
    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->changeSize:I

    if-nez v5, :cond_1

    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->setChangeSize:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 393
    new-instance v5, Lcom/sun/javafx/binding/SetExpressionHelper$SingleSetChange;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->observable:Ljavafx/beans/value/ObservableSetValue;

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->setChangeListeners:[Ljavafx/collections/SetChangeListener;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    const/4 v9, 0x0

    invoke-direct {v6, v7, v8, v9}, Lcom/sun/javafx/binding/SetExpressionHelper$SingleSetChange;-><init>(Ljavafx/beans/value/ObservableSetValue;Ljavafx/collections/SetChangeListener;Lcom/sun/javafx/binding/SetExpressionHelper$1;)V

    move-object v0, v5

    goto :goto_1

    .line 395
    :cond_1
    move-object v5, v0

    const/4 v6, 0x0

    iput-object v6, v5, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->invalidationListeners:[Ljavafx/beans/InvalidationListener;

    .line 396
    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->invalidationSize:I

    .line 416
    .end local v2    # "index":I
    :cond_2
    :goto_2
    move-object v5, v0

    move-object v0, v5

    goto :goto_1

    .line 398
    .restart local v2    # "index":I
    :cond_3
    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->invalidationSize:I

    move v6, v2

    sub-int/2addr v5, v6

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    move v3, v5

    .line 399
    .local v3, "numMoved":I
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->invalidationListeners:[Ljavafx/beans/InvalidationListener;

    move-object v4, v5

    .line 400
    .local v4, "oldListeners":[Ljavafx/beans/InvalidationListener;
    move-object v5, v0

    iget-boolean v5, v5, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->locked:Z

    if-eqz v5, :cond_4

    .line 401
    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->invalidationListeners:[Ljavafx/beans/InvalidationListener;

    array-length v6, v6

    new-array v6, v6, [Ljavafx/beans/InvalidationListener;

    iput-object v6, v5, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->invalidationListeners:[Ljavafx/beans/InvalidationListener;

    .line 402
    move-object v5, v4

    const/4 v6, 0x0

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->invalidationListeners:[Ljavafx/beans/InvalidationListener;

    const/4 v8, 0x0

    move v9, v2

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    invoke-static {v5, v6, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 404
    :cond_4
    move v5, v3

    if-lez v5, :cond_5

    .line 405
    move-object v5, v4

    move v6, v2

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->invalidationListeners:[Ljavafx/beans/InvalidationListener;

    move v8, v2

    move v9, v3

    invoke-static {v5, v6, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 407
    :cond_5
    move-object v5, v0

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    iget v6, v6, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->invalidationSize:I

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    iput v6, v5, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->invalidationSize:I

    .line 408
    move-object v5, v0

    iget-boolean v5, v5, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->locked:Z

    if-nez v5, :cond_6

    .line 409
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->invalidationListeners:[Ljavafx/beans/InvalidationListener;

    move-object v6, v0

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    iget v7, v7, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->invalidationSize:I

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    move-object v11, v6

    move v12, v7

    move v6, v12

    move-object v7, v11

    move v8, v12

    iput v8, v7, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->invalidationSize:I

    const/4 v7, 0x0

    aput-object v7, v5, v6

    .line 412
    :cond_6
    goto :goto_2

    .line 387
    .end local v3    # "numMoved":I
    .end local v4    # "oldListeners":[Ljavafx/beans/InvalidationListener;
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0
.end method

.method protected removeListener(Ljavafx/beans/value/ChangeListener;)Lcom/sun/javafx/binding/SetExpressionHelper;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/value/ChangeListener",
            "<-",
            "Ljavafx/collections/ObservableSet",
            "<TE;>;>;)",
            "Lcom/sun/javafx/binding/SetExpressionHelper",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 446
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/SetExpressionHelper$Generic;, "Lcom/sun/javafx/binding/SetExpressionHelper$Generic<TE;>;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/value/ChangeListener;, "Ljavafx/beans/value/ChangeListener<-Ljavafx/collections/ObservableSet<TE;>;>;"
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->changeListeners:[Ljavafx/beans/value/ChangeListener;

    if-eqz v5, :cond_2

    .line 447
    const/4 v5, 0x0

    move v2, v5

    .local v2, "index":I
    :goto_0
    move v5, v2

    move-object v6, v0

    iget v6, v6, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->changeSize:I

    if-ge v5, v6, :cond_2

    .line 448
    move-object v5, v1

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->changeListeners:[Ljavafx/beans/value/ChangeListener;

    move v7, v2

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 449
    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->changeSize:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_3

    .line 450
    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->invalidationSize:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->setChangeSize:I

    if-nez v5, :cond_0

    .line 451
    new-instance v5, Lcom/sun/javafx/binding/SetExpressionHelper$SingleInvalidation;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->observable:Ljavafx/beans/value/ObservableSetValue;

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->invalidationListeners:[Ljavafx/beans/InvalidationListener;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    const/4 v9, 0x0

    invoke-direct {v6, v7, v8, v9}, Lcom/sun/javafx/binding/SetExpressionHelper$SingleInvalidation;-><init>(Ljavafx/beans/value/ObservableSetValue;Ljavafx/beans/InvalidationListener;Lcom/sun/javafx/binding/SetExpressionHelper$1;)V

    move-object v0, v5

    .line 476
    .end local v0    # "this":Lcom/sun/javafx/binding/SetExpressionHelper$Generic;, "Lcom/sun/javafx/binding/SetExpressionHelper$Generic<TE;>;"
    .end local v2    # "index":I
    :goto_1
    return-object v0

    .line 452
    .restart local v0    # "this":Lcom/sun/javafx/binding/SetExpressionHelper$Generic;, "Lcom/sun/javafx/binding/SetExpressionHelper$Generic<TE;>;"
    .restart local v2    # "index":I
    :cond_0
    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->invalidationSize:I

    if-nez v5, :cond_1

    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->setChangeSize:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 453
    new-instance v5, Lcom/sun/javafx/binding/SetExpressionHelper$SingleSetChange;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->observable:Ljavafx/beans/value/ObservableSetValue;

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->setChangeListeners:[Ljavafx/collections/SetChangeListener;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    const/4 v9, 0x0

    invoke-direct {v6, v7, v8, v9}, Lcom/sun/javafx/binding/SetExpressionHelper$SingleSetChange;-><init>(Ljavafx/beans/value/ObservableSetValue;Ljavafx/collections/SetChangeListener;Lcom/sun/javafx/binding/SetExpressionHelper$1;)V

    move-object v0, v5

    goto :goto_1

    .line 455
    :cond_1
    move-object v5, v0

    const/4 v6, 0x0

    iput-object v6, v5, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->changeListeners:[Ljavafx/beans/value/ChangeListener;

    .line 456
    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->changeSize:I

    .line 476
    .end local v2    # "index":I
    :cond_2
    :goto_2
    move-object v5, v0

    move-object v0, v5

    goto :goto_1

    .line 458
    .restart local v2    # "index":I
    :cond_3
    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->changeSize:I

    move v6, v2

    sub-int/2addr v5, v6

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    move v3, v5

    .line 459
    .local v3, "numMoved":I
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->changeListeners:[Ljavafx/beans/value/ChangeListener;

    move-object v4, v5

    .line 460
    .local v4, "oldListeners":[Ljavafx/beans/value/ChangeListener;, "[Ljavafx/beans/value/ChangeListener<-Ljavafx/collections/ObservableSet<TE;>;>;"
    move-object v5, v0

    iget-boolean v5, v5, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->locked:Z

    if-eqz v5, :cond_4

    .line 461
    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->changeListeners:[Ljavafx/beans/value/ChangeListener;

    array-length v6, v6

    new-array v6, v6, [Ljavafx/beans/value/ChangeListener;

    iput-object v6, v5, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->changeListeners:[Ljavafx/beans/value/ChangeListener;

    .line 462
    move-object v5, v4

    const/4 v6, 0x0

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->changeListeners:[Ljavafx/beans/value/ChangeListener;

    const/4 v8, 0x0

    move v9, v2

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    invoke-static {v5, v6, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 464
    :cond_4
    move v5, v3

    if-lez v5, :cond_5

    .line 465
    move-object v5, v4

    move v6, v2

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->changeListeners:[Ljavafx/beans/value/ChangeListener;

    move v8, v2

    move v9, v3

    invoke-static {v5, v6, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 467
    :cond_5
    move-object v5, v0

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    iget v6, v6, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->changeSize:I

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    iput v6, v5, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->changeSize:I

    .line 468
    move-object v5, v0

    iget-boolean v5, v5, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->locked:Z

    if-nez v5, :cond_6

    .line 469
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->changeListeners:[Ljavafx/beans/value/ChangeListener;

    move-object v6, v0

    iget v6, v6, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->changeSize:I

    const/4 v7, 0x0

    aput-object v7, v5, v6

    .line 472
    :cond_6
    goto :goto_2

    .line 447
    .end local v3    # "numMoved":I
    .end local v4    # "oldListeners":[Ljavafx/beans/value/ChangeListener;, "[Ljavafx/beans/value/ChangeListener<-Ljavafx/collections/ObservableSet<TE;>;>;"
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0
.end method

.method protected removeListener(Ljavafx/collections/SetChangeListener;)Lcom/sun/javafx/binding/SetExpressionHelper;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/SetChangeListener",
            "<-TE;>;)",
            "Lcom/sun/javafx/binding/SetExpressionHelper",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 506
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/SetExpressionHelper$Generic;, "Lcom/sun/javafx/binding/SetExpressionHelper$Generic<TE;>;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/collections/SetChangeListener;, "Ljavafx/collections/SetChangeListener<-TE;>;"
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->setChangeListeners:[Ljavafx/collections/SetChangeListener;

    if-eqz v5, :cond_2

    .line 507
    const/4 v5, 0x0

    move v2, v5

    .local v2, "index":I
    :goto_0
    move v5, v2

    move-object v6, v0

    iget v6, v6, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->setChangeSize:I

    if-ge v5, v6, :cond_2

    .line 508
    move-object v5, v1

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->setChangeListeners:[Ljavafx/collections/SetChangeListener;

    move v7, v2

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 509
    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->setChangeSize:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_3

    .line 510
    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->invalidationSize:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->changeSize:I

    if-nez v5, :cond_0

    .line 511
    new-instance v5, Lcom/sun/javafx/binding/SetExpressionHelper$SingleInvalidation;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->observable:Ljavafx/beans/value/ObservableSetValue;

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->invalidationListeners:[Ljavafx/beans/InvalidationListener;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    const/4 v9, 0x0

    invoke-direct {v6, v7, v8, v9}, Lcom/sun/javafx/binding/SetExpressionHelper$SingleInvalidation;-><init>(Ljavafx/beans/value/ObservableSetValue;Ljavafx/beans/InvalidationListener;Lcom/sun/javafx/binding/SetExpressionHelper$1;)V

    move-object v0, v5

    .line 536
    .end local v0    # "this":Lcom/sun/javafx/binding/SetExpressionHelper$Generic;, "Lcom/sun/javafx/binding/SetExpressionHelper$Generic<TE;>;"
    .end local v2    # "index":I
    :goto_1
    return-object v0

    .line 512
    .restart local v0    # "this":Lcom/sun/javafx/binding/SetExpressionHelper$Generic;, "Lcom/sun/javafx/binding/SetExpressionHelper$Generic<TE;>;"
    .restart local v2    # "index":I
    :cond_0
    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->invalidationSize:I

    if-nez v5, :cond_1

    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->changeSize:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 513
    new-instance v5, Lcom/sun/javafx/binding/SetExpressionHelper$SingleChange;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->observable:Ljavafx/beans/value/ObservableSetValue;

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->changeListeners:[Ljavafx/beans/value/ChangeListener;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    const/4 v9, 0x0

    invoke-direct {v6, v7, v8, v9}, Lcom/sun/javafx/binding/SetExpressionHelper$SingleChange;-><init>(Ljavafx/beans/value/ObservableSetValue;Ljavafx/beans/value/ChangeListener;Lcom/sun/javafx/binding/SetExpressionHelper$1;)V

    move-object v0, v5

    goto :goto_1

    .line 515
    :cond_1
    move-object v5, v0

    const/4 v6, 0x0

    iput-object v6, v5, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->setChangeListeners:[Ljavafx/collections/SetChangeListener;

    .line 516
    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->setChangeSize:I

    .line 536
    .end local v2    # "index":I
    :cond_2
    :goto_2
    move-object v5, v0

    move-object v0, v5

    goto :goto_1

    .line 518
    .restart local v2    # "index":I
    :cond_3
    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->setChangeSize:I

    move v6, v2

    sub-int/2addr v5, v6

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    move v3, v5

    .line 519
    .local v3, "numMoved":I
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->setChangeListeners:[Ljavafx/collections/SetChangeListener;

    move-object v4, v5

    .line 520
    .local v4, "oldListeners":[Ljavafx/collections/SetChangeListener;, "[Ljavafx/collections/SetChangeListener<-TE;>;"
    move-object v5, v0

    iget-boolean v5, v5, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->locked:Z

    if-eqz v5, :cond_4

    .line 521
    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->setChangeListeners:[Ljavafx/collections/SetChangeListener;

    array-length v6, v6

    new-array v6, v6, [Ljavafx/collections/SetChangeListener;

    iput-object v6, v5, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->setChangeListeners:[Ljavafx/collections/SetChangeListener;

    .line 522
    move-object v5, v4

    const/4 v6, 0x0

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->setChangeListeners:[Ljavafx/collections/SetChangeListener;

    const/4 v8, 0x0

    move v9, v2

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    invoke-static {v5, v6, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 524
    :cond_4
    move v5, v3

    if-lez v5, :cond_5

    .line 525
    move-object v5, v4

    move v6, v2

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->setChangeListeners:[Ljavafx/collections/SetChangeListener;

    move v8, v2

    move v9, v3

    invoke-static {v5, v6, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 527
    :cond_5
    move-object v5, v0

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    iget v6, v6, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->setChangeSize:I

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    iput v6, v5, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->setChangeSize:I

    .line 528
    move-object v5, v0

    iget-boolean v5, v5, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->locked:Z

    if-nez v5, :cond_6

    .line 529
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->setChangeListeners:[Ljavafx/collections/SetChangeListener;

    move-object v6, v0

    iget v6, v6, Lcom/sun/javafx/binding/SetExpressionHelper$Generic;->setChangeSize:I

    const/4 v7, 0x0

    aput-object v7, v5, v6

    .line 532
    :cond_6
    goto :goto_2

    .line 507
    .end local v3    # "numMoved":I
    .end local v4    # "oldListeners":[Ljavafx/collections/SetChangeListener;, "[Ljavafx/collections/SetChangeListener<-TE;>;"
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0
.end method
