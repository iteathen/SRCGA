.class public final Lorg/apache/xerces/util/IntStack;
.super Ljava/lang/Object;
.source "IntStack.java"


# instance fields
.field private fData:[I

.field private fDepth:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 71
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/IntStack;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private ensureCapacity(I)V
    .locals 8

    .prologue
    .line 141
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/IntStack;
    move v1, p1

    .local v1, "size":I
    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/util/IntStack;->fData:[I

    if-nez v3, :cond_1

    .line 142
    move-object v3, v0

    const/16 v4, 0x20

    new-array v4, v4, [I

    iput-object v4, v3, Lorg/apache/xerces/util/IntStack;->fData:[I

    .line 149
    :cond_0
    :goto_0
    return-void

    .line 144
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/util/IntStack;->fData:[I

    array-length v3, v3

    move v4, v1

    if-gt v3, v4, :cond_0

    .line 145
    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/util/IntStack;->fData:[I

    array-length v3, v3

    const/4 v4, 0x2

    mul-int/lit8 v3, v3, 0x2

    new-array v3, v3, [I

    move-object v2, v3

    .line 146
    .local v2, "newdata":[I
    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/util/IntStack;->fData:[I

    const/4 v4, 0x0

    move-object v5, v2

    const/4 v6, 0x0

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/util/IntStack;->fData:[I

    array-length v7, v7

    invoke-static {v3, v4, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 147
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lorg/apache/xerces/util/IntStack;->fData:[I

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 3

    .prologue
    .line 110
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/IntStack;
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lorg/apache/xerces/util/IntStack;->fDepth:I

    .line 111
    return-void
.end method

.method public peek()I
    .locals 4

    .prologue
    .line 100
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/IntStack;
    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/util/IntStack;->fData:[I

    move-object v2, v0

    iget v2, v2, Lorg/apache/xerces/util/IntStack;->fDepth:I

    const/4 v3, 0x1

    add-int/lit8 v2, v2, -0x1

    aget v1, v1, v2

    move v0, v1

    .end local v0    # "this":Lorg/apache/xerces/util/IntStack;
    return v0
.end method

.method public pop()I
    .locals 7

    .prologue
    .line 105
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/IntStack;
    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/util/IntStack;->fData:[I

    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Lorg/apache/xerces/util/IntStack;->fDepth:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput v4, v3, Lorg/apache/xerces/util/IntStack;->fDepth:I

    aget v1, v1, v2

    move v0, v1

    .end local v0    # "this":Lorg/apache/xerces/util/IntStack;
    return v0
.end method

.method public print()V
    .locals 5

    .prologue
    .line 117
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/IntStack;
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/16 v3, 0x28

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(C)V

    .line 118
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object v3, v0

    iget v3, v3, Lorg/apache/xerces/util/IntStack;->fDepth:I

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(I)V

    .line 119
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, ") {"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 120
    const/4 v2, 0x0

    move v1, v2

    .local v1, "i":I
    :goto_0
    move v2, v1

    move-object v3, v0

    iget v3, v3, Lorg/apache/xerces/util/IntStack;->fDepth:I

    if-ge v2, v3, :cond_0

    .line 121
    move v2, v1

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 122
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, " ..."

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 123
    .line 131
    :cond_0
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, " }"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 132
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2}, Ljava/io/PrintStream;->println()V

    .line 133
    return-void

    .line 125
    :cond_1
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(C)V

    .line 126
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/util/IntStack;->fData:[I

    move v4, v1

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(I)V

    .line 127
    move v2, v1

    move-object v3, v0

    iget v3, v3, Lorg/apache/xerces/util/IntStack;->fDepth:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_2

    .line 128
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/16 v3, 0x2c

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(C)V

    .line 120
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public push(I)V
    .locals 9

    .prologue
    .line 94
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/IntStack;
    move v1, p1

    .local v1, "value":I
    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Lorg/apache/xerces/util/IntStack;->fDepth:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    invoke-direct {v2, v3}, Lorg/apache/xerces/util/IntStack;->ensureCapacity(I)V

    .line 95
    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/util/IntStack;->fData:[I

    move-object v3, v0

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    iget v4, v4, Lorg/apache/xerces/util/IntStack;->fDepth:I

    move-object v7, v3

    move v8, v4

    move v3, v8

    move-object v4, v7

    move v5, v8

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lorg/apache/xerces/util/IntStack;->fDepth:I

    move v4, v1

    aput v4, v2, v3

    .line 96
    return-void
.end method

.method public size()I
    .locals 2

    .prologue
    .line 89
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/IntStack;
    move-object v1, v0

    iget v1, v1, Lorg/apache/xerces/util/IntStack;->fDepth:I

    move v0, v1

    .end local v0    # "this":Lorg/apache/xerces/util/IntStack;
    return v0
.end method
