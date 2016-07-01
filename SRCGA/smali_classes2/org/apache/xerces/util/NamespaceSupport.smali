.class public Lorg/apache/xerces/util/NamespaceSupport;
.super Ljava/lang/Object;
.source "NamespaceSupport.java"

# interfaces
.implements Lorg/apache/xerces/xni/NamespaceContext;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xerces/util/NamespaceSupport$Prefixes;,
        Lorg/apache/xerces/util/NamespaceSupport$IteratorPrefixes;
    }
.end annotation


# instance fields
.field protected fContext:[I

.field protected fCurrentContext:I

.field protected fNamespace:[Ljava/lang/String;

.field protected fNamespaceSize:I

.field protected fPrefixes:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 122
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/NamespaceSupport;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 94
    move-object v1, v0

    const/16 v2, 0x20

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, v1, Lorg/apache/xerces/util/NamespaceSupport;->fNamespace:[Ljava/lang/String;

    .line 110
    move-object v1, v0

    const/16 v2, 0x8

    new-array v2, v2, [I

    iput-object v2, v1, Lorg/apache/xerces/util/NamespaceSupport;->fContext:[I

    .line 115
    move-object v1, v0

    const/16 v2, 0x10

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, v1, Lorg/apache/xerces/util/NamespaceSupport;->fPrefixes:[Ljava/lang/String;

    .line 123
    return-void
.end method

.method public constructor <init>(Lorg/apache/xerces/xni/NamespaceContext;)V
    .locals 8

    .prologue
    .line 129
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/NamespaceSupport;
    move-object v1, p1

    .local v1, "context":Lorg/apache/xerces/xni/NamespaceContext;
    move-object v5, v0

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 94
    move-object v5, v0

    const/16 v6, 0x20

    new-array v6, v6, [Ljava/lang/String;

    iput-object v6, v5, Lorg/apache/xerces/util/NamespaceSupport;->fNamespace:[Ljava/lang/String;

    .line 110
    move-object v5, v0

    const/16 v6, 0x8

    new-array v6, v6, [I

    iput-object v6, v5, Lorg/apache/xerces/util/NamespaceSupport;->fContext:[I

    .line 115
    move-object v5, v0

    const/16 v6, 0x10

    new-array v6, v6, [Ljava/lang/String;

    iput-object v6, v5, Lorg/apache/xerces/util/NamespaceSupport;->fPrefixes:[Ljava/lang/String;

    .line 130
    move-object v5, v0

    invoke-virtual {v5}, Lorg/apache/xerces/util/NamespaceSupport;->pushContext()V

    .line 132
    move-object v5, v1

    invoke-interface {v5}, Lorg/apache/xerces/xni/NamespaceContext;->getAllPrefixes()Ljava/util/Enumeration;

    move-result-object v5

    move-object v2, v5

    .line 133
    .local v2, "prefixes":Ljava/util/Enumeration;
    :goto_0
    move-object v5, v2

    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 134
    move-object v5, v2

    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object v3, v5

    .line 135
    .local v3, "prefix":Ljava/lang/String;
    move-object v5, v1

    move-object v6, v3

    invoke-interface {v5, v6}, Lorg/apache/xerces/xni/NamespaceContext;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    .line 136
    .local v4, "uri":Ljava/lang/String;
    move-object v5, v0

    move-object v6, v3

    move-object v7, v4

    invoke-virtual {v5, v6, v7}, Lorg/apache/xerces/util/NamespaceSupport;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    .line 137
    goto :goto_0

    .line 138
    .end local v3    # "prefix":Ljava/lang/String;
    .end local v4    # "uri":Ljava/lang/String;
    :cond_0
    return-void
.end method


# virtual methods
.method public containsPrefix(Ljava/lang/String;)Z
    .locals 6

    .prologue
    .line 363
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/NamespaceSupport;
    move-object v1, p1

    .local v1, "prefix":Ljava/lang/String;
    move-object v3, v0

    iget v3, v3, Lorg/apache/xerces/util/NamespaceSupport;->fNamespaceSize:I

    move v2, v3

    .local v2, "i":I
    :goto_0
    move v3, v2

    if-lez v3, :cond_1

    .line 364
    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/util/NamespaceSupport;->fNamespace:[Ljava/lang/String;

    move v4, v2

    const/4 v5, 0x2

    add-int/lit8 v4, v4, -0x2

    aget-object v3, v3, v4

    move-object v4, v1

    if-ne v3, v4, :cond_0

    .line 365
    const/4 v3, 0x1

    move v0, v3

    .line 370
    .end local v0    # "this":Lorg/apache/xerces/util/NamespaceSupport;
    :goto_1
    return v0

    .line 363
    .restart local v0    # "this":Lorg/apache/xerces/util/NamespaceSupport;
    :cond_0
    add-int/lit8 v2, v2, -0x2

    goto :goto_0

    .line 370
    :cond_1
    const/4 v3, 0x0

    move v0, v3

    goto :goto_1
.end method

.method public containsPrefixInCurrentContext(Ljava/lang/String;)Z
    .locals 5

    .prologue
    .line 384
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/NamespaceSupport;
    move-object v1, p1

    .local v1, "prefix":Ljava/lang/String;
    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/util/NamespaceSupport;->fContext:[I

    move-object v4, v0

    iget v4, v4, Lorg/apache/xerces/util/NamespaceSupport;->fCurrentContext:I

    aget v3, v3, v4

    move v2, v3

    .local v2, "i":I
    :goto_0
    move v3, v2

    move-object v4, v0

    iget v4, v4, Lorg/apache/xerces/util/NamespaceSupport;->fNamespaceSize:I

    if-ge v3, v4, :cond_1

    .line 385
    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/util/NamespaceSupport;->fNamespace:[Ljava/lang/String;

    move v4, v2

    aget-object v3, v3, v4

    move-object v4, v1

    if-ne v3, v4, :cond_0

    .line 386
    const/4 v3, 0x1

    move v0, v3

    .line 391
    .end local v0    # "this":Lorg/apache/xerces/util/NamespaceSupport;
    :goto_1
    return v0

    .line 384
    .restart local v0    # "this":Lorg/apache/xerces/util/NamespaceSupport;
    :cond_0
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 391
    :cond_1
    const/4 v3, 0x0

    move v0, v3

    goto :goto_1
.end method

.method public declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 11

    .prologue
    .line 198
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/NamespaceSupport;
    move-object v1, p1

    .local v1, "prefix":Ljava/lang/String;
    move-object v2, p2

    .local v2, "uri":Ljava/lang/String;
    move-object v4, v1

    sget-object v5, Lorg/apache/xerces/util/XMLSymbols;->PREFIX_XML:Ljava/lang/String;

    if-eq v4, v5, :cond_0

    move-object v4, v1

    sget-object v5, Lorg/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    if-ne v4, v5, :cond_1

    .line 199
    :cond_0
    const/4 v4, 0x0

    move v0, v4

    .line 227
    .end local v0    # "this":Lorg/apache/xerces/util/NamespaceSupport;
    :goto_0
    return v0

    .line 203
    .restart local v0    # "this":Lorg/apache/xerces/util/NamespaceSupport;
    :cond_1
    move-object v4, v0

    iget v4, v4, Lorg/apache/xerces/util/NamespaceSupport;->fNamespaceSize:I

    move v3, v4

    .local v3, "i":I
    :goto_1
    move v4, v3

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/util/NamespaceSupport;->fContext:[I

    move-object v6, v0

    iget v6, v6, Lorg/apache/xerces/util/NamespaceSupport;->fCurrentContext:I

    aget v5, v5, v6

    if-le v4, v5, :cond_3

    .line 204
    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/util/NamespaceSupport;->fNamespace:[Ljava/lang/String;

    move v5, v3

    const/4 v6, 0x2

    add-int/lit8 v5, v5, -0x2

    aget-object v4, v4, v5

    move-object v5, v1

    if-ne v4, v5, :cond_2

    .line 211
    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/util/NamespaceSupport;->fNamespace:[Ljava/lang/String;

    move v5, v3

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    move-object v6, v2

    aput-object v6, v4, v5

    .line 212
    const/4 v4, 0x1

    move v0, v4

    goto :goto_0

    .line 203
    :cond_2
    add-int/lit8 v3, v3, -0x2

    goto :goto_1

    .line 217
    :cond_3
    move-object v4, v0

    iget v4, v4, Lorg/apache/xerces/util/NamespaceSupport;->fNamespaceSize:I

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/util/NamespaceSupport;->fNamespace:[Ljava/lang/String;

    array-length v5, v5

    if-ne v4, v5, :cond_4

    .line 218
    move-object v4, v0

    iget v4, v4, Lorg/apache/xerces/util/NamespaceSupport;->fNamespaceSize:I

    const/4 v5, 0x2

    mul-int/lit8 v4, v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    move-object v3, v4

    .line 219
    .local v3, "namespacearray":[Ljava/lang/String;
    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/util/NamespaceSupport;->fNamespace:[Ljava/lang/String;

    const/4 v5, 0x0

    move-object v6, v3

    const/4 v7, 0x0

    move-object v8, v0

    iget v8, v8, Lorg/apache/xerces/util/NamespaceSupport;->fNamespaceSize:I

    invoke-static {v4, v5, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 220
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lorg/apache/xerces/util/NamespaceSupport;->fNamespace:[Ljava/lang/String;

    .line 224
    .end local v3    # "namespacearray":[Ljava/lang/String;
    :cond_4
    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/util/NamespaceSupport;->fNamespace:[Ljava/lang/String;

    move-object v5, v0

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    iget v6, v6, Lorg/apache/xerces/util/NamespaceSupport;->fNamespaceSize:I

    move-object v9, v5

    move v10, v6

    move v5, v10

    move-object v6, v9

    move v7, v10

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Lorg/apache/xerces/util/NamespaceSupport;->fNamespaceSize:I

    move-object v6, v1

    aput-object v6, v4, v5

    .line 225
    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/util/NamespaceSupport;->fNamespace:[Ljava/lang/String;

    move-object v5, v0

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    iget v6, v6, Lorg/apache/xerces/util/NamespaceSupport;->fNamespaceSize:I

    move-object v9, v5

    move v10, v6

    move v5, v10

    move-object v6, v9

    move v7, v10

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Lorg/apache/xerces/util/NamespaceSupport;->fNamespaceSize:I

    move-object v6, v2

    aput-object v6, v4, v5

    .line 227
    const/4 v4, 0x1

    move v0, v4

    goto :goto_0
.end method

.method public getAllPrefixes()Ljava/util/Enumeration;
    .locals 12

    .prologue
    .line 310
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/NamespaceSupport;
    const/4 v6, 0x0

    move v1, v6

    .line 311
    .local v1, "count":I
    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/util/NamespaceSupport;->fPrefixes:[Ljava/lang/String;

    array-length v6, v6

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/util/NamespaceSupport;->fNamespace:[Ljava/lang/String;

    array-length v7, v7

    const/4 v8, 0x2

    div-int/lit8 v7, v7, 0x2

    if-ge v6, v7, :cond_0

    .line 313
    move-object v6, v0

    iget v6, v6, Lorg/apache/xerces/util/NamespaceSupport;->fNamespaceSize:I

    new-array v6, v6, [Ljava/lang/String;

    move-object v2, v6

    .line 314
    .local v2, "prefixes":[Ljava/lang/String;
    move-object v6, v0

    move-object v7, v2

    iput-object v7, v6, Lorg/apache/xerces/util/NamespaceSupport;->fPrefixes:[Ljava/lang/String;

    .line 316
    .end local v2    # "prefixes":[Ljava/lang/String;
    :cond_0
    const/4 v6, 0x0

    move-object v2, v6

    .line 317
    .local v2, "prefix":Ljava/lang/String;
    const/4 v6, 0x1

    move v3, v6

    .line 318
    .local v3, "unique":Z
    const/4 v6, 0x2

    move v4, v6

    .local v4, "i":I
    :goto_0
    move v6, v4

    move-object v7, v0

    iget v7, v7, Lorg/apache/xerces/util/NamespaceSupport;->fNamespaceSize:I

    const/4 v8, 0x2

    add-int/lit8 v7, v7, -0x2

    if-ge v6, v7, :cond_4

    .line 319
    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/util/NamespaceSupport;->fNamespace:[Ljava/lang/String;

    move v7, v4

    const/4 v8, 0x2

    add-int/lit8 v7, v7, 0x2

    aget-object v6, v6, v7

    move-object v2, v6

    .line 320
    const/4 v6, 0x0

    move v5, v6

    .local v5, "k":I
    :goto_1
    move v6, v5

    move v7, v1

    if-ge v6, v7, :cond_1

    .line 321
    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/util/NamespaceSupport;->fPrefixes:[Ljava/lang/String;

    move v7, v5

    aget-object v6, v6, v7

    move-object v7, v2

    if-ne v6, v7, :cond_3

    .line 322
    const/4 v6, 0x0

    move v3, v6

    .line 326
    :cond_1
    move v6, v3

    if-eqz v6, :cond_2

    .line 327
    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/util/NamespaceSupport;->fPrefixes:[Ljava/lang/String;

    move v7, v1

    add-int/lit8 v1, v1, 0x1

    move-object v8, v2

    aput-object v8, v6, v7

    .line 329
    :cond_2
    const/4 v6, 0x1

    move v3, v6

    .line 318
    add-int/lit8 v4, v4, 0x2

    goto :goto_0

    .line 320
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 331
    .end local v5    # "k":I
    :cond_4
    new-instance v6, Lorg/apache/xerces/util/NamespaceSupport$Prefixes;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-object v8, v0

    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xerces/util/NamespaceSupport;->fPrefixes:[Ljava/lang/String;

    move v10, v1

    invoke-direct {v7, v8, v9, v10}, Lorg/apache/xerces/util/NamespaceSupport$Prefixes;-><init>(Lorg/apache/xerces/util/NamespaceSupport;[Ljava/lang/String;I)V

    move-object v0, v6

    .end local v0    # "this":Lorg/apache/xerces/util/NamespaceSupport;
    return-object v0
.end method

.method public getDeclaredPrefixAt(I)Ljava/lang/String;
    .locals 6

    .prologue
    .line 279
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/NamespaceSupport;
    move v1, p1

    .local v1, "index":I
    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/util/NamespaceSupport;->fNamespace:[Ljava/lang/String;

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/util/NamespaceSupport;->fContext:[I

    move-object v4, v0

    iget v4, v4, Lorg/apache/xerces/util/NamespaceSupport;->fCurrentContext:I

    aget v3, v3, v4

    move v4, v1

    const/4 v5, 0x2

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    aget-object v2, v2, v3

    move-object v0, v2

    .end local v0    # "this":Lorg/apache/xerces/util/NamespaceSupport;
    return-object v0
.end method

.method public getDeclaredPrefixCount()I
    .locals 4

    .prologue
    .line 272
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/NamespaceSupport;
    move-object v1, v0

    iget v1, v1, Lorg/apache/xerces/util/NamespaceSupport;->fNamespaceSize:I

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/util/NamespaceSupport;->fContext:[I

    move-object v3, v0

    iget v3, v3, Lorg/apache/xerces/util/NamespaceSupport;->fCurrentContext:I

    aget v2, v2, v3

    sub-int/2addr v1, v2

    const/4 v2, 0x2

    div-int/lit8 v1, v1, 0x2

    move v0, v1

    .end local v0    # "this":Lorg/apache/xerces/util/NamespaceSupport;
    return v0
.end method

.method public getPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    .line 255
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/NamespaceSupport;
    move-object v1, p1

    .local v1, "uri":Ljava/lang/String;
    move-object v3, v0

    iget v3, v3, Lorg/apache/xerces/util/NamespaceSupport;->fNamespaceSize:I

    move v2, v3

    .local v2, "i":I
    :goto_0
    move v3, v2

    if-lez v3, :cond_1

    .line 256
    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/util/NamespaceSupport;->fNamespace:[Ljava/lang/String;

    move v4, v2

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    aget-object v3, v3, v4

    move-object v4, v1

    if-ne v3, v4, :cond_0

    .line 257
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/util/NamespaceSupport;->fNamespace:[Ljava/lang/String;

    move v5, v2

    const/4 v6, 0x2

    add-int/lit8 v5, v5, -0x2

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Lorg/apache/xerces/util/NamespaceSupport;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v4, v1

    if-ne v3, v4, :cond_0

    .line 258
    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/util/NamespaceSupport;->fNamespace:[Ljava/lang/String;

    move v4, v2

    const/4 v5, 0x2

    add-int/lit8 v4, v4, -0x2

    aget-object v3, v3, v4

    move-object v0, v3

    .line 263
    .end local v0    # "this":Lorg/apache/xerces/util/NamespaceSupport;
    :goto_1
    return-object v0

    .line 255
    .restart local v0    # "this":Lorg/apache/xerces/util/NamespaceSupport;
    :cond_0
    add-int/lit8 v2, v2, -0x2

    goto :goto_0

    .line 263
    :cond_1
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_1
.end method

.method public getPrefixes()Ljava/util/Iterator;
    .locals 12

    .prologue
    .line 283
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/NamespaceSupport;
    const/4 v6, 0x0

    move v1, v6

    .line 284
    .local v1, "count":I
    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/util/NamespaceSupport;->fPrefixes:[Ljava/lang/String;

    array-length v6, v6

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/util/NamespaceSupport;->fNamespace:[Ljava/lang/String;

    array-length v7, v7

    const/4 v8, 0x2

    div-int/lit8 v7, v7, 0x2

    if-ge v6, v7, :cond_0

    .line 286
    move-object v6, v0

    iget v6, v6, Lorg/apache/xerces/util/NamespaceSupport;->fNamespaceSize:I

    new-array v6, v6, [Ljava/lang/String;

    move-object v2, v6

    .line 287
    .local v2, "prefixes":[Ljava/lang/String;
    move-object v6, v0

    move-object v7, v2

    iput-object v7, v6, Lorg/apache/xerces/util/NamespaceSupport;->fPrefixes:[Ljava/lang/String;

    .line 289
    .end local v2    # "prefixes":[Ljava/lang/String;
    :cond_0
    const/4 v6, 0x0

    move-object v2, v6

    .line 290
    .local v2, "prefix":Ljava/lang/String;
    const/4 v6, 0x1

    move v3, v6

    .line 291
    .local v3, "unique":Z
    const/4 v6, 0x2

    move v4, v6

    .local v4, "i":I
    :goto_0
    move v6, v4

    move-object v7, v0

    iget v7, v7, Lorg/apache/xerces/util/NamespaceSupport;->fNamespaceSize:I

    const/4 v8, 0x2

    add-int/lit8 v7, v7, -0x2

    if-ge v6, v7, :cond_4

    .line 292
    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/util/NamespaceSupport;->fNamespace:[Ljava/lang/String;

    move v7, v4

    const/4 v8, 0x2

    add-int/lit8 v7, v7, 0x2

    aget-object v6, v6, v7

    move-object v2, v6

    .line 293
    const/4 v6, 0x0

    move v5, v6

    .local v5, "k":I
    :goto_1
    move v6, v5

    move v7, v1

    if-ge v6, v7, :cond_1

    .line 294
    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/util/NamespaceSupport;->fPrefixes:[Ljava/lang/String;

    move v7, v5

    aget-object v6, v6, v7

    move-object v7, v2

    if-ne v6, v7, :cond_3

    .line 295
    const/4 v6, 0x0

    move v3, v6

    .line 299
    :cond_1
    move v6, v3

    if-eqz v6, :cond_2

    .line 300
    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/util/NamespaceSupport;->fPrefixes:[Ljava/lang/String;

    move v7, v1

    add-int/lit8 v1, v1, 0x1

    move-object v8, v2

    aput-object v8, v6, v7

    .line 302
    :cond_2
    const/4 v6, 0x1

    move v3, v6

    .line 291
    add-int/lit8 v4, v4, 0x2

    goto :goto_0

    .line 293
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 304
    .end local v5    # "k":I
    :cond_4
    new-instance v6, Lorg/apache/xerces/util/NamespaceSupport$IteratorPrefixes;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-object v8, v0

    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xerces/util/NamespaceSupport;->fPrefixes:[Ljava/lang/String;

    move v10, v1

    invoke-direct {v7, v8, v9, v10}, Lorg/apache/xerces/util/NamespaceSupport$IteratorPrefixes;-><init>(Lorg/apache/xerces/util/NamespaceSupport;[Ljava/lang/String;I)V

    move-object v0, v6

    .end local v0    # "this":Lorg/apache/xerces/util/NamespaceSupport;
    return-object v0
.end method

.method public getPrefixes(Ljava/lang/String;)Ljava/util/Vector;
    .locals 12

    .prologue
    .line 335
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/NamespaceSupport;
    move-object v1, p1

    .local v1, "uri":Ljava/lang/String;
    const/4 v7, 0x0

    move v2, v7

    .line 336
    .local v2, "count":I
    const/4 v7, 0x0

    move-object v3, v7

    .line 337
    .local v3, "prefix":Ljava/lang/String;
    const/4 v7, 0x1

    move v4, v7

    .line 338
    .local v4, "unique":Z
    new-instance v7, Ljava/util/Vector;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    invoke-direct {v8}, Ljava/util/Vector;-><init>()V

    move-object v5, v7

    .line 339
    .local v5, "prefixList":Ljava/util/Vector;
    move-object v7, v0

    iget v7, v7, Lorg/apache/xerces/util/NamespaceSupport;->fNamespaceSize:I

    move v6, v7

    .local v6, "i":I
    :goto_0
    move v7, v6

    if-lez v7, :cond_1

    .line 340
    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/util/NamespaceSupport;->fNamespace:[Ljava/lang/String;

    move v8, v6

    const/4 v9, 0x1

    add-int/lit8 v8, v8, -0x1

    aget-object v7, v7, v8

    move-object v8, v1

    if-ne v7, v8, :cond_0

    .line 341
    move-object v7, v5

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/util/NamespaceSupport;->fNamespace:[Ljava/lang/String;

    move v9, v6

    const/4 v10, 0x2

    add-int/lit8 v9, v9, -0x2

    aget-object v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 342
    move-object v7, v5

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/util/NamespaceSupport;->fNamespace:[Ljava/lang/String;

    move v9, v6

    const/4 v10, 0x2

    add-int/lit8 v9, v9, -0x2

    aget-object v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    move-result v7

    .line 339
    :cond_0
    add-int/lit8 v6, v6, -0x2

    goto :goto_0

    .line 345
    :cond_1
    move-object v7, v5

    move-object v0, v7

    .end local v0    # "this":Lorg/apache/xerces/util/NamespaceSupport;
    return-object v0
.end method

.method public getURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 237
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/NamespaceSupport;
    move-object v1, p1

    .local v1, "prefix":Ljava/lang/String;
    move-object v3, v0

    iget v3, v3, Lorg/apache/xerces/util/NamespaceSupport;->fNamespaceSize:I

    move v2, v3

    .local v2, "i":I
    :goto_0
    move v3, v2

    if-lez v3, :cond_1

    .line 238
    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/util/NamespaceSupport;->fNamespace:[Ljava/lang/String;

    move v4, v2

    const/4 v5, 0x2

    add-int/lit8 v4, v4, -0x2

    aget-object v3, v3, v4

    move-object v4, v1

    if-ne v3, v4, :cond_0

    .line 239
    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/util/NamespaceSupport;->fNamespace:[Ljava/lang/String;

    move v4, v2

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    aget-object v3, v3, v4

    move-object v0, v3

    .line 244
    .end local v0    # "this":Lorg/apache/xerces/util/NamespaceSupport;
    :goto_1
    return-object v0

    .line 237
    .restart local v0    # "this":Lorg/apache/xerces/util/NamespaceSupport;
    :cond_0
    add-int/lit8 v2, v2, -0x2

    goto :goto_0

    .line 244
    :cond_1
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_1
.end method

.method public popContext()V
    .locals 9

    .prologue
    .line 189
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/NamespaceSupport;
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/util/NamespaceSupport;->fContext:[I

    move-object v3, v0

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    iget v4, v4, Lorg/apache/xerces/util/NamespaceSupport;->fCurrentContext:I

    move-object v7, v3

    move v8, v4

    move v3, v8

    move-object v4, v7

    move v5, v8

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    iput v5, v4, Lorg/apache/xerces/util/NamespaceSupport;->fCurrentContext:I

    aget v2, v2, v3

    iput v2, v1, Lorg/apache/xerces/util/NamespaceSupport;->fNamespaceSize:I

    .line 191
    return-void
.end method

.method public pushContext()V
    .locals 9

    .prologue
    .line 173
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/NamespaceSupport;
    move-object v2, v0

    iget v2, v2, Lorg/apache/xerces/util/NamespaceSupport;->fCurrentContext:I

    const/4 v3, 0x1

    add-int/lit8 v2, v2, 0x1

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/util/NamespaceSupport;->fContext:[I

    array-length v3, v3

    if-ne v2, v3, :cond_0

    .line 174
    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/util/NamespaceSupport;->fContext:[I

    array-length v2, v2

    const/4 v3, 0x2

    mul-int/lit8 v2, v2, 0x2

    new-array v2, v2, [I

    move-object v1, v2

    .line 175
    .local v1, "contextarray":[I
    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/util/NamespaceSupport;->fContext:[I

    const/4 v3, 0x0

    move-object v4, v1

    const/4 v5, 0x0

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/util/NamespaceSupport;->fContext:[I

    array-length v6, v6

    invoke-static {v2, v3, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 176
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/apache/xerces/util/NamespaceSupport;->fContext:[I

    .line 180
    .end local v1    # "contextarray":[I
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/util/NamespaceSupport;->fContext:[I

    move-object v3, v0

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    iget v4, v4, Lorg/apache/xerces/util/NamespaceSupport;->fCurrentContext:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    move-object v7, v3

    move v8, v4

    move v3, v8

    move-object v4, v7

    move v5, v8

    iput v5, v4, Lorg/apache/xerces/util/NamespaceSupport;->fCurrentContext:I

    move-object v4, v0

    iget v4, v4, Lorg/apache/xerces/util/NamespaceSupport;->fNamespaceSize:I

    aput v4, v2, v3

    .line 182
    return-void
.end method

.method public reset()V
    .locals 8

    .prologue
    .line 151
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/NamespaceSupport;
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lorg/apache/xerces/util/NamespaceSupport;->fNamespaceSize:I

    .line 152
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lorg/apache/xerces/util/NamespaceSupport;->fCurrentContext:I

    .line 155
    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/util/NamespaceSupport;->fNamespace:[Ljava/lang/String;

    move-object v2, v0

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    iget v3, v3, Lorg/apache/xerces/util/NamespaceSupport;->fNamespaceSize:I

    move-object v6, v2

    move v7, v3

    move v2, v7

    move-object v3, v6

    move v4, v7

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lorg/apache/xerces/util/NamespaceSupport;->fNamespaceSize:I

    sget-object v3, Lorg/apache/xerces/util/XMLSymbols;->PREFIX_XML:Ljava/lang/String;

    aput-object v3, v1, v2

    .line 156
    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/util/NamespaceSupport;->fNamespace:[Ljava/lang/String;

    move-object v2, v0

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    iget v3, v3, Lorg/apache/xerces/util/NamespaceSupport;->fNamespaceSize:I

    move-object v6, v2

    move v7, v3

    move v2, v7

    move-object v3, v6

    move v4, v7

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lorg/apache/xerces/util/NamespaceSupport;->fNamespaceSize:I

    sget-object v3, Lorg/apache/xerces/xni/NamespaceContext;->XML_URI:Ljava/lang/String;

    aput-object v3, v1, v2

    .line 158
    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/util/NamespaceSupport;->fNamespace:[Ljava/lang/String;

    move-object v2, v0

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    iget v3, v3, Lorg/apache/xerces/util/NamespaceSupport;->fNamespaceSize:I

    move-object v6, v2

    move v7, v3

    move v2, v7

    move-object v3, v6

    move v4, v7

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lorg/apache/xerces/util/NamespaceSupport;->fNamespaceSize:I

    sget-object v3, Lorg/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    aput-object v3, v1, v2

    .line 159
    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/util/NamespaceSupport;->fNamespace:[Ljava/lang/String;

    move-object v2, v0

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    iget v3, v3, Lorg/apache/xerces/util/NamespaceSupport;->fNamespaceSize:I

    move-object v6, v2

    move v7, v3

    move v2, v7

    move-object v3, v6

    move v4, v7

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lorg/apache/xerces/util/NamespaceSupport;->fNamespaceSize:I

    sget-object v3, Lorg/apache/xerces/xni/NamespaceContext;->XMLNS_URI:Ljava/lang/String;

    aput-object v3, v1, v2

    .line 161
    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/util/NamespaceSupport;->fContext:[I

    move-object v2, v0

    iget v2, v2, Lorg/apache/xerces/util/NamespaceSupport;->fCurrentContext:I

    move-object v3, v0

    iget v3, v3, Lorg/apache/xerces/util/NamespaceSupport;->fNamespaceSize:I

    aput v3, v1, v2

    .line 164
    return-void
.end method
