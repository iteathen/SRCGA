.class Lcom/sun/javafx/binding/ExpressionHelper$Generic;
.super Lcom/sun/javafx/binding/ExpressionHelper;
.source "ExpressionHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/binding/ExpressionHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Generic"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/sun/javafx/binding/ExpressionHelper",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private changeListeners:[Ljavafx/beans/value/ChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljavafx/beans/value/ChangeListener",
            "<-TT;>;"
        }
    .end annotation
.end field

.field private changeSize:I

.field private currentValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private invalidationListeners:[Ljavafx/beans/InvalidationListener;

.field private invalidationSize:I

.field private locked:Z


# direct methods
.method private constructor <init>(Ljavafx/beans/value/ObservableValue;Ljavafx/beans/InvalidationListener;Ljavafx/beans/InvalidationListener;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/value/ObservableValue",
            "<TT;>;",
            "Ljavafx/beans/InvalidationListener;",
            "Ljavafx/beans/InvalidationListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 199
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/ExpressionHelper$Generic;, "Lcom/sun/javafx/binding/ExpressionHelper$Generic<TT;>;"
    move-object v1, p1

    .local v1, "observable":Ljavafx/beans/value/ObservableValue;, "Ljavafx/beans/value/ObservableValue<TT;>;"
    move-object v2, p2

    .local v2, "listener0":Ljavafx/beans/InvalidationListener;
    move-object v3, p3

    .local v3, "listener1":Ljavafx/beans/InvalidationListener;
    move-object v4, v0

    move-object v5, v1

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lcom/sun/javafx/binding/ExpressionHelper;-><init>(Ljavafx/beans/value/ObservableValue;Lcom/sun/javafx/binding/ExpressionHelper$1;)V

    .line 200
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

    iput-object v5, v4, Lcom/sun/javafx/binding/ExpressionHelper$Generic;->invalidationListeners:[Ljavafx/beans/InvalidationListener;

    .line 201
    move-object v4, v0

    const/4 v5, 0x2

    iput v5, v4, Lcom/sun/javafx/binding/ExpressionHelper$Generic;->invalidationSize:I

    .line 202
    return-void
.end method

.method synthetic constructor <init>(Ljavafx/beans/value/ObservableValue;Ljavafx/beans/InvalidationListener;Ljavafx/beans/InvalidationListener;Lcom/sun/javafx/binding/ExpressionHelper$1;)V
    .locals 9

    .prologue
    .line 189
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/ExpressionHelper$Generic;, "Lcom/sun/javafx/binding/ExpressionHelper$Generic<TT;>;"
    move-object v1, p1

    .local v1, "x0":Ljavafx/beans/value/ObservableValue;
    move-object v2, p2

    .local v2, "x1":Ljavafx/beans/InvalidationListener;
    move-object v3, p3

    .local v3, "x2":Ljavafx/beans/InvalidationListener;
    move-object v4, p4

    .local v4, "x3":Lcom/sun/javafx/binding/ExpressionHelper$1;
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    invoke-direct {v5, v6, v7, v8}, Lcom/sun/javafx/binding/ExpressionHelper$Generic;-><init>(Ljavafx/beans/value/ObservableValue;Ljavafx/beans/InvalidationListener;Ljavafx/beans/InvalidationListener;)V

    return-void
.end method

.method private constructor <init>(Ljavafx/beans/value/ObservableValue;Ljavafx/beans/InvalidationListener;Ljavafx/beans/value/ChangeListener;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/value/ObservableValue",
            "<TT;>;",
            "Ljavafx/beans/InvalidationListener;",
            "Ljavafx/beans/value/ChangeListener",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 212
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/ExpressionHelper$Generic;, "Lcom/sun/javafx/binding/ExpressionHelper$Generic<TT;>;"
    move-object v1, p1

    .local v1, "observable":Ljavafx/beans/value/ObservableValue;, "Ljavafx/beans/value/ObservableValue<TT;>;"
    move-object v2, p2

    .local v2, "invalidationListener":Ljavafx/beans/InvalidationListener;
    move-object v3, p3

    .local v3, "changeListener":Ljavafx/beans/value/ChangeListener;, "Ljavafx/beans/value/ChangeListener<-TT;>;"
    move-object v4, v0

    move-object v5, v1

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lcom/sun/javafx/binding/ExpressionHelper;-><init>(Ljavafx/beans/value/ObservableValue;Lcom/sun/javafx/binding/ExpressionHelper$1;)V

    .line 213
    move-object v4, v0

    const/4 v5, 0x1

    new-array v5, v5, [Ljavafx/beans/InvalidationListener;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move-object v8, v2

    aput-object v8, v6, v7

    iput-object v5, v4, Lcom/sun/javafx/binding/ExpressionHelper$Generic;->invalidationListeners:[Ljavafx/beans/InvalidationListener;

    .line 214
    move-object v4, v0

    const/4 v5, 0x1

    iput v5, v4, Lcom/sun/javafx/binding/ExpressionHelper$Generic;->invalidationSize:I

    .line 215
    move-object v4, v0

    const/4 v5, 0x1

    new-array v5, v5, [Ljavafx/beans/value/ChangeListener;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move-object v8, v3

    aput-object v8, v6, v7

    iput-object v5, v4, Lcom/sun/javafx/binding/ExpressionHelper$Generic;->changeListeners:[Ljavafx/beans/value/ChangeListener;

    .line 216
    move-object v4, v0

    const/4 v5, 0x1

    iput v5, v4, Lcom/sun/javafx/binding/ExpressionHelper$Generic;->changeSize:I

    .line 217
    move-object v4, v0

    move-object v5, v1

    invoke-interface {v5}, Ljavafx/beans/value/ObservableValue;->getValue()Ljava/lang/Object;

    move-result-object v5

    iput-object v5, v4, Lcom/sun/javafx/binding/ExpressionHelper$Generic;->currentValue:Ljava/lang/Object;

    .line 218
    return-void
.end method

.method synthetic constructor <init>(Ljavafx/beans/value/ObservableValue;Ljavafx/beans/InvalidationListener;Ljavafx/beans/value/ChangeListener;Lcom/sun/javafx/binding/ExpressionHelper$1;)V
    .locals 9

    .prologue
    .line 189
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/ExpressionHelper$Generic;, "Lcom/sun/javafx/binding/ExpressionHelper$Generic<TT;>;"
    move-object v1, p1

    .local v1, "x0":Ljavafx/beans/value/ObservableValue;
    move-object v2, p2

    .local v2, "x1":Ljavafx/beans/InvalidationListener;
    move-object v3, p3

    .local v3, "x2":Ljavafx/beans/value/ChangeListener;
    move-object v4, p4

    .local v4, "x3":Lcom/sun/javafx/binding/ExpressionHelper$1;
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    invoke-direct {v5, v6, v7, v8}, Lcom/sun/javafx/binding/ExpressionHelper$Generic;-><init>(Ljavafx/beans/value/ObservableValue;Ljavafx/beans/InvalidationListener;Ljavafx/beans/value/ChangeListener;)V

    return-void
.end method

.method private constructor <init>(Ljavafx/beans/value/ObservableValue;Ljavafx/beans/value/ChangeListener;Ljavafx/beans/value/ChangeListener;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/value/ObservableValue",
            "<TT;>;",
            "Ljavafx/beans/value/ChangeListener",
            "<-TT;>;",
            "Ljavafx/beans/value/ChangeListener",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 205
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/ExpressionHelper$Generic;, "Lcom/sun/javafx/binding/ExpressionHelper$Generic<TT;>;"
    move-object v1, p1

    .local v1, "observable":Ljavafx/beans/value/ObservableValue;, "Ljavafx/beans/value/ObservableValue<TT;>;"
    move-object v2, p2

    .local v2, "listener0":Ljavafx/beans/value/ChangeListener;, "Ljavafx/beans/value/ChangeListener<-TT;>;"
    move-object v3, p3

    .local v3, "listener1":Ljavafx/beans/value/ChangeListener;, "Ljavafx/beans/value/ChangeListener<-TT;>;"
    move-object v4, v0

    move-object v5, v1

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lcom/sun/javafx/binding/ExpressionHelper;-><init>(Ljavafx/beans/value/ObservableValue;Lcom/sun/javafx/binding/ExpressionHelper$1;)V

    .line 206
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

    iput-object v5, v4, Lcom/sun/javafx/binding/ExpressionHelper$Generic;->changeListeners:[Ljavafx/beans/value/ChangeListener;

    .line 207
    move-object v4, v0

    const/4 v5, 0x2

    iput v5, v4, Lcom/sun/javafx/binding/ExpressionHelper$Generic;->changeSize:I

    .line 208
    move-object v4, v0

    move-object v5, v1

    invoke-interface {v5}, Ljavafx/beans/value/ObservableValue;->getValue()Ljava/lang/Object;

    move-result-object v5

    iput-object v5, v4, Lcom/sun/javafx/binding/ExpressionHelper$Generic;->currentValue:Ljava/lang/Object;

    .line 209
    return-void
.end method

.method synthetic constructor <init>(Ljavafx/beans/value/ObservableValue;Ljavafx/beans/value/ChangeListener;Ljavafx/beans/value/ChangeListener;Lcom/sun/javafx/binding/ExpressionHelper$1;)V
    .locals 9

    .prologue
    .line 189
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/ExpressionHelper$Generic;, "Lcom/sun/javafx/binding/ExpressionHelper$Generic<TT;>;"
    move-object v1, p1

    .local v1, "x0":Ljavafx/beans/value/ObservableValue;
    move-object v2, p2

    .local v2, "x1":Ljavafx/beans/value/ChangeListener;
    move-object v3, p3

    .local v3, "x2":Ljavafx/beans/value/ChangeListener;
    move-object v4, p4

    .local v4, "x3":Lcom/sun/javafx/binding/ExpressionHelper$1;
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    invoke-direct {v5, v6, v7, v8}, Lcom/sun/javafx/binding/ExpressionHelper$Generic;-><init>(Ljavafx/beans/value/ObservableValue;Ljavafx/beans/value/ChangeListener;Ljavafx/beans/value/ChangeListener;)V

    return-void
.end method


# virtual methods
.method protected addListener(Ljavafx/beans/InvalidationListener;)Lcom/sun/javafx/binding/ExpressionHelper$Generic;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/InvalidationListener;",
            ")",
            "Lcom/sun/javafx/binding/ExpressionHelper$Generic",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 222
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/ExpressionHelper$Generic;, "Lcom/sun/javafx/binding/ExpressionHelper$Generic<TT;>;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/InvalidationListener;
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/binding/ExpressionHelper$Generic;->invalidationListeners:[Ljavafx/beans/InvalidationListener;

    if-nez v4, :cond_0

    .line 223
    move-object v4, v0

    const/4 v5, 0x1

    new-array v5, v5, [Ljavafx/beans/InvalidationListener;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move-object v8, v1

    aput-object v8, v6, v7

    iput-object v5, v4, Lcom/sun/javafx/binding/ExpressionHelper$Generic;->invalidationListeners:[Ljavafx/beans/InvalidationListener;

    .line 224
    move-object v4, v0

    const/4 v5, 0x1

    iput v5, v4, Lcom/sun/javafx/binding/ExpressionHelper$Generic;->invalidationSize:I

    .line 239
    :goto_0
    move-object v4, v0

    move-object v0, v4

    .end local v0    # "this":Lcom/sun/javafx/binding/ExpressionHelper$Generic;, "Lcom/sun/javafx/binding/ExpressionHelper$Generic<TT;>;"
    return-object v0

    .line 226
    .restart local v0    # "this":Lcom/sun/javafx/binding/ExpressionHelper$Generic;, "Lcom/sun/javafx/binding/ExpressionHelper$Generic<TT;>;"
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/binding/ExpressionHelper$Generic;->invalidationListeners:[Ljavafx/beans/InvalidationListener;

    array-length v4, v4

    move v2, v4

    .line 227
    .local v2, "oldCapacity":I
    move-object v4, v0

    iget-boolean v4, v4, Lcom/sun/javafx/binding/ExpressionHelper$Generic;->locked:Z

    if-eqz v4, :cond_3

    .line 228
    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/binding/ExpressionHelper$Generic;->invalidationSize:I

    move v5, v2

    if-ge v4, v5, :cond_2

    move v4, v2

    :goto_1
    move v3, v4

    .line 229
    .local v3, "newCapacity":I
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/binding/ExpressionHelper$Generic;->invalidationListeners:[Ljavafx/beans/InvalidationListener;

    move v6, v3

    invoke-static {v5, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljavafx/beans/InvalidationListener;

    iput-object v5, v4, Lcom/sun/javafx/binding/ExpressionHelper$Generic;->invalidationListeners:[Ljavafx/beans/InvalidationListener;

    .line 230
    .line 237
    .end local v3    # "newCapacity":I
    :cond_1
    :goto_2
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/binding/ExpressionHelper$Generic;->invalidationListeners:[Ljavafx/beans/InvalidationListener;

    move-object v5, v0

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    iget v6, v6, Lcom/sun/javafx/binding/ExpressionHelper$Generic;->invalidationSize:I

    move-object v9, v5

    move v10, v6

    move v5, v10

    move-object v6, v9

    move v7, v10

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Lcom/sun/javafx/binding/ExpressionHelper$Generic;->invalidationSize:I

    move-object v6, v1

    aput-object v6, v4, v5

    goto :goto_0

    .line 228
    :cond_2
    move v4, v2

    const/4 v5, 0x3

    mul-int/lit8 v4, v4, 0x3

    const/4 v5, 0x2

    div-int/lit8 v4, v4, 0x2

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 230
    :cond_3
    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/binding/ExpressionHelper$Generic;->invalidationSize:I

    move v5, v2

    if-ne v4, v5, :cond_1

    .line 231
    move-object v4, v0

    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/binding/ExpressionHelper$Generic;->invalidationSize:I

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/binding/ExpressionHelper$Generic;->invalidationListeners:[Ljavafx/beans/InvalidationListener;

    invoke-static {v5, v6}, Lcom/sun/javafx/binding/ExpressionHelper$Generic;->trim(I[Ljava/lang/Object;)I

    move-result v5

    iput v5, v4, Lcom/sun/javafx/binding/ExpressionHelper$Generic;->invalidationSize:I

    .line 232
    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/binding/ExpressionHelper$Generic;->invalidationSize:I

    move v5, v2

    if-ne v4, v5, :cond_1

    .line 233
    move v4, v2

    const/4 v5, 0x3

    mul-int/lit8 v4, v4, 0x3

    const/4 v5, 0x2

    div-int/lit8 v4, v4, 0x2

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    move v3, v4

    .line 234
    .restart local v3    # "newCapacity":I
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/binding/ExpressionHelper$Generic;->invalidationListeners:[Ljavafx/beans/InvalidationListener;

    move v6, v3

    invoke-static {v5, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljavafx/beans/InvalidationListener;

    iput-object v5, v4, Lcom/sun/javafx/binding/ExpressionHelper$Generic;->invalidationListeners:[Ljavafx/beans/InvalidationListener;

    goto :goto_2
.end method

.method protected bridge synthetic addListener(Ljavafx/beans/InvalidationListener;)Lcom/sun/javafx/binding/ExpressionHelper;
    .locals 4

    .prologue
    .line 189
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/ExpressionHelper$Generic;, "Lcom/sun/javafx/binding/ExpressionHelper$Generic<TT;>;"
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/javafx/binding/ExpressionHelper$Generic;->addListener(Ljavafx/beans/InvalidationListener;)Lcom/sun/javafx/binding/ExpressionHelper$Generic;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/binding/ExpressionHelper$Generic;, "Lcom/sun/javafx/binding/ExpressionHelper$Generic<TT;>;"
    return-object v0
.end method

.method protected addListener(Ljavafx/beans/value/ChangeListener;)Lcom/sun/javafx/binding/ExpressionHelper;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/value/ChangeListener",
            "<-TT;>;)",
            "Lcom/sun/javafx/binding/ExpressionHelper",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 279
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/ExpressionHelper$Generic;, "Lcom/sun/javafx/binding/ExpressionHelper$Generic<TT;>;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/value/ChangeListener;, "Ljavafx/beans/value/ChangeListener<-TT;>;"
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/binding/ExpressionHelper$Generic;->changeListeners:[Ljavafx/beans/value/ChangeListener;

    if-nez v4, :cond_1

    .line 280
    move-object v4, v0

    const/4 v5, 0x1

    new-array v5, v5, [Ljavafx/beans/value/ChangeListener;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move-object v8, v1

    aput-object v8, v6, v7

    iput-object v5, v4, Lcom/sun/javafx/binding/ExpressionHelper$Generic;->changeListeners:[Ljavafx/beans/value/ChangeListener;

    .line 281
    move-object v4, v0

    const/4 v5, 0x1

    iput v5, v4, Lcom/sun/javafx/binding/ExpressionHelper$Generic;->changeSize:I

    .line 296
    :goto_0
    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/binding/ExpressionHelper$Generic;->changeSize:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 297
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/binding/ExpressionHelper$Generic;->observable:Ljavafx/beans/value/ObservableValue;

    invoke-interface {v5}, Ljavafx/beans/value/ObservableValue;->getValue()Ljava/lang/Object;

    move-result-object v5

    iput-object v5, v4, Lcom/sun/javafx/binding/ExpressionHelper$Generic;->currentValue:Ljava/lang/Object;

    .line 299
    :cond_0
    move-object v4, v0

    move-object v0, v4

    .end local v0    # "this":Lcom/sun/javafx/binding/ExpressionHelper$Generic;, "Lcom/sun/javafx/binding/ExpressionHelper$Generic<TT;>;"
    return-object v0

    .line 283
    .restart local v0    # "this":Lcom/sun/javafx/binding/ExpressionHelper$Generic;, "Lcom/sun/javafx/binding/ExpressionHelper$Generic<TT;>;"
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/binding/ExpressionHelper$Generic;->changeListeners:[Ljavafx/beans/value/ChangeListener;

    array-length v4, v4

    move v2, v4

    .line 284
    .local v2, "oldCapacity":I
    move-object v4, v0

    iget-boolean v4, v4, Lcom/sun/javafx/binding/ExpressionHelper$Generic;->locked:Z

    if-eqz v4, :cond_4

    .line 285
    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/binding/ExpressionHelper$Generic;->changeSize:I

    move v5, v2

    if-ge v4, v5, :cond_3

    move v4, v2

    :goto_1
    move v3, v4

    .line 286
    .local v3, "newCapacity":I
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/binding/ExpressionHelper$Generic;->changeListeners:[Ljavafx/beans/value/ChangeListener;

    move v6, v3

    invoke-static {v5, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljavafx/beans/value/ChangeListener;

    iput-object v5, v4, Lcom/sun/javafx/binding/ExpressionHelper$Generic;->changeListeners:[Ljavafx/beans/value/ChangeListener;

    .line 287
    .line 294
    .end local v3    # "newCapacity":I
    :cond_2
    :goto_2
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/binding/ExpressionHelper$Generic;->changeListeners:[Ljavafx/beans/value/ChangeListener;

    move-object v5, v0

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    iget v6, v6, Lcom/sun/javafx/binding/ExpressionHelper$Generic;->changeSize:I

    move-object v9, v5

    move v10, v6

    move v5, v10

    move-object v6, v9

    move v7, v10

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Lcom/sun/javafx/binding/ExpressionHelper$Generic;->changeSize:I

    move-object v6, v1

    aput-object v6, v4, v5

    goto :goto_0

    .line 285
    :cond_3
    move v4, v2

    const/4 v5, 0x3

    mul-int/lit8 v4, v4, 0x3

    const/4 v5, 0x2

    div-int/lit8 v4, v4, 0x2

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 287
    :cond_4
    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/binding/ExpressionHelper$Generic;->changeSize:I

    move v5, v2

    if-ne v4, v5, :cond_2

    .line 288
    move-object v4, v0

    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/binding/ExpressionHelper$Generic;->changeSize:I

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/binding/ExpressionHelper$Generic;->changeListeners:[Ljavafx/beans/value/ChangeListener;

    invoke-static {v5, v6}, Lcom/sun/javafx/binding/ExpressionHelper$Generic;->trim(I[Ljava/lang/Object;)I

    move-result v5

    iput v5, v4, Lcom/sun/javafx/binding/ExpressionHelper$Generic;->changeSize:I

    .line 289
    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/binding/ExpressionHelper$Generic;->changeSize:I

    move v5, v2

    if-ne v4, v5, :cond_2

    .line 290
    move v4, v2

    const/4 v5, 0x3

    mul-int/lit8 v4, v4, 0x3

    const/4 v5, 0x2

    div-int/lit8 v4, v4, 0x2

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    move v3, v4

    .line 291
    .restart local v3    # "newCapacity":I
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/binding/ExpressionHelper$Generic;->changeListeners:[Ljavafx/beans/value/ChangeListener;

    move v6, v3

    invoke-static {v5, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljavafx/beans/value/ChangeListener;

    iput-object v5, v4, Lcom/sun/javafx/binding/ExpressionHelper$Generic;->changeListeners:[Ljavafx/beans/value/ChangeListener;

    goto :goto_2
.end method

.method protected fireValueChangedEvent()V
    .locals 14

    .prologue
    .line 339
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/ExpressionHelper$Generic;, "Lcom/sun/javafx/binding/ExpressionHelper$Generic<TT;>;"
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/javafx/binding/ExpressionHelper$Generic;->invalidationListeners:[Ljavafx/beans/InvalidationListener;

    move-object v1, v10

    .line 340
    .local v1, "curInvalidationList":[Ljavafx/beans/InvalidationListener;
    move-object v10, v0

    iget v10, v10, Lcom/sun/javafx/binding/ExpressionHelper$Generic;->invalidationSize:I

    move v2, v10

    .line 341
    .local v2, "curInvalidationSize":I
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/javafx/binding/ExpressionHelper$Generic;->changeListeners:[Ljavafx/beans/value/ChangeListener;

    move-object v3, v10

    .line 342
    .local v3, "curChangeList":[Ljavafx/beans/value/ChangeListener;, "[Ljavafx/beans/value/ChangeListener<-TT;>;"
    move-object v10, v0

    iget v10, v10, Lcom/sun/javafx/binding/ExpressionHelper$Generic;->changeSize:I

    move v4, v10

    .line 345
    .local v4, "curChangeSize":I
    move-object v10, v0

    const/4 v11, 0x1

    :try_start_0
    iput-boolean v11, v10, Lcom/sun/javafx/binding/ExpressionHelper$Generic;->locked:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 346
    const/4 v10, 0x0

    move v5, v10

    .local v5, "i":I
    :goto_0
    move v10, v5

    move v11, v2

    if-ge v10, v11, :cond_0

    .line 348
    move-object v10, v1

    move v11, v5

    :try_start_1
    aget-object v10, v10, v11

    move-object v11, v0

    iget-object v11, v11, Lcom/sun/javafx/binding/ExpressionHelper$Generic;->observable:Ljavafx/beans/value/ObservableValue;

    invoke-interface {v10, v11}, Ljavafx/beans/InvalidationListener;->invalidated(Ljavafx/beans/Observable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 351
    .line 346
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 349
    :catch_0
    move-exception v10

    move-object v6, v10

    .line 350
    .local v6, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Thread;->getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v10

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v11

    move-object v12, v6

    invoke-interface {v10, v11, v12}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 368
    .end local v5    # "i":I
    .end local v6    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v10

    move-object v9, v10

    move-object v10, v0

    const/4 v11, 0x0

    iput-boolean v11, v10, Lcom/sun/javafx/binding/ExpressionHelper$Generic;->locked:Z

    move-object v10, v9

    throw v10

    .line 353
    .restart local v5    # "i":I
    :cond_0
    move v10, v4

    if-lez v10, :cond_4

    .line 354
    move-object v10, v0

    :try_start_3
    iget-object v10, v10, Lcom/sun/javafx/binding/ExpressionHelper$Generic;->currentValue:Ljava/lang/Object;

    move-object v5, v10

    .line 355
    .local v5, "oldValue":Ljava/lang/Object;, "TT;"
    move-object v10, v0

    move-object v11, v0

    iget-object v11, v11, Lcom/sun/javafx/binding/ExpressionHelper$Generic;->observable:Ljavafx/beans/value/ObservableValue;

    invoke-interface {v11}, Ljavafx/beans/value/ObservableValue;->getValue()Ljava/lang/Object;

    move-result-object v11

    iput-object v11, v10, Lcom/sun/javafx/binding/ExpressionHelper$Generic;->currentValue:Ljava/lang/Object;

    .line 356
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/javafx/binding/ExpressionHelper$Generic;->currentValue:Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v10, :cond_2

    move-object v10, v5

    if-eqz v10, :cond_1

    const/4 v10, 0x1

    :goto_2
    move v6, v10

    .line 357
    .local v6, "changed":Z
    move v10, v6

    if-eqz v10, :cond_4

    .line 358
    const/4 v10, 0x0

    move v7, v10

    .local v7, "i":I
    :goto_3
    move v10, v7

    move v11, v4

    if-ge v10, v11, :cond_4

    .line 360
    move-object v10, v3

    move v11, v7

    :try_start_4
    aget-object v10, v10, v11

    move-object v11, v0

    iget-object v11, v11, Lcom/sun/javafx/binding/ExpressionHelper$Generic;->observable:Ljavafx/beans/value/ObservableValue;

    move-object v12, v5

    move-object v13, v0

    iget-object v13, v13, Lcom/sun/javafx/binding/ExpressionHelper$Generic;->currentValue:Ljava/lang/Object;

    invoke-interface {v10, v11, v12, v13}, Ljavafx/beans/value/ChangeListener;->changed(Ljavafx/beans/value/ObservableValue;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 363
    .line 358
    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 356
    .end local v6    # "changed":Z
    .end local v7    # "i":I
    :cond_1
    const/4 v10, 0x0

    goto :goto_2

    :cond_2
    move-object v10, v0

    :try_start_5
    iget-object v10, v10, Lcom/sun/javafx/binding/ExpressionHelper$Generic;->currentValue:Ljava/lang/Object;

    move-object v11, v5

    invoke-virtual {v10, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    const/4 v10, 0x1

    goto :goto_2

    :cond_3
    const/4 v10, 0x0

    goto :goto_2

    .line 361
    .restart local v6    # "changed":Z
    .restart local v7    # "i":I
    :catch_1
    move-exception v10

    move-object v8, v10

    .line 362
    .local v8, "e":Ljava/lang/Exception;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Thread;->getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v10

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v11

    move-object v12, v8

    invoke-interface {v10, v11, v12}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_4

    .line 368
    .end local v5    # "oldValue":Ljava/lang/Object;, "TT;"
    .end local v6    # "changed":Z
    .end local v7    # "i":I
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_4
    move-object v10, v0

    const/4 v11, 0x0

    iput-boolean v11, v10, Lcom/sun/javafx/binding/ExpressionHelper$Generic;->locked:Z

    .line 369
    .line 370
    return-void
.end method

.method protected removeListener(Ljavafx/beans/InvalidationListener;)Lcom/sun/javafx/binding/ExpressionHelper;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/InvalidationListener;",
            ")",
            "Lcom/sun/javafx/binding/ExpressionHelper",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 244
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/ExpressionHelper$Generic;, "Lcom/sun/javafx/binding/ExpressionHelper$Generic<TT;>;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/InvalidationListener;
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/binding/ExpressionHelper$Generic;->invalidationListeners:[Ljavafx/beans/InvalidationListener;

    if-eqz v5, :cond_1

    .line 245
    const/4 v5, 0x0

    move v2, v5

    .local v2, "index":I
    :goto_0
    move v5, v2

    move-object v6, v0

    iget v6, v6, Lcom/sun/javafx/binding/ExpressionHelper$Generic;->invalidationSize:I

    if-ge v5, v6, :cond_1

    .line 246
    move-object v5, v1

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/binding/ExpressionHelper$Generic;->invalidationListeners:[Ljavafx/beans/InvalidationListener;

    move v7, v2

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 247
    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/binding/ExpressionHelper$Generic;->invalidationSize:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    .line 248
    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/binding/ExpressionHelper$Generic;->changeSize:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 249
    new-instance v5, Lcom/sun/javafx/binding/ExpressionHelper$SingleChange;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/binding/ExpressionHelper$Generic;->observable:Ljavafx/beans/value/ObservableValue;

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/binding/ExpressionHelper$Generic;->changeListeners:[Ljavafx/beans/value/ChangeListener;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    const/4 v9, 0x0

    invoke-direct {v6, v7, v8, v9}, Lcom/sun/javafx/binding/ExpressionHelper$SingleChange;-><init>(Ljavafx/beans/value/ObservableValue;Ljavafx/beans/value/ChangeListener;Lcom/sun/javafx/binding/ExpressionHelper$1;)V

    move-object v0, v5

    .line 274
    .end local v0    # "this":Lcom/sun/javafx/binding/ExpressionHelper$Generic;, "Lcom/sun/javafx/binding/ExpressionHelper$Generic<TT;>;"
    .end local v2    # "index":I
    :goto_1
    return-object v0

    .line 251
    .restart local v0    # "this":Lcom/sun/javafx/binding/ExpressionHelper$Generic;, "Lcom/sun/javafx/binding/ExpressionHelper$Generic<TT;>;"
    .restart local v2    # "index":I
    :cond_0
    move-object v5, v0

    const/4 v6, 0x0

    iput-object v6, v5, Lcom/sun/javafx/binding/ExpressionHelper$Generic;->invalidationListeners:[Ljavafx/beans/InvalidationListener;

    .line 252
    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Lcom/sun/javafx/binding/ExpressionHelper$Generic;->invalidationSize:I

    .line 274
    .end local v2    # "index":I
    :cond_1
    :goto_2
    move-object v5, v0

    move-object v0, v5

    goto :goto_1

    .line 253
    .restart local v2    # "index":I
    :cond_2
    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/binding/ExpressionHelper$Generic;->invalidationSize:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_3

    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/binding/ExpressionHelper$Generic;->changeSize:I

    if-nez v5, :cond_3

    .line 254
    new-instance v5, Lcom/sun/javafx/binding/ExpressionHelper$SingleInvalidation;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/binding/ExpressionHelper$Generic;->observable:Ljavafx/beans/value/ObservableValue;

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/binding/ExpressionHelper$Generic;->invalidationListeners:[Ljavafx/beans/InvalidationListener;

    const/4 v9, 0x1

    move v10, v2

    rsub-int/lit8 v9, v10, 0x1

    aget-object v8, v8, v9

    const/4 v9, 0x0

    invoke-direct {v6, v7, v8, v9}, Lcom/sun/javafx/binding/ExpressionHelper$SingleInvalidation;-><init>(Ljavafx/beans/value/ObservableValue;Ljavafx/beans/InvalidationListener;Lcom/sun/javafx/binding/ExpressionHelper$1;)V

    move-object v0, v5

    goto :goto_1

    .line 256
    :cond_3
    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/binding/ExpressionHelper$Generic;->invalidationSize:I

    move v6, v2

    sub-int/2addr v5, v6

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    move v3, v5

    .line 257
    .local v3, "numMoved":I
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/binding/ExpressionHelper$Generic;->invalidationListeners:[Ljavafx/beans/InvalidationListener;

    move-object v4, v5

    .line 258
    .local v4, "oldListeners":[Ljavafx/beans/InvalidationListener;
    move-object v5, v0

    iget-boolean v5, v5, Lcom/sun/javafx/binding/ExpressionHelper$Generic;->locked:Z

    if-eqz v5, :cond_4

    .line 259
    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/binding/ExpressionHelper$Generic;->invalidationListeners:[Ljavafx/beans/InvalidationListener;

    array-length v6, v6

    new-array v6, v6, [Ljavafx/beans/InvalidationListener;

    iput-object v6, v5, Lcom/sun/javafx/binding/ExpressionHelper$Generic;->invalidationListeners:[Ljavafx/beans/InvalidationListener;

    .line 260
    move-object v5, v4

    const/4 v6, 0x0

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/binding/ExpressionHelper$Generic;->invalidationListeners:[Ljavafx/beans/InvalidationListener;

    const/4 v8, 0x0

    move v9, v2

    invoke-static {v5, v6, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 262
    :cond_4
    move v5, v3

    if-lez v5, :cond_5

    .line 263
    move-object v5, v4

    move v6, v2

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/binding/ExpressionHelper$Generic;->invalidationListeners:[Ljavafx/beans/InvalidationListener;

    move v8, v2

    move v9, v3

    invoke-static {v5, v6, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 265
    :cond_5
    move-object v5, v0

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    iget v6, v6, Lcom/sun/javafx/binding/ExpressionHelper$Generic;->invalidationSize:I

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    iput v6, v5, Lcom/sun/javafx/binding/ExpressionHelper$Generic;->invalidationSize:I

    .line 266
    move-object v5, v0

    iget-boolean v5, v5, Lcom/sun/javafx/binding/ExpressionHelper$Generic;->locked:Z

    if-nez v5, :cond_6

    .line 267
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/binding/ExpressionHelper$Generic;->invalidationListeners:[Ljavafx/beans/InvalidationListener;

    move-object v6, v0

    iget v6, v6, Lcom/sun/javafx/binding/ExpressionHelper$Generic;->invalidationSize:I

    const/4 v7, 0x0

    aput-object v7, v5, v6

    .line 270
    :cond_6
    goto :goto_2

    .line 245
    .end local v3    # "numMoved":I
    .end local v4    # "oldListeners":[Ljavafx/beans/InvalidationListener;
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0
.end method

.method protected removeListener(Ljavafx/beans/value/ChangeListener;)Lcom/sun/javafx/binding/ExpressionHelper;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/value/ChangeListener",
            "<-TT;>;)",
            "Lcom/sun/javafx/binding/ExpressionHelper",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 304
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/ExpressionHelper$Generic;, "Lcom/sun/javafx/binding/ExpressionHelper$Generic<TT;>;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/value/ChangeListener;, "Ljavafx/beans/value/ChangeListener<-TT;>;"
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/binding/ExpressionHelper$Generic;->changeListeners:[Ljavafx/beans/value/ChangeListener;

    if-eqz v5, :cond_1

    .line 305
    const/4 v5, 0x0

    move v2, v5

    .local v2, "index":I
    :goto_0
    move v5, v2

    move-object v6, v0

    iget v6, v6, Lcom/sun/javafx/binding/ExpressionHelper$Generic;->changeSize:I

    if-ge v5, v6, :cond_1

    .line 306
    move-object v5, v1

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/binding/ExpressionHelper$Generic;->changeListeners:[Ljavafx/beans/value/ChangeListener;

    move v7, v2

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 307
    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/binding/ExpressionHelper$Generic;->changeSize:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    .line 308
    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/binding/ExpressionHelper$Generic;->invalidationSize:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 309
    new-instance v5, Lcom/sun/javafx/binding/ExpressionHelper$SingleInvalidation;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/binding/ExpressionHelper$Generic;->observable:Ljavafx/beans/value/ObservableValue;

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/binding/ExpressionHelper$Generic;->invalidationListeners:[Ljavafx/beans/InvalidationListener;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    const/4 v9, 0x0

    invoke-direct {v6, v7, v8, v9}, Lcom/sun/javafx/binding/ExpressionHelper$SingleInvalidation;-><init>(Ljavafx/beans/value/ObservableValue;Ljavafx/beans/InvalidationListener;Lcom/sun/javafx/binding/ExpressionHelper$1;)V

    move-object v0, v5

    .line 334
    .end local v0    # "this":Lcom/sun/javafx/binding/ExpressionHelper$Generic;, "Lcom/sun/javafx/binding/ExpressionHelper$Generic<TT;>;"
    .end local v2    # "index":I
    :goto_1
    return-object v0

    .line 311
    .restart local v0    # "this":Lcom/sun/javafx/binding/ExpressionHelper$Generic;, "Lcom/sun/javafx/binding/ExpressionHelper$Generic<TT;>;"
    .restart local v2    # "index":I
    :cond_0
    move-object v5, v0

    const/4 v6, 0x0

    iput-object v6, v5, Lcom/sun/javafx/binding/ExpressionHelper$Generic;->changeListeners:[Ljavafx/beans/value/ChangeListener;

    .line 312
    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Lcom/sun/javafx/binding/ExpressionHelper$Generic;->changeSize:I

    .line 334
    .end local v2    # "index":I
    :cond_1
    :goto_2
    move-object v5, v0

    move-object v0, v5

    goto :goto_1

    .line 313
    .restart local v2    # "index":I
    :cond_2
    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/binding/ExpressionHelper$Generic;->changeSize:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_3

    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/binding/ExpressionHelper$Generic;->invalidationSize:I

    if-nez v5, :cond_3

    .line 314
    new-instance v5, Lcom/sun/javafx/binding/ExpressionHelper$SingleChange;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/binding/ExpressionHelper$Generic;->observable:Ljavafx/beans/value/ObservableValue;

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/binding/ExpressionHelper$Generic;->changeListeners:[Ljavafx/beans/value/ChangeListener;

    const/4 v9, 0x1

    move v10, v2

    rsub-int/lit8 v9, v10, 0x1

    aget-object v8, v8, v9

    const/4 v9, 0x0

    invoke-direct {v6, v7, v8, v9}, Lcom/sun/javafx/binding/ExpressionHelper$SingleChange;-><init>(Ljavafx/beans/value/ObservableValue;Ljavafx/beans/value/ChangeListener;Lcom/sun/javafx/binding/ExpressionHelper$1;)V

    move-object v0, v5

    goto :goto_1

    .line 316
    :cond_3
    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/binding/ExpressionHelper$Generic;->changeSize:I

    move v6, v2

    sub-int/2addr v5, v6

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    move v3, v5

    .line 317
    .local v3, "numMoved":I
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/binding/ExpressionHelper$Generic;->changeListeners:[Ljavafx/beans/value/ChangeListener;

    move-object v4, v5

    .line 318
    .local v4, "oldListeners":[Ljavafx/beans/value/ChangeListener;, "[Ljavafx/beans/value/ChangeListener<-TT;>;"
    move-object v5, v0

    iget-boolean v5, v5, Lcom/sun/javafx/binding/ExpressionHelper$Generic;->locked:Z

    if-eqz v5, :cond_4

    .line 319
    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/binding/ExpressionHelper$Generic;->changeListeners:[Ljavafx/beans/value/ChangeListener;

    array-length v6, v6

    new-array v6, v6, [Ljavafx/beans/value/ChangeListener;

    iput-object v6, v5, Lcom/sun/javafx/binding/ExpressionHelper$Generic;->changeListeners:[Ljavafx/beans/value/ChangeListener;

    .line 320
    move-object v5, v4

    const/4 v6, 0x0

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/binding/ExpressionHelper$Generic;->changeListeners:[Ljavafx/beans/value/ChangeListener;

    const/4 v8, 0x0

    move v9, v2

    invoke-static {v5, v6, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 322
    :cond_4
    move v5, v3

    if-lez v5, :cond_5

    .line 323
    move-object v5, v4

    move v6, v2

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/binding/ExpressionHelper$Generic;->changeListeners:[Ljavafx/beans/value/ChangeListener;

    move v8, v2

    move v9, v3

    invoke-static {v5, v6, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 325
    :cond_5
    move-object v5, v0

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    iget v6, v6, Lcom/sun/javafx/binding/ExpressionHelper$Generic;->changeSize:I

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    iput v6, v5, Lcom/sun/javafx/binding/ExpressionHelper$Generic;->changeSize:I

    .line 326
    move-object v5, v0

    iget-boolean v5, v5, Lcom/sun/javafx/binding/ExpressionHelper$Generic;->locked:Z

    if-nez v5, :cond_6

    .line 327
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/binding/ExpressionHelper$Generic;->changeListeners:[Ljavafx/beans/value/ChangeListener;

    move-object v6, v0

    iget v6, v6, Lcom/sun/javafx/binding/ExpressionHelper$Generic;->changeSize:I

    const/4 v7, 0x0

    aput-object v7, v5, v6

    .line 330
    :cond_6
    goto :goto_2

    .line 305
    .end local v3    # "numMoved":I
    .end local v4    # "oldListeners":[Ljavafx/beans/value/ChangeListener;, "[Ljavafx/beans/value/ChangeListener<-TT;>;"
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0
.end method
