.class public Lcom/sun/javafx/event/EventDispatchChainImpl;
.super Ljava/lang/Object;
.source "EventDispatchChainImpl.java"

# interfaces
.implements Ljavafx/event/EventDispatchChain;


# static fields
.field private static final CAPACITY_GROWTH_FACTOR:I = 0x8


# instance fields
.field private activeCount:I

.field private dispatchers:[Ljavafx/event/EventDispatcher;

.field private headIndex:I

.field private nextLinks:[I

.field private reservedCount:I

.field private tailIndex:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 45
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/event/EventDispatchChainImpl;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 46
    return-void
.end method

.method private ensureCapacity(I)V
    .locals 10

    .prologue
    .line 135
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/event/EventDispatchChainImpl;
    move v1, p1

    .local v1, "size":I
    move v5, v1

    const/16 v6, 0x8

    add-int/lit8 v5, v5, 0x8

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    const/4 v6, -0x8

    and-int/lit8 v5, v5, -0x8

    move v2, v5

    .line 137
    .local v2, "newCapacity":I
    move v5, v2

    if-nez v5, :cond_0

    .line 138
    .line 155
    :goto_0
    return-void

    .line 141
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/event/EventDispatchChainImpl;->dispatchers:[Ljavafx/event/EventDispatcher;

    if-eqz v5, :cond_1

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/event/EventDispatchChainImpl;->dispatchers:[Ljavafx/event/EventDispatcher;

    array-length v5, v5

    move v6, v2

    if-ge v5, v6, :cond_3

    .line 142
    :cond_1
    move v5, v2

    new-array v5, v5, [Ljavafx/event/EventDispatcher;

    move-object v3, v5

    .line 144
    .local v3, "newDispatchers":[Ljavafx/event/EventDispatcher;
    move v5, v2

    new-array v5, v5, [I

    move-object v4, v5

    .line 146
    .local v4, "newLinks":[I
    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/event/EventDispatchChainImpl;->reservedCount:I

    if-lez v5, :cond_2

    .line 147
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/event/EventDispatchChainImpl;->dispatchers:[Ljavafx/event/EventDispatcher;

    const/4 v6, 0x0

    move-object v7, v3

    const/4 v8, 0x0

    move-object v9, v0

    iget v9, v9, Lcom/sun/javafx/event/EventDispatchChainImpl;->reservedCount:I

    invoke-static {v5, v6, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 149
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/event/EventDispatchChainImpl;->nextLinks:[I

    const/4 v6, 0x0

    move-object v7, v4

    const/4 v8, 0x0

    move-object v9, v0

    iget v9, v9, Lcom/sun/javafx/event/EventDispatchChainImpl;->reservedCount:I

    invoke-static {v5, v6, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 152
    :cond_2
    move-object v5, v0

    move-object v6, v3

    iput-object v6, v5, Lcom/sun/javafx/event/EventDispatchChainImpl;->dispatchers:[Ljavafx/event/EventDispatcher;

    .line 153
    move-object v5, v0

    move-object v6, v4

    iput-object v6, v5, Lcom/sun/javafx/event/EventDispatchChainImpl;->nextLinks:[I

    .line 155
    .end local v3    # "newDispatchers":[Ljavafx/event/EventDispatcher;
    .end local v4    # "newLinks":[I
    :cond_3
    goto :goto_0
.end method

.method private insertFirst(Ljavafx/event/EventDispatcher;)V
    .locals 6

    .prologue
    .line 126
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/event/EventDispatchChainImpl;
    move-object v1, p1

    .local v1, "eventDispatcher":Ljavafx/event/EventDispatcher;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/event/EventDispatchChainImpl;->dispatchers:[Ljavafx/event/EventDispatcher;

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/event/EventDispatchChainImpl;->reservedCount:I

    move-object v4, v1

    aput-object v4, v2, v3

    .line 127
    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/event/EventDispatchChainImpl;->reservedCount:I

    iput v3, v2, Lcom/sun/javafx/event/EventDispatchChainImpl;->headIndex:I

    .line 128
    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/event/EventDispatchChainImpl;->reservedCount:I

    iput v3, v2, Lcom/sun/javafx/event/EventDispatchChainImpl;->tailIndex:I

    .line 130
    move-object v2, v0

    const/4 v3, 0x1

    iput v3, v2, Lcom/sun/javafx/event/EventDispatchChainImpl;->activeCount:I

    .line 131
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Lcom/sun/javafx/event/EventDispatchChainImpl;->reservedCount:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/sun/javafx/event/EventDispatchChainImpl;->reservedCount:I

    .line 132
    return-void
.end method


# virtual methods
.method public append(Ljavafx/event/EventDispatcher;)Ljavafx/event/EventDispatchChain;
    .locals 6

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/event/EventDispatchChainImpl;
    move-object v1, p1

    .local v1, "eventDispatcher":Ljavafx/event/EventDispatcher;
    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/event/EventDispatchChainImpl;->reservedCount:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    invoke-direct {v2, v3}, Lcom/sun/javafx/event/EventDispatchChainImpl;->ensureCapacity(I)V

    .line 64
    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/event/EventDispatchChainImpl;->activeCount:I

    if-nez v2, :cond_0

    .line 65
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/event/EventDispatchChainImpl;->insertFirst(Ljavafx/event/EventDispatcher;)V

    .line 66
    move-object v2, v0

    move-object v0, v2

    .line 76
    .end local v0    # "this":Lcom/sun/javafx/event/EventDispatchChainImpl;
    :goto_0
    return-object v0

    .line 69
    .restart local v0    # "this":Lcom/sun/javafx/event/EventDispatchChainImpl;
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/event/EventDispatchChainImpl;->dispatchers:[Ljavafx/event/EventDispatcher;

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/event/EventDispatchChainImpl;->reservedCount:I

    move-object v4, v1

    aput-object v4, v2, v3

    .line 70
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/event/EventDispatchChainImpl;->nextLinks:[I

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/event/EventDispatchChainImpl;->tailIndex:I

    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/event/EventDispatchChainImpl;->reservedCount:I

    aput v4, v2, v3

    .line 71
    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/event/EventDispatchChainImpl;->reservedCount:I

    iput v3, v2, Lcom/sun/javafx/event/EventDispatchChainImpl;->tailIndex:I

    .line 73
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Lcom/sun/javafx/event/EventDispatchChainImpl;->activeCount:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/sun/javafx/event/EventDispatchChainImpl;->activeCount:I

    .line 74
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Lcom/sun/javafx/event/EventDispatchChainImpl;->reservedCount:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/sun/javafx/event/EventDispatchChainImpl;->reservedCount:I

    .line 76
    move-object v2, v0

    move-object v0, v2

    goto :goto_0
.end method

.method public dispatchEvent(Ljavafx/event/Event;)Ljavafx/event/Event;
    .locals 12

    .prologue
    .line 100
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/event/EventDispatchChainImpl;
    move-object v1, p1

    .local v1, "event":Ljavafx/event/Event;
    move-object v8, v0

    iget v8, v8, Lcom/sun/javafx/event/EventDispatchChainImpl;->activeCount:I

    if-nez v8, :cond_0

    .line 101
    move-object v8, v1

    move-object v0, v8

    .line 122
    .end local v0    # "this":Lcom/sun/javafx/event/EventDispatchChainImpl;
    :goto_0
    return-object v0

    .line 105
    .restart local v0    # "this":Lcom/sun/javafx/event/EventDispatchChainImpl;
    :cond_0
    move-object v8, v0

    iget v8, v8, Lcom/sun/javafx/event/EventDispatchChainImpl;->headIndex:I

    move v2, v8

    .line 106
    .local v2, "savedHeadIndex":I
    move-object v8, v0

    iget v8, v8, Lcom/sun/javafx/event/EventDispatchChainImpl;->tailIndex:I

    move v3, v8

    .line 107
    .local v3, "savedTailIndex":I
    move-object v8, v0

    iget v8, v8, Lcom/sun/javafx/event/EventDispatchChainImpl;->activeCount:I

    move v4, v8

    .line 108
    .local v4, "savedActiveCount":I
    move-object v8, v0

    iget v8, v8, Lcom/sun/javafx/event/EventDispatchChainImpl;->reservedCount:I

    move v5, v8

    .line 110
    .local v5, "savedReservedCount":I
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/event/EventDispatchChainImpl;->dispatchers:[Ljavafx/event/EventDispatcher;

    move-object v9, v0

    iget v9, v9, Lcom/sun/javafx/event/EventDispatchChainImpl;->headIndex:I

    aget-object v8, v8, v9

    move-object v6, v8

    .line 111
    .local v6, "nextEventDispatcher":Ljavafx/event/EventDispatcher;
    move-object v8, v0

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/event/EventDispatchChainImpl;->nextLinks:[I

    move-object v10, v0

    iget v10, v10, Lcom/sun/javafx/event/EventDispatchChainImpl;->headIndex:I

    aget v9, v9, v10

    iput v9, v8, Lcom/sun/javafx/event/EventDispatchChainImpl;->headIndex:I

    .line 112
    move-object v8, v0

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    iget v9, v9, Lcom/sun/javafx/event/EventDispatchChainImpl;->activeCount:I

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    iput v9, v8, Lcom/sun/javafx/event/EventDispatchChainImpl;->activeCount:I

    .line 113
    move-object v8, v6

    move-object v9, v1

    move-object v10, v0

    .line 114
    invoke-interface {v8, v9, v10}, Ljavafx/event/EventDispatcher;->dispatchEvent(Ljavafx/event/Event;Ljavafx/event/EventDispatchChain;)Ljavafx/event/Event;

    move-result-object v8

    move-object v7, v8

    .line 117
    .local v7, "returnEvent":Ljavafx/event/Event;
    move-object v8, v0

    move v9, v2

    iput v9, v8, Lcom/sun/javafx/event/EventDispatchChainImpl;->headIndex:I

    .line 118
    move-object v8, v0

    move v9, v3

    iput v9, v8, Lcom/sun/javafx/event/EventDispatchChainImpl;->tailIndex:I

    .line 119
    move-object v8, v0

    move v9, v4

    iput v9, v8, Lcom/sun/javafx/event/EventDispatchChainImpl;->activeCount:I

    .line 120
    move-object v8, v0

    move v9, v5

    iput v9, v8, Lcom/sun/javafx/event/EventDispatchChainImpl;->reservedCount:I

    .line 122
    move-object v8, v7

    move-object v0, v8

    goto :goto_0
.end method

.method public prepend(Ljavafx/event/EventDispatcher;)Ljavafx/event/EventDispatchChain;
    .locals 6

    .prologue
    .line 81
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/event/EventDispatchChainImpl;
    move-object v1, p1

    .local v1, "eventDispatcher":Ljavafx/event/EventDispatcher;
    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/event/EventDispatchChainImpl;->reservedCount:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    invoke-direct {v2, v3}, Lcom/sun/javafx/event/EventDispatchChainImpl;->ensureCapacity(I)V

    .line 83
    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/event/EventDispatchChainImpl;->activeCount:I

    if-nez v2, :cond_0

    .line 84
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/event/EventDispatchChainImpl;->insertFirst(Ljavafx/event/EventDispatcher;)V

    .line 85
    move-object v2, v0

    move-object v0, v2

    .line 95
    .end local v0    # "this":Lcom/sun/javafx/event/EventDispatchChainImpl;
    :goto_0
    return-object v0

    .line 88
    .restart local v0    # "this":Lcom/sun/javafx/event/EventDispatchChainImpl;
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/event/EventDispatchChainImpl;->dispatchers:[Ljavafx/event/EventDispatcher;

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/event/EventDispatchChainImpl;->reservedCount:I

    move-object v4, v1

    aput-object v4, v2, v3

    .line 89
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/event/EventDispatchChainImpl;->nextLinks:[I

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/event/EventDispatchChainImpl;->reservedCount:I

    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/event/EventDispatchChainImpl;->headIndex:I

    aput v4, v2, v3

    .line 90
    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/event/EventDispatchChainImpl;->reservedCount:I

    iput v3, v2, Lcom/sun/javafx/event/EventDispatchChainImpl;->headIndex:I

    .line 92
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Lcom/sun/javafx/event/EventDispatchChainImpl;->activeCount:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/sun/javafx/event/EventDispatchChainImpl;->activeCount:I

    .line 93
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Lcom/sun/javafx/event/EventDispatchChainImpl;->reservedCount:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/sun/javafx/event/EventDispatchChainImpl;->reservedCount:I

    .line 95
    move-object v2, v0

    move-object v0, v2

    goto :goto_0
.end method

.method public reset()V
    .locals 5

    .prologue
    .line 50
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/event/EventDispatchChainImpl;
    const/4 v2, 0x0

    move v1, v2

    .local v1, "i":I
    :goto_0
    move v2, v1

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/event/EventDispatchChainImpl;->reservedCount:I

    if-ge v2, v3, :cond_0

    .line 51
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/event/EventDispatchChainImpl;->dispatchers:[Ljavafx/event/EventDispatcher;

    move v3, v1

    const/4 v4, 0x0

    aput-object v4, v2, v3

    .line 50
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 54
    :cond_0
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Lcom/sun/javafx/event/EventDispatchChainImpl;->reservedCount:I

    .line 55
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Lcom/sun/javafx/event/EventDispatchChainImpl;->activeCount:I

    .line 56
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Lcom/sun/javafx/event/EventDispatchChainImpl;->headIndex:I

    .line 57
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Lcom/sun/javafx/event/EventDispatchChainImpl;->tailIndex:I

    .line 58
    return-void
.end method
