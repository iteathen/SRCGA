.class public Lorg/apache/xerces/util/SymbolTable;
.super Ljava/lang/Object;
.source "SymbolTable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xerces/util/SymbolTable$Entry;
    }
.end annotation


# static fields
.field protected static final TABLE_SIZE:I = 0xad


# instance fields
.field protected fBuckets:[Lorg/apache/xerces/util/SymbolTable$Entry;

.field protected fTableSize:I

.field protected symbolAsArray:[C


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 117
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/SymbolTable;
    move-object v1, v0

    const/16 v2, 0xad

    invoke-direct {v1, v2}, Lorg/apache/xerces/util/SymbolTable;-><init>(I)V

    .line 118
    return-void
.end method

.method public constructor <init>(I)V
    .locals 4

    .prologue
    .line 121
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/SymbolTable;
    move v1, p1

    .local v1, "tableSize":I
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 100
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lorg/apache/xerces/util/SymbolTable;->symbolAsArray:[C

    .line 106
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lorg/apache/xerces/util/SymbolTable;->fBuckets:[Lorg/apache/xerces/util/SymbolTable$Entry;

    .line 122
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lorg/apache/xerces/util/SymbolTable;->fTableSize:I

    .line 123
    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Lorg/apache/xerces/util/SymbolTable;->fTableSize:I

    new-array v3, v3, [Lorg/apache/xerces/util/SymbolTable$Entry;

    iput-object v3, v2, Lorg/apache/xerces/util/SymbolTable;->fBuckets:[Lorg/apache/xerces/util/SymbolTable$Entry;

    .line 124
    return-void
.end method


# virtual methods
.method public addSymbol(Ljava/lang/String;)Ljava/lang/String;
    .locals 12

    .prologue
    .line 141
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/SymbolTable;
    move-object v1, p1

    .local v1, "symbol":Ljava/lang/String;
    move-object v6, v0

    move-object v7, v1

    invoke-virtual {v6, v7}, Lorg/apache/xerces/util/SymbolTable;->hash(Ljava/lang/String;)I

    move-result v6

    move v2, v6

    .line 142
    .local v2, "hash":I
    move v6, v2

    move-object v7, v0

    iget v7, v7, Lorg/apache/xerces/util/SymbolTable;->fTableSize:I

    rem-int/2addr v6, v7

    move v3, v6

    .line 143
    .local v3, "bucket":I
    move-object v6, v1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    move v4, v6

    .line 144
    .local v4, "length":I
    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/util/SymbolTable;->fBuckets:[Lorg/apache/xerces/util/SymbolTable$Entry;

    move v7, v3

    aget-object v6, v6, v7

    move-object v5, v6

    .local v5, "entry":Lorg/apache/xerces/util/SymbolTable$Entry;
    :goto_0
    move-object v6, v5

    if-eqz v6, :cond_1

    .line 145
    move v6, v4

    move-object v7, v5

    iget-object v7, v7, Lorg/apache/xerces/util/SymbolTable$Entry;->characters:[C

    array-length v7, v7

    if-ne v6, v7, :cond_0

    move v6, v2

    move-object v7, v5

    iget v7, v7, Lorg/apache/xerces/util/SymbolTable$Entry;->hashCode:I

    if-ne v6, v7, :cond_0

    .line 146
    move-object v6, v1

    const/4 v7, 0x0

    move-object v8, v5

    iget-object v8, v8, Lorg/apache/xerces/util/SymbolTable$Entry;->symbol:Ljava/lang/String;

    const/4 v9, 0x0

    move v10, v4

    invoke-virtual {v6, v7, v8, v9, v10}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 147
    move-object v6, v0

    move-object v7, v5

    iget-object v7, v7, Lorg/apache/xerces/util/SymbolTable$Entry;->characters:[C

    iput-object v7, v6, Lorg/apache/xerces/util/SymbolTable;->symbolAsArray:[C

    .line 148
    move-object v6, v5

    iget-object v6, v6, Lorg/apache/xerces/util/SymbolTable$Entry;->symbol:Ljava/lang/String;

    move-object v0, v6

    .line 170
    .end local v0    # "this":Lorg/apache/xerces/util/SymbolTable;
    :goto_1
    return-object v0

    .line 144
    .restart local v0    # "this":Lorg/apache/xerces/util/SymbolTable;
    :cond_0
    move-object v6, v5

    iget-object v6, v6, Lorg/apache/xerces/util/SymbolTable$Entry;->next:Lorg/apache/xerces/util/SymbolTable$Entry;

    move-object v5, v6

    goto :goto_0

    .line 166
    :cond_1
    new-instance v6, Lorg/apache/xerces/util/SymbolTable$Entry;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-object v8, v1

    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xerces/util/SymbolTable;->fBuckets:[Lorg/apache/xerces/util/SymbolTable$Entry;

    move v10, v3

    aget-object v9, v9, v10

    invoke-direct {v7, v8, v9}, Lorg/apache/xerces/util/SymbolTable$Entry;-><init>(Ljava/lang/String;Lorg/apache/xerces/util/SymbolTable$Entry;)V

    move-object v5, v6

    .line 167
    move-object v6, v5

    move v7, v2

    iput v7, v6, Lorg/apache/xerces/util/SymbolTable$Entry;->hashCode:I

    .line 168
    move-object v6, v0

    move-object v7, v5

    iget-object v7, v7, Lorg/apache/xerces/util/SymbolTable$Entry;->characters:[C

    iput-object v7, v6, Lorg/apache/xerces/util/SymbolTable;->symbolAsArray:[C

    .line 169
    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/util/SymbolTable;->fBuckets:[Lorg/apache/xerces/util/SymbolTable$Entry;

    move v7, v3

    move-object v8, v5

    aput-object v8, v6, v7

    .line 170
    move-object v6, v5

    iget-object v6, v6, Lorg/apache/xerces/util/SymbolTable$Entry;->symbol:Ljava/lang/String;

    move-object v0, v6

    goto :goto_1
.end method

.method public addSymbol([CII)Ljava/lang/String;
    .locals 16

    .prologue
    .line 186
    move-object/from16 v0, p0

    .local v0, "this":Lorg/apache/xerces/util/SymbolTable;
    move-object/from16 v1, p1

    .local v1, "buffer":[C
    move/from16 v2, p2

    .local v2, "offset":I
    move/from16 v3, p3

    .local v3, "length":I
    move-object v8, v0

    move-object v9, v1

    move v10, v2

    move v11, v3

    invoke-virtual {v8, v9, v10, v11}, Lorg/apache/xerces/util/SymbolTable;->hash([CII)I

    move-result v8

    move v4, v8

    .line 187
    .local v4, "hash":I
    move v8, v4

    move-object v9, v0

    iget v9, v9, Lorg/apache/xerces/util/SymbolTable;->fTableSize:I

    rem-int/2addr v8, v9

    move v5, v8

    .line 188
    .local v5, "bucket":I
    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/util/SymbolTable;->fBuckets:[Lorg/apache/xerces/util/SymbolTable$Entry;

    move v9, v5

    aget-object v8, v8, v9

    move-object v6, v8

    .local v6, "entry":Lorg/apache/xerces/util/SymbolTable$Entry;
    :goto_0
    move-object v8, v6

    if-eqz v8, :cond_3

    .line 189
    move v8, v3

    move-object v9, v6

    iget-object v9, v9, Lorg/apache/xerces/util/SymbolTable$Entry;->characters:[C

    array-length v9, v9

    if-ne v8, v9, :cond_0

    move v8, v4

    move-object v9, v6

    iget v9, v9, Lorg/apache/xerces/util/SymbolTable$Entry;->hashCode:I

    if-ne v8, v9, :cond_0

    .line 190
    const/4 v8, 0x0

    move v7, v8

    .local v7, "i":I
    :goto_1
    move v8, v7

    move v9, v3

    if-ge v8, v9, :cond_2

    .line 191
    move-object v8, v1

    move v9, v2

    move v10, v7

    add-int/2addr v9, v10

    aget-char v8, v8, v9

    move-object v9, v6

    iget-object v9, v9, Lorg/apache/xerces/util/SymbolTable$Entry;->characters:[C

    move v10, v7

    aget-char v9, v9, v10

    if-eq v8, v9, :cond_1

    .line 192
    .line 188
    .end local v7    # "i":I
    :cond_0
    move-object v8, v6

    iget-object v8, v8, Lorg/apache/xerces/util/SymbolTable$Entry;->next:Lorg/apache/xerces/util/SymbolTable$Entry;

    move-object v6, v8

    goto :goto_0

    .line 190
    .restart local v7    # "i":I
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 195
    :cond_2
    move-object v8, v0

    move-object v9, v6

    iget-object v9, v9, Lorg/apache/xerces/util/SymbolTable$Entry;->characters:[C

    iput-object v9, v8, Lorg/apache/xerces/util/SymbolTable;->symbolAsArray:[C

    .line 196
    move-object v8, v6

    iget-object v8, v8, Lorg/apache/xerces/util/SymbolTable$Entry;->symbol:Ljava/lang/String;

    move-object v0, v8

    .line 205
    .end local v0    # "this":Lorg/apache/xerces/util/SymbolTable;
    .end local v7    # "i":I
    :goto_2
    return-object v0

    .line 201
    .restart local v0    # "this":Lorg/apache/xerces/util/SymbolTable;
    :cond_3
    new-instance v8, Lorg/apache/xerces/util/SymbolTable$Entry;

    move-object v15, v8

    move-object v8, v15

    move-object v9, v15

    move-object v10, v1

    move v11, v2

    move v12, v3

    move-object v13, v0

    iget-object v13, v13, Lorg/apache/xerces/util/SymbolTable;->fBuckets:[Lorg/apache/xerces/util/SymbolTable$Entry;

    move v14, v5

    aget-object v13, v13, v14

    invoke-direct {v9, v10, v11, v12, v13}, Lorg/apache/xerces/util/SymbolTable$Entry;-><init>([CIILorg/apache/xerces/util/SymbolTable$Entry;)V

    move-object v6, v8

    .line 202
    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/util/SymbolTable;->fBuckets:[Lorg/apache/xerces/util/SymbolTable$Entry;

    move v9, v5

    move-object v10, v6

    aput-object v10, v8, v9

    .line 203
    move-object v8, v6

    move v9, v4

    iput v9, v8, Lorg/apache/xerces/util/SymbolTable$Entry;->hashCode:I

    .line 204
    move-object v8, v0

    move-object v9, v6

    iget-object v9, v9, Lorg/apache/xerces/util/SymbolTable$Entry;->characters:[C

    iput-object v9, v8, Lorg/apache/xerces/util/SymbolTable;->symbolAsArray:[C

    .line 205
    move-object v8, v6

    iget-object v8, v8, Lorg/apache/xerces/util/SymbolTable$Entry;->symbol:Ljava/lang/String;

    move-object v0, v8

    goto :goto_2
.end method

.method public containsSymbol(Ljava/lang/String;)Z
    .locals 11

    .prologue
    .line 258
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/SymbolTable;
    move-object v1, p1

    .local v1, "symbol":Ljava/lang/String;
    move-object v6, v0

    move-object v7, v1

    invoke-virtual {v6, v7}, Lorg/apache/xerces/util/SymbolTable;->hash(Ljava/lang/String;)I

    move-result v6

    move v2, v6

    .line 259
    .local v2, "hash":I
    move v6, v2

    move-object v7, v0

    iget v7, v7, Lorg/apache/xerces/util/SymbolTable;->fTableSize:I

    rem-int/2addr v6, v7

    move v3, v6

    .line 260
    .local v3, "bucket":I
    move-object v6, v1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    move v4, v6

    .line 261
    .local v4, "length":I
    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/util/SymbolTable;->fBuckets:[Lorg/apache/xerces/util/SymbolTable$Entry;

    move v7, v3

    aget-object v6, v6, v7

    move-object v5, v6

    .local v5, "entry":Lorg/apache/xerces/util/SymbolTable$Entry;
    :goto_0
    move-object v6, v5

    if-eqz v6, :cond_1

    .line 262
    move v6, v4

    move-object v7, v5

    iget-object v7, v7, Lorg/apache/xerces/util/SymbolTable$Entry;->characters:[C

    array-length v7, v7

    if-ne v6, v7, :cond_0

    move v6, v2

    move-object v7, v5

    iget v7, v7, Lorg/apache/xerces/util/SymbolTable$Entry;->hashCode:I

    if-ne v6, v7, :cond_0

    .line 263
    move-object v6, v1

    const/4 v7, 0x0

    move-object v8, v5

    iget-object v8, v8, Lorg/apache/xerces/util/SymbolTable$Entry;->symbol:Ljava/lang/String;

    const/4 v9, 0x0

    move v10, v4

    invoke-virtual {v6, v7, v8, v9, v10}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 264
    const/4 v6, 0x1

    move v0, v6

    .line 280
    .end local v0    # "this":Lorg/apache/xerces/util/SymbolTable;
    :goto_1
    return v0

    .line 261
    .restart local v0    # "this":Lorg/apache/xerces/util/SymbolTable;
    :cond_0
    move-object v6, v5

    iget-object v6, v6, Lorg/apache/xerces/util/SymbolTable$Entry;->next:Lorg/apache/xerces/util/SymbolTable$Entry;

    move-object v5, v6

    goto :goto_0

    .line 280
    :cond_1
    const/4 v6, 0x0

    move v0, v6

    goto :goto_1
.end method

.method public containsSymbol([CII)Z
    .locals 12

    .prologue
    .line 295
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/SymbolTable;
    move-object v1, p1

    .local v1, "buffer":[C
    move v2, p2

    .local v2, "offset":I
    move v3, p3

    .local v3, "length":I
    move-object v8, v0

    move-object v9, v1

    move v10, v2

    move v11, v3

    invoke-virtual {v8, v9, v10, v11}, Lorg/apache/xerces/util/SymbolTable;->hash([CII)I

    move-result v8

    move v4, v8

    .line 296
    .local v4, "hash":I
    move v8, v4

    move-object v9, v0

    iget v9, v9, Lorg/apache/xerces/util/SymbolTable;->fTableSize:I

    rem-int/2addr v8, v9

    move v5, v8

    .line 297
    .local v5, "bucket":I
    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/util/SymbolTable;->fBuckets:[Lorg/apache/xerces/util/SymbolTable$Entry;

    move v9, v5

    aget-object v8, v8, v9

    move-object v6, v8

    .local v6, "entry":Lorg/apache/xerces/util/SymbolTable$Entry;
    :goto_0
    move-object v8, v6

    if-eqz v8, :cond_3

    .line 298
    move v8, v3

    move-object v9, v6

    iget-object v9, v9, Lorg/apache/xerces/util/SymbolTable$Entry;->characters:[C

    array-length v9, v9

    if-ne v8, v9, :cond_0

    move v8, v4

    move-object v9, v6

    iget v9, v9, Lorg/apache/xerces/util/SymbolTable$Entry;->hashCode:I

    if-ne v8, v9, :cond_0

    .line 299
    const/4 v8, 0x0

    move v7, v8

    .local v7, "i":I
    :goto_1
    move v8, v7

    move v9, v3

    if-ge v8, v9, :cond_2

    .line 300
    move-object v8, v1

    move v9, v2

    move v10, v7

    add-int/2addr v9, v10

    aget-char v8, v8, v9

    move-object v9, v6

    iget-object v9, v9, Lorg/apache/xerces/util/SymbolTable$Entry;->characters:[C

    move v10, v7

    aget-char v9, v9, v10

    if-eq v8, v9, :cond_1

    .line 301
    .line 297
    .end local v7    # "i":I
    :cond_0
    move-object v8, v6

    iget-object v8, v8, Lorg/apache/xerces/util/SymbolTable$Entry;->next:Lorg/apache/xerces/util/SymbolTable$Entry;

    move-object v6, v8

    goto :goto_0

    .line 299
    .restart local v7    # "i":I
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 304
    :cond_2
    const/4 v8, 0x1

    move v0, v8

    .line 308
    .end local v0    # "this":Lorg/apache/xerces/util/SymbolTable;
    .end local v7    # "i":I
    :goto_2
    return v0

    .restart local v0    # "this":Lorg/apache/xerces/util/SymbolTable;
    :cond_3
    const/4 v8, 0x0

    move v0, v8

    goto :goto_2
.end method

.method public getCharArray()[C
    .locals 2

    .prologue
    .line 316
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/SymbolTable;
    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/util/SymbolTable;->symbolAsArray:[C

    move-object v0, v1

    .end local v0    # "this":Lorg/apache/xerces/util/SymbolTable;
    return-object v0
.end method

.method public hash(Ljava/lang/String;)I
    .locals 8

    .prologue
    .line 219
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/SymbolTable;
    move-object v1, p1

    .local v1, "symbol":Ljava/lang/String;
    const/4 v5, 0x0

    move v2, v5

    .line 220
    .local v2, "code":I
    move-object v5, v1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    move v3, v5

    .line 221
    .local v3, "length":I
    const/4 v5, 0x0

    move v4, v5

    .local v4, "i":I
    :goto_0
    move v5, v4

    move v6, v3

    if-ge v5, v6, :cond_0

    .line 222
    move v5, v2

    const/16 v6, 0x25

    mul-int/lit8 v5, v5, 0x25

    move-object v6, v1

    move v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    add-int/2addr v5, v6

    move v2, v5

    .line 221
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 224
    :cond_0
    move v5, v2

    const v6, 0x7ffffff

    and-int/2addr v5, v6

    move v0, v5

    .end local v0    # "this":Lorg/apache/xerces/util/SymbolTable;
    return v0
.end method

.method public hash([CII)I
    .locals 10

    .prologue
    .line 241
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/SymbolTable;
    move-object v1, p1

    .local v1, "buffer":[C
    move v2, p2

    .local v2, "offset":I
    move v3, p3

    .local v3, "length":I
    const/4 v6, 0x0

    move v4, v6

    .line 242
    .local v4, "code":I
    const/4 v6, 0x0

    move v5, v6

    .local v5, "i":I
    :goto_0
    move v6, v5

    move v7, v3

    if-ge v6, v7, :cond_0

    .line 243
    move v6, v4

    const/16 v7, 0x25

    mul-int/lit8 v6, v6, 0x25

    move-object v7, v1

    move v8, v2

    move v9, v5

    add-int/2addr v8, v9

    aget-char v7, v7, v8

    add-int/2addr v6, v7

    move v4, v6

    .line 242
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 245
    :cond_0
    move v6, v4

    const v7, 0x7ffffff

    and-int/2addr v6, v7

    move v0, v6

    .end local v0    # "this":Lorg/apache/xerces/util/SymbolTable;
    return v0
.end method
