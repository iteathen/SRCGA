.class Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$NamespaceContextImpl;
.super Ljava/lang/Object;
.source "XMLStreamWriterImpl.java"

# interfaces
.implements Ljavax/xml/namespace/NamespaceContext;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NamespaceContextImpl"
.end annotation


# instance fields
.field internalContext:Lorg/apache/xerces/util/NamespaceSupport;

.field final synthetic this$0:Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;

.field userContext:Ljavax/xml/namespace/NamespaceContext;


# direct methods
.method constructor <init>(Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;)V
    .locals 4

    .prologue
    .line 2071
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$NamespaceContextImpl;
    move-object v1, p1

    .local v1, "this$0":Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$NamespaceContextImpl;->this$0:Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 2073
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$NamespaceContextImpl;->userContext:Ljavax/xml/namespace/NamespaceContext;

    .line 2076
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$NamespaceContextImpl;->internalContext:Lorg/apache/xerces/util/NamespaceSupport;

    return-void
.end method


# virtual methods
.method public getNamespaceURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 2079
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$NamespaceContextImpl;
    move-object v1, p1

    .local v1, "prefix":Ljava/lang/String;
    const/4 v3, 0x0

    move-object v2, v3

    .line 2081
    .local v2, "uri":Ljava/lang/String;
    move-object v3, v1

    if-eqz v3, :cond_0

    .line 2082
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$NamespaceContextImpl;->this$0:Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;

    invoke-static {v3}, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->access$000(Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;)Lorg/apache/xerces/util/SymbolTable;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v3, v4}, Lorg/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .line 2085
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$NamespaceContextImpl;->internalContext:Lorg/apache/xerces/util/NamespaceSupport;

    if-eqz v3, :cond_1

    .line 2086
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$NamespaceContextImpl;->internalContext:Lorg/apache/xerces/util/NamespaceSupport;

    move-object v4, v1

    invoke-virtual {v3, v4}, Lorg/apache/xerces/util/NamespaceSupport;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 2088
    move-object v3, v2

    if-eqz v3, :cond_1

    .line 2089
    move-object v3, v2

    move-object v0, v3

    .line 2099
    .end local v0    # "this":Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$NamespaceContextImpl;
    :goto_0
    return-object v0

    .line 2093
    .restart local v0    # "this":Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$NamespaceContextImpl;
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$NamespaceContextImpl;->userContext:Ljavax/xml/namespace/NamespaceContext;

    if-eqz v3, :cond_2

    .line 2094
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$NamespaceContextImpl;->userContext:Ljavax/xml/namespace/NamespaceContext;

    move-object v4, v1

    invoke-interface {v3, v4}, Ljavax/xml/namespace/NamespaceContext;->getNamespaceURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 2096
    move-object v3, v2

    move-object v0, v3

    goto :goto_0

    .line 2099
    :cond_2
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_0
.end method

.method public getPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 2103
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$NamespaceContextImpl;
    move-object v1, p1

    .local v1, "uri":Ljava/lang/String;
    const/4 v3, 0x0

    move-object v2, v3

    .line 2105
    .local v2, "prefix":Ljava/lang/String;
    move-object v3, v1

    if-eqz v3, :cond_0

    .line 2106
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$NamespaceContextImpl;->this$0:Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;

    invoke-static {v3}, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->access$000(Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;)Lorg/apache/xerces/util/SymbolTable;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v3, v4}, Lorg/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .line 2109
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$NamespaceContextImpl;->internalContext:Lorg/apache/xerces/util/NamespaceSupport;

    if-eqz v3, :cond_1

    .line 2110
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$NamespaceContextImpl;->internalContext:Lorg/apache/xerces/util/NamespaceSupport;

    move-object v4, v1

    invoke-virtual {v3, v4}, Lorg/apache/xerces/util/NamespaceSupport;->getPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 2112
    move-object v3, v2

    if-eqz v3, :cond_1

    .line 2113
    move-object v3, v2

    move-object v0, v3

    .line 2121
    .end local v0    # "this":Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$NamespaceContextImpl;
    :goto_0
    return-object v0

    .line 2117
    .restart local v0    # "this":Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$NamespaceContextImpl;
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$NamespaceContextImpl;->userContext:Ljavax/xml/namespace/NamespaceContext;

    if-eqz v3, :cond_2

    .line 2118
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$NamespaceContextImpl;->userContext:Ljavax/xml/namespace/NamespaceContext;

    move-object v4, v1

    invoke-interface {v3, v4}, Ljavax/xml/namespace/NamespaceContext;->getPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    .line 2121
    :cond_2
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_0
.end method

.method public getPrefixes(Ljava/lang/String;)Ljava/util/Iterator;
    .locals 9

    .prologue
    .line 2125
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$NamespaceContextImpl;
    move-object v1, p1

    .local v1, "uri":Ljava/lang/String;
    const/4 v5, 0x0

    move-object v2, v5

    .line 2126
    .local v2, "prefixes":Ljava/util/Vector;
    const/4 v5, 0x0

    move-object v3, v5

    .line 2128
    .local v3, "itr":Ljava/util/Iterator;
    move-object v5, v1

    if-eqz v5, :cond_0

    .line 2129
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$NamespaceContextImpl;->this$0:Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;

    invoke-static {v5}, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->access$000(Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;)Lorg/apache/xerces/util/SymbolTable;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v5, v6}, Lorg/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v1, v5

    .line 2132
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$NamespaceContextImpl;->userContext:Ljavax/xml/namespace/NamespaceContext;

    if-eqz v5, :cond_1

    .line 2133
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$NamespaceContextImpl;->userContext:Ljavax/xml/namespace/NamespaceContext;

    move-object v6, v1

    invoke-interface {v5, v6}, Ljavax/xml/namespace/NamespaceContext;->getPrefixes(Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object v5

    move-object v3, v5

    .line 2136
    :cond_1
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$NamespaceContextImpl;->internalContext:Lorg/apache/xerces/util/NamespaceSupport;

    if-eqz v5, :cond_2

    .line 2137
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$NamespaceContextImpl;->internalContext:Lorg/apache/xerces/util/NamespaceSupport;

    move-object v6, v1

    invoke-virtual {v5, v6}, Lorg/apache/xerces/util/NamespaceSupport;->getPrefixes(Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v5

    move-object v2, v5

    .line 2140
    :cond_2
    move-object v5, v2

    if-nez v5, :cond_3

    move-object v5, v3

    if-eqz v5, :cond_3

    .line 2141
    move-object v5, v3

    move-object v0, v5

    .line 2162
    .end local v0    # "this":Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$NamespaceContextImpl;
    :goto_0
    return-object v0

    .line 2142
    .restart local v0    # "this":Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$NamespaceContextImpl;
    :cond_3
    move-object v5, v2

    if-eqz v5, :cond_4

    move-object v5, v3

    if-nez v5, :cond_4

    .line 2143
    new-instance v5, Lcom/sun/xml/stream/util/ReadOnlyIterator;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v2

    invoke-virtual {v7}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/sun/xml/stream/util/ReadOnlyIterator;-><init>(Ljava/util/Iterator;)V

    move-object v0, v5

    goto :goto_0

    .line 2144
    :cond_4
    move-object v5, v2

    if-eqz v5, :cond_8

    move-object v5, v3

    if-eqz v5, :cond_8

    .line 2145
    const/4 v5, 0x0

    move-object v4, v5

    .line 2147
    .local v4, "ob":Ljava/lang/String;
    :cond_5
    :goto_1
    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 2148
    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object v4, v5

    .line 2150
    move-object v5, v4

    if-eqz v5, :cond_6

    .line 2151
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$NamespaceContextImpl;->this$0:Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;

    invoke-static {v5}, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->access$000(Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;)Lorg/apache/xerces/util/SymbolTable;

    move-result-object v5

    move-object v6, v4

    invoke-virtual {v5, v6}, Lorg/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    .line 2154
    :cond_6
    move-object v5, v2

    move-object v6, v4

    invoke-virtual {v5, v6}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 2155
    move-object v5, v2

    move-object v6, v4

    invoke-virtual {v5, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    move-result v5

    goto :goto_1

    .line 2159
    :cond_7
    new-instance v5, Lcom/sun/xml/stream/util/ReadOnlyIterator;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v2

    invoke-virtual {v7}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/sun/xml/stream/util/ReadOnlyIterator;-><init>(Ljava/util/Iterator;)V

    move-object v0, v5

    goto :goto_0

    .line 2162
    .end local v4    # "ob":Ljava/lang/String;
    :cond_8
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl$NamespaceContextImpl;->this$0:Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;

    invoke-static {v5}, Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;->access$100(Lcom/sun/xml/stream/writers/XMLStreamWriterImpl;)Lcom/sun/xml/stream/util/ReadOnlyIterator;

    move-result-object v5

    move-object v0, v5

    goto :goto_0
.end method
