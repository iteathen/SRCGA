.class public Lcom/sun/javafx/binding/ExpressionHelperBase;
.super Ljava/lang/Object;
.source "ExpressionHelperBase.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 32
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/binding/ExpressionHelperBase;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static trim(I[Ljava/lang/Object;)I
    .locals 10

    .prologue
    .line 35
    move v0, p0

    .local v0, "size":I
    move-object v1, p1

    .local v1, "listeners":[Ljava/lang/Object;
    const/4 v5, 0x0

    move v2, v5

    .local v2, "index":I
    :goto_0
    move v5, v2

    move v6, v0

    if-ge v5, v6, :cond_2

    .line 36
    move-object v5, v1

    move v6, v2

    aget-object v5, v5, v6

    move-object v3, v5

    .line 37
    .local v3, "listener":Ljava/lang/Object;
    move-object v5, v3

    instance-of v5, v5, Ljavafx/beans/WeakListener;

    if-eqz v5, :cond_1

    .line 38
    move-object v5, v3

    check-cast v5, Ljavafx/beans/WeakListener;

    invoke-interface {v5}, Ljavafx/beans/WeakListener;->wasGarbageCollected()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 39
    move v5, v0

    move v6, v2

    sub-int/2addr v5, v6

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    move v4, v5

    .line 40
    .local v4, "numMoved":I
    move v5, v4

    if-lez v5, :cond_0

    .line 41
    move-object v5, v1

    move v6, v2

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    move-object v7, v1

    move v8, v2

    move v9, v4

    invoke-static {v5, v6, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 42
    :cond_0
    move-object v5, v1

    add-int/lit8 v0, v0, -0x1

    move v6, v0

    const/4 v7, 0x0

    aput-object v7, v5, v6

    .line 43
    add-int/lit8 v2, v2, -0x1

    .line 35
    .end local v4    # "numMoved":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 47
    .end local v3    # "listener":Ljava/lang/Object;
    :cond_2
    move v5, v0

    move v0, v5

    .end local v0    # "size":I
    return v0
.end method
