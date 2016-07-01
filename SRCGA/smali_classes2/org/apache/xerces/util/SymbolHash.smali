.class public Lorg/apache/xerces/util/SymbolHash;
.super Ljava/lang/Object;
.source "SymbolHash.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xerces/util/SymbolHash$Entry;
    }
.end annotation


# instance fields
.field protected fBuckets:[Lorg/apache/xerces/util/SymbolHash$Entry;

.field protected fNum:I

.field protected fTableSize:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 96
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/SymbolHash;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 79
    move-object v1, v0

    const/16 v2, 0x65

    iput v2, v1, Lorg/apache/xerces/util/SymbolHash;->fTableSize:I

    .line 89
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lorg/apache/xerces/util/SymbolHash;->fNum:I

    .line 97
    move-object v1, v0

    move-object v2, v0

    iget v2, v2, Lorg/apache/xerces/util/SymbolHash;->fTableSize:I

    new-array v2, v2, [Lorg/apache/xerces/util/SymbolHash$Entry;

    iput-object v2, v1, Lorg/apache/xerces/util/SymbolHash;->fBuckets:[Lorg/apache/xerces/util/SymbolHash$Entry;

    .line 98
    return-void
.end method

.method public constructor <init>(I)V
    .locals 4

    .prologue
    .line 105
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/SymbolHash;
    move v1, p1

    .local v1, "size":I
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 79
    move-object v2, v0

    const/16 v3, 0x65

    iput v3, v2, Lorg/apache/xerces/util/SymbolHash;->fTableSize:I

    .line 89
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Lorg/apache/xerces/util/SymbolHash;->fNum:I

    .line 106
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lorg/apache/xerces/util/SymbolHash;->fTableSize:I

    .line 107
    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Lorg/apache/xerces/util/SymbolHash;->fTableSize:I

    new-array v3, v3, [Lorg/apache/xerces/util/SymbolHash$Entry;

    iput-object v3, v2, Lorg/apache/xerces/util/SymbolHash;->fBuckets:[Lorg/apache/xerces/util/SymbolHash$Entry;

    .line 108
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 5

    .prologue
    .line 197
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/SymbolHash;
    const/4 v2, 0x0

    move v1, v2

    .local v1, "i":I
    :goto_0
    move v2, v1

    move-object v3, v0

    iget v3, v3, Lorg/apache/xerces/util/SymbolHash;->fTableSize:I

    if-ge v2, v3, :cond_0

    .line 198
    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/util/SymbolHash;->fBuckets:[Lorg/apache/xerces/util/SymbolHash$Entry;

    move v3, v1

    const/4 v4, 0x0

    aput-object v4, v2, v3

    .line 197
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 200
    :cond_0
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Lorg/apache/xerces/util/SymbolHash;->fNum:I

    .line 201
    return-void
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .prologue
    .line 145
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/SymbolHash;
    move-object v1, p1

    .local v1, "key":Ljava/lang/Object;
    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    const v5, 0x7fffffff

    and-int/2addr v4, v5

    move-object v5, v0

    iget v5, v5, Lorg/apache/xerces/util/SymbolHash;->fTableSize:I

    rem-int/2addr v4, v5

    move v2, v4

    .line 146
    .local v2, "bucket":I
    move-object v4, v0

    move-object v5, v1

    move v6, v2

    invoke-virtual {v4, v5, v6}, Lorg/apache/xerces/util/SymbolHash;->search(Ljava/lang/Object;I)Lorg/apache/xerces/util/SymbolHash$Entry;

    move-result-object v4

    move-object v3, v4

    .line 147
    .local v3, "entry":Lorg/apache/xerces/util/SymbolHash$Entry;
    move-object v4, v3

    if-eqz v4, :cond_0

    .line 148
    move-object v4, v3

    iget-object v4, v4, Lorg/apache/xerces/util/SymbolHash$Entry;->value:Ljava/lang/Object;

    move-object v0, v4

    .line 150
    .end local v0    # "this":Lorg/apache/xerces/util/SymbolHash;
    :goto_0
    return-object v0

    .restart local v0    # "this":Lorg/apache/xerces/util/SymbolHash;
    :cond_0
    const/4 v4, 0x0

    move-object v0, v4

    goto :goto_0
.end method

.method public getLength()I
    .locals 2

    .prologue
    .line 159
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/SymbolHash;
    move-object v1, v0

    iget v1, v1, Lorg/apache/xerces/util/SymbolHash;->fNum:I

    move v0, v1

    .end local v0    # "this":Lorg/apache/xerces/util/SymbolHash;
    return v0
.end method

.method public getValues([Ljava/lang/Object;I)I
    .locals 9

    .prologue
    .line 170
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/SymbolHash;
    move-object v1, p1

    .local v1, "elements":[Ljava/lang/Object;
    move v2, p2

    .local v2, "from":I
    const/4 v6, 0x0

    move v3, v6

    .local v3, "i":I
    const/4 v6, 0x0

    move v4, v6

    .local v4, "j":I
    :goto_0
    move v6, v3

    move-object v7, v0

    iget v7, v7, Lorg/apache/xerces/util/SymbolHash;->fTableSize:I

    if-ge v6, v7, :cond_1

    move v6, v4

    move-object v7, v0

    iget v7, v7, Lorg/apache/xerces/util/SymbolHash;->fNum:I

    if-ge v6, v7, :cond_1

    .line 171
    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/util/SymbolHash;->fBuckets:[Lorg/apache/xerces/util/SymbolHash$Entry;

    move v7, v3

    aget-object v6, v6, v7

    move-object v5, v6

    .local v5, "entry":Lorg/apache/xerces/util/SymbolHash$Entry;
    :goto_1
    move-object v6, v5

    if-eqz v6, :cond_0

    .line 172
    move-object v6, v1

    move v7, v2

    move v8, v4

    add-int/2addr v7, v8

    move-object v8, v5

    iget-object v8, v8, Lorg/apache/xerces/util/SymbolHash$Entry;->value:Ljava/lang/Object;

    aput-object v8, v6, v7

    .line 173
    add-int/lit8 v4, v4, 0x1

    .line 171
    move-object v6, v5

    iget-object v6, v6, Lorg/apache/xerces/util/SymbolHash$Entry;->next:Lorg/apache/xerces/util/SymbolHash$Entry;

    move-object v5, v6

    goto :goto_1

    .line 170
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 176
    .end local v5    # "entry":Lorg/apache/xerces/util/SymbolHash$Entry;
    :cond_1
    move-object v6, v0

    iget v6, v6, Lorg/apache/xerces/util/SymbolHash;->fNum:I

    move v0, v6

    .end local v0    # "this":Lorg/apache/xerces/util/SymbolHash;
    return v0
.end method

.method public makeClone()Lorg/apache/xerces/util/SymbolHash;
    .locals 8

    .prologue
    .line 183
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/SymbolHash;
    new-instance v3, Lorg/apache/xerces/util/SymbolHash;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    iget v5, v5, Lorg/apache/xerces/util/SymbolHash;->fTableSize:I

    invoke-direct {v4, v5}, Lorg/apache/xerces/util/SymbolHash;-><init>(I)V

    move-object v1, v3

    .line 184
    .local v1, "newTable":Lorg/apache/xerces/util/SymbolHash;
    move-object v3, v1

    move-object v4, v0

    iget v4, v4, Lorg/apache/xerces/util/SymbolHash;->fNum:I

    iput v4, v3, Lorg/apache/xerces/util/SymbolHash;->fNum:I

    .line 185
    const/4 v3, 0x0

    move v2, v3

    .local v2, "i":I
    :goto_0
    move v3, v2

    move-object v4, v0

    iget v4, v4, Lorg/apache/xerces/util/SymbolHash;->fTableSize:I

    if-ge v3, v4, :cond_1

    .line 186
    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/util/SymbolHash;->fBuckets:[Lorg/apache/xerces/util/SymbolHash$Entry;

    move v4, v2

    aget-object v3, v3, v4

    if-eqz v3, :cond_0

    .line 187
    move-object v3, v1

    iget-object v3, v3, Lorg/apache/xerces/util/SymbolHash;->fBuckets:[Lorg/apache/xerces/util/SymbolHash$Entry;

    move v4, v2

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/util/SymbolHash;->fBuckets:[Lorg/apache/xerces/util/SymbolHash$Entry;

    move v6, v2

    aget-object v5, v5, v6

    invoke-virtual {v5}, Lorg/apache/xerces/util/SymbolHash$Entry;->makeClone()Lorg/apache/xerces/util/SymbolHash$Entry;

    move-result-object v5

    aput-object v5, v3, v4

    .line 185
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 189
    :cond_1
    move-object v3, v1

    move-object v0, v3

    .end local v0    # "this":Lorg/apache/xerces/util/SymbolHash;
    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 12

    .prologue
    .line 123
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/SymbolHash;
    move-object v1, p1

    .local v1, "key":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "value":Ljava/lang/Object;
    move-object v5, v1

    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v5

    const v6, 0x7fffffff

    and-int/2addr v5, v6

    move-object v6, v0

    iget v6, v6, Lorg/apache/xerces/util/SymbolHash;->fTableSize:I

    rem-int/2addr v5, v6

    move v3, v5

    .line 124
    .local v3, "bucket":I
    move-object v5, v0

    move-object v6, v1

    move v7, v3

    invoke-virtual {v5, v6, v7}, Lorg/apache/xerces/util/SymbolHash;->search(Ljava/lang/Object;I)Lorg/apache/xerces/util/SymbolHash$Entry;

    move-result-object v5

    move-object v4, v5

    .line 127
    .local v4, "entry":Lorg/apache/xerces/util/SymbolHash$Entry;
    move-object v5, v4

    if-eqz v5, :cond_0

    .line 128
    move-object v5, v4

    move-object v6, v2

    iput-object v6, v5, Lorg/apache/xerces/util/SymbolHash$Entry;->value:Ljava/lang/Object;

    .line 136
    :goto_0
    return-void

    .line 132
    :cond_0
    new-instance v5, Lorg/apache/xerces/util/SymbolHash$Entry;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    move-object v7, v1

    move-object v8, v2

    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xerces/util/SymbolHash;->fBuckets:[Lorg/apache/xerces/util/SymbolHash$Entry;

    move v10, v3

    aget-object v9, v9, v10

    invoke-direct {v6, v7, v8, v9}, Lorg/apache/xerces/util/SymbolHash$Entry;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lorg/apache/xerces/util/SymbolHash$Entry;)V

    move-object v4, v5

    .line 133
    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/util/SymbolHash;->fBuckets:[Lorg/apache/xerces/util/SymbolHash$Entry;

    move v6, v3

    move-object v7, v4

    aput-object v7, v5, v6

    .line 134
    move-object v5, v0

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    iget v6, v6, Lorg/apache/xerces/util/SymbolHash;->fNum:I

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Lorg/apache/xerces/util/SymbolHash;->fNum:I

    goto :goto_0
.end method

.method protected search(Ljava/lang/Object;I)Lorg/apache/xerces/util/SymbolHash$Entry;
    .locals 6

    .prologue
    .line 205
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/SymbolHash;
    move-object v1, p1

    .local v1, "key":Ljava/lang/Object;
    move v2, p2

    .local v2, "bucket":I
    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/util/SymbolHash;->fBuckets:[Lorg/apache/xerces/util/SymbolHash$Entry;

    move v5, v2

    aget-object v4, v4, v5

    move-object v3, v4

    .local v3, "entry":Lorg/apache/xerces/util/SymbolHash$Entry;
    :goto_0
    move-object v4, v3

    if-eqz v4, :cond_1

    .line 206
    move-object v4, v1

    move-object v5, v3

    iget-object v5, v5, Lorg/apache/xerces/util/SymbolHash$Entry;->key:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 207
    move-object v4, v3

    move-object v0, v4

    .line 209
    .end local v0    # "this":Lorg/apache/xerces/util/SymbolHash;
    :goto_1
    return-object v0

    .line 205
    .restart local v0    # "this":Lorg/apache/xerces/util/SymbolHash;
    :cond_0
    move-object v4, v3

    iget-object v4, v4, Lorg/apache/xerces/util/SymbolHash$Entry;->next:Lorg/apache/xerces/util/SymbolHash$Entry;

    move-object v3, v4

    goto :goto_0

    .line 209
    :cond_1
    const/4 v4, 0x0

    move-object v0, v4

    goto :goto_1
.end method
