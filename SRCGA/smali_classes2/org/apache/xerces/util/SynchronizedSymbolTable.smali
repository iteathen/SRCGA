.class public final Lorg/apache/xerces/util/SynchronizedSymbolTable;
.super Lorg/apache/xerces/util/SymbolTable;
.source "SynchronizedSymbolTable.java"


# instance fields
.field protected fSymbolTable:Lorg/apache/xerces/util/SymbolTable;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    .line 92
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/SynchronizedSymbolTable;
    move-object v1, v0

    invoke-direct {v1}, Lorg/apache/xerces/util/SymbolTable;-><init>()V

    .line 93
    move-object v1, v0

    new-instance v2, Lorg/apache/xerces/util/SymbolTable;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lorg/apache/xerces/util/SymbolTable;-><init>()V

    iput-object v2, v1, Lorg/apache/xerces/util/SynchronizedSymbolTable;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    .line 94
    return-void
.end method

.method public constructor <init>(I)V
    .locals 7

    .prologue
    .line 97
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/SynchronizedSymbolTable;
    move v1, p1

    .local v1, "size":I
    move-object v2, v0

    invoke-direct {v2}, Lorg/apache/xerces/util/SymbolTable;-><init>()V

    .line 98
    move-object v2, v0

    new-instance v3, Lorg/apache/xerces/util/SymbolTable;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move v5, v1

    invoke-direct {v4, v5}, Lorg/apache/xerces/util/SymbolTable;-><init>(I)V

    iput-object v3, v2, Lorg/apache/xerces/util/SynchronizedSymbolTable;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    .line 99
    return-void
.end method

.method public constructor <init>(Lorg/apache/xerces/util/SymbolTable;)V
    .locals 4

    .prologue
    .line 87
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/SynchronizedSymbolTable;
    move-object v1, p1

    .local v1, "symbolTable":Lorg/apache/xerces/util/SymbolTable;
    move-object v2, v0

    invoke-direct {v2}, Lorg/apache/xerces/util/SymbolTable;-><init>()V

    .line 88
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/apache/xerces/util/SynchronizedSymbolTable;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    .line 89
    return-void
.end method


# virtual methods
.method public addSymbol(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    .line 115
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/SynchronizedSymbolTable;
    move-object v1, p1

    .local v1, "symbol":Ljava/lang/String;
    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/util/SynchronizedSymbolTable;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    move-object v2, v5

    monitor-enter v4

    .line 116
    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Lorg/apache/xerces/util/SynchronizedSymbolTable;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    move-object v5, v1

    invoke-virtual {v4, v5}, Lorg/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v5, v2

    monitor-exit v5

    move-object v0, v4

    .end local v0    # "this":Lorg/apache/xerces/util/SynchronizedSymbolTable;
    return-object v0

    .line 117
    .restart local v0    # "this":Lorg/apache/xerces/util/SynchronizedSymbolTable;
    :catchall_0
    move-exception v4

    move-object v3, v4

    move-object v4, v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v4, v3

    throw v4
.end method

.method public addSymbol([CII)Ljava/lang/String;
    .locals 11

    .prologue
    .line 133
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/SynchronizedSymbolTable;
    move-object v1, p1

    .local v1, "buffer":[C
    move v2, p2

    .local v2, "offset":I
    move v3, p3

    .local v3, "length":I
    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/util/SynchronizedSymbolTable;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v4, v7

    monitor-enter v6

    .line 134
    move-object v6, v0

    :try_start_0
    iget-object v6, v6, Lorg/apache/xerces/util/SynchronizedSymbolTable;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    move-object v7, v1

    move v8, v2

    move v9, v3

    invoke-virtual {v6, v7, v8, v9}, Lorg/apache/xerces/util/SymbolTable;->addSymbol([CII)Ljava/lang/String;

    move-result-object v6

    move-object v7, v4

    monitor-exit v7

    move-object v0, v6

    .end local v0    # "this":Lorg/apache/xerces/util/SynchronizedSymbolTable;
    return-object v0

    .line 135
    .restart local v0    # "this":Lorg/apache/xerces/util/SynchronizedSymbolTable;
    :catchall_0
    move-exception v6

    move-object v5, v6

    move-object v6, v4

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v6, v5

    throw v6
.end method

.method public containsSymbol(Ljava/lang/String;)Z
    .locals 7

    .prologue
    .line 147
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/SynchronizedSymbolTable;
    move-object v1, p1

    .local v1, "symbol":Ljava/lang/String;
    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/util/SynchronizedSymbolTable;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    move-object v2, v5

    monitor-enter v4

    .line 148
    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Lorg/apache/xerces/util/SynchronizedSymbolTable;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    move-object v5, v1

    invoke-virtual {v4, v5}, Lorg/apache/xerces/util/SymbolTable;->containsSymbol(Ljava/lang/String;)Z

    move-result v4

    move-object v5, v2

    monitor-exit v5

    move v0, v4

    .end local v0    # "this":Lorg/apache/xerces/util/SynchronizedSymbolTable;
    return v0

    .line 149
    .restart local v0    # "this":Lorg/apache/xerces/util/SynchronizedSymbolTable;
    :catchall_0
    move-exception v4

    move-object v3, v4

    move-object v4, v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v4, v3

    throw v4
.end method

.method public containsSymbol([CII)Z
    .locals 11

    .prologue
    .line 163
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/SynchronizedSymbolTable;
    move-object v1, p1

    .local v1, "buffer":[C
    move v2, p2

    .local v2, "offset":I
    move v3, p3

    .local v3, "length":I
    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/util/SynchronizedSymbolTable;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v4, v7

    monitor-enter v6

    .line 164
    move-object v6, v0

    :try_start_0
    iget-object v6, v6, Lorg/apache/xerces/util/SynchronizedSymbolTable;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    move-object v7, v1

    move v8, v2

    move v9, v3

    invoke-virtual {v6, v7, v8, v9}, Lorg/apache/xerces/util/SymbolTable;->containsSymbol([CII)Z

    move-result v6

    move-object v7, v4

    monitor-exit v7

    move v0, v6

    .end local v0    # "this":Lorg/apache/xerces/util/SynchronizedSymbolTable;
    return v0

    .line 165
    .restart local v0    # "this":Lorg/apache/xerces/util/SynchronizedSymbolTable;
    :catchall_0
    move-exception v6

    move-object v5, v6

    move-object v6, v4

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v6, v5

    throw v6
.end method
