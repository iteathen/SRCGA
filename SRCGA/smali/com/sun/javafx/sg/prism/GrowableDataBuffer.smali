.class public Lcom/sun/javafx/sg/prism/GrowableDataBuffer;
.super Ljava/lang/Object;
.source "GrowableDataBuffer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/javafx/sg/prism/GrowableDataBuffer$WeakLink;
    }
.end annotation


# static fields
.field static final MAX_VAL_GROW:I = 0x100000

.field static final MIN_OBJ_GROW:I = 0x20

.field static final VAL_GROW_QUANTUM:I = 0x400

.field static buflist:Lcom/sun/javafx/sg/prism/GrowableDataBuffer$WeakLink;


# instance fields
.field objs:[Ljava/lang/Object;

.field readobjpos:I

.field readvalpos:I

.field saveobjpos:I

.field savevalpos:I

.field vals:[B

.field writeobjpos:I

.field writevalpos:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 60
    new-instance v0, Lcom/sun/javafx/sg/prism/GrowableDataBuffer$WeakLink;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lcom/sun/javafx/sg/prism/GrowableDataBuffer$WeakLink;-><init>()V

    sput-object v0, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->buflist:Lcom/sun/javafx/sg/prism/GrowableDataBuffer$WeakLink;

    return-void
.end method

.method private constructor <init>(II)V
    .locals 5

    .prologue
    .line 151
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/GrowableDataBuffer;
    move v1, p1

    .local v1, "initvalsize":I
    move v2, p2

    .local v2, "initobjsize":I
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 152
    move-object v3, v0

    move v4, v1

    new-array v4, v4, [B

    iput-object v4, v3, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->vals:[B

    .line 153
    move-object v3, v0

    move v4, v2

    new-array v4, v4, [Ljava/lang/Object;

    iput-object v4, v3, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->objs:[Ljava/lang/Object;

    .line 154
    return-void
.end method

.method private ensureReadCapacity(I)V
    .locals 5

    .prologue
    .line 316
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/GrowableDataBuffer;
    move v1, p1

    .local v1, "bytesneeded":I
    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->readvalpos:I

    move v3, v1

    add-int/2addr v2, v3

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->writevalpos:I

    if-le v2, v3, :cond_0

    .line 317
    new-instance v2, Ljava/nio/BufferOverflowException;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v2

    .line 319
    :cond_0
    return-void
.end method

.method private ensureWriteCapacity(I)V
    .locals 7

    .prologue
    .line 303
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/GrowableDataBuffer;
    move v1, p1

    .local v1, "newbytes":I
    move v4, v1

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->vals:[B

    array-length v5, v5

    move-object v6, v0

    iget v6, v6, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->writevalpos:I

    sub-int/2addr v5, v6

    if-le v4, v5, :cond_1

    .line 304
    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->writevalpos:I

    move v5, v1

    add-int/2addr v4, v5

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->vals:[B

    array-length v5, v5

    sub-int/2addr v4, v5

    move v1, v4

    .line 306
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->vals:[B

    array-length v4, v4

    const/high16 v5, 0x100000

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    move v2, v4

    .line 308
    .local v2, "growbytes":I
    move v4, v2

    move v5, v1

    if-ge v4, v5, :cond_0

    move v4, v1

    move v2, v4

    .line 309
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->vals:[B

    array-length v4, v4

    move v5, v2

    add-int/2addr v4, v5

    move v3, v4

    .line 310
    .local v3, "newsize":I
    move v4, v3

    const/16 v5, 0x3ff

    add-int/lit16 v4, v4, 0x3ff

    const/16 v5, -0x400

    and-int/lit16 v4, v4, -0x400

    move v3, v4

    .line 311
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->vals:[B

    move v6, v3

    invoke-static {v5, v6}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v5

    iput-object v5, v4, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->vals:[B

    .line 313
    .end local v2    # "growbytes":I
    .end local v3    # "newsize":I
    :cond_1
    return-void
.end method

.method public static getBuffer(I)Lcom/sun/javafx/sg/prism/GrowableDataBuffer;
    .locals 3

    .prologue
    .line 71
    move v0, p0

    .local v0, "minsize":I
    move v1, v0

    const/16 v2, 0x20

    invoke-static {v1, v2}, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->getBuffer(II)Lcom/sun/javafx/sg/prism/GrowableDataBuffer;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "minsize":I
    return-object v0
.end method

.method public static declared-synchronized getBuffer(II)Lcom/sun/javafx/sg/prism/GrowableDataBuffer;
    .locals 12

    .prologue
    .line 84
    move v0, p0

    .local v0, "minvals":I
    move v1, p1

    .local v1, "minobjs":I
    const-class v10, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;

    monitor-enter v10

    :try_start_0
    sget-object v6, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->buflist:Lcom/sun/javafx/sg/prism/GrowableDataBuffer$WeakLink;

    move-object v2, v6

    .line 85
    .local v2, "prev":Lcom/sun/javafx/sg/prism/GrowableDataBuffer$WeakLink;
    sget-object v6, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->buflist:Lcom/sun/javafx/sg/prism/GrowableDataBuffer$WeakLink;

    iget-object v6, v6, Lcom/sun/javafx/sg/prism/GrowableDataBuffer$WeakLink;->next:Lcom/sun/javafx/sg/prism/GrowableDataBuffer$WeakLink;

    move-object v3, v6

    .line 86
    .local v3, "cur":Lcom/sun/javafx/sg/prism/GrowableDataBuffer$WeakLink;
    :goto_0
    move-object v6, v3

    if-eqz v6, :cond_2

    .line 87
    move-object v6, v3

    iget-object v6, v6, Lcom/sun/javafx/sg/prism/GrowableDataBuffer$WeakLink;->bufref:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;

    move-object v4, v6

    .line 88
    .local v4, "curgdb":Lcom/sun/javafx/sg/prism/GrowableDataBuffer;
    move-object v6, v3

    iget-object v6, v6, Lcom/sun/javafx/sg/prism/GrowableDataBuffer$WeakLink;->next:Lcom/sun/javafx/sg/prism/GrowableDataBuffer$WeakLink;

    move-object v5, v6

    .line 89
    .local v5, "next":Lcom/sun/javafx/sg/prism/GrowableDataBuffer$WeakLink;
    move-object v6, v4

    if-nez v6, :cond_0

    .line 90
    move-object v6, v2

    move-object v7, v5

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    move-object v3, v8

    iput-object v7, v6, Lcom/sun/javafx/sg/prism/GrowableDataBuffer$WeakLink;->next:Lcom/sun/javafx/sg/prism/GrowableDataBuffer$WeakLink;

    .line 91
    goto :goto_0

    .line 93
    :cond_0
    move-object v6, v4

    invoke-virtual {v6}, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->valueCapacity()I

    move-result v6

    move v7, v0

    if-lt v6, v7, :cond_1

    move-object v6, v4

    invoke-virtual {v6}, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->objectCapacity()I

    move-result v6

    move v7, v1

    if-lt v6, v7, :cond_1

    .line 94
    move-object v6, v2

    move-object v7, v5

    iput-object v7, v6, Lcom/sun/javafx/sg/prism/GrowableDataBuffer$WeakLink;->next:Lcom/sun/javafx/sg/prism/GrowableDataBuffer$WeakLink;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    move-object v6, v4

    move-object v0, v6

    .line 100
    .end local v0    # "minvals":I
    .end local v4    # "curgdb":Lcom/sun/javafx/sg/prism/GrowableDataBuffer;
    .end local v5    # "next":Lcom/sun/javafx/sg/prism/GrowableDataBuffer$WeakLink;
    :goto_1
    monitor-exit v10

    return-object v0

    .line 97
    .restart local v0    # "minvals":I
    .restart local v4    # "curgdb":Lcom/sun/javafx/sg/prism/GrowableDataBuffer;
    .restart local v5    # "next":Lcom/sun/javafx/sg/prism/GrowableDataBuffer$WeakLink;
    :cond_1
    move-object v6, v3

    move-object v2, v6

    .line 98
    move-object v6, v5

    move-object v3, v6

    .line 99
    goto :goto_0

    .line 100
    .end local v4    # "curgdb":Lcom/sun/javafx/sg/prism/GrowableDataBuffer;
    .end local v5    # "next":Lcom/sun/javafx/sg/prism/GrowableDataBuffer$WeakLink;
    :cond_2
    :try_start_1
    new-instance v6, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move v8, v0

    move v9, v1

    invoke-direct {v7, v8, v9}, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;-><init>(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v6

    goto :goto_1

    .line 84
    .end local v2    # "prev":Lcom/sun/javafx/sg/prism/GrowableDataBuffer$WeakLink;
    .end local v3    # "cur":Lcom/sun/javafx/sg/prism/GrowableDataBuffer$WeakLink;
    :catchall_0
    move-exception v0

    monitor-exit v10

    .end local v0    # "minvals":I
    throw v0
.end method

.method public static declared-synchronized returnBuffer(Lcom/sun/javafx/sg/prism/GrowableDataBuffer;)V
    .locals 15

    .prologue
    .line 112
    move-object v0, p0

    .local v0, "retgdb":Lcom/sun/javafx/sg/prism/GrowableDataBuffer;
    const-class v13, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;

    monitor-enter v13

    move-object v9, v0

    :try_start_0
    invoke-virtual {v9}, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->valueCapacity()I

    move-result v9

    move v1, v9

    .line 113
    .local v1, "retvlen":I
    move-object v9, v0

    invoke-virtual {v9}, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->objectCapacity()I

    move-result v9

    move v2, v9

    .line 114
    .local v2, "retolen":I
    move-object v9, v0

    invoke-virtual {v9}, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->reset()V

    .line 116
    sget-object v9, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->buflist:Lcom/sun/javafx/sg/prism/GrowableDataBuffer$WeakLink;

    move-object v3, v9

    .line 117
    .local v3, "prev":Lcom/sun/javafx/sg/prism/GrowableDataBuffer$WeakLink;
    sget-object v9, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->buflist:Lcom/sun/javafx/sg/prism/GrowableDataBuffer$WeakLink;

    iget-object v9, v9, Lcom/sun/javafx/sg/prism/GrowableDataBuffer$WeakLink;->next:Lcom/sun/javafx/sg/prism/GrowableDataBuffer$WeakLink;

    move-object v4, v9

    .line 118
    .local v4, "cur":Lcom/sun/javafx/sg/prism/GrowableDataBuffer$WeakLink;
    :goto_0
    move-object v9, v4

    if-eqz v9, :cond_1

    .line 119
    move-object v9, v4

    iget-object v9, v9, Lcom/sun/javafx/sg/prism/GrowableDataBuffer$WeakLink;->bufref:Ljava/lang/ref/WeakReference;

    invoke-virtual {v9}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;

    move-object v5, v9

    .line 120
    .local v5, "curgdb":Lcom/sun/javafx/sg/prism/GrowableDataBuffer;
    move-object v9, v4

    iget-object v9, v9, Lcom/sun/javafx/sg/prism/GrowableDataBuffer$WeakLink;->next:Lcom/sun/javafx/sg/prism/GrowableDataBuffer$WeakLink;

    move-object v6, v9

    .line 121
    .local v6, "next":Lcom/sun/javafx/sg/prism/GrowableDataBuffer$WeakLink;
    move-object v9, v5

    if-nez v9, :cond_0

    .line 122
    move-object v9, v3

    move-object v10, v6

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    move-object v4, v11

    iput-object v10, v9, Lcom/sun/javafx/sg/prism/GrowableDataBuffer$WeakLink;->next:Lcom/sun/javafx/sg/prism/GrowableDataBuffer$WeakLink;

    .line 123
    goto :goto_0

    .line 125
    :cond_0
    move-object v9, v5

    invoke-virtual {v9}, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->valueCapacity()I

    move-result v9

    move v7, v9

    .line 126
    .local v7, "curvlen":I
    move-object v9, v5

    invoke-virtual {v9}, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->objectCapacity()I

    move-result v9

    move v8, v9

    .line 127
    .local v8, "curolen":I
    move v9, v7

    move v10, v1

    if-gt v9, v10, :cond_1

    move v9, v7

    move v10, v1

    if-ne v9, v10, :cond_2

    move v9, v8

    move v10, v2

    if-lt v9, v10, :cond_2

    .line 130
    .line 135
    .end local v5    # "curgdb":Lcom/sun/javafx/sg/prism/GrowableDataBuffer;
    .end local v6    # "next":Lcom/sun/javafx/sg/prism/GrowableDataBuffer$WeakLink;
    .end local v7    # "curvlen":I
    .end local v8    # "curolen":I
    :cond_1
    new-instance v9, Lcom/sun/javafx/sg/prism/GrowableDataBuffer$WeakLink;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    invoke-direct {v10}, Lcom/sun/javafx/sg/prism/GrowableDataBuffer$WeakLink;-><init>()V

    move-object v5, v9

    .line 136
    .local v5, "retlink":Lcom/sun/javafx/sg/prism/GrowableDataBuffer$WeakLink;
    move-object v9, v5

    new-instance v10, Ljava/lang/ref/WeakReference;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    move-object v12, v0

    invoke-direct {v11, v12}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v10, v9, Lcom/sun/javafx/sg/prism/GrowableDataBuffer$WeakLink;->bufref:Ljava/lang/ref/WeakReference;

    .line 137
    move-object v9, v3

    move-object v10, v5

    iput-object v10, v9, Lcom/sun/javafx/sg/prism/GrowableDataBuffer$WeakLink;->next:Lcom/sun/javafx/sg/prism/GrowableDataBuffer$WeakLink;

    .line 138
    move-object v9, v5

    move-object v10, v4

    iput-object v10, v9, Lcom/sun/javafx/sg/prism/GrowableDataBuffer$WeakLink;->next:Lcom/sun/javafx/sg/prism/GrowableDataBuffer$WeakLink;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    monitor-exit v13

    return-void

    .line 132
    .local v5, "curgdb":Lcom/sun/javafx/sg/prism/GrowableDataBuffer;
    .restart local v6    # "next":Lcom/sun/javafx/sg/prism/GrowableDataBuffer$WeakLink;
    .restart local v7    # "curvlen":I
    .restart local v8    # "curolen":I
    :cond_2
    move-object v9, v4

    move-object v3, v9

    .line 133
    move-object v9, v6

    move-object v4, v9

    .line 134
    goto :goto_0

    .line 112
    .end local v1    # "retvlen":I
    .end local v2    # "retolen":I
    .end local v3    # "prev":Lcom/sun/javafx/sg/prism/GrowableDataBuffer$WeakLink;
    .end local v4    # "cur":Lcom/sun/javafx/sg/prism/GrowableDataBuffer$WeakLink;
    .end local v5    # "curgdb":Lcom/sun/javafx/sg/prism/GrowableDataBuffer;
    .end local v6    # "next":Lcom/sun/javafx/sg/prism/GrowableDataBuffer$WeakLink;
    .end local v7    # "curvlen":I
    .end local v8    # "curolen":I
    :catchall_0
    move-exception v0

    monitor-exit v13

    .end local v0    # "retgdb":Lcom/sun/javafx/sg/prism/GrowableDataBuffer;
    throw v0
.end method


# virtual methods
.method public append(Lcom/sun/javafx/sg/prism/GrowableDataBuffer;)V
    .locals 8

    .prologue
    .line 292
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/GrowableDataBuffer;
    move-object v1, p1

    .local v1, "gdb":Lcom/sun/javafx/sg/prism/GrowableDataBuffer;
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->writevalpos:I

    invoke-direct {v2, v3}, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->ensureWriteCapacity(I)V

    .line 293
    move-object v2, v1

    iget-object v2, v2, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->vals:[B

    const/4 v3, 0x0

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->vals:[B

    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->writevalpos:I

    move-object v6, v1

    iget v6, v6, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->writevalpos:I

    invoke-static {v2, v3, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 294
    move-object v2, v0

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    iget v3, v3, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->writevalpos:I

    move-object v4, v1

    iget v4, v4, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->writevalpos:I

    add-int/2addr v3, v4

    iput v3, v2, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->writevalpos:I

    .line 295
    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->writeobjpos:I

    move-object v3, v1

    iget v3, v3, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->writeobjpos:I

    add-int/2addr v2, v3

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->objs:[Ljava/lang/Object;

    array-length v3, v3

    if-le v2, v3, :cond_0

    .line 296
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->objs:[Ljava/lang/Object;

    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->writeobjpos:I

    move-object v5, v1

    iget v5, v5, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->writeobjpos:I

    add-int/2addr v4, v5

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    iput-object v3, v2, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->objs:[Ljava/lang/Object;

    .line 298
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->objs:[Ljava/lang/Object;

    const/4 v3, 0x0

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->objs:[Ljava/lang/Object;

    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->writeobjpos:I

    move-object v6, v1

    iget v6, v6, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->writeobjpos:I

    invoke-static {v2, v3, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 299
    move-object v2, v0

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    iget v3, v3, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->writeobjpos:I

    move-object v4, v1

    iget v4, v4, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->writeobjpos:I

    add-int/2addr v3, v4

    iput v3, v2, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->writeobjpos:I

    .line 300
    return-void
.end method

.method public getBoolean()Z
    .locals 8

    .prologue
    .line 462
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/GrowableDataBuffer;
    move-object v1, v0

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->ensureReadCapacity(I)V

    .line 463
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->vals:[B

    move-object v2, v0

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    iget v3, v3, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->readvalpos:I

    move-object v6, v2

    move v7, v3

    move v2, v7

    move-object v3, v6

    move v4, v7

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->readvalpos:I

    aget-byte v1, v1, v2

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/sg/prism/GrowableDataBuffer;
    return v0

    .restart local v0    # "this":Lcom/sun/javafx/sg/prism/GrowableDataBuffer;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getByte()B
    .locals 8

    .prologue
    .line 474
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/GrowableDataBuffer;
    move-object v1, v0

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->ensureReadCapacity(I)V

    .line 475
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->vals:[B

    move-object v2, v0

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    iget v3, v3, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->readvalpos:I

    move-object v6, v2

    move v7, v3

    move v2, v7

    move-object v3, v6

    move v4, v7

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->readvalpos:I

    aget-byte v1, v1, v2

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/sg/prism/GrowableDataBuffer;
    return v0
.end method

.method public getChar()C
    .locals 10

    .prologue
    .line 499
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/GrowableDataBuffer;
    move-object v2, v0

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->ensureReadCapacity(I)V

    .line 500
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->vals:[B

    move-object v3, v0

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    iget v4, v4, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->readvalpos:I

    move-object v8, v3

    move v9, v4

    move v3, v9

    move-object v4, v8

    move v5, v9

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->readvalpos:I

    aget-byte v2, v2, v3

    move v1, v2

    .line 501
    .local v1, "c":I
    move v2, v1

    const/16 v3, 0x8

    shl-int/lit8 v2, v2, 0x8

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->vals:[B

    move-object v4, v0

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    iget v5, v5, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->readvalpos:I

    move-object v8, v4

    move v9, v5

    move v4, v9

    move-object v5, v8

    move v6, v9

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->readvalpos:I

    aget-byte v3, v3, v4

    const/16 v4, 0xff

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v2, v3

    move v1, v2

    .line 502
    move v2, v1

    int-to-char v2, v2

    move v0, v2

    .end local v0    # "this":Lcom/sun/javafx/sg/prism/GrowableDataBuffer;
    return v0
.end method

.method public getDouble()D
    .locals 4

    .prologue
    .line 574
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/sg/prism/GrowableDataBuffer;
    move-object v2, v1

    invoke-virtual {v2}, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->getLong()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v2

    move-wide v1, v2

    .end local v1    # "this":Lcom/sun/javafx/sg/prism/GrowableDataBuffer;
    return-wide v1
.end method

.method public getFloat()F
    .locals 2

    .prologue
    .line 563
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/GrowableDataBuffer;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->getInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/sg/prism/GrowableDataBuffer;
    return v0
.end method

.method public getInt()I
    .locals 10

    .prologue
    .line 527
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/GrowableDataBuffer;
    move-object v2, v0

    const/4 v3, 0x4

    invoke-direct {v2, v3}, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->ensureReadCapacity(I)V

    .line 528
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->vals:[B

    move-object v3, v0

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    iget v4, v4, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->readvalpos:I

    move-object v8, v3

    move v9, v4

    move v3, v9

    move-object v4, v8

    move v5, v9

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->readvalpos:I

    aget-byte v2, v2, v3

    move v1, v2

    .line 529
    .local v1, "i":I
    move v2, v1

    const/16 v3, 0x8

    shl-int/lit8 v2, v2, 0x8

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->vals:[B

    move-object v4, v0

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    iget v5, v5, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->readvalpos:I

    move-object v8, v4

    move v9, v5

    move v4, v9

    move-object v5, v8

    move v6, v9

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->readvalpos:I

    aget-byte v3, v3, v4

    const/16 v4, 0xff

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v2, v3

    move v1, v2

    .line 530
    move v2, v1

    const/16 v3, 0x8

    shl-int/lit8 v2, v2, 0x8

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->vals:[B

    move-object v4, v0

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    iget v5, v5, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->readvalpos:I

    move-object v8, v4

    move v9, v5

    move v4, v9

    move-object v5, v8

    move v6, v9

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->readvalpos:I

    aget-byte v3, v3, v4

    const/16 v4, 0xff

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v2, v3

    move v1, v2

    .line 531
    move v2, v1

    const/16 v3, 0x8

    shl-int/lit8 v2, v2, 0x8

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->vals:[B

    move-object v4, v0

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    iget v5, v5, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->readvalpos:I

    move-object v8, v4

    move v9, v5

    move v4, v9

    move-object v5, v8

    move v6, v9

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->readvalpos:I

    aget-byte v3, v3, v4

    const/16 v4, 0xff

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v2, v3

    move v1, v2

    .line 532
    move v2, v1

    move v0, v2

    .end local v0    # "this":Lcom/sun/javafx/sg/prism/GrowableDataBuffer;
    return v0
.end method

.method public getLong()J
    .locals 13

    .prologue
    .line 543
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/sg/prism/GrowableDataBuffer;
    move-object v4, v1

    const/16 v5, 0x8

    invoke-direct {v4, v5}, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->ensureReadCapacity(I)V

    .line 544
    move-object v4, v1

    iget-object v4, v4, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->vals:[B

    move-object v5, v1

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    iget v6, v6, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->readvalpos:I

    move-object v11, v5

    move v12, v6

    move v5, v12

    move-object v6, v11

    move v7, v12

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->readvalpos:I

    aget-byte v4, v4, v5

    int-to-long v4, v4

    move-wide v2, v4

    .line 545
    .local v2, "l":J
    move-wide v4, v2

    const/16 v6, 0x8

    shl-long/2addr v4, v6

    move-object v6, v1

    iget-object v6, v6, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->vals:[B

    move-object v7, v1

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    iget v8, v8, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->readvalpos:I

    move-object v11, v7

    move v12, v8

    move v7, v12

    move-object v8, v11

    move v9, v12

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    iput v9, v8, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->readvalpos:I

    aget-byte v6, v6, v7

    const/16 v7, 0xff

    and-int/lit16 v6, v6, 0xff

    int-to-long v6, v6

    or-long/2addr v4, v6

    move-wide v2, v4

    .line 546
    move-wide v4, v2

    const/16 v6, 0x8

    shl-long/2addr v4, v6

    move-object v6, v1

    iget-object v6, v6, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->vals:[B

    move-object v7, v1

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    iget v8, v8, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->readvalpos:I

    move-object v11, v7

    move v12, v8

    move v7, v12

    move-object v8, v11

    move v9, v12

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    iput v9, v8, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->readvalpos:I

    aget-byte v6, v6, v7

    const/16 v7, 0xff

    and-int/lit16 v6, v6, 0xff

    int-to-long v6, v6

    or-long/2addr v4, v6

    move-wide v2, v4

    .line 547
    move-wide v4, v2

    const/16 v6, 0x8

    shl-long/2addr v4, v6

    move-object v6, v1

    iget-object v6, v6, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->vals:[B

    move-object v7, v1

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    iget v8, v8, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->readvalpos:I

    move-object v11, v7

    move v12, v8

    move v7, v12

    move-object v8, v11

    move v9, v12

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    iput v9, v8, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->readvalpos:I

    aget-byte v6, v6, v7

    const/16 v7, 0xff

    and-int/lit16 v6, v6, 0xff

    int-to-long v6, v6

    or-long/2addr v4, v6

    move-wide v2, v4

    .line 548
    move-wide v4, v2

    const/16 v6, 0x8

    shl-long/2addr v4, v6

    move-object v6, v1

    iget-object v6, v6, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->vals:[B

    move-object v7, v1

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    iget v8, v8, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->readvalpos:I

    move-object v11, v7

    move v12, v8

    move v7, v12

    move-object v8, v11

    move v9, v12

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    iput v9, v8, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->readvalpos:I

    aget-byte v6, v6, v7

    const/16 v7, 0xff

    and-int/lit16 v6, v6, 0xff

    int-to-long v6, v6

    or-long/2addr v4, v6

    move-wide v2, v4

    .line 549
    move-wide v4, v2

    const/16 v6, 0x8

    shl-long/2addr v4, v6

    move-object v6, v1

    iget-object v6, v6, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->vals:[B

    move-object v7, v1

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    iget v8, v8, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->readvalpos:I

    move-object v11, v7

    move v12, v8

    move v7, v12

    move-object v8, v11

    move v9, v12

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    iput v9, v8, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->readvalpos:I

    aget-byte v6, v6, v7

    const/16 v7, 0xff

    and-int/lit16 v6, v6, 0xff

    int-to-long v6, v6

    or-long/2addr v4, v6

    move-wide v2, v4

    .line 550
    move-wide v4, v2

    const/16 v6, 0x8

    shl-long/2addr v4, v6

    move-object v6, v1

    iget-object v6, v6, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->vals:[B

    move-object v7, v1

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    iget v8, v8, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->readvalpos:I

    move-object v11, v7

    move v12, v8

    move v7, v12

    move-object v8, v11

    move v9, v12

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    iput v9, v8, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->readvalpos:I

    aget-byte v6, v6, v7

    const/16 v7, 0xff

    and-int/lit16 v6, v6, 0xff

    int-to-long v6, v6

    or-long/2addr v4, v6

    move-wide v2, v4

    .line 551
    move-wide v4, v2

    const/16 v6, 0x8

    shl-long/2addr v4, v6

    move-object v6, v1

    iget-object v6, v6, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->vals:[B

    move-object v7, v1

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    iget v8, v8, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->readvalpos:I

    move-object v11, v7

    move v12, v8

    move v7, v12

    move-object v8, v11

    move v9, v12

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    iput v9, v8, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->readvalpos:I

    aget-byte v6, v6, v7

    const/16 v7, 0xff

    and-int/lit16 v6, v6, 0xff

    int-to-long v6, v6

    or-long/2addr v4, v6

    move-wide v2, v4

    .line 552
    move-wide v4, v2

    move-wide v1, v4

    .end local v1    # "this":Lcom/sun/javafx/sg/prism/GrowableDataBuffer;
    return-wide v1
.end method

.method public getObject()Ljava/lang/Object;
    .locals 8

    .prologue
    .line 585
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/GrowableDataBuffer;
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->readobjpos:I

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->objs:[Ljava/lang/Object;

    array-length v2, v2

    if-lt v1, v2, :cond_0

    .line 586
    new-instance v1, Ljava/nio/BufferOverflowException;

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    invoke-direct {v2}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v1

    .line 588
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->objs:[Ljava/lang/Object;

    move-object v2, v0

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    iget v3, v3, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->readobjpos:I

    move-object v6, v2

    move v7, v3

    move v2, v7

    move-object v3, v6

    move v4, v7

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->readobjpos:I

    aget-object v1, v1, v2

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/sg/prism/GrowableDataBuffer;
    return-object v0
.end method

.method public getShort()S
    .locals 10

    .prologue
    .line 513
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/GrowableDataBuffer;
    move-object v2, v0

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->ensureReadCapacity(I)V

    .line 514
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->vals:[B

    move-object v3, v0

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    iget v4, v4, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->readvalpos:I

    move-object v8, v3

    move v9, v4

    move v3, v9

    move-object v4, v8

    move v5, v9

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->readvalpos:I

    aget-byte v2, v2, v3

    move v1, v2

    .line 515
    .local v1, "s":I
    move v2, v1

    const/16 v3, 0x8

    shl-int/lit8 v2, v2, 0x8

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->vals:[B

    move-object v4, v0

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    iget v5, v5, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->readvalpos:I

    move-object v8, v4

    move v9, v5

    move v4, v9

    move-object v5, v8

    move v6, v9

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->readvalpos:I

    aget-byte v3, v3, v4

    const/16 v4, 0xff

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v2, v3

    move v1, v2

    .line 516
    move v2, v1

    int-to-short v2, v2

    move v0, v2

    .end local v0    # "this":Lcom/sun/javafx/sg/prism/GrowableDataBuffer;
    return v0
.end method

.method public getUByte()I
    .locals 8

    .prologue
    .line 487
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/GrowableDataBuffer;
    move-object v1, v0

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->ensureReadCapacity(I)V

    .line 488
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->vals:[B

    move-object v2, v0

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    iget v3, v3, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->readvalpos:I

    move-object v6, v2

    move v7, v3

    move v2, v7

    move-object v3, v6

    move v4, v7

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->readvalpos:I

    aget-byte v1, v1, v2

    const/16 v2, 0xff

    and-int/lit16 v1, v1, 0xff

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/sg/prism/GrowableDataBuffer;
    return v0
.end method

.method public hasObjects()Z
    .locals 3

    .prologue
    .line 252
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/GrowableDataBuffer;
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->readobjpos:I

    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->writeobjpos:I

    if-ge v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/sg/prism/GrowableDataBuffer;
    return v0

    .restart local v0    # "this":Lcom/sun/javafx/sg/prism/GrowableDataBuffer;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hasValues()Z
    .locals 3

    .prologue
    .line 242
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/GrowableDataBuffer;
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->readvalpos:I

    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->writevalpos:I

    if-ge v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/sg/prism/GrowableDataBuffer;
    return v0

    .restart local v0    # "this":Lcom/sun/javafx/sg/prism/GrowableDataBuffer;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    .line 264
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/GrowableDataBuffer;
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->writevalpos:I

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/sg/prism/GrowableDataBuffer;
    return v0

    .restart local v0    # "this":Lcom/sun/javafx/sg/prism/GrowableDataBuffer;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public objectCapacity()I
    .locals 2

    .prologue
    .line 213
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/GrowableDataBuffer;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->objs:[Ljava/lang/Object;

    array-length v1, v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/sg/prism/GrowableDataBuffer;
    return v0
.end method

.method public peekByte(I)B
    .locals 5

    .prologue
    .line 432
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/GrowableDataBuffer;
    move v1, p1

    .local v1, "i":I
    move v2, v1

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->writevalpos:I

    if-lt v2, v3, :cond_0

    .line 433
    new-instance v2, Ljava/nio/BufferOverflowException;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v2

    .line 435
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->vals:[B

    move v3, v1

    aget-byte v2, v2, v3

    move v0, v2

    .end local v0    # "this":Lcom/sun/javafx/sg/prism/GrowableDataBuffer;
    return v0
.end method

.method public peekObject(I)Ljava/lang/Object;
    .locals 5

    .prologue
    .line 448
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/GrowableDataBuffer;
    move v1, p1

    .local v1, "i":I
    move v2, v1

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->writeobjpos:I

    if-lt v2, v3, :cond_0

    .line 449
    new-instance v2, Ljava/nio/BufferOverflowException;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v2

    .line 451
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->objs:[Ljava/lang/Object;

    move v3, v1

    aget-object v2, v2, v3

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/sg/prism/GrowableDataBuffer;
    return-object v0
.end method

.method public putBoolean(Z)V
    .locals 4

    .prologue
    .line 327
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/GrowableDataBuffer;
    move v1, p1

    .local v1, "b":Z
    move-object v2, v0

    move v3, v1

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {v2, v3}, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->putByte(B)V

    .line 328
    return-void

    .line 327
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public putByte(B)V
    .locals 9

    .prologue
    .line 336
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/GrowableDataBuffer;
    move v1, p1

    .local v1, "b":B
    move-object v2, v0

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->ensureWriteCapacity(I)V

    .line 337
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->vals:[B

    move-object v3, v0

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    iget v4, v4, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->writevalpos:I

    move-object v7, v3

    move v8, v4

    move v3, v8

    move-object v4, v7

    move v5, v8

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->writevalpos:I

    move v4, v1

    aput-byte v4, v2, v3

    .line 338
    return-void
.end method

.method public putChar(C)V
    .locals 9

    .prologue
    .line 346
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/GrowableDataBuffer;
    move v1, p1

    .local v1, "c":C
    move-object v2, v0

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->ensureWriteCapacity(I)V

    .line 347
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->vals:[B

    move-object v3, v0

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    iget v4, v4, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->writevalpos:I

    move-object v7, v3

    move v8, v4

    move v3, v8

    move-object v4, v7

    move v5, v8

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->writevalpos:I

    move v4, v1

    const/16 v5, 0x8

    shr-int/lit8 v4, v4, 0x8

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 348
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->vals:[B

    move-object v3, v0

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    iget v4, v4, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->writevalpos:I

    move-object v7, v3

    move v8, v4

    move v3, v8

    move-object v4, v7

    move v5, v8

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->writevalpos:I

    move v4, v1

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 349
    return-void
.end method

.method public putDouble(D)V
    .locals 7

    .prologue
    .line 407
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/GrowableDataBuffer;
    move-wide v1, p1

    .local v1, "d":D
    move-object v3, v0

    move-wide v4, v1

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->putLong(J)V

    .line 408
    return-void
.end method

.method public putFloat(F)V
    .locals 4

    .prologue
    .line 398
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/GrowableDataBuffer;
    move v1, p1

    .local v1, "f":F
    move-object v2, v0

    move v3, v1

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->putInt(I)V

    .line 399
    return-void
.end method

.method public putInt(I)V
    .locals 9

    .prologue
    .line 368
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/GrowableDataBuffer;
    move v1, p1

    .local v1, "i":I
    move-object v2, v0

    const/4 v3, 0x4

    invoke-direct {v2, v3}, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->ensureWriteCapacity(I)V

    .line 369
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->vals:[B

    move-object v3, v0

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    iget v4, v4, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->writevalpos:I

    move-object v7, v3

    move v8, v4

    move v3, v8

    move-object v4, v7

    move v5, v8

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->writevalpos:I

    move v4, v1

    const/16 v5, 0x18

    shr-int/lit8 v4, v4, 0x18

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 370
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->vals:[B

    move-object v3, v0

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    iget v4, v4, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->writevalpos:I

    move-object v7, v3

    move v8, v4

    move v3, v8

    move-object v4, v7

    move v5, v8

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->writevalpos:I

    move v4, v1

    const/16 v5, 0x10

    shr-int/lit8 v4, v4, 0x10

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 371
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->vals:[B

    move-object v3, v0

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    iget v4, v4, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->writevalpos:I

    move-object v7, v3

    move v8, v4

    move v3, v8

    move-object v4, v7

    move v5, v8

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->writevalpos:I

    move v4, v1

    const/16 v5, 0x8

    shr-int/lit8 v4, v4, 0x8

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 372
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->vals:[B

    move-object v3, v0

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    iget v4, v4, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->writevalpos:I

    move-object v7, v3

    move v8, v4

    move v3, v8

    move-object v4, v7

    move v5, v8

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->writevalpos:I

    move v4, v1

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 373
    return-void
.end method

.method public putLong(J)V
    .locals 11

    .prologue
    .line 381
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/sg/prism/GrowableDataBuffer;
    move-wide v2, p1

    .local v2, "l":J
    move-object v4, v1

    const/16 v5, 0x8

    invoke-direct {v4, v5}, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->ensureWriteCapacity(I)V

    .line 382
    move-object v4, v1

    iget-object v4, v4, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->vals:[B

    move-object v5, v1

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    iget v6, v6, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->writevalpos:I

    move-object v9, v5

    move v10, v6

    move v5, v10

    move-object v6, v9

    move v7, v10

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->writevalpos:I

    move-wide v6, v2

    const/16 v8, 0x38

    shr-long/2addr v6, v8

    long-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 383
    move-object v4, v1

    iget-object v4, v4, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->vals:[B

    move-object v5, v1

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    iget v6, v6, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->writevalpos:I

    move-object v9, v5

    move v10, v6

    move v5, v10

    move-object v6, v9

    move v7, v10

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->writevalpos:I

    move-wide v6, v2

    const/16 v8, 0x30

    shr-long/2addr v6, v8

    long-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 384
    move-object v4, v1

    iget-object v4, v4, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->vals:[B

    move-object v5, v1

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    iget v6, v6, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->writevalpos:I

    move-object v9, v5

    move v10, v6

    move v5, v10

    move-object v6, v9

    move v7, v10

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->writevalpos:I

    move-wide v6, v2

    const/16 v8, 0x28

    shr-long/2addr v6, v8

    long-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 385
    move-object v4, v1

    iget-object v4, v4, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->vals:[B

    move-object v5, v1

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    iget v6, v6, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->writevalpos:I

    move-object v9, v5

    move v10, v6

    move v5, v10

    move-object v6, v9

    move v7, v10

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->writevalpos:I

    move-wide v6, v2

    const/16 v8, 0x20

    shr-long/2addr v6, v8

    long-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 386
    move-object v4, v1

    iget-object v4, v4, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->vals:[B

    move-object v5, v1

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    iget v6, v6, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->writevalpos:I

    move-object v9, v5

    move v10, v6

    move v5, v10

    move-object v6, v9

    move v7, v10

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->writevalpos:I

    move-wide v6, v2

    const/16 v8, 0x18

    shr-long/2addr v6, v8

    long-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 387
    move-object v4, v1

    iget-object v4, v4, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->vals:[B

    move-object v5, v1

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    iget v6, v6, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->writevalpos:I

    move-object v9, v5

    move v10, v6

    move v5, v10

    move-object v6, v9

    move v7, v10

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->writevalpos:I

    move-wide v6, v2

    const/16 v8, 0x10

    shr-long/2addr v6, v8

    long-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 388
    move-object v4, v1

    iget-object v4, v4, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->vals:[B

    move-object v5, v1

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    iget v6, v6, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->writevalpos:I

    move-object v9, v5

    move v10, v6

    move v5, v10

    move-object v6, v9

    move v7, v10

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->writevalpos:I

    move-wide v6, v2

    const/16 v8, 0x8

    shr-long/2addr v6, v8

    long-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 389
    move-object v4, v1

    iget-object v4, v4, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->vals:[B

    move-object v5, v1

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    iget v6, v6, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->writevalpos:I

    move-object v9, v5

    move v10, v6

    move v5, v10

    move-object v6, v9

    move v7, v10

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->writevalpos:I

    move-wide v6, v2

    long-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 390
    return-void
.end method

.method public putObject(Ljava/lang/Object;)V
    .locals 9

    .prologue
    .line 416
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/GrowableDataBuffer;
    move-object v1, p1

    .local v1, "o":Ljava/lang/Object;
    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->writeobjpos:I

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->objs:[Ljava/lang/Object;

    array-length v3, v3

    if-lt v2, v3, :cond_0

    .line 417
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->objs:[Ljava/lang/Object;

    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->writeobjpos:I

    const/16 v5, 0x20

    add-int/lit8 v4, v4, 0x20

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    iput-object v3, v2, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->objs:[Ljava/lang/Object;

    .line 419
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->objs:[Ljava/lang/Object;

    move-object v3, v0

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    iget v4, v4, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->writeobjpos:I

    move-object v7, v3

    move v8, v4

    move v3, v8

    move-object v4, v7

    move v5, v8

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->writeobjpos:I

    move-object v4, v1

    aput-object v4, v2, v3

    .line 420
    return-void
.end method

.method public putShort(S)V
    .locals 9

    .prologue
    .line 357
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/GrowableDataBuffer;
    move v1, p1

    .local v1, "s":S
    move-object v2, v0

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->ensureWriteCapacity(I)V

    .line 358
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->vals:[B

    move-object v3, v0

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    iget v4, v4, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->writevalpos:I

    move-object v7, v3

    move v8, v4

    move v3, v8

    move-object v4, v7

    move v5, v8

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->writevalpos:I

    move v4, v1

    const/16 v5, 0x8

    shr-int/lit8 v4, v4, 0x8

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 359
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->vals:[B

    move-object v3, v0

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    iget v4, v4, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->writevalpos:I

    move-object v7, v3

    move v8, v4

    move v3, v8

    move-object v4, v7

    move v5, v8

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->writevalpos:I

    move v4, v1

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 360
    return-void
.end method

.method public readObjectPosition()I
    .locals 2

    .prologue
    .line 186
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/GrowableDataBuffer;
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->readobjpos:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/sg/prism/GrowableDataBuffer;
    return v0
.end method

.method public readValuePosition()I
    .locals 2

    .prologue
    .line 165
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/GrowableDataBuffer;
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->readvalpos:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/sg/prism/GrowableDataBuffer;
    return v0
.end method

.method public reset()V
    .locals 8

    .prologue
    .line 275
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/GrowableDataBuffer;
    move-object v1, v0

    move-object v2, v0

    move-object v3, v0

    const/4 v4, 0x0

    move-object v6, v3

    move v7, v4

    move v3, v7

    move-object v4, v6

    move v5, v7

    iput v5, v4, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->writevalpos:I

    move-object v6, v2

    move v7, v3

    move v2, v7

    move-object v3, v6

    move v4, v7

    iput v4, v3, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->savevalpos:I

    iput v2, v1, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->readvalpos:I

    .line 276
    move-object v1, v0

    move-object v2, v0

    const/4 v3, 0x0

    move-object v6, v2

    move v7, v3

    move v2, v7

    move-object v3, v6

    move v4, v7

    iput v4, v3, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->saveobjpos:I

    iput v2, v1, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->readobjpos:I

    .line 277
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->writeobjpos:I

    if-lez v1, :cond_0

    .line 278
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->objs:[Ljava/lang/Object;

    const/4 v2, 0x0

    move-object v3, v0

    iget v3, v3, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->writeobjpos:I

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 279
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->writeobjpos:I

    .line 281
    :cond_0
    return-void
.end method

.method public restore()V
    .locals 3

    .prologue
    .line 231
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/GrowableDataBuffer;
    move-object v1, v0

    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->savevalpos:I

    iput v2, v1, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->readvalpos:I

    .line 232
    move-object v1, v0

    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->saveobjpos:I

    iput v2, v1, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->readobjpos:I

    .line 233
    return-void
.end method

.method public save()V
    .locals 3

    .prologue
    .line 222
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/GrowableDataBuffer;
    move-object v1, v0

    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->readvalpos:I

    iput v2, v1, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->savevalpos:I

    .line 223
    move-object v1, v0

    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->readobjpos:I

    iput v2, v1, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->saveobjpos:I

    .line 224
    return-void
.end method

.method public valueCapacity()I
    .locals 2

    .prologue
    .line 204
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/GrowableDataBuffer;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->vals:[B

    array-length v1, v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/sg/prism/GrowableDataBuffer;
    return v0
.end method

.method public writeObjectPosition()I
    .locals 2

    .prologue
    .line 195
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/GrowableDataBuffer;
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->writeobjpos:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/sg/prism/GrowableDataBuffer;
    return v0
.end method

.method public writeValuePosition()I
    .locals 2

    .prologue
    .line 175
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/sg/prism/GrowableDataBuffer;
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/sg/prism/GrowableDataBuffer;->writevalpos:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/sg/prism/GrowableDataBuffer;
    return v0
.end method
