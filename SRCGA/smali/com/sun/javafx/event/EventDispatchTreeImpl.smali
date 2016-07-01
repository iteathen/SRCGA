.class public final Lcom/sun/javafx/event/EventDispatchTreeImpl;
.super Ljava/lang/Object;
.source "EventDispatchTreeImpl.java"

# interfaces
.implements Lcom/sun/javafx/event/EventDispatchTree;


# static fields
.field private static final CAPACITY_GROWTH_FACTOR:I = 0x8

.field private static final NULL_INDEX:I = -0x1


# instance fields
.field private dispatchers:[Ljavafx/event/EventDispatcher;

.field private expandTailFirstPath:Z

.field private nextChildren:[I

.field private nextSiblings:[I

.field private reservedCount:I

.field private rootIndex:I

.field private tailFirstIndex:I

.field private tailLastIndex:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 47
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/event/EventDispatchTreeImpl;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 48
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Lcom/sun/javafx/event/EventDispatchTreeImpl;->rootIndex:I

    .line 49
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Lcom/sun/javafx/event/EventDispatchTreeImpl;->tailFirstIndex:I

    .line 50
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Lcom/sun/javafx/event/EventDispatchTreeImpl;->tailLastIndex:I

    .line 51
    return-void
.end method

.method private appendSubtree(Ljava/lang/StringBuilder;I)V
    .locals 7

    .prologue
    .line 327
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/event/EventDispatchTreeImpl;
    move-object v1, p1

    .local v1, "sb":Ljava/lang/StringBuilder;
    move v2, p2

    .local v2, "index":I
    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/event/EventDispatchTreeImpl;->dispatchers:[Ljavafx/event/EventDispatcher;

    move v6, v2

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 329
    move-object v4, v0

    move v5, v2

    invoke-static {v4, v5}, Lcom/sun/javafx/event/EventDispatchTreeImpl;->getChildIndex(Lcom/sun/javafx/event/EventDispatchTreeImpl;I)I

    move-result v4

    move v3, v4

    .line 330
    .local v3, "childIndex":I
    move v4, v3

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 331
    move-object v4, v1

    const-string v5, "->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 332
    move-object v4, v0

    move-object v5, v1

    move v6, v3

    invoke-direct {v4, v5, v6}, Lcom/sun/javafx/event/EventDispatchTreeImpl;->appendTreeLevel(Ljava/lang/StringBuilder;I)V

    .line 334
    :cond_0
    return-void
.end method

.method private appendTreeLevel(Ljava/lang/StringBuilder;I)V
    .locals 7

    .prologue
    .line 310
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/event/EventDispatchTreeImpl;
    move-object v1, p1

    .local v1, "sb":Ljava/lang/StringBuilder;
    move v2, p2

    .local v2, "levelIndex":I
    move-object v4, v1

    const/16 v5, 0x28

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 312
    move v4, v2

    move v3, v4

    .line 313
    .local v3, "index":I
    move-object v4, v0

    move-object v5, v1

    move v6, v3

    invoke-direct {v4, v5, v6}, Lcom/sun/javafx/event/EventDispatchTreeImpl;->appendSubtree(Ljava/lang/StringBuilder;I)V

    .line 315
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/event/EventDispatchTreeImpl;->nextSiblings:[I

    move v5, v3

    aget v4, v4, v5

    move v3, v4

    .line 316
    :goto_0
    move v4, v3

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 317
    move-object v4, v1

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 318
    move-object v4, v0

    move-object v5, v1

    move v6, v3

    invoke-direct {v4, v5, v6}, Lcom/sun/javafx/event/EventDispatchTreeImpl;->appendSubtree(Ljava/lang/StringBuilder;I)V

    .line 319
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/event/EventDispatchTreeImpl;->nextSiblings:[I

    move v5, v3

    aget v4, v4, v5

    move v3, v4

    goto :goto_0

    .line 322
    :cond_0
    move-object v4, v1

    const/16 v5, 0x29

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 323
    return-void
.end method

.method private copySubtree(Lcom/sun/javafx/event/EventDispatchTreeImpl;I)I
    .locals 11

    .prologue
    .line 297
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/event/EventDispatchTreeImpl;
    move-object v1, p1

    .local v1, "srcTree":Lcom/sun/javafx/event/EventDispatchTreeImpl;
    move v2, p2

    .local v2, "srcIndex":I
    move-object v5, v0

    move-object v6, v0

    iget v6, v6, Lcom/sun/javafx/event/EventDispatchTreeImpl;->reservedCount:I

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    invoke-direct {v5, v6}, Lcom/sun/javafx/event/EventDispatchTreeImpl;->ensureCapacity(I)V

    .line 298
    move-object v5, v0

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    iget v6, v6, Lcom/sun/javafx/event/EventDispatchTreeImpl;->reservedCount:I

    move-object v9, v5

    move v10, v6

    move v5, v10

    move-object v6, v9

    move v7, v10

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Lcom/sun/javafx/event/EventDispatchTreeImpl;->reservedCount:I

    move v3, v5

    .line 300
    .local v3, "dstIndex":I
    move-object v5, v0

    move-object v6, v1

    move-object v7, v1

    move v8, v2

    .line 301
    invoke-static {v7, v8}, Lcom/sun/javafx/event/EventDispatchTreeImpl;->getChildIndex(Lcom/sun/javafx/event/EventDispatchTreeImpl;I)I

    move-result v7

    invoke-direct {v5, v6, v7}, Lcom/sun/javafx/event/EventDispatchTreeImpl;->copyTreeLevel(Lcom/sun/javafx/event/EventDispatchTreeImpl;I)I

    move-result v5

    move v4, v5

    .line 302
    .local v4, "dstChildLevelIndex":I
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/event/EventDispatchTreeImpl;->dispatchers:[Ljavafx/event/EventDispatcher;

    move v6, v3

    move-object v7, v1

    iget-object v7, v7, Lcom/sun/javafx/event/EventDispatchTreeImpl;->dispatchers:[Ljavafx/event/EventDispatcher;

    move v8, v2

    aget-object v7, v7, v8

    aput-object v7, v5, v6

    .line 303
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/event/EventDispatchTreeImpl;->nextChildren:[I

    move v6, v3

    move v7, v4

    aput v7, v5, v6

    .line 305
    move v5, v3

    move v0, v5

    .end local v0    # "this":Lcom/sun/javafx/event/EventDispatchTreeImpl;
    return v0
.end method

.method private copyTreeLevel(Lcom/sun/javafx/event/EventDispatchTreeImpl;I)I
    .locals 10

    .prologue
    .line 274
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/event/EventDispatchTreeImpl;
    move-object v1, p1

    .local v1, "srcTree":Lcom/sun/javafx/event/EventDispatchTreeImpl;
    move v2, p2

    .local v2, "srcLevelIndex":I
    move v7, v2

    const/4 v8, -0x1

    if-ne v7, v8, :cond_0

    .line 275
    const/4 v7, -0x1

    move v0, v7

    .line 292
    .end local v0    # "this":Lcom/sun/javafx/event/EventDispatchTreeImpl;
    :goto_0
    return v0

    .line 278
    .restart local v0    # "this":Lcom/sun/javafx/event/EventDispatchTreeImpl;
    :cond_0
    move v7, v2

    move v3, v7

    .line 279
    .local v3, "srcIndex":I
    move-object v7, v0

    move-object v8, v1

    move v9, v3

    invoke-direct {v7, v8, v9}, Lcom/sun/javafx/event/EventDispatchTreeImpl;->copySubtree(Lcom/sun/javafx/event/EventDispatchTreeImpl;I)I

    move-result v7

    move v4, v7

    .line 280
    .local v4, "dstLevelIndex":I
    move v7, v4

    move v5, v7

    .line 282
    .local v5, "lastDstIndex":I
    move-object v7, v1

    iget-object v7, v7, Lcom/sun/javafx/event/EventDispatchTreeImpl;->nextSiblings:[I

    move v8, v3

    aget v7, v7, v8

    move v3, v7

    .line 283
    :goto_1
    move v7, v3

    const/4 v8, -0x1

    if-eq v7, v8, :cond_1

    .line 284
    move-object v7, v0

    move-object v8, v1

    move v9, v3

    invoke-direct {v7, v8, v9}, Lcom/sun/javafx/event/EventDispatchTreeImpl;->copySubtree(Lcom/sun/javafx/event/EventDispatchTreeImpl;I)I

    move-result v7

    move v6, v7

    .line 285
    .local v6, "dstIndex":I
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/event/EventDispatchTreeImpl;->nextSiblings:[I

    move v8, v5

    move v9, v6

    aput v9, v7, v8

    .line 287
    move v7, v6

    move v5, v7

    .line 288
    move-object v7, v1

    iget-object v7, v7, Lcom/sun/javafx/event/EventDispatchTreeImpl;->nextSiblings:[I

    move v8, v3

    aget v7, v7, v8

    move v3, v7

    .line 289
    goto :goto_1

    .line 291
    .end local v6    # "dstIndex":I
    :cond_1
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/event/EventDispatchTreeImpl;->nextSiblings:[I

    move v8, v5

    const/4 v9, -0x1

    aput v9, v7, v8

    .line 292
    move v7, v4

    move v0, v7

    goto :goto_0
.end method

.method private ensureCapacity(I)V
    .locals 11

    .prologue
    .line 188
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/event/EventDispatchTreeImpl;
    move v1, p1

    .local v1, "size":I
    move v6, v1

    const/16 v7, 0x8

    add-int/lit8 v6, v6, 0x8

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    const/4 v7, -0x8

    and-int/lit8 v6, v6, -0x8

    move v2, v6

    .line 190
    .local v2, "newCapacity":I
    move v6, v2

    if-nez v6, :cond_0

    .line 191
    .line 213
    :goto_0
    return-void

    .line 194
    :cond_0
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/event/EventDispatchTreeImpl;->dispatchers:[Ljavafx/event/EventDispatcher;

    if-eqz v6, :cond_1

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/event/EventDispatchTreeImpl;->dispatchers:[Ljavafx/event/EventDispatcher;

    array-length v6, v6

    move v7, v2

    if-ge v6, v7, :cond_3

    .line 195
    :cond_1
    move v6, v2

    new-array v6, v6, [Ljavafx/event/EventDispatcher;

    move-object v3, v6

    .line 197
    .local v3, "newDispatchers":[Ljavafx/event/EventDispatcher;
    move v6, v2

    new-array v6, v6, [I

    move-object v4, v6

    .line 198
    .local v4, "newNextChildren":[I
    move v6, v2

    new-array v6, v6, [I

    move-object v5, v6

    .line 200
    .local v5, "newNextSiblings":[I
    move-object v6, v0

    iget v6, v6, Lcom/sun/javafx/event/EventDispatchTreeImpl;->reservedCount:I

    if-lez v6, :cond_2

    .line 201
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/event/EventDispatchTreeImpl;->dispatchers:[Ljavafx/event/EventDispatcher;

    const/4 v7, 0x0

    move-object v8, v3

    const/4 v9, 0x0

    move-object v10, v0

    iget v10, v10, Lcom/sun/javafx/event/EventDispatchTreeImpl;->reservedCount:I

    invoke-static {v6, v7, v8, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 203
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/event/EventDispatchTreeImpl;->nextChildren:[I

    const/4 v7, 0x0

    move-object v8, v4

    const/4 v9, 0x0

    move-object v10, v0

    iget v10, v10, Lcom/sun/javafx/event/EventDispatchTreeImpl;->reservedCount:I

    invoke-static {v6, v7, v8, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 205
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/event/EventDispatchTreeImpl;->nextSiblings:[I

    const/4 v7, 0x0

    move-object v8, v5

    const/4 v9, 0x0

    move-object v10, v0

    iget v10, v10, Lcom/sun/javafx/event/EventDispatchTreeImpl;->reservedCount:I

    invoke-static {v6, v7, v8, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 209
    :cond_2
    move-object v6, v0

    move-object v7, v3

    iput-object v7, v6, Lcom/sun/javafx/event/EventDispatchTreeImpl;->dispatchers:[Ljavafx/event/EventDispatcher;

    .line 210
    move-object v6, v0

    move-object v7, v4

    iput-object v7, v6, Lcom/sun/javafx/event/EventDispatchTreeImpl;->nextChildren:[I

    .line 211
    move-object v6, v0

    move-object v7, v5

    iput-object v7, v6, Lcom/sun/javafx/event/EventDispatchTreeImpl;->nextSiblings:[I

    .line 213
    .end local v3    # "newDispatchers":[Ljavafx/event/EventDispatcher;
    .end local v4    # "newNextChildren":[I
    .end local v5    # "newNextSiblings":[I
    :cond_3
    goto :goto_0
.end method

.method private expandTail(I)V
    .locals 7

    .prologue
    .line 216
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/event/EventDispatchTreeImpl;
    move v1, p1

    .local v1, "levelIndex":I
    move v4, v1

    move v2, v4

    .line 217
    .local v2, "index":I
    :goto_0
    move v4, v2

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    .line 218
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/event/EventDispatchTreeImpl;->nextChildren:[I

    move v5, v2

    aget v4, v4, v5

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 219
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/event/EventDispatchTreeImpl;->nextChildren:[I

    move v6, v2

    aget v5, v5, v6

    invoke-direct {v4, v5}, Lcom/sun/javafx/event/EventDispatchTreeImpl;->expandTail(I)V

    .line 231
    :goto_1
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/event/EventDispatchTreeImpl;->nextSiblings:[I

    move v5, v2

    aget v4, v4, v5

    move v2, v4

    goto :goto_0

    .line 221
    :cond_0
    move-object v4, v0

    iget-boolean v4, v4, Lcom/sun/javafx/event/EventDispatchTreeImpl;->expandTailFirstPath:Z

    if-eqz v4, :cond_1

    .line 222
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/event/EventDispatchTreeImpl;->nextChildren:[I

    move v5, v2

    move-object v6, v0

    iget v6, v6, Lcom/sun/javafx/event/EventDispatchTreeImpl;->tailFirstIndex:I

    aput v6, v4, v5

    .line 223
    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/sun/javafx/event/EventDispatchTreeImpl;->expandTailFirstPath:Z

    goto :goto_1

    .line 225
    :cond_1
    move-object v4, v0

    move-object v5, v0

    move-object v6, v0

    iget v6, v6, Lcom/sun/javafx/event/EventDispatchTreeImpl;->tailFirstIndex:I

    .line 226
    invoke-direct {v4, v5, v6}, Lcom/sun/javafx/event/EventDispatchTreeImpl;->copyTreeLevel(Lcom/sun/javafx/event/EventDispatchTreeImpl;I)I

    move-result v4

    move v3, v4

    .line 227
    .local v3, "childLevelIndex":I
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/event/EventDispatchTreeImpl;->nextChildren:[I

    move v5, v2

    move v6, v3

    aput v6, v4, v5

    goto :goto_1

    .line 233
    .end local v3    # "childLevelIndex":I
    :cond_2
    return-void
.end method

.method private static getChildIndex(Lcom/sun/javafx/event/EventDispatchTreeImpl;I)I
    .locals 5

    .prologue
    .line 338
    move-object v0, p0

    .local v0, "tree":Lcom/sun/javafx/event/EventDispatchTreeImpl;
    move v1, p1

    .local v1, "index":I
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/event/EventDispatchTreeImpl;->nextChildren:[I

    move v4, v1

    aget v3, v3, v4

    move v2, v3

    .line 339
    .local v2, "childIndex":I
    move v3, v2

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    move v3, v1

    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/event/EventDispatchTreeImpl;->tailLastIndex:I

    if-eq v3, v4, :cond_0

    .line 341
    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/event/EventDispatchTreeImpl;->tailFirstIndex:I

    move v2, v3

    .line 344
    :cond_0
    move v3, v2

    move v0, v3

    .end local v0    # "tree":Lcom/sun/javafx/event/EventDispatchTreeImpl;
    return v0
.end method

.method private mergeTreeLevel(Lcom/sun/javafx/event/EventDispatchTreeImpl;II)V
    .locals 14

    .prologue
    .line 238
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/event/EventDispatchTreeImpl;
    move-object v1, p1

    .local v1, "srcTree":Lcom/sun/javafx/event/EventDispatchTreeImpl;
    move/from16 v2, p2

    .local v2, "dstLevelIndex":I
    move/from16 v3, p3

    .local v3, "srcLevelIndex":I
    move v10, v3

    move v4, v10

    .line 239
    .local v4, "srcIndex":I
    :goto_0
    move v10, v4

    const/4 v11, -0x1

    if-eq v10, v11, :cond_3

    .line 240
    move-object v10, v1

    iget-object v10, v10, Lcom/sun/javafx/event/EventDispatchTreeImpl;->dispatchers:[Ljavafx/event/EventDispatcher;

    move v11, v4

    aget-object v10, v10, v11

    move-object v5, v10

    .line 241
    .local v5, "srcDispatcher":Ljavafx/event/EventDispatcher;
    move v10, v2

    move v6, v10

    .line 242
    .local v6, "dstIndex":I
    move v10, v2

    move v7, v10

    .line 244
    .local v7, "lastDstIndex":I
    :goto_1
    move v10, v6

    const/4 v11, -0x1

    if-eq v10, v11, :cond_0

    move-object v10, v5

    move-object v11, v0

    iget-object v11, v11, Lcom/sun/javafx/event/EventDispatchTreeImpl;->dispatchers:[Ljavafx/event/EventDispatcher;

    move v12, v6

    aget-object v11, v11, v12

    if-eq v10, v11, :cond_0

    .line 246
    move v10, v6

    move v7, v10

    .line 247
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/javafx/event/EventDispatchTreeImpl;->nextSiblings:[I

    move v11, v6

    aget v10, v10, v11

    move v6, v10

    goto :goto_1

    .line 250
    :cond_0
    move v10, v6

    const/4 v11, -0x1

    if-ne v10, v11, :cond_1

    .line 251
    move-object v10, v0

    move-object v11, v1

    move v12, v4

    invoke-direct {v10, v11, v12}, Lcom/sun/javafx/event/EventDispatchTreeImpl;->copySubtree(Lcom/sun/javafx/event/EventDispatchTreeImpl;I)I

    move-result v10

    move v8, v10

    .line 252
    .local v8, "siblingIndex":I
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/javafx/event/EventDispatchTreeImpl;->nextSiblings:[I

    move v11, v7

    move v12, v8

    aput v12, v10, v11

    .line 253
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/javafx/event/EventDispatchTreeImpl;->nextSiblings:[I

    move v11, v8

    const/4 v12, -0x1

    aput v12, v10, v11

    .line 254
    .line 268
    .end local v8    # "siblingIndex":I
    :goto_2
    move-object v10, v1

    iget-object v10, v10, Lcom/sun/javafx/event/EventDispatchTreeImpl;->nextSiblings:[I

    move v11, v4

    aget v10, v10, v11

    move v4, v10

    .line 269
    goto :goto_0

    .line 255
    :cond_1
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/javafx/event/EventDispatchTreeImpl;->nextChildren:[I

    move v11, v6

    aget v10, v10, v11

    move v8, v10

    .line 256
    .local v8, "nextDstLevelIndex":I
    move-object v10, v1

    move v11, v4

    invoke-static {v10, v11}, Lcom/sun/javafx/event/EventDispatchTreeImpl;->getChildIndex(Lcom/sun/javafx/event/EventDispatchTreeImpl;I)I

    move-result v10

    move v9, v10

    .line 257
    .local v9, "nextSrcLevelIndex":I
    move v10, v8

    const/4 v11, -0x1

    if-eq v10, v11, :cond_2

    .line 258
    move-object v10, v0

    move-object v11, v1

    move v12, v8

    move v13, v9

    invoke-direct {v10, v11, v12, v13}, Lcom/sun/javafx/event/EventDispatchTreeImpl;->mergeTreeLevel(Lcom/sun/javafx/event/EventDispatchTreeImpl;II)V

    goto :goto_2

    .line 262
    :cond_2
    move-object v10, v0

    move-object v11, v1

    move v12, v9

    invoke-direct {v10, v11, v12}, Lcom/sun/javafx/event/EventDispatchTreeImpl;->copyTreeLevel(Lcom/sun/javafx/event/EventDispatchTreeImpl;I)I

    move-result v10

    move v8, v10

    .line 264
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/javafx/event/EventDispatchTreeImpl;->nextChildren:[I

    move v11, v6

    move v12, v8

    aput v12, v10, v11

    goto :goto_2

    .line 270
    .end local v5    # "srcDispatcher":Ljavafx/event/EventDispatcher;
    .end local v6    # "dstIndex":I
    .end local v7    # "lastDstIndex":I
    .end local v8    # "nextDstLevelIndex":I
    .end local v9    # "nextSrcLevelIndex":I
    :cond_3
    return-void
.end method


# virtual methods
.method public append(Ljavafx/event/EventDispatcher;)Lcom/sun/javafx/event/EventDispatchTree;
    .locals 6

    .prologue
    .line 102
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/event/EventDispatchTreeImpl;
    move-object v1, p1

    .local v1, "eventDispatcher":Ljavafx/event/EventDispatcher;
    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/event/EventDispatchTreeImpl;->reservedCount:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    invoke-direct {v2, v3}, Lcom/sun/javafx/event/EventDispatchTreeImpl;->ensureCapacity(I)V

    .line 104
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/event/EventDispatchTreeImpl;->dispatchers:[Ljavafx/event/EventDispatcher;

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/event/EventDispatchTreeImpl;->reservedCount:I

    move-object v4, v1

    aput-object v4, v2, v3

    .line 105
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/event/EventDispatchTreeImpl;->nextSiblings:[I

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/event/EventDispatchTreeImpl;->reservedCount:I

    const/4 v4, -0x1

    aput v4, v2, v3

    .line 106
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/event/EventDispatchTreeImpl;->nextChildren:[I

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/event/EventDispatchTreeImpl;->reservedCount:I

    const/4 v4, -0x1

    aput v4, v2, v3

    .line 107
    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/event/EventDispatchTreeImpl;->tailFirstIndex:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 108
    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/event/EventDispatchTreeImpl;->reservedCount:I

    iput v3, v2, Lcom/sun/javafx/event/EventDispatchTreeImpl;->tailFirstIndex:I

    .line 113
    :goto_0
    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/event/EventDispatchTreeImpl;->reservedCount:I

    iput v3, v2, Lcom/sun/javafx/event/EventDispatchTreeImpl;->tailLastIndex:I

    .line 114
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Lcom/sun/javafx/event/EventDispatchTreeImpl;->reservedCount:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/sun/javafx/event/EventDispatchTreeImpl;->reservedCount:I

    .line 116
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/event/EventDispatchTreeImpl;
    return-object v0

    .line 110
    .restart local v0    # "this":Lcom/sun/javafx/event/EventDispatchTreeImpl;
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/event/EventDispatchTreeImpl;->nextChildren:[I

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/event/EventDispatchTreeImpl;->tailLastIndex:I

    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/event/EventDispatchTreeImpl;->reservedCount:I

    aput v4, v2, v3

    goto :goto_0
.end method

.method public bridge synthetic append(Ljavafx/event/EventDispatcher;)Ljavafx/event/EventDispatchChain;
    .locals 4

    .prologue
    .line 31
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/event/EventDispatchTreeImpl;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/javafx/event/EventDispatchTreeImpl;->append(Ljavafx/event/EventDispatcher;)Lcom/sun/javafx/event/EventDispatchTree;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/event/EventDispatchTreeImpl;
    return-object v0
.end method

.method public createTree()Lcom/sun/javafx/event/EventDispatchTree;
    .locals 4

    .prologue
    .line 67
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/event/EventDispatchTreeImpl;
    new-instance v1, Lcom/sun/javafx/event/EventDispatchTreeImpl;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Lcom/sun/javafx/event/EventDispatchTreeImpl;-><init>()V

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/event/EventDispatchTreeImpl;
    return-object v0
.end method

.method public dispatchEvent(Ljavafx/event/Event;)Ljavafx/event/Event;
    .locals 12

    .prologue
    .line 135
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/event/EventDispatchTreeImpl;
    move-object v1, p1

    .local v1, "event":Ljavafx/event/Event;
    move-object v9, v0

    iget v9, v9, Lcom/sun/javafx/event/EventDispatchTreeImpl;->rootIndex:I

    const/4 v10, -0x1

    if-ne v9, v10, :cond_1

    .line 136
    move-object v9, v0

    iget v9, v9, Lcom/sun/javafx/event/EventDispatchTreeImpl;->tailFirstIndex:I

    const/4 v10, -0x1

    if-ne v9, v10, :cond_0

    .line 137
    move-object v9, v1

    move-object v0, v9

    .line 171
    .end local v0    # "this":Lcom/sun/javafx/event/EventDispatchTreeImpl;
    :goto_0
    return-object v0

    .line 140
    .restart local v0    # "this":Lcom/sun/javafx/event/EventDispatchTreeImpl;
    :cond_0
    move-object v9, v0

    move-object v10, v0

    iget v10, v10, Lcom/sun/javafx/event/EventDispatchTreeImpl;->tailFirstIndex:I

    iput v10, v9, Lcom/sun/javafx/event/EventDispatchTreeImpl;->rootIndex:I

    .line 141
    move-object v9, v0

    const/4 v10, -0x1

    iput v10, v9, Lcom/sun/javafx/event/EventDispatchTreeImpl;->tailFirstIndex:I

    .line 142
    move-object v9, v0

    const/4 v10, -0x1

    iput v10, v9, Lcom/sun/javafx/event/EventDispatchTreeImpl;->tailLastIndex:I

    .line 146
    :cond_1
    move-object v9, v0

    iget v9, v9, Lcom/sun/javafx/event/EventDispatchTreeImpl;->reservedCount:I

    move v2, v9

    .line 147
    .local v2, "savedReservedCount":I
    move-object v9, v0

    iget v9, v9, Lcom/sun/javafx/event/EventDispatchTreeImpl;->rootIndex:I

    move v3, v9

    .line 148
    .local v3, "savedRootIndex":I
    move-object v9, v0

    iget v9, v9, Lcom/sun/javafx/event/EventDispatchTreeImpl;->tailFirstIndex:I

    move v4, v9

    .line 149
    .local v4, "savedTailFirstIndex":I
    move-object v9, v0

    iget v9, v9, Lcom/sun/javafx/event/EventDispatchTreeImpl;->tailLastIndex:I

    move v5, v9

    .line 151
    .local v5, "savedTailLastIndex":I
    const/4 v9, 0x0

    move-object v6, v9

    .line 152
    .local v6, "returnEvent":Ljavafx/event/Event;
    move-object v9, v0

    iget v9, v9, Lcom/sun/javafx/event/EventDispatchTreeImpl;->rootIndex:I

    move v7, v9

    .line 154
    .local v7, "index":I
    :cond_2
    move-object v9, v0

    move-object v10, v0

    iget-object v10, v10, Lcom/sun/javafx/event/EventDispatchTreeImpl;->nextChildren:[I

    move v11, v7

    aget v10, v10, v11

    iput v10, v9, Lcom/sun/javafx/event/EventDispatchTreeImpl;->rootIndex:I

    .line 155
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/event/EventDispatchTreeImpl;->dispatchers:[Ljavafx/event/EventDispatcher;

    move v10, v7

    aget-object v9, v9, v10

    move-object v10, v1

    move-object v11, v0

    .line 156
    invoke-interface {v9, v10, v11}, Ljavafx/event/EventDispatcher;->dispatchEvent(Ljavafx/event/Event;Ljavafx/event/EventDispatchChain;)Ljavafx/event/Event;

    move-result-object v9

    move-object v8, v9

    .line 157
    .local v8, "branchReturnEvent":Ljavafx/event/Event;
    move-object v9, v8

    if-eqz v9, :cond_3

    .line 158
    move-object v9, v6

    if-eqz v9, :cond_4

    move-object v9, v1

    :goto_1
    move-object v6, v9

    .line 162
    :cond_3
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/event/EventDispatchTreeImpl;->nextSiblings:[I

    move v10, v7

    aget v9, v9, v10

    move v7, v9

    .line 163
    move v9, v7

    const/4 v10, -0x1

    if-ne v9, v10, :cond_2

    .line 166
    move-object v9, v0

    move v10, v2

    iput v10, v9, Lcom/sun/javafx/event/EventDispatchTreeImpl;->reservedCount:I

    .line 167
    move-object v9, v0

    move v10, v3

    iput v10, v9, Lcom/sun/javafx/event/EventDispatchTreeImpl;->rootIndex:I

    .line 168
    move-object v9, v0

    move v10, v4

    iput v10, v9, Lcom/sun/javafx/event/EventDispatchTreeImpl;->tailFirstIndex:I

    .line 169
    move-object v9, v0

    move v10, v5

    iput v10, v9, Lcom/sun/javafx/event/EventDispatchTreeImpl;->tailLastIndex:I

    .line 171
    move-object v9, v6

    move-object v0, v9

    goto :goto_0

    .line 158
    :cond_4
    move-object v9, v8

    goto :goto_1
.end method

.method public mergeTree(Lcom/sun/javafx/event/EventDispatchTree;)Lcom/sun/javafx/event/EventDispatchTree;
    .locals 8

    .prologue
    .line 74
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/event/EventDispatchTreeImpl;
    move-object v1, p1

    .local v1, "tree":Lcom/sun/javafx/event/EventDispatchTree;
    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/event/EventDispatchTreeImpl;->tailFirstIndex:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 75
    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/event/EventDispatchTreeImpl;->rootIndex:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    .line 76
    move-object v4, v0

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/sun/javafx/event/EventDispatchTreeImpl;->expandTailFirstPath:Z

    .line 77
    move-object v4, v0

    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/event/EventDispatchTreeImpl;->rootIndex:I

    invoke-direct {v4, v5}, Lcom/sun/javafx/event/EventDispatchTreeImpl;->expandTail(I)V

    .line 82
    :goto_0
    move-object v4, v0

    const/4 v5, -0x1

    iput v5, v4, Lcom/sun/javafx/event/EventDispatchTreeImpl;->tailFirstIndex:I

    .line 83
    move-object v4, v0

    const/4 v5, -0x1

    iput v5, v4, Lcom/sun/javafx/event/EventDispatchTreeImpl;->tailLastIndex:I

    .line 86
    :cond_0
    move-object v4, v1

    check-cast v4, Lcom/sun/javafx/event/EventDispatchTreeImpl;

    move-object v2, v4

    .line 87
    .local v2, "treeImpl":Lcom/sun/javafx/event/EventDispatchTreeImpl;
    move-object v4, v2

    iget v4, v4, Lcom/sun/javafx/event/EventDispatchTreeImpl;->rootIndex:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    move-object v4, v2

    iget v4, v4, Lcom/sun/javafx/event/EventDispatchTreeImpl;->rootIndex:I

    :goto_1
    move v3, v4

    .line 91
    .local v3, "srcLevelIndex":I
    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/event/EventDispatchTreeImpl;->rootIndex:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_3

    .line 92
    move-object v4, v0

    move-object v5, v0

    move-object v6, v2

    move v7, v3

    invoke-direct {v5, v6, v7}, Lcom/sun/javafx/event/EventDispatchTreeImpl;->copyTreeLevel(Lcom/sun/javafx/event/EventDispatchTreeImpl;I)I

    move-result v5

    iput v5, v4, Lcom/sun/javafx/event/EventDispatchTreeImpl;->rootIndex:I

    .line 97
    :goto_2
    move-object v4, v0

    move-object v0, v4

    .end local v0    # "this":Lcom/sun/javafx/event/EventDispatchTreeImpl;
    return-object v0

    .line 79
    .end local v2    # "treeImpl":Lcom/sun/javafx/event/EventDispatchTreeImpl;
    .end local v3    # "srcLevelIndex":I
    .restart local v0    # "this":Lcom/sun/javafx/event/EventDispatchTreeImpl;
    :cond_1
    move-object v4, v0

    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/event/EventDispatchTreeImpl;->tailFirstIndex:I

    iput v5, v4, Lcom/sun/javafx/event/EventDispatchTreeImpl;->rootIndex:I

    goto :goto_0

    .line 87
    .restart local v2    # "treeImpl":Lcom/sun/javafx/event/EventDispatchTreeImpl;
    :cond_2
    move-object v4, v2

    iget v4, v4, Lcom/sun/javafx/event/EventDispatchTreeImpl;->tailFirstIndex:I

    goto :goto_1

    .line 94
    .restart local v3    # "srcLevelIndex":I
    :cond_3
    move-object v4, v0

    move-object v5, v2

    move-object v6, v0

    iget v6, v6, Lcom/sun/javafx/event/EventDispatchTreeImpl;->rootIndex:I

    move v7, v3

    invoke-direct {v4, v5, v6, v7}, Lcom/sun/javafx/event/EventDispatchTreeImpl;->mergeTreeLevel(Lcom/sun/javafx/event/EventDispatchTreeImpl;II)V

    goto :goto_2
.end method

.method public prepend(Ljavafx/event/EventDispatcher;)Lcom/sun/javafx/event/EventDispatchTree;
    .locals 6

    .prologue
    .line 121
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/event/EventDispatchTreeImpl;
    move-object v1, p1

    .local v1, "eventDispatcher":Ljavafx/event/EventDispatcher;
    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/event/EventDispatchTreeImpl;->reservedCount:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    invoke-direct {v2, v3}, Lcom/sun/javafx/event/EventDispatchTreeImpl;->ensureCapacity(I)V

    .line 123
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/event/EventDispatchTreeImpl;->dispatchers:[Ljavafx/event/EventDispatcher;

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/event/EventDispatchTreeImpl;->reservedCount:I

    move-object v4, v1

    aput-object v4, v2, v3

    .line 124
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/event/EventDispatchTreeImpl;->nextSiblings:[I

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/event/EventDispatchTreeImpl;->reservedCount:I

    const/4 v4, -0x1

    aput v4, v2, v3

    .line 125
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/event/EventDispatchTreeImpl;->nextChildren:[I

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/event/EventDispatchTreeImpl;->reservedCount:I

    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/event/EventDispatchTreeImpl;->rootIndex:I

    aput v4, v2, v3

    .line 127
    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/event/EventDispatchTreeImpl;->reservedCount:I

    iput v3, v2, Lcom/sun/javafx/event/EventDispatchTreeImpl;->rootIndex:I

    .line 128
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Lcom/sun/javafx/event/EventDispatchTreeImpl;->reservedCount:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/sun/javafx/event/EventDispatchTreeImpl;->reservedCount:I

    .line 130
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/event/EventDispatchTreeImpl;
    return-object v0
.end method

.method public bridge synthetic prepend(Ljavafx/event/EventDispatcher;)Ljavafx/event/EventDispatchChain;
    .locals 4

    .prologue
    .line 31
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/event/EventDispatchTreeImpl;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/javafx/event/EventDispatchTreeImpl;->prepend(Ljavafx/event/EventDispatcher;)Lcom/sun/javafx/event/EventDispatchTree;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/event/EventDispatchTreeImpl;
    return-object v0
.end method

.method public reset()V
    .locals 5

    .prologue
    .line 55
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/event/EventDispatchTreeImpl;
    const/4 v2, 0x0

    move v1, v2

    .local v1, "i":I
    :goto_0
    move v2, v1

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/event/EventDispatchTreeImpl;->reservedCount:I

    if-ge v2, v3, :cond_0

    .line 56
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/event/EventDispatchTreeImpl;->dispatchers:[Ljavafx/event/EventDispatcher;

    move v3, v1

    const/4 v4, 0x0

    aput-object v4, v2, v3

    .line 55
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 59
    :cond_0
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Lcom/sun/javafx/event/EventDispatchTreeImpl;->reservedCount:I

    .line 60
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Lcom/sun/javafx/event/EventDispatchTreeImpl;->rootIndex:I

    .line 61
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Lcom/sun/javafx/event/EventDispatchTreeImpl;->tailFirstIndex:I

    .line 62
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Lcom/sun/javafx/event/EventDispatchTreeImpl;->tailLastIndex:I

    .line 63
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    .line 176
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/event/EventDispatchTreeImpl;
    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/event/EventDispatchTreeImpl;->rootIndex:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/event/EventDispatchTreeImpl;->rootIndex:I

    :goto_0
    move v1, v3

    .line 177
    .local v1, "levelIndex":I
    move v3, v1

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    .line 178
    const-string v3, "()"

    move-object v0, v3

    .line 184
    .end local v0    # "this":Lcom/sun/javafx/event/EventDispatchTreeImpl;
    :goto_1
    return-object v0

    .line 176
    .end local v1    # "levelIndex":I
    .restart local v0    # "this":Lcom/sun/javafx/event/EventDispatchTreeImpl;
    :cond_0
    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/event/EventDispatchTreeImpl;->tailFirstIndex:I

    goto :goto_0

    .line 181
    .restart local v1    # "levelIndex":I
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v2, v3

    .line 182
    .local v2, "sb":Ljava/lang/StringBuilder;
    move-object v3, v0

    move-object v4, v2

    move v5, v1

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/event/EventDispatchTreeImpl;->appendTreeLevel(Ljava/lang/StringBuilder;I)V

    .line 184
    move-object v3, v2

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    goto :goto_1
.end method
