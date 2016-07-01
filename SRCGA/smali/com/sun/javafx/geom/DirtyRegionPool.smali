.class public final Lcom/sun/javafx/geom/DirtyRegionPool;
.super Ljava/lang/Object;
.source "DirtyRegionPool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/javafx/geom/DirtyRegionPool$PoolItem;
    }
.end annotation


# static fields
.field private static final COUNT_BETWEEN_EXPIRATION_CHECK:I = 0x5a

.field private static final EXPIRATION_TIME:I = 0xbb8

.field private static final POOL_SIZE_MIN:I = 0x4


# instance fields
.field private clearCounter:I

.field private final containerSize:I

.field private final fixed:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque",
            "<",
            "Lcom/sun/javafx/geom/DirtyRegionContainer;",
            ">;"
        }
    .end annotation
.end field

.field private final locked:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque",
            "<",
            "Lcom/sun/javafx/geom/DirtyRegionPool$PoolItem;",
            ">;"
        }
    .end annotation
.end field

.field private final unlocked:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque",
            "<",
            "Lcom/sun/javafx/geom/DirtyRegionPool$PoolItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 8

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/DirtyRegionPool;
    move v1, p1

    .local v1, "containerSize":I
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 47
    move-object v3, v0

    const/16 v4, 0x5a

    iput v4, v3, Lcom/sun/javafx/geom/DirtyRegionPool;->clearCounter:I

    .line 53
    move-object v3, v0

    move v4, v1

    iput v4, v3, Lcom/sun/javafx/geom/DirtyRegionPool;->containerSize:I

    .line 54
    move-object v3, v0

    new-instance v4, Ljava/util/LinkedList;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    iput-object v4, v3, Lcom/sun/javafx/geom/DirtyRegionPool;->fixed:Ljava/util/Deque;

    .line 55
    move-object v3, v0

    new-instance v4, Ljava/util/LinkedList;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    iput-object v4, v3, Lcom/sun/javafx/geom/DirtyRegionPool;->unlocked:Ljava/util/Deque;

    .line 56
    move-object v3, v0

    new-instance v4, Ljava/util/LinkedList;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    iput-object v4, v3, Lcom/sun/javafx/geom/DirtyRegionPool;->locked:Ljava/util/Deque;

    .line 57
    const/4 v3, 0x0

    move v2, v3

    .local v2, "i":I
    :goto_0
    move v3, v2

    const/4 v4, 0x4

    if-ge v3, v4, :cond_0

    .line 58
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/geom/DirtyRegionPool;->fixed:Ljava/util/Deque;

    new-instance v4, Lcom/sun/javafx/geom/DirtyRegionContainer;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move v6, v1

    invoke-direct {v5, v6}, Lcom/sun/javafx/geom/DirtyRegionContainer;-><init>(I)V

    invoke-interface {v3, v4}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 57
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 60
    :cond_0
    return-void
.end method

.method private clearExpired()V
    .locals 10

    .prologue
    .line 90
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/DirtyRegionPool;
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/geom/DirtyRegionPool;->unlocked:Ljava/util/Deque;

    invoke-interface {v4}, Ljava/util/Deque;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 91
    .line 102
    :goto_0
    return-void

    .line 93
    :cond_0
    move-object v4, v0

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    iget v5, v5, Lcom/sun/javafx/geom/DirtyRegionPool;->clearCounter:I

    move-object v8, v4

    move v9, v5

    move v4, v9

    move-object v5, v8

    move v6, v9

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    iput v6, v5, Lcom/sun/javafx/geom/DirtyRegionPool;->clearCounter:I

    if-nez v4, :cond_1

    .line 94
    move-object v4, v0

    const/16 v5, 0x5a

    iput v5, v4, Lcom/sun/javafx/geom/DirtyRegionPool;->clearCounter:I

    .line 95
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/geom/DirtyRegionPool;->unlocked:Ljava/util/Deque;

    invoke-interface {v4}, Ljava/util/Deque;->peekLast()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/javafx/geom/DirtyRegionPool$PoolItem;

    move-object v1, v4

    .line 96
    .local v1, "i":Lcom/sun/javafx/geom/DirtyRegionPool$PoolItem;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-wide v2, v4

    .line 97
    .local v2, "now":J
    :goto_1
    move-object v4, v1

    if-eqz v4, :cond_1

    move-object v4, v1

    iget-wide v4, v4, Lcom/sun/javafx/geom/DirtyRegionPool$PoolItem;->timeStamp:J

    const-wide/16 v6, 0xbb8

    add-long/2addr v4, v6

    move-wide v6, v2

    cmp-long v4, v4, v6

    if-gez v4, :cond_1

    .line 98
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/geom/DirtyRegionPool;->unlocked:Ljava/util/Deque;

    invoke-interface {v4}, Ljava/util/Deque;->removeLast()Ljava/lang/Object;

    move-result-object v4

    .line 99
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/geom/DirtyRegionPool;->unlocked:Ljava/util/Deque;

    invoke-interface {v4}, Ljava/util/Deque;->peekLast()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/javafx/geom/DirtyRegionPool$PoolItem;

    move-object v1, v4

    goto :goto_1

    .line 102
    .end local v1    # "i":Lcom/sun/javafx/geom/DirtyRegionPool$PoolItem;
    .end local v2    # "now":J
    :cond_1
    goto :goto_0
.end method


# virtual methods
.method public checkIn(Lcom/sun/javafx/geom/DirtyRegionContainer;)V
    .locals 6

    .prologue
    .line 78
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/geom/DirtyRegionPool;
    move-object v1, p1

    .local v1, "drc":Lcom/sun/javafx/geom/DirtyRegionContainer;
    move-object v3, v1

    invoke-virtual {v3}, Lcom/sun/javafx/geom/DirtyRegionContainer;->reset()V

    .line 79
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/geom/DirtyRegionPool;->locked:Ljava/util/Deque;

    invoke-interface {v3}, Ljava/util/Deque;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 80
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/geom/DirtyRegionPool;->fixed:Ljava/util/Deque;

    move-object v4, v1

    invoke-interface {v3, v4}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    .line 87
    :goto_0
    return-void

    .line 82
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/geom/DirtyRegionPool;->locked:Ljava/util/Deque;

    invoke-interface {v3}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/javafx/geom/DirtyRegionPool$PoolItem;

    move-object v2, v3

    .line 83
    .local v2, "item":Lcom/sun/javafx/geom/DirtyRegionPool$PoolItem;
    move-object v3, v2

    move-object v4, v1

    iput-object v4, v3, Lcom/sun/javafx/geom/DirtyRegionPool$PoolItem;->container:Lcom/sun/javafx/geom/DirtyRegionContainer;

    .line 84
    move-object v3, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/sun/javafx/geom/DirtyRegionPool$PoolItem;->timeStamp:J

    .line 85
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/geom/DirtyRegionPool;->unlocked:Ljava/util/Deque;

    move-object v4, v2

    invoke-interface {v3, v4}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public checkOut()Lcom/sun/javafx/geom/DirtyRegionContainer;
    .locals 11

    .prologue
    .line 63
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/geom/DirtyRegionPool;
    move-object v3, v1

    invoke-direct {v3}, Lcom/sun/javafx/geom/DirtyRegionPool;->clearExpired()V

    .line 64
    move-object v3, v1

    iget-object v3, v3, Lcom/sun/javafx/geom/DirtyRegionPool;->fixed:Ljava/util/Deque;

    invoke-interface {v3}, Ljava/util/Deque;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 65
    move-object v3, v1

    iget-object v3, v3, Lcom/sun/javafx/geom/DirtyRegionPool;->fixed:Ljava/util/Deque;

    invoke-interface {v3}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/javafx/geom/DirtyRegionContainer;

    move-object v1, v3

    .line 74
    .end local v1    # "this":Lcom/sun/javafx/geom/DirtyRegionPool;
    :goto_0
    return-object v1

    .line 67
    .restart local v1    # "this":Lcom/sun/javafx/geom/DirtyRegionPool;
    :cond_0
    move-object v3, v1

    iget-object v3, v3, Lcom/sun/javafx/geom/DirtyRegionPool;->unlocked:Ljava/util/Deque;

    invoke-interface {v3}, Ljava/util/Deque;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 68
    move-object v3, v1

    iget-object v3, v3, Lcom/sun/javafx/geom/DirtyRegionPool;->unlocked:Ljava/util/Deque;

    invoke-interface {v3}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/javafx/geom/DirtyRegionPool$PoolItem;

    move-object v2, v3

    .line 69
    .local v2, "item":Lcom/sun/javafx/geom/DirtyRegionPool$PoolItem;
    move-object v3, v1

    iget-object v3, v3, Lcom/sun/javafx/geom/DirtyRegionPool;->locked:Ljava/util/Deque;

    move-object v4, v2

    invoke-interface {v3, v4}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    .line 70
    move-object v3, v2

    iget-object v3, v3, Lcom/sun/javafx/geom/DirtyRegionPool$PoolItem;->container:Lcom/sun/javafx/geom/DirtyRegionContainer;

    move-object v1, v3

    goto :goto_0

    .line 72
    .end local v2    # "item":Lcom/sun/javafx/geom/DirtyRegionPool$PoolItem;
    :cond_1
    new-instance v3, Lcom/sun/javafx/geom/DirtyRegionContainer;

    move-object v10, v3

    move-object v3, v10

    move-object v4, v10

    move-object v5, v1

    iget v5, v5, Lcom/sun/javafx/geom/DirtyRegionPool;->containerSize:I

    invoke-direct {v4, v5}, Lcom/sun/javafx/geom/DirtyRegionContainer;-><init>(I)V

    move-object v2, v3

    .line 73
    .local v2, "c":Lcom/sun/javafx/geom/DirtyRegionContainer;
    move-object v3, v1

    iget-object v3, v3, Lcom/sun/javafx/geom/DirtyRegionPool;->locked:Ljava/util/Deque;

    new-instance v4, Lcom/sun/javafx/geom/DirtyRegionPool$PoolItem;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v6, v1

    const/4 v7, 0x0

    const-wide/16 v8, -0x1

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/sun/javafx/geom/DirtyRegionPool$PoolItem;-><init>(Lcom/sun/javafx/geom/DirtyRegionPool;Lcom/sun/javafx/geom/DirtyRegionContainer;J)V

    invoke-interface {v3, v4}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    .line 74
    move-object v3, v2

    move-object v1, v3

    goto :goto_0
.end method
