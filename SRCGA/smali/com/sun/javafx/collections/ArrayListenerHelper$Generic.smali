.class Lcom/sun/javafx/collections/ArrayListenerHelper$Generic;
.super Lcom/sun/javafx/collections/ArrayListenerHelper;
.source "ArrayListenerHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/collections/ArrayListenerHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Generic"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Ljavafx/collections/ObservableArray",
        "<TT;>;>",
        "Lcom/sun/javafx/collections/ArrayListenerHelper",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private changeListeners:[Ljavafx/collections/ArrayChangeListener;

.field private changeSize:I

.field private invalidationListeners:[Ljavafx/beans/InvalidationListener;

.field private invalidationSize:I

.field private locked:Z


# direct methods
.method private constructor <init>(Ljavafx/collections/ObservableArray;Ljavafx/beans/InvalidationListener;Ljavafx/beans/InvalidationListener;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljavafx/beans/InvalidationListener;",
            "Ljavafx/beans/InvalidationListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 185
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ArrayListenerHelper$Generic;, "Lcom/sun/javafx/collections/ArrayListenerHelper$Generic<TT;>;"
    move-object v1, p1

    .local v1, "observable":Ljavafx/collections/ObservableArray;, "TT;"
    move-object v2, p2

    .local v2, "listener0":Ljavafx/beans/InvalidationListener;
    move-object v3, p3

    .local v3, "listener1":Ljavafx/beans/InvalidationListener;
    move-object v4, v0

    move-object v5, v1

    invoke-direct {v4, v5}, Lcom/sun/javafx/collections/ArrayListenerHelper;-><init>(Ljavafx/collections/ObservableArray;)V

    .line 186
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

    iput-object v5, v4, Lcom/sun/javafx/collections/ArrayListenerHelper$Generic;->invalidationListeners:[Ljavafx/beans/InvalidationListener;

    .line 187
    move-object v4, v0

    const/4 v5, 0x2

    iput v5, v4, Lcom/sun/javafx/collections/ArrayListenerHelper$Generic;->invalidationSize:I

    .line 188
    return-void
.end method

.method synthetic constructor <init>(Ljavafx/collections/ObservableArray;Ljavafx/beans/InvalidationListener;Ljavafx/beans/InvalidationListener;Lcom/sun/javafx/collections/ArrayListenerHelper$1;)V
    .locals 9

    .prologue
    .line 176
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ArrayListenerHelper$Generic;, "Lcom/sun/javafx/collections/ArrayListenerHelper$Generic<TT;>;"
    move-object v1, p1

    .local v1, "x0":Ljavafx/collections/ObservableArray;
    move-object v2, p2

    .local v2, "x1":Ljavafx/beans/InvalidationListener;
    move-object v3, p3

    .local v3, "x2":Ljavafx/beans/InvalidationListener;
    move-object v4, p4

    .local v4, "x3":Lcom/sun/javafx/collections/ArrayListenerHelper$1;
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    invoke-direct {v5, v6, v7, v8}, Lcom/sun/javafx/collections/ArrayListenerHelper$Generic;-><init>(Ljavafx/collections/ObservableArray;Ljavafx/beans/InvalidationListener;Ljavafx/beans/InvalidationListener;)V

    return-void
.end method

.method private constructor <init>(Ljavafx/collections/ObservableArray;Ljavafx/beans/InvalidationListener;Ljavafx/collections/ArrayChangeListener;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljavafx/beans/InvalidationListener;",
            "Ljavafx/collections/ArrayChangeListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 197
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ArrayListenerHelper$Generic;, "Lcom/sun/javafx/collections/ArrayListenerHelper$Generic<TT;>;"
    move-object v1, p1

    .local v1, "observable":Ljavafx/collections/ObservableArray;, "TT;"
    move-object v2, p2

    .local v2, "invalidationListener":Ljavafx/beans/InvalidationListener;
    move-object v3, p3

    .local v3, "changeListener":Ljavafx/collections/ArrayChangeListener;
    move-object v4, v0

    move-object v5, v1

    invoke-direct {v4, v5}, Lcom/sun/javafx/collections/ArrayListenerHelper;-><init>(Ljavafx/collections/ObservableArray;)V

    .line 198
    move-object v4, v0

    const/4 v5, 0x1

    new-array v5, v5, [Ljavafx/beans/InvalidationListener;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move-object v8, v2

    aput-object v8, v6, v7

    iput-object v5, v4, Lcom/sun/javafx/collections/ArrayListenerHelper$Generic;->invalidationListeners:[Ljavafx/beans/InvalidationListener;

    .line 199
    move-object v4, v0

    const/4 v5, 0x1

    iput v5, v4, Lcom/sun/javafx/collections/ArrayListenerHelper$Generic;->invalidationSize:I

    .line 200
    move-object v4, v0

    const/4 v5, 0x1

    new-array v5, v5, [Ljavafx/collections/ArrayChangeListener;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move-object v8, v3

    aput-object v8, v6, v7

    iput-object v5, v4, Lcom/sun/javafx/collections/ArrayListenerHelper$Generic;->changeListeners:[Ljavafx/collections/ArrayChangeListener;

    .line 201
    move-object v4, v0

    const/4 v5, 0x1

    iput v5, v4, Lcom/sun/javafx/collections/ArrayListenerHelper$Generic;->changeSize:I

    .line 202
    return-void
.end method

.method synthetic constructor <init>(Ljavafx/collections/ObservableArray;Ljavafx/beans/InvalidationListener;Ljavafx/collections/ArrayChangeListener;Lcom/sun/javafx/collections/ArrayListenerHelper$1;)V
    .locals 9

    .prologue
    .line 176
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ArrayListenerHelper$Generic;, "Lcom/sun/javafx/collections/ArrayListenerHelper$Generic<TT;>;"
    move-object v1, p1

    .local v1, "x0":Ljavafx/collections/ObservableArray;
    move-object v2, p2

    .local v2, "x1":Ljavafx/beans/InvalidationListener;
    move-object v3, p3

    .local v3, "x2":Ljavafx/collections/ArrayChangeListener;
    move-object v4, p4

    .local v4, "x3":Lcom/sun/javafx/collections/ArrayListenerHelper$1;
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    invoke-direct {v5, v6, v7, v8}, Lcom/sun/javafx/collections/ArrayListenerHelper$Generic;-><init>(Ljavafx/collections/ObservableArray;Ljavafx/beans/InvalidationListener;Ljavafx/collections/ArrayChangeListener;)V

    return-void
.end method

.method private constructor <init>(Ljavafx/collections/ObservableArray;Ljavafx/collections/ArrayChangeListener;Ljavafx/collections/ArrayChangeListener;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljavafx/collections/ArrayChangeListener;",
            "Ljavafx/collections/ArrayChangeListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 191
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ArrayListenerHelper$Generic;, "Lcom/sun/javafx/collections/ArrayListenerHelper$Generic<TT;>;"
    move-object v1, p1

    .local v1, "observable":Ljavafx/collections/ObservableArray;, "TT;"
    move-object v2, p2

    .local v2, "listener0":Ljavafx/collections/ArrayChangeListener;
    move-object v3, p3

    .local v3, "listener1":Ljavafx/collections/ArrayChangeListener;
    move-object v4, v0

    move-object v5, v1

    invoke-direct {v4, v5}, Lcom/sun/javafx/collections/ArrayListenerHelper;-><init>(Ljavafx/collections/ObservableArray;)V

    .line 192
    move-object v4, v0

    const/4 v5, 0x2

    new-array v5, v5, [Ljavafx/collections/ArrayChangeListener;

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

    iput-object v5, v4, Lcom/sun/javafx/collections/ArrayListenerHelper$Generic;->changeListeners:[Ljavafx/collections/ArrayChangeListener;

    .line 193
    move-object v4, v0

    const/4 v5, 0x2

    iput v5, v4, Lcom/sun/javafx/collections/ArrayListenerHelper$Generic;->changeSize:I

    .line 194
    return-void
.end method

.method synthetic constructor <init>(Ljavafx/collections/ObservableArray;Ljavafx/collections/ArrayChangeListener;Ljavafx/collections/ArrayChangeListener;Lcom/sun/javafx/collections/ArrayListenerHelper$1;)V
    .locals 9

    .prologue
    .line 176
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ArrayListenerHelper$Generic;, "Lcom/sun/javafx/collections/ArrayListenerHelper$Generic<TT;>;"
    move-object v1, p1

    .local v1, "x0":Ljavafx/collections/ObservableArray;
    move-object v2, p2

    .local v2, "x1":Ljavafx/collections/ArrayChangeListener;
    move-object v3, p3

    .local v3, "x2":Ljavafx/collections/ArrayChangeListener;
    move-object v4, p4

    .local v4, "x3":Lcom/sun/javafx/collections/ArrayListenerHelper$1;
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    invoke-direct {v5, v6, v7, v8}, Lcom/sun/javafx/collections/ArrayListenerHelper$Generic;-><init>(Ljavafx/collections/ObservableArray;Ljavafx/collections/ArrayChangeListener;Ljavafx/collections/ArrayChangeListener;)V

    return-void
.end method


# virtual methods
.method protected addListener(Ljavafx/beans/InvalidationListener;)Lcom/sun/javafx/collections/ArrayListenerHelper$Generic;
    .locals 11

    .prologue
    .line 206
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ArrayListenerHelper$Generic;, "Lcom/sun/javafx/collections/ArrayListenerHelper$Generic<TT;>;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/InvalidationListener;
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/collections/ArrayListenerHelper$Generic;->invalidationListeners:[Ljavafx/beans/InvalidationListener;

    if-nez v4, :cond_0

    .line 207
    move-object v4, v0

    const/4 v5, 0x1

    new-array v5, v5, [Ljavafx/beans/InvalidationListener;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move-object v8, v1

    aput-object v8, v6, v7

    iput-object v5, v4, Lcom/sun/javafx/collections/ArrayListenerHelper$Generic;->invalidationListeners:[Ljavafx/beans/InvalidationListener;

    .line 208
    move-object v4, v0

    const/4 v5, 0x1

    iput v5, v4, Lcom/sun/javafx/collections/ArrayListenerHelper$Generic;->invalidationSize:I

    .line 223
    :goto_0
    move-object v4, v0

    move-object v0, v4

    .end local v0    # "this":Lcom/sun/javafx/collections/ArrayListenerHelper$Generic;, "Lcom/sun/javafx/collections/ArrayListenerHelper$Generic<TT;>;"
    return-object v0

    .line 210
    .restart local v0    # "this":Lcom/sun/javafx/collections/ArrayListenerHelper$Generic;, "Lcom/sun/javafx/collections/ArrayListenerHelper$Generic<TT;>;"
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/collections/ArrayListenerHelper$Generic;->invalidationListeners:[Ljavafx/beans/InvalidationListener;

    array-length v4, v4

    move v2, v4

    .line 211
    .local v2, "oldCapacity":I
    move-object v4, v0

    iget-boolean v4, v4, Lcom/sun/javafx/collections/ArrayListenerHelper$Generic;->locked:Z

    if-eqz v4, :cond_3

    .line 212
    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/collections/ArrayListenerHelper$Generic;->invalidationSize:I

    move v5, v2

    if-ge v4, v5, :cond_2

    move v4, v2

    :goto_1
    move v3, v4

    .line 213
    .local v3, "newCapacity":I
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/collections/ArrayListenerHelper$Generic;->invalidationListeners:[Ljavafx/beans/InvalidationListener;

    move v6, v3

    invoke-static {v5, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljavafx/beans/InvalidationListener;

    iput-object v5, v4, Lcom/sun/javafx/collections/ArrayListenerHelper$Generic;->invalidationListeners:[Ljavafx/beans/InvalidationListener;

    .line 214
    .line 221
    .end local v3    # "newCapacity":I
    :cond_1
    :goto_2
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/collections/ArrayListenerHelper$Generic;->invalidationListeners:[Ljavafx/beans/InvalidationListener;

    move-object v5, v0

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    iget v6, v6, Lcom/sun/javafx/collections/ArrayListenerHelper$Generic;->invalidationSize:I

    move-object v9, v5

    move v10, v6

    move v5, v10

    move-object v6, v9

    move v7, v10

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Lcom/sun/javafx/collections/ArrayListenerHelper$Generic;->invalidationSize:I

    move-object v6, v1

    aput-object v6, v4, v5

    goto :goto_0

    .line 212
    :cond_2
    move v4, v2

    const/4 v5, 0x3

    mul-int/lit8 v4, v4, 0x3

    const/4 v5, 0x2

    div-int/lit8 v4, v4, 0x2

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 214
    :cond_3
    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/collections/ArrayListenerHelper$Generic;->invalidationSize:I

    move v5, v2

    if-ne v4, v5, :cond_1

    .line 215
    move-object v4, v0

    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/collections/ArrayListenerHelper$Generic;->invalidationSize:I

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/collections/ArrayListenerHelper$Generic;->invalidationListeners:[Ljavafx/beans/InvalidationListener;

    invoke-static {v5, v6}, Lcom/sun/javafx/collections/ArrayListenerHelper$Generic;->trim(I[Ljava/lang/Object;)I

    move-result v5

    iput v5, v4, Lcom/sun/javafx/collections/ArrayListenerHelper$Generic;->invalidationSize:I

    .line 216
    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/collections/ArrayListenerHelper$Generic;->invalidationSize:I

    move v5, v2

    if-ne v4, v5, :cond_1

    .line 217
    move v4, v2

    const/4 v5, 0x3

    mul-int/lit8 v4, v4, 0x3

    const/4 v5, 0x2

    div-int/lit8 v4, v4, 0x2

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    move v3, v4

    .line 218
    .restart local v3    # "newCapacity":I
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/collections/ArrayListenerHelper$Generic;->invalidationListeners:[Ljavafx/beans/InvalidationListener;

    move v6, v3

    invoke-static {v5, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljavafx/beans/InvalidationListener;

    iput-object v5, v4, Lcom/sun/javafx/collections/ArrayListenerHelper$Generic;->invalidationListeners:[Ljavafx/beans/InvalidationListener;

    goto :goto_2
.end method

.method protected bridge synthetic addListener(Ljavafx/beans/InvalidationListener;)Lcom/sun/javafx/collections/ArrayListenerHelper;
    .locals 4

    .prologue
    .line 176
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ArrayListenerHelper$Generic;, "Lcom/sun/javafx/collections/ArrayListenerHelper$Generic<TT;>;"
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/javafx/collections/ArrayListenerHelper$Generic;->addListener(Ljavafx/beans/InvalidationListener;)Lcom/sun/javafx/collections/ArrayListenerHelper$Generic;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/collections/ArrayListenerHelper$Generic;, "Lcom/sun/javafx/collections/ArrayListenerHelper$Generic<TT;>;"
    return-object v0
.end method

.method protected addListener(Ljavafx/collections/ArrayChangeListener;)Lcom/sun/javafx/collections/ArrayListenerHelper;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ArrayChangeListener",
            "<TT;>;)",
            "Lcom/sun/javafx/collections/ArrayListenerHelper;"
        }
    .end annotation

    .prologue
    .line 263
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ArrayListenerHelper$Generic;, "Lcom/sun/javafx/collections/ArrayListenerHelper$Generic<TT;>;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/collections/ArrayChangeListener;, "Ljavafx/collections/ArrayChangeListener<TT;>;"
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/collections/ArrayListenerHelper$Generic;->changeListeners:[Ljavafx/collections/ArrayChangeListener;

    if-nez v4, :cond_0

    .line 264
    move-object v4, v0

    const/4 v5, 0x1

    new-array v5, v5, [Ljavafx/collections/ArrayChangeListener;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move-object v8, v1

    aput-object v8, v6, v7

    iput-object v5, v4, Lcom/sun/javafx/collections/ArrayListenerHelper$Generic;->changeListeners:[Ljavafx/collections/ArrayChangeListener;

    .line 265
    move-object v4, v0

    const/4 v5, 0x1

    iput v5, v4, Lcom/sun/javafx/collections/ArrayListenerHelper$Generic;->changeSize:I

    .line 280
    :goto_0
    move-object v4, v0

    move-object v0, v4

    .end local v0    # "this":Lcom/sun/javafx/collections/ArrayListenerHelper$Generic;, "Lcom/sun/javafx/collections/ArrayListenerHelper$Generic<TT;>;"
    return-object v0

    .line 267
    .restart local v0    # "this":Lcom/sun/javafx/collections/ArrayListenerHelper$Generic;, "Lcom/sun/javafx/collections/ArrayListenerHelper$Generic<TT;>;"
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/collections/ArrayListenerHelper$Generic;->changeListeners:[Ljavafx/collections/ArrayChangeListener;

    array-length v4, v4

    move v2, v4

    .line 268
    .local v2, "oldCapacity":I
    move-object v4, v0

    iget-boolean v4, v4, Lcom/sun/javafx/collections/ArrayListenerHelper$Generic;->locked:Z

    if-eqz v4, :cond_3

    .line 269
    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/collections/ArrayListenerHelper$Generic;->changeSize:I

    move v5, v2

    if-ge v4, v5, :cond_2

    move v4, v2

    :goto_1
    move v3, v4

    .line 270
    .local v3, "newCapacity":I
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/collections/ArrayListenerHelper$Generic;->changeListeners:[Ljavafx/collections/ArrayChangeListener;

    move v6, v3

    invoke-static {v5, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljavafx/collections/ArrayChangeListener;

    iput-object v5, v4, Lcom/sun/javafx/collections/ArrayListenerHelper$Generic;->changeListeners:[Ljavafx/collections/ArrayChangeListener;

    .line 271
    .line 278
    .end local v3    # "newCapacity":I
    :cond_1
    :goto_2
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/collections/ArrayListenerHelper$Generic;->changeListeners:[Ljavafx/collections/ArrayChangeListener;

    move-object v5, v0

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    iget v6, v6, Lcom/sun/javafx/collections/ArrayListenerHelper$Generic;->changeSize:I

    move-object v9, v5

    move v10, v6

    move v5, v10

    move-object v6, v9

    move v7, v10

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Lcom/sun/javafx/collections/ArrayListenerHelper$Generic;->changeSize:I

    move-object v6, v1

    aput-object v6, v4, v5

    goto :goto_0

    .line 269
    :cond_2
    move v4, v2

    const/4 v5, 0x3

    mul-int/lit8 v4, v4, 0x3

    const/4 v5, 0x2

    div-int/lit8 v4, v4, 0x2

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 271
    :cond_3
    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/collections/ArrayListenerHelper$Generic;->changeSize:I

    move v5, v2

    if-ne v4, v5, :cond_1

    .line 272
    move-object v4, v0

    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/collections/ArrayListenerHelper$Generic;->changeSize:I

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/collections/ArrayListenerHelper$Generic;->changeListeners:[Ljavafx/collections/ArrayChangeListener;

    invoke-static {v5, v6}, Lcom/sun/javafx/collections/ArrayListenerHelper$Generic;->trim(I[Ljava/lang/Object;)I

    move-result v5

    iput v5, v4, Lcom/sun/javafx/collections/ArrayListenerHelper$Generic;->changeSize:I

    .line 273
    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/collections/ArrayListenerHelper$Generic;->changeSize:I

    move v5, v2

    if-ne v4, v5, :cond_1

    .line 274
    move v4, v2

    const/4 v5, 0x3

    mul-int/lit8 v4, v4, 0x3

    const/4 v5, 0x2

    div-int/lit8 v4, v4, 0x2

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    move v3, v4

    .line 275
    .restart local v3    # "newCapacity":I
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/collections/ArrayListenerHelper$Generic;->changeListeners:[Ljavafx/collections/ArrayChangeListener;

    move v6, v3

    invoke-static {v5, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljavafx/collections/ArrayChangeListener;

    iput-object v5, v4, Lcom/sun/javafx/collections/ArrayListenerHelper$Generic;->changeListeners:[Ljavafx/collections/ArrayChangeListener;

    goto :goto_2
.end method

.method protected fireValueChangedEvent(ZII)V
    .locals 16

    .prologue
    .line 320
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ArrayListenerHelper$Generic;, "Lcom/sun/javafx/collections/ArrayListenerHelper$Generic<TT;>;"
    move/from16 v1, p1

    .local v1, "sizeChanged":Z
    move/from16 v2, p2

    .local v2, "from":I
    move/from16 v3, p3

    .local v3, "to":I
    move-object v11, v0

    iget-object v11, v11, Lcom/sun/javafx/collections/ArrayListenerHelper$Generic;->invalidationListeners:[Ljavafx/beans/InvalidationListener;

    move-object v4, v11

    .line 321
    .local v4, "curInvalidationList":[Ljavafx/beans/InvalidationListener;
    move-object v11, v0

    iget v11, v11, Lcom/sun/javafx/collections/ArrayListenerHelper$Generic;->invalidationSize:I

    move v5, v11

    .line 322
    .local v5, "curInvalidationSize":I
    move-object v11, v0

    iget-object v11, v11, Lcom/sun/javafx/collections/ArrayListenerHelper$Generic;->changeListeners:[Ljavafx/collections/ArrayChangeListener;

    move-object v6, v11

    .line 323
    .local v6, "curChangeList":[Ljavafx/collections/ArrayChangeListener;
    move-object v11, v0

    iget v11, v11, Lcom/sun/javafx/collections/ArrayListenerHelper$Generic;->changeSize:I

    move v7, v11

    .line 326
    .local v7, "curChangeSize":I
    move-object v11, v0

    const/4 v12, 0x1

    :try_start_0
    iput-boolean v12, v11, Lcom/sun/javafx/collections/ArrayListenerHelper$Generic;->locked:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 327
    const/4 v11, 0x0

    move v8, v11

    .local v8, "i":I
    :goto_0
    move v11, v8

    move v12, v5

    if-ge v11, v12, :cond_0

    .line 329
    move-object v11, v4

    move v12, v8

    :try_start_1
    aget-object v11, v11, v12

    move-object v12, v0

    iget-object v12, v12, Lcom/sun/javafx/collections/ArrayListenerHelper$Generic;->observable:Ljavafx/collections/ObservableArray;

    invoke-interface {v11, v12}, Ljavafx/beans/InvalidationListener;->invalidated(Ljavafx/beans/Observable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 332
    .line 327
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 330
    :catch_0
    move-exception v11

    move-object v9, v11

    .line 331
    .local v9, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Thread;->getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v11

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v12

    move-object v13, v9

    invoke-interface {v11, v12, v13}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 342
    .end local v8    # "i":I
    .end local v9    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v11

    move-object v10, v11

    move-object v11, v0

    const/4 v12, 0x0

    iput-boolean v12, v11, Lcom/sun/javafx/collections/ArrayListenerHelper$Generic;->locked:Z

    move-object v11, v10

    throw v11

    .line 334
    .restart local v8    # "i":I
    :cond_0
    const/4 v11, 0x0

    move v8, v11

    :goto_2
    move v11, v8

    move v12, v7

    if-ge v11, v12, :cond_1

    .line 336
    move-object v11, v6

    move v12, v8

    :try_start_3
    aget-object v11, v11, v12

    move-object v12, v0

    iget-object v12, v12, Lcom/sun/javafx/collections/ArrayListenerHelper$Generic;->observable:Ljavafx/collections/ObservableArray;

    move v13, v1

    move v14, v2

    move v15, v3

    invoke-interface {v11, v12, v13, v14, v15}, Ljavafx/collections/ArrayChangeListener;->onChanged(Ljavafx/collections/ObservableArray;ZII)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 339
    .line 334
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 337
    :catch_1
    move-exception v11

    move-object v9, v11

    .line 338
    .restart local v9    # "e":Ljava/lang/Exception;
    :try_start_4
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Thread;->getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v11

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v12

    move-object v13, v9

    invoke-interface {v11, v12, v13}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    .line 342
    .end local v9    # "e":Ljava/lang/Exception;
    :cond_1
    move-object v11, v0

    const/4 v12, 0x0

    iput-boolean v12, v11, Lcom/sun/javafx/collections/ArrayListenerHelper$Generic;->locked:Z

    .line 343
    .line 344
    return-void
.end method

.method protected removeListener(Ljavafx/beans/InvalidationListener;)Lcom/sun/javafx/collections/ArrayListenerHelper;
    .locals 12

    .prologue
    .line 228
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ArrayListenerHelper$Generic;, "Lcom/sun/javafx/collections/ArrayListenerHelper$Generic<TT;>;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/beans/InvalidationListener;
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/collections/ArrayListenerHelper$Generic;->invalidationListeners:[Ljavafx/beans/InvalidationListener;

    if-eqz v5, :cond_1

    .line 229
    const/4 v5, 0x0

    move v2, v5

    .local v2, "index":I
    :goto_0
    move v5, v2

    move-object v6, v0

    iget v6, v6, Lcom/sun/javafx/collections/ArrayListenerHelper$Generic;->invalidationSize:I

    if-ge v5, v6, :cond_1

    .line 230
    move-object v5, v1

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/collections/ArrayListenerHelper$Generic;->invalidationListeners:[Ljavafx/beans/InvalidationListener;

    move v7, v2

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 231
    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/collections/ArrayListenerHelper$Generic;->invalidationSize:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    .line 232
    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/collections/ArrayListenerHelper$Generic;->changeSize:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 233
    new-instance v5, Lcom/sun/javafx/collections/ArrayListenerHelper$SingleChange;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/collections/ArrayListenerHelper$Generic;->observable:Ljavafx/collections/ObservableArray;

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/collections/ArrayListenerHelper$Generic;->changeListeners:[Ljavafx/collections/ArrayChangeListener;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    const/4 v9, 0x0

    invoke-direct {v6, v7, v8, v9}, Lcom/sun/javafx/collections/ArrayListenerHelper$SingleChange;-><init>(Ljavafx/collections/ObservableArray;Ljavafx/collections/ArrayChangeListener;Lcom/sun/javafx/collections/ArrayListenerHelper$1;)V

    move-object v0, v5

    .line 258
    .end local v0    # "this":Lcom/sun/javafx/collections/ArrayListenerHelper$Generic;, "Lcom/sun/javafx/collections/ArrayListenerHelper$Generic<TT;>;"
    .end local v2    # "index":I
    :goto_1
    return-object v0

    .line 235
    .restart local v0    # "this":Lcom/sun/javafx/collections/ArrayListenerHelper$Generic;, "Lcom/sun/javafx/collections/ArrayListenerHelper$Generic<TT;>;"
    .restart local v2    # "index":I
    :cond_0
    move-object v5, v0

    const/4 v6, 0x0

    iput-object v6, v5, Lcom/sun/javafx/collections/ArrayListenerHelper$Generic;->invalidationListeners:[Ljavafx/beans/InvalidationListener;

    .line 236
    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Lcom/sun/javafx/collections/ArrayListenerHelper$Generic;->invalidationSize:I

    .line 258
    .end local v2    # "index":I
    :cond_1
    :goto_2
    move-object v5, v0

    move-object v0, v5

    goto :goto_1

    .line 237
    .restart local v2    # "index":I
    :cond_2
    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/collections/ArrayListenerHelper$Generic;->invalidationSize:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_3

    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/collections/ArrayListenerHelper$Generic;->changeSize:I

    if-nez v5, :cond_3

    .line 238
    new-instance v5, Lcom/sun/javafx/collections/ArrayListenerHelper$SingleInvalidation;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/collections/ArrayListenerHelper$Generic;->observable:Ljavafx/collections/ObservableArray;

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/collections/ArrayListenerHelper$Generic;->invalidationListeners:[Ljavafx/beans/InvalidationListener;

    const/4 v9, 0x1

    move v10, v2

    rsub-int/lit8 v9, v10, 0x1

    aget-object v8, v8, v9

    const/4 v9, 0x0

    invoke-direct {v6, v7, v8, v9}, Lcom/sun/javafx/collections/ArrayListenerHelper$SingleInvalidation;-><init>(Ljavafx/collections/ObservableArray;Ljavafx/beans/InvalidationListener;Lcom/sun/javafx/collections/ArrayListenerHelper$1;)V

    move-object v0, v5

    goto :goto_1

    .line 240
    :cond_3
    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/collections/ArrayListenerHelper$Generic;->invalidationSize:I

    move v6, v2

    sub-int/2addr v5, v6

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    move v3, v5

    .line 241
    .local v3, "numMoved":I
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/collections/ArrayListenerHelper$Generic;->invalidationListeners:[Ljavafx/beans/InvalidationListener;

    move-object v4, v5

    .line 242
    .local v4, "oldListeners":[Ljavafx/beans/InvalidationListener;
    move-object v5, v0

    iget-boolean v5, v5, Lcom/sun/javafx/collections/ArrayListenerHelper$Generic;->locked:Z

    if-eqz v5, :cond_4

    .line 243
    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/collections/ArrayListenerHelper$Generic;->invalidationListeners:[Ljavafx/beans/InvalidationListener;

    array-length v6, v6

    new-array v6, v6, [Ljavafx/beans/InvalidationListener;

    iput-object v6, v5, Lcom/sun/javafx/collections/ArrayListenerHelper$Generic;->invalidationListeners:[Ljavafx/beans/InvalidationListener;

    .line 244
    move-object v5, v4

    const/4 v6, 0x0

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/collections/ArrayListenerHelper$Generic;->invalidationListeners:[Ljavafx/beans/InvalidationListener;

    const/4 v8, 0x0

    move v9, v2

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    invoke-static {v5, v6, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 246
    :cond_4
    move v5, v3

    if-lez v5, :cond_5

    .line 247
    move-object v5, v4

    move v6, v2

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/collections/ArrayListenerHelper$Generic;->invalidationListeners:[Ljavafx/beans/InvalidationListener;

    move v8, v2

    move v9, v3

    invoke-static {v5, v6, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 249
    :cond_5
    move-object v5, v0

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    iget v6, v6, Lcom/sun/javafx/collections/ArrayListenerHelper$Generic;->invalidationSize:I

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    iput v6, v5, Lcom/sun/javafx/collections/ArrayListenerHelper$Generic;->invalidationSize:I

    .line 250
    move-object v5, v0

    iget-boolean v5, v5, Lcom/sun/javafx/collections/ArrayListenerHelper$Generic;->locked:Z

    if-nez v5, :cond_6

    .line 251
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/collections/ArrayListenerHelper$Generic;->invalidationListeners:[Ljavafx/beans/InvalidationListener;

    move-object v6, v0

    iget v6, v6, Lcom/sun/javafx/collections/ArrayListenerHelper$Generic;->invalidationSize:I

    const/4 v7, 0x0

    aput-object v7, v5, v6

    .line 254
    :cond_6
    goto :goto_2

    .line 229
    .end local v3    # "numMoved":I
    .end local v4    # "oldListeners":[Ljavafx/beans/InvalidationListener;
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0
.end method

.method protected removeListener(Ljavafx/collections/ArrayChangeListener;)Lcom/sun/javafx/collections/ArrayListenerHelper;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ArrayChangeListener",
            "<TT;>;)",
            "Lcom/sun/javafx/collections/ArrayListenerHelper;"
        }
    .end annotation

    .prologue
    .line 285
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/collections/ArrayListenerHelper$Generic;, "Lcom/sun/javafx/collections/ArrayListenerHelper$Generic<TT;>;"
    move-object v1, p1

    .local v1, "listener":Ljavafx/collections/ArrayChangeListener;, "Ljavafx/collections/ArrayChangeListener<TT;>;"
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/collections/ArrayListenerHelper$Generic;->changeListeners:[Ljavafx/collections/ArrayChangeListener;

    if-eqz v5, :cond_1

    .line 286
    const/4 v5, 0x0

    move v2, v5

    .local v2, "index":I
    :goto_0
    move v5, v2

    move-object v6, v0

    iget v6, v6, Lcom/sun/javafx/collections/ArrayListenerHelper$Generic;->changeSize:I

    if-ge v5, v6, :cond_1

    .line 287
    move-object v5, v1

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/collections/ArrayListenerHelper$Generic;->changeListeners:[Ljavafx/collections/ArrayChangeListener;

    move v7, v2

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 288
    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/collections/ArrayListenerHelper$Generic;->changeSize:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    .line 289
    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/collections/ArrayListenerHelper$Generic;->invalidationSize:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 290
    new-instance v5, Lcom/sun/javafx/collections/ArrayListenerHelper$SingleInvalidation;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/collections/ArrayListenerHelper$Generic;->observable:Ljavafx/collections/ObservableArray;

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/collections/ArrayListenerHelper$Generic;->invalidationListeners:[Ljavafx/beans/InvalidationListener;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    const/4 v9, 0x0

    invoke-direct {v6, v7, v8, v9}, Lcom/sun/javafx/collections/ArrayListenerHelper$SingleInvalidation;-><init>(Ljavafx/collections/ObservableArray;Ljavafx/beans/InvalidationListener;Lcom/sun/javafx/collections/ArrayListenerHelper$1;)V

    move-object v0, v5

    .line 315
    .end local v0    # "this":Lcom/sun/javafx/collections/ArrayListenerHelper$Generic;, "Lcom/sun/javafx/collections/ArrayListenerHelper$Generic<TT;>;"
    .end local v2    # "index":I
    :goto_1
    return-object v0

    .line 292
    .restart local v0    # "this":Lcom/sun/javafx/collections/ArrayListenerHelper$Generic;, "Lcom/sun/javafx/collections/ArrayListenerHelper$Generic<TT;>;"
    .restart local v2    # "index":I
    :cond_0
    move-object v5, v0

    const/4 v6, 0x0

    iput-object v6, v5, Lcom/sun/javafx/collections/ArrayListenerHelper$Generic;->changeListeners:[Ljavafx/collections/ArrayChangeListener;

    .line 293
    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Lcom/sun/javafx/collections/ArrayListenerHelper$Generic;->changeSize:I

    .line 315
    .end local v2    # "index":I
    :cond_1
    :goto_2
    move-object v5, v0

    move-object v0, v5

    goto :goto_1

    .line 294
    .restart local v2    # "index":I
    :cond_2
    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/collections/ArrayListenerHelper$Generic;->changeSize:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_3

    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/collections/ArrayListenerHelper$Generic;->invalidationSize:I

    if-nez v5, :cond_3

    .line 295
    new-instance v5, Lcom/sun/javafx/collections/ArrayListenerHelper$SingleChange;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/collections/ArrayListenerHelper$Generic;->observable:Ljavafx/collections/ObservableArray;

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/collections/ArrayListenerHelper$Generic;->changeListeners:[Ljavafx/collections/ArrayChangeListener;

    const/4 v9, 0x1

    move v10, v2

    rsub-int/lit8 v9, v10, 0x1

    aget-object v8, v8, v9

    const/4 v9, 0x0

    invoke-direct {v6, v7, v8, v9}, Lcom/sun/javafx/collections/ArrayListenerHelper$SingleChange;-><init>(Ljavafx/collections/ObservableArray;Ljavafx/collections/ArrayChangeListener;Lcom/sun/javafx/collections/ArrayListenerHelper$1;)V

    move-object v0, v5

    goto :goto_1

    .line 297
    :cond_3
    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/collections/ArrayListenerHelper$Generic;->changeSize:I

    move v6, v2

    sub-int/2addr v5, v6

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    move v3, v5

    .line 298
    .local v3, "numMoved":I
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/collections/ArrayListenerHelper$Generic;->changeListeners:[Ljavafx/collections/ArrayChangeListener;

    move-object v4, v5

    .line 299
    .local v4, "oldListeners":[Ljavafx/collections/ArrayChangeListener;
    move-object v5, v0

    iget-boolean v5, v5, Lcom/sun/javafx/collections/ArrayListenerHelper$Generic;->locked:Z

    if-eqz v5, :cond_4

    .line 300
    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/collections/ArrayListenerHelper$Generic;->changeListeners:[Ljavafx/collections/ArrayChangeListener;

    array-length v6, v6

    new-array v6, v6, [Ljavafx/collections/ArrayChangeListener;

    iput-object v6, v5, Lcom/sun/javafx/collections/ArrayListenerHelper$Generic;->changeListeners:[Ljavafx/collections/ArrayChangeListener;

    .line 301
    move-object v5, v4

    const/4 v6, 0x0

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/collections/ArrayListenerHelper$Generic;->changeListeners:[Ljavafx/collections/ArrayChangeListener;

    const/4 v8, 0x0

    move v9, v2

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    invoke-static {v5, v6, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 303
    :cond_4
    move v5, v3

    if-lez v5, :cond_5

    .line 304
    move-object v5, v4

    move v6, v2

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/collections/ArrayListenerHelper$Generic;->changeListeners:[Ljavafx/collections/ArrayChangeListener;

    move v8, v2

    move v9, v3

    invoke-static {v5, v6, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 306
    :cond_5
    move-object v5, v0

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    iget v6, v6, Lcom/sun/javafx/collections/ArrayListenerHelper$Generic;->changeSize:I

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    iput v6, v5, Lcom/sun/javafx/collections/ArrayListenerHelper$Generic;->changeSize:I

    .line 307
    move-object v5, v0

    iget-boolean v5, v5, Lcom/sun/javafx/collections/ArrayListenerHelper$Generic;->locked:Z

    if-nez v5, :cond_6

    .line 308
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/collections/ArrayListenerHelper$Generic;->changeListeners:[Ljavafx/collections/ArrayChangeListener;

    move-object v6, v0

    iget v6, v6, Lcom/sun/javafx/collections/ArrayListenerHelper$Generic;->changeSize:I

    const/4 v7, 0x0

    aput-object v7, v5, v6

    .line 311
    :cond_6
    goto :goto_2

    .line 286
    .end local v3    # "numMoved":I
    .end local v4    # "oldListeners":[Ljavafx/collections/ArrayChangeListener;
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0
.end method
