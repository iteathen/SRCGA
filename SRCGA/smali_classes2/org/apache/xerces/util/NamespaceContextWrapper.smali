.class public Lorg/apache/xerces/util/NamespaceContextWrapper;
.super Ljava/lang/Object;
.source "NamespaceContextWrapper.java"

# interfaces
.implements Ljavax/xml/namespace/NamespaceContext;


# instance fields
.field private fNamespaceContext:Lorg/apache/xerces/xni/NamespaceContext;


# direct methods
.method public constructor <init>(Lorg/apache/xerces/xni/NamespaceContext;)V
    .locals 4

    .prologue
    .line 65
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/NamespaceContextWrapper;
    move-object v1, p1

    .local v1, "namespaceContext":Lorg/apache/xerces/xni/NamespaceContext;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 66
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/apache/xerces/util/NamespaceContextWrapper;->fNamespaceContext:Lorg/apache/xerces/xni/NamespaceContext;

    .line 67
    return-void
.end method


# virtual methods
.method public getNamespaceContext()Lorg/apache/xerces/xni/NamespaceContext;
    .locals 2

    .prologue
    .line 102
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/NamespaceContextWrapper;
    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/util/NamespaceContextWrapper;->fNamespaceContext:Lorg/apache/xerces/xni/NamespaceContext;

    move-object v0, v1

    .end local v0    # "this":Lorg/apache/xerces/util/NamespaceContextWrapper;
    return-object v0
.end method

.method public getNamespaceURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/NamespaceContextWrapper;
    move-object v1, p1

    .local v1, "prefix":Ljava/lang/String;
    move-object v2, v1

    if-nez v2, :cond_0

    .line 71
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "Prefix can\'t be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 73
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/util/NamespaceContextWrapper;->fNamespaceContext:Lorg/apache/xerces/xni/NamespaceContext;

    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/xerces/xni/NamespaceContext;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lorg/apache/xerces/util/NamespaceContextWrapper;
    return-object v0
.end method

.method public getPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 77
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/NamespaceContextWrapper;
    move-object v1, p1

    .local v1, "namespaceURI":Ljava/lang/String;
    move-object v2, v1

    if-nez v2, :cond_0

    .line 78
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "URI can\'t be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 80
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/util/NamespaceContextWrapper;->fNamespaceContext:Lorg/apache/xerces/xni/NamespaceContext;

    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/xerces/xni/NamespaceContext;->getPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lorg/apache/xerces/util/NamespaceContextWrapper;
    return-object v0
.end method

.method public getPrefixes(Ljava/lang/String;)Ljava/util/Iterator;
    .locals 7

    .prologue
    .line 88
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/NamespaceContextWrapper;
    move-object v1, p1

    .local v1, "namespaceURI":Ljava/lang/String;
    move-object v3, v1

    if-nez v3, :cond_0

    .line 89
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "URI can\'t be null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 92
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/util/NamespaceContextWrapper;->fNamespaceContext:Lorg/apache/xerces/xni/NamespaceContext;

    check-cast v3, Lorg/apache/xerces/util/NamespaceSupport;

    move-object v4, v1

    .line 93
    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/xerces/util/NamespaceSupport;->getPrefixes(Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v3

    move-object v2, v3

    .line 94
    .local v2, "vector":Ljava/util/Vector;
    move-object v3, v2

    invoke-virtual {v3}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lorg/apache/xerces/util/NamespaceContextWrapper;
    return-object v0
.end method
