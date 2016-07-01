.class Lcom/sun/javafx/binding/ListExpressionHelper$Generic;
.super Lcom/sun/javafx/binding/ListExpressionHelper;
.source "ListExpressionHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/binding/ListExpressionHelper;
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
        "Lcom/sun/javafx/binding/ListExpressionHelper",
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
            "Ljavafx/collections/ObservableList",
            "<TE;>;>;"
        }
    .end annotation
.end field

.field private changeSize:I

.field private currentValue:Ljavafx/collections/ObservableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/ObservableList",
            "<TE;>;"
        }
    .end annotation
.end field

.field private invalidationListeners:[Ljavafx/beans/InvalidationListener;

.field private invalidationSize:I

.field private listChangeListeners:[Ljavafx/collections/ListChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljavafx/collections/ListChangeListener",
            "<-TE;>;"
        }
    .end annotation
.end field

.field private listChangeSize:I

.field private locked:Z


# direct methods
.method private constructor <init>(Ljavafx/beans/value/ObservableListValue;Ljavafx/beans/InvalidationListener;Ljavafx/beans/InvalidationListener;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/value/ObservableListValue",
            "<TE;>;",
            "Ljavafx/beans/InvalidationListener;",
            "Ljavafx/beans/InvalidationListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 315
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/ListExpressionHelper$Generic;, "Lcom/sun/javafx/binding/ListExpressionHelper$Generic<TE;>;"
    move-object v1, p1

    .local v1, "observable":Ljavafx/beans/value/ObservableListValue;, "Ljavafx/beans/value/ObservableListValue<TE;>;"
    move-object v2, p2

    .local v2, "listener0":Ljavafx/beans/InvalidationListener;
    move-object v3, p3

    .local v3, "listener1":Ljavafx/beans/InvalidationListener;
    move-object v4, v0

    move-object v5, v1

    invoke-direct {v4, v5}, Lcom/sun/javafx/binding/ListExpressionHelper;-><init>(Ljavafx/beans/value/ObservableListValue;)V

    .line 316
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

    iput-object v5, v4, Lcom/sun/javafx/binding/ListExpressionHelper$Generic;->invalidationListeners:[Ljavafx/beans/InvalidationListener;

    .line 317
    move-object v4, v0

    const/4 v5, 0x2

    iput v5, v4, Lcom/sun/javafx/binding/ListExpressionHelper$Generic;->invalidationSize:I

    .line 318
    return-void
.end method

.method synthetic constructor <init>(Ljavafx/beans/value/ObservableListValue;Ljavafx/beans/InvalidationListener;Ljavafx/beans/InvalidationListener;Lcom/sun/javafx/binding/ListExpressionHelper$1;)V
    .locals 9

    .prologue
    .line 303
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/ListExpressionHelper$Generic;, "Lcom/sun/javafx/binding/ListExpressionHelper$Generic<TE;>;"
    move-object v1, p1

    .local v1, "x0":Ljavafx/beans/value/ObservableListValue;
    move-object v2, p2

    .local v2, "x1":Ljavafx/beans/InvalidationListener;
    move-object v3, p3

    .local v3, "x2":Ljavafx/beans/InvalidationListener;
    move-object v4, p4

    .local v4, "x3":Lcom/sun/javafx/binding/ListExpressionHelper$1;
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    invoke-direct {v5, v6, v7, v8}, Lcom/sun/javafx/binding/ListExpressionHelper$Generic;-><init>(Ljavafx/beans/value/ObservableListValue;Ljavafx/beans/InvalidationListener;Ljavafx/beans/InvalidationListener;)V

    return-void
.end method

.method private constructor <init>(Ljavafx/beans/value/ObservableListValue;Ljavafx/beans/InvalidationListener;Ljavafx/beans/value/ChangeListener;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/value/ObservableListValue",
            "<TE;>;",
            "Ljavafx/beans/InvalidationListener;",
            "Ljavafx/beans/value/ChangeListener",
            "<-",
            "Ljavafx/collections/ObservableList",
            "<TE;>;>;)V"
        }
    .end annotation

    .prologue
    .line 335
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/ListExpressionHelper$Generic;, "Lcom/sun/javafx/binding/ListExpressionHelper$Generic<TE;>;"
    move-object v1, p1

    .local v1, "observable":Ljavafx/beans/value/ObservableListValue;, "Ljavafx/beans/value/ObservableListValue<TE;>;"
    move-object v2, p2

    .local v2, "invalidationListener":Ljavafx/beans/InvalidationListener;
    move-object v3, p3

    .local v3, "changeListener":Ljavafx/beans/value/ChangeListener;, "Ljavafx/beans/value/ChangeListener<-Ljavafx/collections/ObservableList<TE;>;>;"
    move-object v4, v0

    move-object v5, v1

    invoke-direct {v4, v5}, Lcom/sun/javafx/binding/ListExpressionHelper;-><init>(Ljavafx/beans/value/ObservableListValue;)V

    .line 336
    move-object v4, v0

    const/4 v5, 0x1

    new-array v5, v5, [Ljavafx/beans/InvalidationListener;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move-object v8, v2

    aput-object v8, v6, v7

    iput-object v5, v4, Lcom/sun/javafx/binding/ListExpressionHelper$Generic;->invalidationListeners:[Ljavafx/beans/InvalidationListener;

    .line 337
    move-object v4, v0

    const/4 v5, 0x1

    iput v5, v4, Lcom/sun/javafx/binding/ListExpressionHelper$Generic;->invalidationSize:I

    .line 338
    move-object v4, v0

    const/4 v5, 0x1

    new-array v5, v5, [Ljavafx/beans/value/ChangeListener;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move-object v8, v3

    aput-object v8, v6, v7

    iput-object v5, v4, Lcom/sun/javafx/binding/ListExpressionHelper$Generic;->changeListeners:[Ljavafx/beans/value/ChangeListener;

    .line 339
    move-object v4, v0

    const/4 v5, 0x1

    iput v5, v4, Lcom/sun/javafx/binding/ListExpressionHelper$Generic;->changeSize:I

    .line 340
    move-object v4, v0

    move-object v5, v1

    invoke-interface {v5}, Ljavafx/beans/value/ObservableListValue;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavafx/collections/ObservableList;

    iput-object v5, v4, Lcom/sun/javafx/binding/ListExpressionHelper$Generic;->currentValue:Ljavafx/collections/ObservableList;

    .line 341
    return-void
.end method

.method synthetic constructor <init>(Ljavafx/beans/value/ObservableListValue;Ljavafx/beans/InvalidationListener;Ljavafx/beans/value/ChangeListener;Lcom/sun/javafx/binding/ListExpressionHelper$1;)V
    .locals 9

    .prologue
    .line 303
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/ListExpressionHelper$Generic;, "Lcom/sun/javafx/binding/ListExpressionHelper$Generic<TE;>;"
    move-object v1, p1

    .local v1, "x0":Ljavafx/beans/value/ObservableListValue;
    move-object v2, p2

    .local v2, "x1":Ljavafx/beans/InvalidationListener;
    move-object v3, p3

    .local v3, "x2":Ljavafx/beans/value/ChangeListener;
    move-object v4, p4

    .local v4, "x3":Lcom/sun/javafx/binding/ListExpressionHelper$1;
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    invoke-direct {v5, v6, v7, v8}, Lcom/sun/javafx/binding/ListExpressionHelper$Generic;-><init>(Ljavafx/beans/value/ObservableListValue;Ljavafx/beans/InvalidationListener;Ljavafx/beans/value/ChangeListener;)V

    return-void
.end method

.method private constructor <init>(Ljavafx/beans/value/ObservableListValue;Ljavafx/beans/InvalidationListener;Ljavafx/collections/ListChangeListener;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/value/ObservableListValue",
            "<TE;>;",
            "Ljavafx/beans/InvalidationListener;",
            "Ljavafx/collections/ListChangeListener",
            "<-TE;>;)V"
        }
    .end annotation

    .prologue
    .line 344
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/ListExpressionHelper$Generic;, "Lcom/sun/javafx/binding/ListExpressionHelper$Generic<TE;>;"
    move-object v1, p1

    .local v1, "observable":Ljavafx/beans/value/ObservableListValue;, "Ljavafx/beans/value/ObservableListValue<TE;>;"
    move-object v2, p2

    .local v2, "invalidationListener":Ljavafx/beans/InvalidationListener;
    move-object v3, p3

    .local v3, "listChangeListener":Ljavafx/collections/ListChangeListener;, "Ljavafx/collections/ListChangeListener<-TE;>;"
    move-object v4, v0

    move-object v5, v1

    invoke-direct {v4, v5}, Lcom/sun/javafx/binding/ListExpressionHelper;-><init>(Ljavafx/beans/value/ObservableListValue;)V

    .line 345
    move-object v4, v0

    const/4 v5, 0x1

    new-array v5, v5, [Ljavafx/beans/InvalidationListener;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move-object v8, v2

    aput-object v8, v6, v7

    iput-object v5, v4, Lcom/sun/javafx/binding/ListExpressionHelper$Generic;->invalidationListeners:[Ljavafx/beans/InvalidationListener;

    .line 346
    move-object v4, v0

    const/4 v5, 0x1

    iput v5, v4, Lcom/sun/javafx/binding/ListExpressionHelper$Generic;->invalidationSize:I

    .line 347
    move-object v4, v0

    const/4 v5, 0x1

    new-array v5, v5, [Ljavafx/collections/ListChangeListener;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move-object v8, v3

    aput-object v8, v6, v7

    iput-object v5, v4, Lcom/sun/javafx/binding/ListExpressionHelper$Generic;->listChangeListeners:[Ljavafx/collections/ListChangeListener;

    .line 348
    move-object v4, v0

    const/4 v5, 0x1

    iput v5, v4, Lcom/sun/javafx/binding/ListExpressionHelper$Generic;->listChangeSize:I

    .line 349
    move-object v4, v0

    move-object v5, v1

    invoke-interface {v5}, Ljavafx/beans/value/ObservableListValue;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavafx/collections/ObservableList;

    iput-object v5, v4, Lcom/sun/javafx/binding/ListExpressionHelper$Generic;->currentValue:Ljavafx/collections/ObservableList;

    .line 350
    return-void
.end method

.method synthetic constructor <init>(Ljavafx/beans/value/ObservableListValue;Ljavafx/beans/InvalidationListener;Ljavafx/collections/ListChangeListener;Lcom/sun/javafx/binding/ListExpressionHelper$1;)V
    .locals 9

    .prologue
    .line 303
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/ListExpressionHelper$Generic;, "Lcom/sun/javafx/binding/ListExpressionHelper$Generic<TE;>;"
    move-object v1, p1

    .local v1, "x0":Ljavafx/beans/value/ObservableListValue;
    move-object v2, p2

    .local v2, "x1":Ljavafx/beans/InvalidationListener;
    move-object v3, p3

    .local v3, "x2":Ljavafx/collections/ListChangeListener;
    move-object v4, p4

    .local v4, "x3":Lcom/sun/javafx/binding/ListExpressionHelper$1;
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    invoke-direct {v5, v6, v7, v8}, Lcom/sun/javafx/binding/ListExpressionHelper$Generic;-><init>(Ljavafx/beans/value/ObservableListValue;Ljavafx/beans/InvalidationListener;Ljavafx/collections/ListChangeListener;)V

    return-void
.end method

.method private constructor <init>(Ljavafx/beans/value/ObservableListValue;Ljavafx/beans/value/ChangeListener;Ljavafx/beans/value/ChangeListener;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/value/ObservableListValue",
            "<TE;>;",
            "Ljavafx/beans/value/ChangeListener",
            "<-",
            "Ljavafx/collections/ObservableList",
            "<TE;>;>;",
            "Ljavafx/beans/value/ChangeListener",
            "<-",
            "Ljavafx/collections/ObservableList",
            "<TE;>;>;)V"
        }
    .end annotation

    .prologue
    .line 321
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/ListExpressionHelper$Generic;, "Lcom/sun/javafx/binding/ListExpressionHelper$Generic<TE;>;"
    move-object v1, p1

    .local v1, "observable":Ljavafx/beans/value/ObservableListValue;, "Ljavafx/beans/value/ObservableListValue<TE;>;"
    move-object v2, p2

    .local v2, "listener0":Ljavafx/beans/value/ChangeListener;, "Ljavafx/beans/value/ChangeListener<-Ljavafx/collections/ObservableList<TE;>;>;"
    move-object v3, p3

    .local v3, "listener1":Ljavafx/beans/value/ChangeListener;, "Ljavafx/beans/value/ChangeListener<-Ljavafx/collections/ObservableList<TE;>;>;"
    move-object v4, v0

    move-object v5, v1

    invoke-direct {v4, v5}, Lcom/sun/javafx/binding/ListExpressionHelper;-><init>(Ljavafx/beans/value/ObservableListValue;)V

    .line 322
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

    iput-object v5, v4, Lcom/sun/javafx/binding/ListExpressionHelper$Generic;->changeListeners:[Ljavafx/beans/value/ChangeListener;

    .line 323
    move-object v4, v0

    const/4 v5, 0x2

    iput v5, v4, Lcom/sun/javafx/binding/ListExpressionHelper$Generic;->changeSize:I

    .line 324
    move-object v4, v0

    move-object v5, v1

    invoke-interface {v5}, Ljavafx/beans/value/ObservableListValue;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavafx/collections/ObservableList;

    iput-object v5, v4, Lcom/sun/javafx/binding/ListExpressionHelper$Generic;->currentValue:Ljavafx/collections/ObservableList;

    .line 325
    return-void
.end method

.method synthetic constructor <init>(Ljavafx/beans/value/ObservableListValue;Ljavafx/beans/value/ChangeListener;Ljavafx/beans/value/ChangeListener;Lcom/sun/javafx/binding/ListExpressionHelper$1;)V
    .locals 9

    .prologue
    .line 303
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/ListExpressionHelper$Generic;, "Lcom/sun/javafx/binding/ListExpressionHelper$Generic<TE;>;"
    move-object v1, p1

    .local v1, "x0":Ljavafx/beans/value/ObservableListValue;
    move-object v2, p2

    .local v2, "x1":Ljavafx/beans/value/ChangeListener;
    move-object v3, p3

    .local v3, "x2":Ljavafx/beans/value/ChangeListener;
    move-object v4, p4

    .local v4, "x3":Lcom/sun/javafx/binding/ListExpressionHelper$1;
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    invoke-direct {v5, v6, v7, v8}, Lcom/sun/javafx/binding/ListExpressionHelper$Generic;-><init>(Ljavafx/beans/value/ObservableListValue;Ljavafx/beans/value/ChangeListener;Ljavafx/beans/value/ChangeListener;)V

    return-void
.end method

.method private constructor <init>(Ljavafx/beans/value/ObservableListValue;Ljavafx/beans/value/ChangeListener;Ljavafx/collections/ListChangeListener;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/value/ObservableListValue",
            "<TE;>;",
            "Ljavafx/beans/value/ChangeListener",
            "<-",
            "Ljavafx/collections/ObservableList",
            "<TE;>;>;",
            "Ljavafx/collections/ListChangeListener",
            "<-TE;>;)V"
        }
    .end annotation

    .prologue
    .line 353
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/ListExpressionHelper$Generic;, "Lcom/sun/javafx/binding/ListExpressionHelper$Generic<TE;>;"
    move-object v1, p1

    .local v1, "observable":Ljavafx/beans/value/ObservableListValue;, "Ljavafx/beans/value/ObservableListValue<TE;>;"
    move-object v2, p2

    .local v2, "changeListener":Ljavafx/beans/value/ChangeListener;, "Ljavafx/beans/value/ChangeListener<-Ljavafx/collections/ObservableList<TE;>;>;"
    move-object v3, p3

    .local v3, "listChangeListener":Ljavafx/collections/ListChangeListener;, "Ljavafx/collections/ListChangeListener<-TE;>;"
    move-object v4, v0

    move-object v5, v1

    invoke-direct {v4, v5}, Lcom/sun/javafx/binding/ListExpressionHelper;-><init>(Ljavafx/beans/value/ObservableListValue;)V

    .line 354
    move-object v4, v0

    const/4 v5, 0x1

    new-array v5, v5, [Ljavafx/beans/value/ChangeListener;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move-object v8, v2

    aput-object v8, v6, v7

    iput-object v5, v4, Lcom/sun/javafx/binding/ListExpressionHelper$Generic;->changeListeners:[Ljavafx/beans/value/ChangeListener;

    .line 355
    move-object v4, v0

    const/4 v5, 0x1

    iput v5, v4, Lcom/sun/javafx/binding/ListExpressionHelper$Generic;->changeSize:I

    .line 356
    move-object v4, v0

    const/4 v5, 0x1

    new-array v5, v5, [Ljavafx/collections/ListChangeListener;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move-object v8, v3

    aput-object v8, v6, v7

    iput-object v5, v4, Lcom/sun/javafx/binding/ListExpressionHelper$Generic;->listChangeListeners:[Ljavafx/collections/ListChangeListener;

    .line 357
    move-object v4, v0

    const/4 v5, 0x1

    iput v5, v4, Lcom/sun/javafx/binding/ListExpressionHelper$Generic;->listChangeSize:I

    .line 358
    move-object v4, v0

    move-object v5, v1

    invoke-interface {v5}, Ljavafx/beans/value/ObservableListValue;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavafx/collections/ObservableList;

    iput-object v5, v4, Lcom/sun/javafx/binding/ListExpressionHelper$Generic;->currentValue:Ljavafx/collections/ObservableList;

    .line 359
    return-void
.end method

.method synthetic constructor <init>(Ljavafx/beans/value/ObservableListValue;Ljavafx/beans/value/ChangeListener;Ljavafx/collections/ListChangeListener;Lcom/sun/javafx/binding/ListExpressionHelper$1;)V
    .locals 9

    .prologue
    .line 303
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/ListExpressionHelper$Generic;, "Lcom/sun/javafx/binding/ListExpressionHelper$Generic<TE;>;"
    move-object v1, p1

    .local v1, "x0":Ljavafx/beans/value/ObservableListValue;
    move-object v2, p2

    .local v2, "x1":Ljavafx/beans/value/ChangeListener;
    move-object v3, p3

    .local v3, "x2":Ljavafx/collections/ListChangeListener;
    move-object v4, p4

    .local v4, "x3":Lcom/sun/javafx/binding/ListExpressionHelper$1;
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    invoke-direct {v5, v6, v7, v8}, Lcom/sun/javafx/binding/ListExpressionHelper$Generic;-><init>(Ljavafx/beans/value/ObservableListValue;Ljavafx/beans/value/ChangeListener;Ljavafx/collections/ListChangeListener;)V

    return-void
.end method

.method private constructor <init>(Ljavafx/beans/value/ObservableListValue;Ljavafx/collections/ListChangeListener;Ljavafx/collections/ListChangeListener;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/value/ObservableListValue",
            "<TE;>;",
            "Ljavafx/collections/ListChangeListener",
            "<-TE;>;",
            "Ljavafx/collections/ListChangeListener",
            "<-TE;>;)V"
        }
    .end annotation

    .prologue
    .line 328
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/ListExpressionHelper$Generic;, "Lcom/sun/javafx/binding/ListExpressionHelper$Generic<TE;>;"
    move-object v1, p1

    .local v1, "observable":Ljavafx/beans/value/ObservableListValue;, "Ljavafx/beans/value/ObservableListValue<TE;>;"
    move-object v2, p2

    .local v2, "listener0":Ljavafx/collections/ListChangeListener;, "Ljavafx/collections/ListChangeListener<-TE;>;"
    move-object v3, p3

    .local v3, "listener1":Ljavafx/collections/ListChangeListener;, "Ljavafx/collections/ListChangeListener<-TE;>;"
    move-object v4, v0

    move-object v5, v1

    invoke-direct {v4, v5}, Lcom/sun/javafx/binding/ListExpressionHelper;-><init>(Ljavafx/beans/value/ObservableListValue;)V

    .line 329
    move-object v4, v0

    const/4 v5, 0x2

    new-array v5, v5, [Ljavafx/collections/ListChangeListener;

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

    iput-object v5, v4, Lcom/sun/javafx/binding/ListExpressionHelper$Generic;->listChangeListeners:[Ljavafx/collections/ListChangeListener;

    .line 330
    move-object v4, v0

    const/4 v5, 0x2

    iput v5, v4, Lcom/sun/javafx/binding/ListExpressionHelper$Generic;->listChangeSize:I

    .line 331
    move-object v4, v0

    move-object v5, v1

    invoke-interface {v5}, Ljavafx/beans/value/ObservableListValue;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavafx/collections/ObservableList;

    iput-object v5, v4, Lcom/sun/javafx/binding/ListExpressionHelper$Generic;->currentValue:Ljavafx/collections/ObservableList;

    .line 332
    return-void
.end method

.method synthetic constructor <init>(Ljavafx/beans/value/ObservableListValue;Ljavafx/collections/ListChangeListener;Ljavafx/collections/ListChangeListener;Lcom/sun/javafx/binding/ListExpressionHelper$1;)V
    .locals 9

    .prologue
    .line 303
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/ListExpressionHelper$Generic;, "Lcom/sun/javafx/binding/ListExpressionHelper$Generic<TE;>;"
    move-object v1, p1

    .local v1, "x0":Ljavafx/beans/value/ObservableListValue;
    move-object v2, p2

    .local v2, "x1":Ljavafx/collections/ListChangeListener;
    move-object v3, p3

    .local v3, "x2":Ljavafx/collections/ListChangeListener;
    move-object v4, p4

    .local v4, "x3":Lcom/sun/javafx/binding/ListExpressionHelper$1;
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    invoke-direct {v5, v6, v7, v8}, Lcom/sun/javafx/binding/ListExpressionHelper$Generic;-><init>(Ljavafx/beans/value/ObservableListValue;Ljavafx/collections/ListChangeListener;Ljavafx/collections/ListChangeListener;)V

    return-void
.end method

.method private notifyListeners(Ljavafx/collections/ObservableList;Ljavafx/collections/ListChangeListener$Change;Z)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ObservableList",
            "<TE;>;",
            "Ljavafx/collections/ListChangeListener$Change",
            "<TE;>;Z)V"
        }
    .end annotation

    .prologue
    .line 574
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/ListExpressionHelper$Generic;, "Lcom/sun/javafx/binding/ListExpressionHelper$Generic<TE;>;"
    move-object/from16 v1, p1

    .local v1, "oldValue":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<TE;>;"
    move-object/from16 v2, p2

    .local v2, "change":Ljavafx/collections/ListChangeListener$Change;, "Ljavafx/collections/ListChangeListener$Change<TE;>;"
    move/from16 v3, p3

    .local v3, "noChange":Z
    move-object v12, v0

    iget-object v12, v12, Lcom/sun/javafx/binding/ListExpressionHelper$Generic;->invalidationListeners:[Ljavafx/beans/InvalidationListener;

    move-object v4, v12

    .line 575
    .local v4, "curInvalidationList":[Ljavafx/beans/InvalidationListener;
    move-object v12, v0

    iget v12, v12, Lcom/sun/javafx/binding/ListExpressionHelper$Generic;->invalidationSize:I

    move v5, v12

    .line 576
    .local v5, "curInvalidationSize":I
    move-object v12, v0

    iget-object v12, v12, Lcom/sun/javafx/binding/ListExpressionHelper$Generic;->changeListeners:[Ljavafx/beans/value/ChangeListener;

    move-object v6, v12

    .line 577
    .local v6, "curChangeList":[Ljavafx/beans/value/ChangeListener;, "[Ljavafx/beans/value/ChangeListener<-Ljavafx/collections/ObservableList<TE;>;>;"
    move-object v12, v0

    iget v12, v12, Lcom/sun/javafx/binding/ListExpressionHelper$Generic;->changeSize:I

    move v7, v12

    .line 578
    .local v7, "curChangeSize":I
    move-object v12, v0

    iget-object v12, v12, Lcom/sun/javafx/binding/ListExpressionHelper$Generic;->listChangeListeners:[Ljavafx/collections/ListChangeListener;

    move-object v8, v12

    .line 579
    .local v8, "curListChangeList":[Ljavafx/collections/ListChangeListener;, "[Ljavafx/collections/ListChangeListener<-TE;>;"
    move-object v12, v0

    iget v12, v12, Lcom/sun/javafx/binding/ListExpressionHelper$Generic;->listChangeSize:I

    move v9, v12

    .line 581
    .local v9, "curListChangeSize":I
    move-object v12, v0

    const/4 v13, 0x1

    :try_start_0
    iput-boolean v13, v12, Lcom/sun/javafx/binding/ListExpressionHelper$Generic;->locked:Z

    .line 582
    const/4 v12, 0x0

    move v10, v12

    .local v10, "i":I
    :goto_0
    move v12, v10

    move v13, v5

    if-ge v12, v13, :cond_0

    .line 583
    move-object v12, v4

    move v13, v10

    aget-object v12, v12, v13

    move-object v13, v0

    iget-object v13, v13, Lcom/sun/javafx/binding/ListExpressionHelper$Generic;->observable:Ljavafx/beans/value/ObservableListValue;

    invoke-interface {v12, v13}, Ljavafx/beans/InvalidationListener;->invalidated(Ljavafx/beans/Observable;)V

    .line 582
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 585
    :cond_0
    move v12, v3

    if-nez v12, :cond_2

    .line 586
    const/4 v12, 0x0

    move v10, v12

    :goto_1
    move v12, v10

    move v13, v7

    if-ge v12, v13, :cond_1

    .line 587
    move-object v12, v6

    move v13, v10

    aget-object v12, v12, v13

    move-object v13, v0

    iget-object v13, v13, Lcom/sun/javafx/binding/ListExpressionHelper$Generic;->observable:Ljavafx/beans/value/ObservableListValue;

    move-object v14, v1

    move-object v15, v0

    iget-object v15, v15, Lcom/sun/javafx/binding/ListExpressionHelper$Generic;->currentValue:Ljavafx/collections/ObservableList;

    invoke-interface {v12, v13, v14, v15}, Ljavafx/beans/value/ChangeListener;->changed(Ljavafx/beans/value/ObservableValue;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 586
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 589
    :cond_1
    move-object v12, v2

    if-eqz v12, :cond_2

    .line 590
    const/4 v12, 0x0

    move v10, v12

    :goto_2
    move v12, v10

    move v13, v9

    if-ge v12, v13, :cond_2

    .line 591
    move-object v12, v2

    invoke-virtual {v12}, Ljavafx/collections/ListChangeListener$Change;->reset()V

    .line 592
    move-object v12, v8

    move v13, v10

    aget-object v12, v12, v13

    move-object v13, v2

    invoke-interface {v12, v13}, Ljavafx/collections/ListChangeListener;->onChanged(Ljavafx/collections/ListChangeListener$Change;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 590
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 597
    :cond_2
    move-object v12, v0

    const/4 v13, 0x0

    iput-boolean v13, v12, Lcom/sun/javafx/binding/ListExpressionHelper$Generic;->locked:Z

    .line 598
    .line 599
    return-void

    .line 597
    .end local v10    # "i":I
    :catchall_0
    move-exception v12

    move-object v11, v12

    move-object v12, v0

    const/4 v13, 0x0

    iput-boolean v13, v12, Lcom/sun/javafx/binding/ListExpressionHelper$Generic;->locked:Z

    move-object v12, v11

    throw v12
.end method


# virtual methods
.method protected addListener(Ljavafx/beans/InvalidationListener;)Lcom/sun/javafx/binding/ListExpressionHelper;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/InvalidationListener;",
            ")",
            "Lcom/sun/javafx/binding/ListExpressionHelper",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 363
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/ListExpressionHelper$Generic;, "Lcom/sun/javafx/binding/ListExpressionHelper$Generic<TE;>;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/InvalidationListener;
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/binding/ListExpressionHelper$Generic;->invalidationListeners:[Ljavafx/beans/InvalidationListener;

    if-nez v4, :cond_0

    .line 364
    move-object v4, v0

    const/4 v5, 0x1

    new-array v5, v5, [Ljavafx/beans/InvalidationListener;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move-object v8, v1

    aput-object v8, v6, v7

    iput-object v5, v4, Lcom/sun/javafx/binding/ListExpressionHelper$Generic;->invalidationListeners:[Ljavafx/beans/InvalidationListener;

    .line 365
    move-object v4, v0

    const/4 v5, 0x1

    iput v5, v4, Lcom/sun/javafx/binding/ListExpressionHelper$Generic;->invalidationSize:I

    .line 380
    :goto_0
    move-object v4, v0

    move-object v0, v4

    .end local v0    # "this":Lcom/sun/javafx/binding/ListExpressionHelper$Generic;, "Lcom/sun/javafx/binding/ListExpressionHelper$Generic<TE;>;"
    return-object v0

    .line 367
    .restart local v0    # "this":Lcom/sun/javafx/binding/ListExpressionHelper$Generic;, "Lcom/sun/javafx/binding/ListExpressionHelper$Generic<TE;>;"
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/binding/ListExpressionHelper$Generic;->invalidationListeners:[Ljavafx/beans/InvalidationListener;

    array-length v4, v4

    move v2, v4

    .line 368
    .local v2, "oldCapacity":I
    move-object v4, v0

    iget-boolean v4, v4, Lcom/sun/javafx/binding/ListExpressionHelper$Generic;->locked:Z

    if-eqz v4, :cond_3

    .line 369
    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/binding/ListExpressionHelper$Generic;->invalidationSize:I

    move v5, v2

    if-ge v4, v5, :cond_2

    move v4, v2

    :goto_1
    move v3, v4

    .line 370
    .local v3, "newCapacity":I
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/binding/ListExpressionHelper$Generic;->invalidationListeners:[Ljavafx/beans/InvalidationListener;

    move v6, v3

    invoke-static {v5, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljavafx/beans/InvalidationListener;

    iput-object v5, v4, Lcom/sun/javafx/binding/ListExpressionHelper$Generic;->invalidationListeners:[Ljavafx/beans/InvalidationListener;

    .line 371
    .line 378
    .end local v3    # "newCapacity":I
    :cond_1
    :goto_2
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/binding/ListExpressionHelper$Generic;->invalidationListeners:[Ljavafx/beans/InvalidationListener;

    move-object v5, v0

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    iget v6, v6, Lcom/sun/javafx/binding/ListExpressionHelper$Generic;->invalidationSize:I

    move-object v9, v5

    move v10, v6

    move v5, v10

    move-object v6, v9

    move v7, v10

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Lcom/sun/javafx/binding/ListExpressionHelper$Generic;->invalidationSize:I

    move-object v6, v1

    aput-object v6, v4, v5

    goto :goto_0

    .line 369
    :cond_2
    move v4, v2

    const/4 v5, 0x3

    mul-int/lit8 v4, v4, 0x3

    const/4 v5, 0x2

    div-int/lit8 v4, v4, 0x2

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 371
    :cond_3
    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/binding/ListExpressionHelper$Generic;->invalidationSize:I

    move v5, v2

    if-ne v4, v5, :cond_1

    .line 372
    move-object v4, v0

    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/binding/ListExpressionHelper$Generic;->invalidationSize:I

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/binding/ListExpressionHelper$Generic;->invalidationListeners:[Ljavafx/beans/InvalidationListener;

    invoke-static {v5, v6}, Lcom/sun/javafx/binding/ListExpressionHelper$Generic;->trim(I[Ljava/lang/Object;)I

    move-result v5

    iput v5, v4, Lcom/sun/javafx/binding/ListExpressionHelper$Generic;->invalidationSize:I

    .line 373
    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/binding/ListExpressionHelper$Generic;->invalidationSize:I

    move v5, v2

    if-ne v4, v5, :cond_1

    .line 374
    move v4, v2

    const/4 v5, 0x3

    mul-int/lit8 v4, v4, 0x3

    const/4 v5, 0x2

    div-int/lit8 v4, v4, 0x2

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    move v3, v4

    .line 375
    .restart local v3    # "newCapacity":I
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/binding/ListExpressionHelper$Generic;->invalidationListeners:[Ljavafx/beans/InvalidationListener;

    move v6, v3

    invoke-static {v5, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljavafx/beans/InvalidationListener;

    iput-object v5, v4, Lcom/sun/javafx/binding/ListExpressionHelper$Generic;->invalidationListeners:[Ljavafx/beans/InvalidationListener;

    goto :goto_2
.end method

.method protected addListener(Ljavafx/beans/value/ChangeListener;)Lcom/sun/javafx/binding/ListExpressionHelper;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/value/ChangeListener",
            "<-",
            "Ljavafx/collections/ObservableList",
            "<TE;>;>;)",
            "Lcom/sun/javafx/binding/ListExpressionHelper",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 422
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/ListExpressionHelper$Generic;, "Lcom/sun/javafx/binding/ListExpressionHelper$Generic<TE;>;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/value/ChangeListener;, "Ljavafx/beans/value/ChangeListener<-Ljavafx/collections/ObservableList<TE;>;>;"
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/binding/ListExpressionHelper$Generic;->changeListeners:[Ljavafx/beans/value/ChangeListener;

    if-nez v4, :cond_1

    .line 423
    move-object v4, v0

    const/4 v5, 0x1

    new-array v5, v5, [Ljavafx/beans/value/ChangeListener;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move-object v8, v1

    aput-object v8, v6, v7

    iput-object v5, v4, Lcom/sun/javafx/binding/ListExpressionHelper$Generic;->changeListeners:[Ljavafx/beans/value/ChangeListener;

    .line 424
    move-object v4, v0

    const/4 v5, 0x1

    iput v5, v4, Lcom/sun/javafx/binding/ListExpressionHelper$Generic;->changeSize:I

    .line 439
    :goto_0
    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/binding/ListExpressionHelper$Generic;->changeSize:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 440
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/binding/ListExpressionHelper$Generic;->observable:Ljavafx/beans/value/ObservableListValue;

    invoke-interface {v5}, Ljavafx/beans/value/ObservableListValue;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavafx/collections/ObservableList;

    iput-object v5, v4, Lcom/sun/javafx/binding/ListExpressionHelper$Generic;->currentValue:Ljavafx/collections/ObservableList;

    .line 442
    :cond_0
    move-object v4, v0

    move-object v0, v4

    .end local v0    # "this":Lcom/sun/javafx/binding/ListExpressionHelper$Generic;, "Lcom/sun/javafx/binding/ListExpressionHelper$Generic<TE;>;"
    return-object v0

    .line 426
    .restart local v0    # "this":Lcom/sun/javafx/binding/ListExpressionHelper$Generic;, "Lcom/sun/javafx/binding/ListExpressionHelper$Generic<TE;>;"
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/binding/ListExpressionHelper$Generic;->changeListeners:[Ljavafx/beans/value/ChangeListener;

    array-length v4, v4

    move v2, v4

    .line 427
    .local v2, "oldCapacity":I
    move-object v4, v0

    iget-boolean v4, v4, Lcom/sun/javafx/binding/ListExpressionHelper$Generic;->locked:Z

    if-eqz v4, :cond_4

    .line 428
    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/binding/ListExpressionHelper$Generic;->changeSize:I

    move v5, v2

    if-ge v4, v5, :cond_3

    move v4, v2

    :goto_1
    move v3, v4

    .line 429
    .local v3, "newCapacity":I
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/binding/ListExpressionHelper$Generic;->changeListeners:[Ljavafx/beans/value/ChangeListener;

    move v6, v3

    invoke-static {v5, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljavafx/beans/value/ChangeListener;

    iput-object v5, v4, Lcom/sun/javafx/binding/ListExpressionHelper$Generic;->changeListeners:[Ljavafx/beans/value/ChangeListener;

    .line 430
    .line 437
    .end local v3    # "newCapacity":I
    :cond_2
    :goto_2
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/binding/ListExpressionHelper$Generic;->changeListeners:[Ljavafx/beans/value/ChangeListener;

    move-object v5, v0

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    iget v6, v6, Lcom/sun/javafx/binding/ListExpressionHelper$Generic;->changeSize:I

    move-object v9, v5

    move v10, v6

    move v5, v10

    move-object v6, v9

    move v7, v10

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Lcom/sun/javafx/binding/ListExpressionHelper$Generic;->changeSize:I

    move-object v6, v1

    aput-object v6, v4, v5

    goto :goto_0

    .line 428
    :cond_3
    move v4, v2

    const/4 v5, 0x3

    mul-int/lit8 v4, v4, 0x3

    const/4 v5, 0x2

    div-int/lit8 v4, v4, 0x2

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 430
    :cond_4
    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/binding/ListExpressionHelper$Generic;->changeSize:I

    move v5, v2

    if-ne v4, v5, :cond_2

    .line 431
    move-object v4, v0

    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/binding/ListExpressionHelper$Generic;->changeSize:I

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/binding/ListExpressionHelper$Generic;->changeListeners:[Ljavafx/beans/value/ChangeListener;

    invoke-static {v5, v6}, Lcom/sun/javafx/binding/ListExpressionHelper$Generic;->trim(I[Ljava/lang/Object;)I

    move-result v5

    iput v5, v4, Lcom/sun/javafx/binding/ListExpressionHelper$Generic;->changeSize:I

    .line 432
    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/binding/ListExpressionHelper$Generic;->changeSize:I

    move v5, v2

    if-ne v4, v5, :cond_2

    .line 433
    move v4, v2

    const/4 v5, 0x3

    mul-int/lit8 v4, v4, 0x3

    const/4 v5, 0x2

    div-int/lit8 v4, v4, 0x2

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    move v3, v4

    .line 434
    .restart local v3    # "newCapacity":I
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/binding/ListExpressionHelper$Generic;->changeListeners:[Ljavafx/beans/value/ChangeListener;

    move v6, v3

    invoke-static {v5, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljavafx/beans/value/ChangeListener;

    iput-object v5, v4, Lcom/sun/javafx/binding/ListExpressionHelper$Generic;->changeListeners:[Ljavafx/beans/value/ChangeListener;

    goto :goto_2
.end method

.method protected addListener(Ljavafx/collections/ListChangeListener;)Lcom/sun/javafx/binding/ListExpressionHelper;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ListChangeListener",
            "<-TE;>;)",
            "Lcom/sun/javafx/binding/ListExpressionHelper",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 484
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/ListExpressionHelper$Generic;, "Lcom/sun/javafx/binding/ListExpressionHelper$Generic<TE;>;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/collections/ListChangeListener;, "Ljavafx/collections/ListChangeListener<-TE;>;"
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/binding/ListExpressionHelper$Generic;->listChangeListeners:[Ljavafx/collections/ListChangeListener;

    if-nez v4, :cond_1

    .line 485
    move-object v4, v0

    const/4 v5, 0x1

    new-array v5, v5, [Ljavafx/collections/ListChangeListener;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move-object v8, v1

    aput-object v8, v6, v7

    iput-object v5, v4, Lcom/sun/javafx/binding/ListExpressionHelper$Generic;->listChangeListeners:[Ljavafx/collections/ListChangeListener;

    .line 486
    move-object v4, v0

    const/4 v5, 0x1

    iput v5, v4, Lcom/sun/javafx/binding/ListExpressionHelper$Generic;->listChangeSize:I

    .line 501
    :goto_0
    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/binding/ListExpressionHelper$Generic;->listChangeSize:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 502
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/binding/ListExpressionHelper$Generic;->observable:Ljavafx/beans/value/ObservableListValue;

    invoke-interface {v5}, Ljavafx/beans/value/ObservableListValue;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavafx/collections/ObservableList;

    iput-object v5, v4, Lcom/sun/javafx/binding/ListExpressionHelper$Generic;->currentValue:Ljavafx/collections/ObservableList;

    .line 504
    :cond_0
    move-object v4, v0

    move-object v0, v4

    .end local v0    # "this":Lcom/sun/javafx/binding/ListExpressionHelper$Generic;, "Lcom/sun/javafx/binding/ListExpressionHelper$Generic<TE;>;"
    return-object v0

    .line 488
    .restart local v0    # "this":Lcom/sun/javafx/binding/ListExpressionHelper$Generic;, "Lcom/sun/javafx/binding/ListExpressionHelper$Generic<TE;>;"
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/binding/ListExpressionHelper$Generic;->listChangeListeners:[Ljavafx/collections/ListChangeListener;

    array-length v4, v4

    move v2, v4

    .line 489
    .local v2, "oldCapacity":I
    move-object v4, v0

    iget-boolean v4, v4, Lcom/sun/javafx/binding/ListExpressionHelper$Generic;->locked:Z

    if-eqz v4, :cond_4

    .line 490
    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/binding/ListExpressionHelper$Generic;->listChangeSize:I

    move v5, v2

    if-ge v4, v5, :cond_3

    move v4, v2

    :goto_1
    move v3, v4

    .line 491
    .local v3, "newCapacity":I
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/binding/ListExpressionHelper$Generic;->listChangeListeners:[Ljavafx/collections/ListChangeListener;

    move v6, v3

    invoke-static {v5, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljavafx/collections/ListChangeListener;

    iput-object v5, v4, Lcom/sun/javafx/binding/ListExpressionHelper$Generic;->listChangeListeners:[Ljavafx/collections/ListChangeListener;

    .line 492
    .line 499
    .end local v3    # "newCapacity":I
    :cond_2
    :goto_2
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/binding/ListExpressionHelper$Generic;->listChangeListeners:[Ljavafx/collections/ListChangeListener;

    move-object v5, v0

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    iget v6, v6, Lcom/sun/javafx/binding/ListExpressionHelper$Generic;->listChangeSize:I

    move-object v9, v5

    move v10, v6

    move v5, v10

    move-object v6, v9

    move v7, v10

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Lcom/sun/javafx/binding/ListExpressionHelper$Generic;->listChangeSize:I

    move-object v6, v1

    aput-object v6, v4, v5

    goto :goto_0

    .line 490
    :cond_3
    move v4, v2

    const/4 v5, 0x3

    mul-int/lit8 v4, v4, 0x3

    const/4 v5, 0x2

    div-int/lit8 v4, v4, 0x2

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 492
    :cond_4
    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/binding/ListExpressionHelper$Generic;->listChangeSize:I

    move v5, v2

    if-ne v4, v5, :cond_2

    .line 493
    move-object v4, v0

    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/binding/ListExpressionHelper$Generic;->listChangeSize:I

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/binding/ListExpressionHelper$Generic;->listChangeListeners:[Ljavafx/collections/ListChangeListener;

    invoke-static {v5, v6}, Lcom/sun/javafx/binding/ListExpressionHelper$Generic;->trim(I[Ljava/lang/Object;)I

    move-result v5

    iput v5, v4, Lcom/sun/javafx/binding/ListExpressionHelper$Generic;->listChangeSize:I

    .line 494
    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/binding/ListExpressionHelper$Generic;->listChangeSize:I

    move v5, v2

    if-ne v4, v5, :cond_2

    .line 495
    move v4, v2

    const/4 v5, 0x3

    mul-int/lit8 v4, v4, 0x3

    const/4 v5, 0x2

    div-int/lit8 v4, v4, 0x2

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    move v3, v4

    .line 496
    .restart local v3    # "newCapacity":I
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/binding/ListExpressionHelper$Generic;->listChangeListeners:[Ljavafx/collections/ListChangeListener;

    move v6, v3

    invoke-static {v5, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljavafx/collections/ListChangeListener;

    iput-object v5, v4, Lcom/sun/javafx/binding/ListExpressionHelper$Generic;->listChangeListeners:[Ljavafx/collections/ListChangeListener;

    goto :goto_2
.end method

.method protected fireValueChangedEvent()V
    .locals 12

    .prologue
    .line 546
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/ListExpressionHelper$Generic;, "Lcom/sun/javafx/binding/ListExpressionHelper$Generic<TE;>;"
    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/binding/ListExpressionHelper$Generic;->changeSize:I

    if-nez v5, :cond_0

    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/binding/ListExpressionHelper$Generic;->listChangeSize:I

    if-nez v5, :cond_0

    .line 547
    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/binding/ListExpressionHelper$Generic;->currentValue:Ljavafx/collections/ObservableList;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {v5, v6, v7, v8}, Lcom/sun/javafx/binding/ListExpressionHelper$Generic;->notifyListeners(Ljavafx/collections/ObservableList;Ljavafx/collections/ListChangeListener$Change;Z)V

    .line 565
    :goto_0
    return-void

    .line 549
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/binding/ListExpressionHelper$Generic;->currentValue:Ljavafx/collections/ObservableList;

    move-object v1, v5

    .line 550
    .local v1, "oldValue":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<TE;>;"
    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/binding/ListExpressionHelper$Generic;->observable:Ljavafx/beans/value/ObservableListValue;

    invoke-interface {v6}, Ljavafx/beans/value/ObservableListValue;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljavafx/collections/ObservableList;

    iput-object v6, v5, Lcom/sun/javafx/binding/ListExpressionHelper$Generic;->currentValue:Ljavafx/collections/ObservableList;

    .line 551
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/binding/ListExpressionHelper$Generic;->currentValue:Ljavafx/collections/ObservableList;

    move-object v6, v1

    if-eq v5, v6, :cond_4

    .line 552
    const/4 v5, 0x0

    move-object v2, v5

    .line 553
    .local v2, "change":Ljavafx/collections/ListChangeListener$Change;, "Ljavafx/collections/ListChangeListener$Change<TE;>;"
    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/binding/ListExpressionHelper$Generic;->listChangeSize:I

    if-lez v5, :cond_1

    .line 554
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/binding/ListExpressionHelper$Generic;->currentValue:Ljavafx/collections/ObservableList;

    if-nez v5, :cond_2

    const/4 v5, 0x0

    :goto_1
    move v3, v5

    .line 555
    .local v3, "safeSize":I
    move-object v5, v1

    if-nez v5, :cond_3

    .line 556
    invoke-static {}, Ljavafx/collections/FXCollections;->emptyObservableList()Ljavafx/collections/ObservableList;

    move-result-object v5

    .line 557
    :goto_2
    move-object v4, v5

    .line 558
    .local v4, "safeOldValue":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<TE;>;"
    new-instance v5, Lcom/sun/javafx/collections/NonIterableChange$GenericAddRemoveChange;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    const/4 v7, 0x0

    move v8, v3

    move-object v9, v4

    move-object v10, v0

    iget-object v10, v10, Lcom/sun/javafx/binding/ListExpressionHelper$Generic;->observable:Ljavafx/beans/value/ObservableListValue;

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/sun/javafx/collections/NonIterableChange$GenericAddRemoveChange;-><init>(IILjava/util/List;Ljavafx/collections/ObservableList;)V

    move-object v2, v5

    .line 560
    .end local v3    # "safeSize":I
    .end local v4    # "safeOldValue":Ljavafx/collections/ObservableList;, "Ljavafx/collections/ObservableList<TE;>;"
    :cond_1
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    const/4 v8, 0x0

    invoke-direct {v5, v6, v7, v8}, Lcom/sun/javafx/binding/ListExpressionHelper$Generic;->notifyListeners(Ljavafx/collections/ObservableList;Ljavafx/collections/ListChangeListener$Change;Z)V

    .line 561
    goto :goto_0

    .line 554
    :cond_2
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/binding/ListExpressionHelper$Generic;->currentValue:Ljavafx/collections/ObservableList;

    invoke-interface {v5}, Ljavafx/collections/ObservableList;->size()I

    move-result v5

    goto :goto_1

    .line 556
    .restart local v3    # "safeSize":I
    :cond_3
    move-object v5, v1

    .line 557
    invoke-static {v5}, Ljavafx/collections/FXCollections;->unmodifiableObservableList(Ljavafx/collections/ObservableList;)Ljavafx/collections/ObservableList;

    move-result-object v5

    goto :goto_2

    .line 562
    .end local v2    # "change":Ljavafx/collections/ListChangeListener$Change;, "Ljavafx/collections/ListChangeListener$Change<TE;>;"
    .end local v3    # "safeSize":I
    :cond_4
    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/binding/ListExpressionHelper$Generic;->currentValue:Ljavafx/collections/ObservableList;

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-direct {v5, v6, v7, v8}, Lcom/sun/javafx/binding/ListExpressionHelper$Generic;->notifyListeners(Ljavafx/collections/ObservableList;Ljavafx/collections/ListChangeListener$Change;Z)V

    goto :goto_0
.end method

.method protected fireValueChangedEvent(Ljavafx/collections/ListChangeListener$Change;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ListChangeListener$Change",
            "<+TE;>;)V"
        }
    .end annotation

    .prologue
    .line 569
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/ListExpressionHelper$Generic;, "Lcom/sun/javafx/binding/ListExpressionHelper$Generic<TE;>;"
    move-object v1, p1

    .local v1, "change":Ljavafx/collections/ListChangeListener$Change;, "Ljavafx/collections/ListChangeListener$Change<+TE;>;"
    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/binding/ListExpressionHelper$Generic;->listChangeSize:I

    if-nez v3, :cond_0

    const/4 v3, 0x0

    :goto_0
    move-object v2, v3

    .line 570
    .local v2, "mappedChange":Ljavafx/collections/ListChangeListener$Change;, "Ljavafx/collections/ListChangeListener$Change<TE;>;"
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/binding/ListExpressionHelper$Generic;->currentValue:Ljavafx/collections/ObservableList;

    move-object v5, v2

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Lcom/sun/javafx/binding/ListExpressionHelper$Generic;->notifyListeners(Ljavafx/collections/ObservableList;Ljavafx/collections/ListChangeListener$Change;Z)V

    .line 571
    return-void

    .line 569
    .end local v2    # "mappedChange":Ljavafx/collections/ListChangeListener$Change;, "Ljavafx/collections/ListChangeListener$Change<TE;>;"
    :cond_0
    new-instance v3, Lcom/sun/javafx/collections/SourceAdapterChange;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/binding/ListExpressionHelper$Generic;->observable:Ljavafx/beans/value/ObservableListValue;

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Lcom/sun/javafx/collections/SourceAdapterChange;-><init>(Ljavafx/collections/ObservableList;Ljavafx/collections/ListChangeListener$Change;)V

    goto :goto_0
.end method

.method protected removeListener(Ljavafx/beans/InvalidationListener;)Lcom/sun/javafx/binding/ListExpressionHelper;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/InvalidationListener;",
            ")",
            "Lcom/sun/javafx/binding/ListExpressionHelper",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 385
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/ListExpressionHelper$Generic;, "Lcom/sun/javafx/binding/ListExpressionHelper$Generic<TE;>;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/InvalidationListener;
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/binding/ListExpressionHelper$Generic;->invalidationListeners:[Ljavafx/beans/InvalidationListener;

    if-eqz v5, :cond_2

    .line 386
    const/4 v5, 0x0

    move v2, v5

    .local v2, "index":I
    :goto_0
    move v5, v2

    move-object v6, v0

    iget v6, v6, Lcom/sun/javafx/binding/ListExpressionHelper$Generic;->invalidationSize:I

    if-ge v5, v6, :cond_2

    .line 387
    move-object v5, v1

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/binding/ListExpressionHelper$Generic;->invalidationListeners:[Ljavafx/beans/InvalidationListener;

    move v7, v2

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 388
    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/binding/ListExpressionHelper$Generic;->invalidationSize:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_3

    .line 389
    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/binding/ListExpressionHelper$Generic;->changeSize:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/binding/ListExpressionHelper$Generic;->listChangeSize:I

    if-nez v5, :cond_0

    .line 390
    new-instance v5, Lcom/sun/javafx/binding/ListExpressionHelper$SingleChange;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/binding/ListExpressionHelper$Generic;->observable:Ljavafx/beans/value/ObservableListValue;

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/binding/ListExpressionHelper$Generic;->changeListeners:[Ljavafx/beans/value/ChangeListener;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    const/4 v9, 0x0

    invoke-direct {v6, v7, v8, v9}, Lcom/sun/javafx/binding/ListExpressionHelper$SingleChange;-><init>(Ljavafx/beans/value/ObservableListValue;Ljavafx/beans/value/ChangeListener;Lcom/sun/javafx/binding/ListExpressionHelper$1;)V

    move-object v0, v5

    .line 417
    .end local v0    # "this":Lcom/sun/javafx/binding/ListExpressionHelper$Generic;, "Lcom/sun/javafx/binding/ListExpressionHelper$Generic<TE;>;"
    .end local v2    # "index":I
    :goto_1
    return-object v0

    .line 391
    .restart local v0    # "this":Lcom/sun/javafx/binding/ListExpressionHelper$Generic;, "Lcom/sun/javafx/binding/ListExpressionHelper$Generic<TE;>;"
    .restart local v2    # "index":I
    :cond_0
    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/binding/ListExpressionHelper$Generic;->changeSize:I

    if-nez v5, :cond_1

    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/binding/ListExpressionHelper$Generic;->listChangeSize:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 392
    new-instance v5, Lcom/sun/javafx/binding/ListExpressionHelper$SingleListChange;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/binding/ListExpressionHelper$Generic;->observable:Ljavafx/beans/value/ObservableListValue;

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/binding/ListExpressionHelper$Generic;->listChangeListeners:[Ljavafx/collections/ListChangeListener;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    const/4 v9, 0x0

    invoke-direct {v6, v7, v8, v9}, Lcom/sun/javafx/binding/ListExpressionHelper$SingleListChange;-><init>(Ljavafx/beans/value/ObservableListValue;Ljavafx/collections/ListChangeListener;Lcom/sun/javafx/binding/ListExpressionHelper$1;)V

    move-object v0, v5

    goto :goto_1

    .line 394
    :cond_1
    move-object v5, v0

    const/4 v6, 0x0

    iput-object v6, v5, Lcom/sun/javafx/binding/ListExpressionHelper$Generic;->invalidationListeners:[Ljavafx/beans/InvalidationListener;

    .line 395
    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Lcom/sun/javafx/binding/ListExpressionHelper$Generic;->invalidationSize:I

    .line 417
    .end local v2    # "index":I
    :cond_2
    :goto_2
    move-object v5, v0

    move-object v0, v5

    goto :goto_1

    .line 396
    .restart local v2    # "index":I
    :cond_3
    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/binding/ListExpressionHelper$Generic;->invalidationSize:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_4

    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/binding/ListExpressionHelper$Generic;->changeSize:I

    if-nez v5, :cond_4

    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/binding/ListExpressionHelper$Generic;->listChangeSize:I

    if-nez v5, :cond_4

    .line 397
    new-instance v5, Lcom/sun/javafx/binding/ListExpressionHelper$SingleInvalidation;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/binding/ListExpressionHelper$Generic;->observable:Ljavafx/beans/value/ObservableListValue;

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/binding/ListExpressionHelper$Generic;->invalidationListeners:[Ljavafx/beans/InvalidationListener;

    const/4 v9, 0x1

    move v10, v2

    rsub-int/lit8 v9, v10, 0x1

    aget-object v8, v8, v9

    const/4 v9, 0x0

    invoke-direct {v6, v7, v8, v9}, Lcom/sun/javafx/binding/ListExpressionHelper$SingleInvalidation;-><init>(Ljavafx/beans/value/ObservableListValue;Ljavafx/beans/InvalidationListener;Lcom/sun/javafx/binding/ListExpressionHelper$1;)V

    move-object v0, v5

    goto :goto_1

    .line 399
    :cond_4
    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/binding/ListExpressionHelper$Generic;->invalidationSize:I

    move v6, v2

    sub-int/2addr v5, v6

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    move v3, v5

    .line 400
    .local v3, "numMoved":I
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/binding/ListExpressionHelper$Generic;->invalidationListeners:[Ljavafx/beans/InvalidationListener;

    move-object v4, v5

    .line 401
    .local v4, "oldListeners":[Ljavafx/beans/InvalidationListener;
    move-object v5, v0

    iget-boolean v5, v5, Lcom/sun/javafx/binding/ListExpressionHelper$Generic;->locked:Z

    if-eqz v5, :cond_5

    .line 402
    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/binding/ListExpressionHelper$Generic;->invalidationListeners:[Ljavafx/beans/InvalidationListener;

    array-length v6, v6

    new-array v6, v6, [Ljavafx/beans/InvalidationListener;

    iput-object v6, v5, Lcom/sun/javafx/binding/ListExpressionHelper$Generic;->invalidationListeners:[Ljavafx/beans/InvalidationListener;

    .line 403
    move-object v5, v4

    const/4 v6, 0x0

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/binding/ListExpressionHelper$Generic;->invalidationListeners:[Ljavafx/beans/InvalidationListener;

    const/4 v8, 0x0

    move v9, v2

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    invoke-static {v5, v6, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 405
    :cond_5
    move v5, v3

    if-lez v5, :cond_6

    .line 406
    move-object v5, v4

    move v6, v2

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/binding/ListExpressionHelper$Generic;->invalidationListeners:[Ljavafx/beans/InvalidationListener;

    move v8, v2

    move v9, v3

    invoke-static {v5, v6, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 408
    :cond_6
    move-object v5, v0

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    iget v6, v6, Lcom/sun/javafx/binding/ListExpressionHelper$Generic;->invalidationSize:I

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    iput v6, v5, Lcom/sun/javafx/binding/ListExpressionHelper$Generic;->invalidationSize:I

    .line 409
    move-object v5, v0

    iget-boolean v5, v5, Lcom/sun/javafx/binding/ListExpressionHelper$Generic;->locked:Z

    if-nez v5, :cond_7

    .line 410
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/binding/ListExpressionHelper$Generic;->invalidationListeners:[Ljavafx/beans/InvalidationListener;

    move-object v6, v0

    iget v6, v6, Lcom/sun/javafx/binding/ListExpressionHelper$Generic;->invalidationSize:I

    const/4 v7, 0x0

    aput-object v7, v5, v6

    .line 413
    :cond_7
    goto :goto_2

    .line 386
    .end local v3    # "numMoved":I
    .end local v4    # "oldListeners":[Ljavafx/beans/InvalidationListener;
    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0
.end method

.method protected removeListener(Ljavafx/beans/value/ChangeListener;)Lcom/sun/javafx/binding/ListExpressionHelper;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/value/ChangeListener",
            "<-",
            "Ljavafx/collections/ObservableList",
            "<TE;>;>;)",
            "Lcom/sun/javafx/binding/ListExpressionHelper",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 447
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/ListExpressionHelper$Generic;, "Lcom/sun/javafx/binding/ListExpressionHelper$Generic<TE;>;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/value/ChangeListener;, "Ljavafx/beans/value/ChangeListener<-Ljavafx/collections/ObservableList<TE;>;>;"
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/binding/ListExpressionHelper$Generic;->changeListeners:[Ljavafx/beans/value/ChangeListener;

    if-eqz v5, :cond_2

    .line 448
    const/4 v5, 0x0

    move v2, v5

    .local v2, "index":I
    :goto_0
    move v5, v2

    move-object v6, v0

    iget v6, v6, Lcom/sun/javafx/binding/ListExpressionHelper$Generic;->changeSize:I

    if-ge v5, v6, :cond_2

    .line 449
    move-object v5, v1

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/binding/ListExpressionHelper$Generic;->changeListeners:[Ljavafx/beans/value/ChangeListener;

    move v7, v2

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 450
    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/binding/ListExpressionHelper$Generic;->changeSize:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_3

    .line 451
    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/binding/ListExpressionHelper$Generic;->invalidationSize:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/binding/ListExpressionHelper$Generic;->listChangeSize:I

    if-nez v5, :cond_0

    .line 452
    new-instance v5, Lcom/sun/javafx/binding/ListExpressionHelper$SingleInvalidation;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/binding/ListExpressionHelper$Generic;->observable:Ljavafx/beans/value/ObservableListValue;

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/binding/ListExpressionHelper$Generic;->invalidationListeners:[Ljavafx/beans/InvalidationListener;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    const/4 v9, 0x0

    invoke-direct {v6, v7, v8, v9}, Lcom/sun/javafx/binding/ListExpressionHelper$SingleInvalidation;-><init>(Ljavafx/beans/value/ObservableListValue;Ljavafx/beans/InvalidationListener;Lcom/sun/javafx/binding/ListExpressionHelper$1;)V

    move-object v0, v5

    .line 479
    .end local v0    # "this":Lcom/sun/javafx/binding/ListExpressionHelper$Generic;, "Lcom/sun/javafx/binding/ListExpressionHelper$Generic<TE;>;"
    .end local v2    # "index":I
    :goto_1
    return-object v0

    .line 453
    .restart local v0    # "this":Lcom/sun/javafx/binding/ListExpressionHelper$Generic;, "Lcom/sun/javafx/binding/ListExpressionHelper$Generic<TE;>;"
    .restart local v2    # "index":I
    :cond_0
    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/binding/ListExpressionHelper$Generic;->invalidationSize:I

    if-nez v5, :cond_1

    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/binding/ListExpressionHelper$Generic;->listChangeSize:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 454
    new-instance v5, Lcom/sun/javafx/binding/ListExpressionHelper$SingleListChange;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/binding/ListExpressionHelper$Generic;->observable:Ljavafx/beans/value/ObservableListValue;

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/binding/ListExpressionHelper$Generic;->listChangeListeners:[Ljavafx/collections/ListChangeListener;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    const/4 v9, 0x0

    invoke-direct {v6, v7, v8, v9}, Lcom/sun/javafx/binding/ListExpressionHelper$SingleListChange;-><init>(Ljavafx/beans/value/ObservableListValue;Ljavafx/collections/ListChangeListener;Lcom/sun/javafx/binding/ListExpressionHelper$1;)V

    move-object v0, v5

    goto :goto_1

    .line 456
    :cond_1
    move-object v5, v0

    const/4 v6, 0x0

    iput-object v6, v5, Lcom/sun/javafx/binding/ListExpressionHelper$Generic;->changeListeners:[Ljavafx/beans/value/ChangeListener;

    .line 457
    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Lcom/sun/javafx/binding/ListExpressionHelper$Generic;->changeSize:I

    .line 479
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

    iget v5, v5, Lcom/sun/javafx/binding/ListExpressionHelper$Generic;->changeSize:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_4

    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/binding/ListExpressionHelper$Generic;->invalidationSize:I

    if-nez v5, :cond_4

    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/binding/ListExpressionHelper$Generic;->listChangeSize:I

    if-nez v5, :cond_4

    .line 459
    new-instance v5, Lcom/sun/javafx/binding/ListExpressionHelper$SingleChange;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/binding/ListExpressionHelper$Generic;->observable:Ljavafx/beans/value/ObservableListValue;

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/binding/ListExpressionHelper$Generic;->changeListeners:[Ljavafx/beans/value/ChangeListener;

    const/4 v9, 0x1

    move v10, v2

    rsub-int/lit8 v9, v10, 0x1

    aget-object v8, v8, v9

    const/4 v9, 0x0

    invoke-direct {v6, v7, v8, v9}, Lcom/sun/javafx/binding/ListExpressionHelper$SingleChange;-><init>(Ljavafx/beans/value/ObservableListValue;Ljavafx/beans/value/ChangeListener;Lcom/sun/javafx/binding/ListExpressionHelper$1;)V

    move-object v0, v5

    goto :goto_1

    .line 461
    :cond_4
    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/binding/ListExpressionHelper$Generic;->changeSize:I

    move v6, v2

    sub-int/2addr v5, v6

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    move v3, v5

    .line 462
    .local v3, "numMoved":I
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/binding/ListExpressionHelper$Generic;->changeListeners:[Ljavafx/beans/value/ChangeListener;

    move-object v4, v5

    .line 463
    .local v4, "oldListeners":[Ljavafx/beans/value/ChangeListener;, "[Ljavafx/beans/value/ChangeListener<-Ljavafx/collections/ObservableList<TE;>;>;"
    move-object v5, v0

    iget-boolean v5, v5, Lcom/sun/javafx/binding/ListExpressionHelper$Generic;->locked:Z

    if-eqz v5, :cond_5

    .line 464
    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/binding/ListExpressionHelper$Generic;->changeListeners:[Ljavafx/beans/value/ChangeListener;

    array-length v6, v6

    new-array v6, v6, [Ljavafx/beans/value/ChangeListener;

    iput-object v6, v5, Lcom/sun/javafx/binding/ListExpressionHelper$Generic;->changeListeners:[Ljavafx/beans/value/ChangeListener;

    .line 465
    move-object v5, v4

    const/4 v6, 0x0

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/binding/ListExpressionHelper$Generic;->changeListeners:[Ljavafx/beans/value/ChangeListener;

    const/4 v8, 0x0

    move v9, v2

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    invoke-static {v5, v6, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 467
    :cond_5
    move v5, v3

    if-lez v5, :cond_6

    .line 468
    move-object v5, v4

    move v6, v2

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/binding/ListExpressionHelper$Generic;->changeListeners:[Ljavafx/beans/value/ChangeListener;

    move v8, v2

    move v9, v3

    invoke-static {v5, v6, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 470
    :cond_6
    move-object v5, v0

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    iget v6, v6, Lcom/sun/javafx/binding/ListExpressionHelper$Generic;->changeSize:I

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    iput v6, v5, Lcom/sun/javafx/binding/ListExpressionHelper$Generic;->changeSize:I

    .line 471
    move-object v5, v0

    iget-boolean v5, v5, Lcom/sun/javafx/binding/ListExpressionHelper$Generic;->locked:Z

    if-nez v5, :cond_7

    .line 472
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/binding/ListExpressionHelper$Generic;->changeListeners:[Ljavafx/beans/value/ChangeListener;

    move-object v6, v0

    iget v6, v6, Lcom/sun/javafx/binding/ListExpressionHelper$Generic;->changeSize:I

    const/4 v7, 0x0

    aput-object v7, v5, v6

    .line 475
    :cond_7
    goto :goto_2

    .line 448
    .end local v3    # "numMoved":I
    .end local v4    # "oldListeners":[Ljavafx/beans/value/ChangeListener;, "[Ljavafx/beans/value/ChangeListener<-Ljavafx/collections/ObservableList<TE;>;>;"
    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0
.end method

.method protected removeListener(Ljavafx/collections/ListChangeListener;)Lcom/sun/javafx/binding/ListExpressionHelper;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ListChangeListener",
            "<-TE;>;)",
            "Lcom/sun/javafx/binding/ListExpressionHelper",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 509
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/ListExpressionHelper$Generic;, "Lcom/sun/javafx/binding/ListExpressionHelper$Generic<TE;>;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/collections/ListChangeListener;, "Ljavafx/collections/ListChangeListener<-TE;>;"
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/binding/ListExpressionHelper$Generic;->listChangeListeners:[Ljavafx/collections/ListChangeListener;

    if-eqz v5, :cond_2

    .line 510
    const/4 v5, 0x0

    move v2, v5

    .local v2, "index":I
    :goto_0
    move v5, v2

    move-object v6, v0

    iget v6, v6, Lcom/sun/javafx/binding/ListExpressionHelper$Generic;->listChangeSize:I

    if-ge v5, v6, :cond_2

    .line 511
    move-object v5, v1

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/binding/ListExpressionHelper$Generic;->listChangeListeners:[Ljavafx/collections/ListChangeListener;

    move v7, v2

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 512
    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/binding/ListExpressionHelper$Generic;->listChangeSize:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_3

    .line 513
    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/binding/ListExpressionHelper$Generic;->invalidationSize:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/binding/ListExpressionHelper$Generic;->changeSize:I

    if-nez v5, :cond_0

    .line 514
    new-instance v5, Lcom/sun/javafx/binding/ListExpressionHelper$SingleInvalidation;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/binding/ListExpressionHelper$Generic;->observable:Ljavafx/beans/value/ObservableListValue;

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/binding/ListExpressionHelper$Generic;->invalidationListeners:[Ljavafx/beans/InvalidationListener;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    const/4 v9, 0x0

    invoke-direct {v6, v7, v8, v9}, Lcom/sun/javafx/binding/ListExpressionHelper$SingleInvalidation;-><init>(Ljavafx/beans/value/ObservableListValue;Ljavafx/beans/InvalidationListener;Lcom/sun/javafx/binding/ListExpressionHelper$1;)V

    move-object v0, v5

    .line 541
    .end local v0    # "this":Lcom/sun/javafx/binding/ListExpressionHelper$Generic;, "Lcom/sun/javafx/binding/ListExpressionHelper$Generic<TE;>;"
    .end local v2    # "index":I
    :goto_1
    return-object v0

    .line 515
    .restart local v0    # "this":Lcom/sun/javafx/binding/ListExpressionHelper$Generic;, "Lcom/sun/javafx/binding/ListExpressionHelper$Generic<TE;>;"
    .restart local v2    # "index":I
    :cond_0
    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/binding/ListExpressionHelper$Generic;->invalidationSize:I

    if-nez v5, :cond_1

    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/binding/ListExpressionHelper$Generic;->changeSize:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 516
    new-instance v5, Lcom/sun/javafx/binding/ListExpressionHelper$SingleChange;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/binding/ListExpressionHelper$Generic;->observable:Ljavafx/beans/value/ObservableListValue;

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/binding/ListExpressionHelper$Generic;->changeListeners:[Ljavafx/beans/value/ChangeListener;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    const/4 v9, 0x0

    invoke-direct {v6, v7, v8, v9}, Lcom/sun/javafx/binding/ListExpressionHelper$SingleChange;-><init>(Ljavafx/beans/value/ObservableListValue;Ljavafx/beans/value/ChangeListener;Lcom/sun/javafx/binding/ListExpressionHelper$1;)V

    move-object v0, v5

    goto :goto_1

    .line 518
    :cond_1
    move-object v5, v0

    const/4 v6, 0x0

    iput-object v6, v5, Lcom/sun/javafx/binding/ListExpressionHelper$Generic;->listChangeListeners:[Ljavafx/collections/ListChangeListener;

    .line 519
    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Lcom/sun/javafx/binding/ListExpressionHelper$Generic;->listChangeSize:I

    .line 541
    .end local v2    # "index":I
    :cond_2
    :goto_2
    move-object v5, v0

    move-object v0, v5

    goto :goto_1

    .line 520
    .restart local v2    # "index":I
    :cond_3
    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/binding/ListExpressionHelper$Generic;->listChangeSize:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_4

    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/binding/ListExpressionHelper$Generic;->invalidationSize:I

    if-nez v5, :cond_4

    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/binding/ListExpressionHelper$Generic;->changeSize:I

    if-nez v5, :cond_4

    .line 521
    new-instance v5, Lcom/sun/javafx/binding/ListExpressionHelper$SingleListChange;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/binding/ListExpressionHelper$Generic;->observable:Ljavafx/beans/value/ObservableListValue;

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/binding/ListExpressionHelper$Generic;->listChangeListeners:[Ljavafx/collections/ListChangeListener;

    const/4 v9, 0x1

    move v10, v2

    rsub-int/lit8 v9, v10, 0x1

    aget-object v8, v8, v9

    const/4 v9, 0x0

    invoke-direct {v6, v7, v8, v9}, Lcom/sun/javafx/binding/ListExpressionHelper$SingleListChange;-><init>(Ljavafx/beans/value/ObservableListValue;Ljavafx/collections/ListChangeListener;Lcom/sun/javafx/binding/ListExpressionHelper$1;)V

    move-object v0, v5

    goto :goto_1

    .line 523
    :cond_4
    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/binding/ListExpressionHelper$Generic;->listChangeSize:I

    move v6, v2

    sub-int/2addr v5, v6

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    move v3, v5

    .line 524
    .local v3, "numMoved":I
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/binding/ListExpressionHelper$Generic;->listChangeListeners:[Ljavafx/collections/ListChangeListener;

    move-object v4, v5

    .line 525
    .local v4, "oldListeners":[Ljavafx/collections/ListChangeListener;, "[Ljavafx/collections/ListChangeListener<-TE;>;"
    move-object v5, v0

    iget-boolean v5, v5, Lcom/sun/javafx/binding/ListExpressionHelper$Generic;->locked:Z

    if-eqz v5, :cond_5

    .line 526
    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/binding/ListExpressionHelper$Generic;->listChangeListeners:[Ljavafx/collections/ListChangeListener;

    array-length v6, v6

    new-array v6, v6, [Ljavafx/collections/ListChangeListener;

    iput-object v6, v5, Lcom/sun/javafx/binding/ListExpressionHelper$Generic;->listChangeListeners:[Ljavafx/collections/ListChangeListener;

    .line 527
    move-object v5, v4

    const/4 v6, 0x0

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/binding/ListExpressionHelper$Generic;->listChangeListeners:[Ljavafx/collections/ListChangeListener;

    const/4 v8, 0x0

    move v9, v2

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    invoke-static {v5, v6, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 529
    :cond_5
    move v5, v3

    if-lez v5, :cond_6

    .line 530
    move-object v5, v4

    move v6, v2

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/binding/ListExpressionHelper$Generic;->listChangeListeners:[Ljavafx/collections/ListChangeListener;

    move v8, v2

    move v9, v3

    invoke-static {v5, v6, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 532
    :cond_6
    move-object v5, v0

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    iget v6, v6, Lcom/sun/javafx/binding/ListExpressionHelper$Generic;->listChangeSize:I

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    iput v6, v5, Lcom/sun/javafx/binding/ListExpressionHelper$Generic;->listChangeSize:I

    .line 533
    move-object v5, v0

    iget-boolean v5, v5, Lcom/sun/javafx/binding/ListExpressionHelper$Generic;->locked:Z

    if-nez v5, :cond_7

    .line 534
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/binding/ListExpressionHelper$Generic;->listChangeListeners:[Ljavafx/collections/ListChangeListener;

    move-object v6, v0

    iget v6, v6, Lcom/sun/javafx/binding/ListExpressionHelper$Generic;->listChangeSize:I

    const/4 v7, 0x0

    aput-object v7, v5, v6

    .line 537
    :cond_7
    goto :goto_2

    .line 510
    .end local v3    # "numMoved":I
    .end local v4    # "oldListeners":[Ljavafx/collections/ListChangeListener;, "[Ljavafx/collections/ListChangeListener<-TE;>;"
    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0
.end method
