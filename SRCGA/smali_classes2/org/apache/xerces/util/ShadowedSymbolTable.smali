.class public final Lorg/apache/xerces/util/ShadowedSymbolTable;
.super Lorg/apache/xerces/util/SymbolTable;
.source "ShadowedSymbolTable.java"


# instance fields
.field protected fSymbolTable:Lorg/apache/xerces/util/SymbolTable;


# direct methods
.method public constructor <init>(Lorg/apache/xerces/util/SymbolTable;)V
    .locals 4

    .prologue
    .line 90
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/ShadowedSymbolTable;
    move-object v1, p1

    .local v1, "symbolTable":Lorg/apache/xerces/util/SymbolTable;
    move-object v2, v0

    invoke-direct {v2}, Lorg/apache/xerces/util/SymbolTable;-><init>()V

    .line 91
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/apache/xerces/util/ShadowedSymbolTable;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    .line 92
    return-void
.end method


# virtual methods
.method public addSymbol(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 108
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/ShadowedSymbolTable;
    move-object v1, p1

    .local v1, "symbol":Ljava/lang/String;
    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/util/ShadowedSymbolTable;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lorg/apache/xerces/util/SymbolTable;->containsSymbol(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 109
    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/util/ShadowedSymbolTable;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lorg/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .line 111
    .end local v0    # "this":Lorg/apache/xerces/util/ShadowedSymbolTable;
    :goto_0
    return-object v0

    .restart local v0    # "this":Lorg/apache/xerces/util/ShadowedSymbolTable;
    :cond_0
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lorg/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    goto :goto_0
.end method

.method public addSymbol([CII)Ljava/lang/String;
    .locals 8

    .prologue
    .line 127
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/ShadowedSymbolTable;
    move-object v1, p1

    .local v1, "buffer":[C
    move v2, p2

    .local v2, "offset":I
    move v3, p3

    .local v3, "length":I
    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/util/ShadowedSymbolTable;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    move-object v5, v1

    move v6, v2

    move v7, v3

    invoke-virtual {v4, v5, v6, v7}, Lorg/apache/xerces/util/SymbolTable;->containsSymbol([CII)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 128
    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/util/ShadowedSymbolTable;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    move-object v5, v1

    move v6, v2

    move v7, v3

    invoke-virtual {v4, v5, v6, v7}, Lorg/apache/xerces/util/SymbolTable;->addSymbol([CII)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    .line 130
    .end local v0    # "this":Lorg/apache/xerces/util/ShadowedSymbolTable;
    :goto_0
    return-object v0

    .restart local v0    # "this":Lorg/apache/xerces/util/ShadowedSymbolTable;
    :cond_0
    move-object v4, v0

    move-object v5, v1

    move v6, v2

    move v7, v3

    invoke-super {v4, v5, v6, v7}, Lorg/apache/xerces/util/SymbolTable;->addSymbol([CII)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    goto :goto_0
.end method

.method public hash(Ljava/lang/String;)I
    .locals 4

    .prologue
    .line 143
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/ShadowedSymbolTable;
    move-object v1, p1

    .local v1, "symbol":Ljava/lang/String;
    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/util/ShadowedSymbolTable;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lorg/apache/xerces/util/SymbolTable;->hash(Ljava/lang/String;)I

    move-result v2

    move v0, v2

    .end local v0    # "this":Lorg/apache/xerces/util/ShadowedSymbolTable;
    return v0
.end method

.method public hash([CII)I
    .locals 8

    .prologue
    .line 158
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/ShadowedSymbolTable;
    move-object v1, p1

    .local v1, "buffer":[C
    move v2, p2

    .local v2, "offset":I
    move v3, p3

    .local v3, "length":I
    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/util/ShadowedSymbolTable;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    move-object v5, v1

    move v6, v2

    move v7, v3

    invoke-virtual {v4, v5, v6, v7}, Lorg/apache/xerces/util/SymbolTable;->hash([CII)I

    move-result v4

    move v0, v4

    .end local v0    # "this":Lorg/apache/xerces/util/ShadowedSymbolTable;
    return v0
.end method
