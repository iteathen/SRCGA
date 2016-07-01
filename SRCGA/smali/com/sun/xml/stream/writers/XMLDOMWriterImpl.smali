.class public Lcom/sun/xml/stream/writers/XMLDOMWriterImpl;
.super Ljava/lang/Object;
.source "XMLDOMWriterImpl.java"

# interfaces
.implements Ljavax/xml/stream/XMLStreamWriter;


# instance fields
.field private currentNode:Lorg/w3c/dom/Node;

.field private depth:I

.field private mXmlVersion:Ljava/lang/reflect/Method;

.field private namespaceContext:Lorg/xml/sax/helpers/NamespaceSupport;

.field private needContextPop:[Z

.field private node:Lorg/w3c/dom/Node;

.field private ownerDoc:Lorg/w3c/dom/Document;

.field private resizeValue:I

.field private stringBuffer:Ljava/lang/StringBuffer;


# direct methods
.method public constructor <init>(Ljavax/xml/transform/dom/DOMResult;)V
    .locals 6

    .prologue
    .line 95
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/writers/XMLDOMWriterImpl;
    move-object v1, p1

    .local v1, "result":Ljavax/xml/transform/dom/DOMResult;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 82
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/sun/xml/stream/writers/XMLDOMWriterImpl;->ownerDoc:Lorg/w3c/dom/Document;

    .line 83
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/sun/xml/stream/writers/XMLDOMWriterImpl;->currentNode:Lorg/w3c/dom/Node;

    .line 84
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/sun/xml/stream/writers/XMLDOMWriterImpl;->node:Lorg/w3c/dom/Node;

    .line 85
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/sun/xml/stream/writers/XMLDOMWriterImpl;->namespaceContext:Lorg/xml/sax/helpers/NamespaceSupport;

    .line 86
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/sun/xml/stream/writers/XMLDOMWriterImpl;->mXmlVersion:Ljava/lang/reflect/Method;

    .line 87
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/sun/xml/stream/writers/XMLDOMWriterImpl;->needContextPop:[Z

    .line 88
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/sun/xml/stream/writers/XMLDOMWriterImpl;->stringBuffer:Ljava/lang/StringBuffer;

    .line 89
    move-object v2, v0

    const/16 v3, 0x14

    iput v3, v2, Lcom/sun/xml/stream/writers/XMLDOMWriterImpl;->resizeValue:I

    .line 90
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Lcom/sun/xml/stream/writers/XMLDOMWriterImpl;->depth:I

    .line 97
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Ljavax/xml/transform/dom/DOMResult;->getNode()Lorg/w3c/dom/Node;

    move-result-object v3

    iput-object v3, v2, Lcom/sun/xml/stream/writers/XMLDOMWriterImpl;->node:Lorg/w3c/dom/Node;

    .line 98
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/writers/XMLDOMWriterImpl;->node:Lorg/w3c/dom/Node;

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v2

    const/16 v3, 0x9

    if-ne v2, v3, :cond_0

    .line 99
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/writers/XMLDOMWriterImpl;->node:Lorg/w3c/dom/Node;

    check-cast v3, Lorg/w3c/dom/Document;

    iput-object v3, v2, Lcom/sun/xml/stream/writers/XMLDOMWriterImpl;->ownerDoc:Lorg/w3c/dom/Document;

    .line 100
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/writers/XMLDOMWriterImpl;->ownerDoc:Lorg/w3c/dom/Document;

    iput-object v3, v2, Lcom/sun/xml/stream/writers/XMLDOMWriterImpl;->currentNode:Lorg/w3c/dom/Node;

    .line 105
    :goto_0
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/xml/stream/writers/XMLDOMWriterImpl;->getDLThreeMethods()V

    .line 106
    move-object v2, v0

    new-instance v3, Ljava/lang/StringBuffer;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v3, v2, Lcom/sun/xml/stream/writers/XMLDOMWriterImpl;->stringBuffer:Ljava/lang/StringBuffer;

    .line 107
    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Lcom/sun/xml/stream/writers/XMLDOMWriterImpl;->resizeValue:I

    new-array v3, v3, [Z

    iput-object v3, v2, Lcom/sun/xml/stream/writers/XMLDOMWriterImpl;->needContextPop:[Z

    .line 108
    move-object v2, v0

    new-instance v3, Lorg/xml/sax/helpers/NamespaceSupport;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Lorg/xml/sax/helpers/NamespaceSupport;-><init>()V

    iput-object v3, v2, Lcom/sun/xml/stream/writers/XMLDOMWriterImpl;->namespaceContext:Lorg/xml/sax/helpers/NamespaceSupport;

    .line 109
    return-void

    .line 102
    :cond_0
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/writers/XMLDOMWriterImpl;->node:Lorg/w3c/dom/Node;

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v3

    iput-object v3, v2, Lcom/sun/xml/stream/writers/XMLDOMWriterImpl;->ownerDoc:Lorg/w3c/dom/Document;

    .line 103
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/writers/XMLDOMWriterImpl;->node:Lorg/w3c/dom/Node;

    iput-object v3, v2, Lcom/sun/xml/stream/writers/XMLDOMWriterImpl;->currentNode:Lorg/w3c/dom/Node;

    goto :goto_0
.end method

.method private getDLThreeMethods()V
    .locals 10

    .prologue
    .line 113
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/writers/XMLDOMWriterImpl;
    move-object v2, v0

    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Lcom/sun/xml/stream/writers/XMLDOMWriterImpl;->ownerDoc:Lorg/w3c/dom/Document;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "setXmlVersion"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    iput-object v3, v2, Lcom/sun/xml/stream/writers/XMLDOMWriterImpl;->mXmlVersion:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 120
    .line 121
    :goto_0
    return-void

    .line 114
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 116
    .local v1, "mex":Ljava/lang/NoSuchMethodException;
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/sun/xml/stream/writers/XMLDOMWriterImpl;->mXmlVersion:Ljava/lang/reflect/Method;

    .line 120
    goto :goto_0

    .line 117
    .end local v1    # "mex":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v2

    move-object v1, v2

    .line 119
    .local v1, "se":Ljava/lang/SecurityException;
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/sun/xml/stream/writers/XMLDOMWriterImpl;->mXmlVersion:Ljava/lang/reflect/Method;

    goto :goto_0
.end method

.method private getNode()Lorg/w3c/dom/Node;
    .locals 2

    .prologue
    .line 747
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/writers/XMLDOMWriterImpl;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/writers/XMLDOMWriterImpl;->currentNode:Lorg/w3c/dom/Node;

    if-nez v1, :cond_0

    .line 748
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/writers/XMLDOMWriterImpl;->ownerDoc:Lorg/w3c/dom/Document;

    move-object v0, v1

    .line 750
    .end local v0    # "this":Lcom/sun/xml/stream/writers/XMLDOMWriterImpl;
    :goto_0
    return-object v0

    .restart local v0    # "this":Lcom/sun/xml/stream/writers/XMLDOMWriterImpl;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/writers/XMLDOMWriterImpl;->currentNode:Lorg/w3c/dom/Node;

    move-object v0, v1

    goto :goto_0
.end method

.method private getQName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 739
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/writers/XMLDOMWriterImpl;
    move-object v1, p1

    .local v1, "prefix":Ljava/lang/String;
    move-object v2, p2

    .local v2, "localName":Ljava/lang/String;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/writers/XMLDOMWriterImpl;->stringBuffer:Ljava/lang/StringBuffer;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 740
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/writers/XMLDOMWriterImpl;->stringBuffer:Ljava/lang/StringBuffer;

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 741
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/writers/XMLDOMWriterImpl;->stringBuffer:Ljava/lang/StringBuffer;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 742
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/writers/XMLDOMWriterImpl;->stringBuffer:Ljava/lang/StringBuffer;

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 743
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/writers/XMLDOMWriterImpl;->stringBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/xml/stream/writers/XMLDOMWriterImpl;
    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 130
    return-void
.end method

.method public flush()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 138
    return-void
.end method

.method public getNamespaceContext()Ljavax/xml/namespace/NamespaceContext;
    .locals 2

    .prologue
    .line 145
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/writers/XMLDOMWriterImpl;
    const/4 v1, 0x0

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/writers/XMLDOMWriterImpl;
    return-object v0
.end method

.method public getPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 155
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/writers/XMLDOMWriterImpl;
    move-object v1, p1

    .local v1, "namespaceURI":Ljava/lang/String;
    const/4 v3, 0x0

    move-object v2, v3

    .line 156
    .local v2, "prefix":Ljava/lang/String;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/writers/XMLDOMWriterImpl;->namespaceContext:Lorg/xml/sax/helpers/NamespaceSupport;

    if-eqz v3, :cond_0

    .line 157
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/writers/XMLDOMWriterImpl;->namespaceContext:Lorg/xml/sax/helpers/NamespaceSupport;

    move-object v4, v1

    invoke-virtual {v3, v4}, Lorg/xml/sax/helpers/NamespaceSupport;->getPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 159
    :cond_0
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/xml/stream/writers/XMLDOMWriterImpl;
    return-object v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 169
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/writers/XMLDOMWriterImpl;
    move-object v1, p1

    .local v1, "str":Ljava/lang/String;
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v2
.end method

.method public setDefaultNamespace(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 178
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/writers/XMLDOMWriterImpl;
    move-object v1, p1

    .local v1, "uri":Ljava/lang/String;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/writers/XMLDOMWriterImpl;->namespaceContext:Lorg/xml/sax/helpers/NamespaceSupport;

    const-string v3, ""

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lorg/xml/sax/helpers/NamespaceSupport;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 179
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/writers/XMLDOMWriterImpl;->needContextPop:[Z

    move-object v3, v0

    iget v3, v3, Lcom/sun/xml/stream/writers/XMLDOMWriterImpl;->depth:I

    aget-boolean v2, v2, v3

    if-nez v2, :cond_0

    .line 180
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/writers/XMLDOMWriterImpl;->needContextPop:[Z

    move-object v3, v0

    iget v3, v3, Lcom/sun/xml/stream/writers/XMLDOMWriterImpl;->depth:I

    const/4 v4, 0x1

    aput-boolean v4, v2, v3

    .line 182
    :cond_0
    return-void
.end method

.method public setNamespaceContext(Ljavax/xml/namespace/NamespaceContext;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 190
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/writers/XMLDOMWriterImpl;
    move-object v1, p1

    .local v1, "namespaceContext":Ljavax/xml/namespace/NamespaceContext;
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v2
.end method

.method public setPrefix(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 200
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/writers/XMLDOMWriterImpl;
    move-object v1, p1

    .local v1, "prefix":Ljava/lang/String;
    move-object v2, p2

    .local v2, "uri":Ljava/lang/String;
    move-object v3, v1

    if-nez v3, :cond_0

    .line 201
    new-instance v3, Lcom/sun/xml/stream/XMLStreamException2;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "Prefix cannot be null"

    invoke-direct {v4, v5}, Lcom/sun/xml/stream/XMLStreamException2;-><init>(Ljava/lang/String;)V

    throw v3

    .line 203
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/writers/XMLDOMWriterImpl;->namespaceContext:Lorg/xml/sax/helpers/NamespaceSupport;

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lorg/xml/sax/helpers/NamespaceSupport;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 204
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/writers/XMLDOMWriterImpl;->needContextPop:[Z

    move-object v4, v0

    iget v4, v4, Lcom/sun/xml/stream/writers/XMLDOMWriterImpl;->depth:I

    aget-boolean v3, v3, v4

    if-nez v3, :cond_1

    .line 205
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/writers/XMLDOMWriterImpl;->needContextPop:[Z

    move-object v4, v0

    iget v4, v4, Lcom/sun/xml/stream/writers/XMLDOMWriterImpl;->depth:I

    const/4 v5, 0x1

    aput-boolean v5, v3, v4

    .line 207
    :cond_1
    return-void
.end method

.method public writeAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 217
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/writers/XMLDOMWriterImpl;
    move-object v1, p1

    .local v1, "localName":Ljava/lang/String;
    move-object v2, p2

    .local v2, "value":Ljava/lang/String;
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/writers/XMLDOMWriterImpl;->currentNode:Lorg/w3c/dom/Node;

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 218
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/writers/XMLDOMWriterImpl;->ownerDoc:Lorg/w3c/dom/Document;

    move-object v5, v1

    invoke-interface {v4, v5}, Lorg/w3c/dom/Document;->createAttribute(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v4

    move-object v3, v4

    .line 219
    .local v3, "attr":Lorg/w3c/dom/Attr;
    move-object v4, v3

    move-object v5, v2

    invoke-interface {v4, v5}, Lorg/w3c/dom/Attr;->setValue(Ljava/lang/String;)V

    .line 220
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/writers/XMLDOMWriterImpl;->currentNode:Lorg/w3c/dom/Node;

    check-cast v4, Lorg/w3c/dom/Element;

    move-object v5, v3

    invoke-interface {v4, v5}, Lorg/w3c/dom/Element;->setAttributeNode(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;

    move-result-object v4

    .line 221
    .line 226
    return-void

    .line 223
    .end local v3    # "attr":Lorg/w3c/dom/Attr;
    :cond_0
    new-instance v4, Ljava/lang/IllegalStateException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Current DOM Node type  is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/xml/stream/writers/XMLDOMWriterImpl;->currentNode:Lorg/w3c/dom/Node;

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "and does not allow attributes to be set "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public writeAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 236
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/writers/XMLDOMWriterImpl;
    move-object v1, p1

    .local v1, "namespaceURI":Ljava/lang/String;
    move-object v2, p2

    .local v2, "localName":Ljava/lang/String;
    move-object v3, p3

    .local v3, "value":Ljava/lang/String;
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/xml/stream/writers/XMLDOMWriterImpl;->currentNode:Lorg/w3c/dom/Node;

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_5

    .line 237
    const/4 v7, 0x0

    move-object v4, v7

    .line 238
    .local v4, "prefix":Ljava/lang/String;
    move-object v7, v1

    if-nez v7, :cond_0

    .line 239
    new-instance v7, Lcom/sun/xml/stream/XMLStreamException2;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const-string v9, "NamespaceURI cannot be null"

    invoke-direct {v8, v9}, Lcom/sun/xml/stream/XMLStreamException2;-><init>(Ljava/lang/String;)V

    throw v7

    .line 241
    :cond_0
    move-object v7, v2

    if-nez v7, :cond_1

    .line 242
    new-instance v7, Lcom/sun/xml/stream/XMLStreamException2;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const-string v9, "Local name cannot be null"

    invoke-direct {v8, v9}, Lcom/sun/xml/stream/XMLStreamException2;-><init>(Ljava/lang/String;)V

    throw v7

    .line 244
    :cond_1
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/xml/stream/writers/XMLDOMWriterImpl;->namespaceContext:Lorg/xml/sax/helpers/NamespaceSupport;

    if-eqz v7, :cond_2

    .line 245
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/xml/stream/writers/XMLDOMWriterImpl;->namespaceContext:Lorg/xml/sax/helpers/NamespaceSupport;

    move-object v8, v1

    invoke-virtual {v7, v8}, Lorg/xml/sax/helpers/NamespaceSupport;->getPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v4, v7

    .line 248
    :cond_2
    move-object v7, v4

    if-nez v7, :cond_3

    .line 249
    new-instance v7, Lcom/sun/xml/stream/XMLStreamException2;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v11, v9

    move-object v9, v11

    move-object v10, v11

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Namespace URI "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "is not bound to any prefix"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/sun/xml/stream/XMLStreamException2;-><init>(Ljava/lang/String;)V

    throw v7

    .line 253
    :cond_3
    const/4 v7, 0x0

    move-object v5, v7

    .line 254
    .local v5, "qualifiedName":Ljava/lang/String;
    move-object v7, v4

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 255
    move-object v7, v2

    move-object v5, v7

    .line 259
    :goto_0
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/xml/stream/writers/XMLDOMWriterImpl;->ownerDoc:Lorg/w3c/dom/Document;

    move-object v8, v1

    move-object v9, v5

    invoke-interface {v7, v8, v9}, Lorg/w3c/dom/Document;->createAttributeNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v7

    move-object v6, v7

    .line 260
    .local v6, "attr":Lorg/w3c/dom/Attr;
    move-object v7, v6

    move-object v8, v3

    invoke-interface {v7, v8}, Lorg/w3c/dom/Attr;->setValue(Ljava/lang/String;)V

    .line 261
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/xml/stream/writers/XMLDOMWriterImpl;->currentNode:Lorg/w3c/dom/Node;

    check-cast v7, Lorg/w3c/dom/Element;

    move-object v8, v6

    invoke-interface {v7, v8}, Lorg/w3c/dom/Element;->setAttributeNode(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;

    move-result-object v7

    .line 262
    .line 267
    return-void

    .line 257
    .end local v6    # "attr":Lorg/w3c/dom/Attr;
    :cond_4
    move-object v7, v0

    move-object v8, v4

    move-object v9, v2

    invoke-direct {v7, v8, v9}, Lcom/sun/xml/stream/writers/XMLDOMWriterImpl;->getQName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v5, v7

    goto :goto_0

    .line 264
    .end local v4    # "prefix":Ljava/lang/String;
    .end local v5    # "qualifiedName":Ljava/lang/String;
    :cond_5
    new-instance v7, Ljava/lang/IllegalStateException;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v11, v9

    move-object v9, v11

    move-object v10, v11

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Current DOM Node type  is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v0

    iget-object v10, v10, Lcom/sun/xml/stream/writers/XMLDOMWriterImpl;->currentNode:Lorg/w3c/dom/Node;

    invoke-interface {v10}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "and does not allow attributes to be set "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method public writeAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 278
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/writers/XMLDOMWriterImpl;
    move-object v1, p1

    .local v1, "prefix":Ljava/lang/String;
    move-object v2, p2

    .local v2, "namespaceURI":Ljava/lang/String;
    move-object v3, p3

    .local v3, "localName":Ljava/lang/String;
    move-object/from16 v4, p4

    .local v4, "value":Ljava/lang/String;
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/xml/stream/writers/XMLDOMWriterImpl;->currentNode:Lorg/w3c/dom/Node;

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_4

    .line 279
    move-object v7, v2

    if-nez v7, :cond_0

    .line 280
    new-instance v7, Lcom/sun/xml/stream/XMLStreamException2;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const-string v9, "NamespaceURI cannot be null"

    invoke-direct {v8, v9}, Lcom/sun/xml/stream/XMLStreamException2;-><init>(Ljava/lang/String;)V

    throw v7

    .line 282
    :cond_0
    move-object v7, v3

    if-nez v7, :cond_1

    .line 283
    new-instance v7, Lcom/sun/xml/stream/XMLStreamException2;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const-string v9, "Local name cannot be null"

    invoke-direct {v8, v9}, Lcom/sun/xml/stream/XMLStreamException2;-><init>(Ljava/lang/String;)V

    throw v7

    .line 285
    :cond_1
    move-object v7, v1

    if-nez v7, :cond_2

    .line 286
    new-instance v7, Lcom/sun/xml/stream/XMLStreamException2;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const-string v9, "prefix cannot be null"

    invoke-direct {v8, v9}, Lcom/sun/xml/stream/XMLStreamException2;-><init>(Ljava/lang/String;)V

    throw v7

    .line 288
    :cond_2
    const/4 v7, 0x0

    move-object v5, v7

    .line 289
    .local v5, "qualifiedName":Ljava/lang/String;
    move-object v7, v1

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 290
    move-object v7, v3

    move-object v5, v7

    .line 295
    :goto_0
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/xml/stream/writers/XMLDOMWriterImpl;->ownerDoc:Lorg/w3c/dom/Document;

    move-object v8, v2

    move-object v9, v5

    invoke-interface {v7, v8, v9}, Lorg/w3c/dom/Document;->createAttributeNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v7

    move-object v6, v7

    .line 296
    .local v6, "attr":Lorg/w3c/dom/Attr;
    move-object v7, v6

    move-object v8, v4

    invoke-interface {v7, v8}, Lorg/w3c/dom/Attr;->setValue(Ljava/lang/String;)V

    .line 297
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/xml/stream/writers/XMLDOMWriterImpl;->currentNode:Lorg/w3c/dom/Node;

    check-cast v7, Lorg/w3c/dom/Element;

    move-object v8, v6

    invoke-interface {v7, v8}, Lorg/w3c/dom/Element;->setAttributeNodeNS(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;

    move-result-object v7

    .line 298
    .line 304
    return-void

    .line 293
    .end local v6    # "attr":Lorg/w3c/dom/Attr;
    :cond_3
    move-object v7, v0

    move-object v8, v1

    move-object v9, v3

    invoke-direct {v7, v8, v9}, Lcom/sun/xml/stream/writers/XMLDOMWriterImpl;->getQName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v5, v7

    goto :goto_0

    .line 300
    .end local v5    # "qualifiedName":Ljava/lang/String;
    :cond_4
    new-instance v7, Ljava/lang/IllegalStateException;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v11, v9

    move-object v9, v11

    move-object v10, v11

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Current DOM Node type  is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v0

    iget-object v10, v10, Lcom/sun/xml/stream/writers/XMLDOMWriterImpl;->currentNode:Lorg/w3c/dom/Node;

    invoke-interface {v10}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "and does not allow attributes to be set "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method public writeCData(Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 312
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/writers/XMLDOMWriterImpl;
    move-object v1, p1

    .local v1, "data":Ljava/lang/String;
    move-object v3, v1

    if-nez v3, :cond_0

    .line 313
    new-instance v3, Lcom/sun/xml/stream/XMLStreamException2;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "CDATA cannot be null"

    invoke-direct {v4, v5}, Lcom/sun/xml/stream/XMLStreamException2;-><init>(Ljava/lang/String;)V

    throw v3

    .line 316
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/writers/XMLDOMWriterImpl;->ownerDoc:Lorg/w3c/dom/Document;

    move-object v4, v1

    invoke-interface {v3, v4}, Lorg/w3c/dom/Document;->createCDATASection(Ljava/lang/String;)Lorg/w3c/dom/CDATASection;

    move-result-object v3

    move-object v2, v3

    .line 317
    .local v2, "cdata":Lorg/w3c/dom/CDATASection;
    move-object v3, v0

    invoke-direct {v3}, Lcom/sun/xml/stream/writers/XMLDOMWriterImpl;->getNode()Lorg/w3c/dom/Node;

    move-result-object v3

    move-object v4, v2

    invoke-interface {v3, v4}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 318
    return-void
.end method

.method public writeCharacters(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 327
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/writers/XMLDOMWriterImpl;
    move-object v1, p1

    .local v1, "charData":Ljava/lang/String;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/writers/XMLDOMWriterImpl;->ownerDoc:Lorg/w3c/dom/Document;

    move-object v4, v1

    invoke-interface {v3, v4}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v3

    move-object v2, v3

    .line 328
    .local v2, "text":Lorg/w3c/dom/Text;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/writers/XMLDOMWriterImpl;->currentNode:Lorg/w3c/dom/Node;

    move-object v4, v2

    invoke-interface {v3, v4}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 329
    return-void
.end method

.method public writeCharacters([CII)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 341
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/writers/XMLDOMWriterImpl;
    move-object v1, p1

    .local v1, "values":[C
    move v2, p2

    .local v2, "param":I
    move v3, p3

    .local v3, "param2":I
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/xml/stream/writers/XMLDOMWriterImpl;->ownerDoc:Lorg/w3c/dom/Document;

    new-instance v6, Ljava/lang/String;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-object v8, v1

    move v9, v2

    move v10, v3

    invoke-direct {v7, v8, v9, v10}, Ljava/lang/String;-><init>([CII)V

    invoke-interface {v5, v6}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v5

    move-object v4, v5

    .line 342
    .local v4, "text":Lorg/w3c/dom/Text;
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/xml/stream/writers/XMLDOMWriterImpl;->currentNode:Lorg/w3c/dom/Node;

    move-object v6, v4

    invoke-interface {v5, v6}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v5

    .line 343
    return-void
.end method

.method public writeComment(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 352
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/writers/XMLDOMWriterImpl;
    move-object v1, p1

    .local v1, "str":Ljava/lang/String;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/writers/XMLDOMWriterImpl;->ownerDoc:Lorg/w3c/dom/Document;

    move-object v4, v1

    invoke-interface {v3, v4}, Lorg/w3c/dom/Document;->createComment(Ljava/lang/String;)Lorg/w3c/dom/Comment;

    move-result-object v3

    move-object v2, v3

    .line 353
    .local v2, "comment":Lorg/w3c/dom/Comment;
    move-object v3, v0

    invoke-direct {v3}, Lcom/sun/xml/stream/writers/XMLDOMWriterImpl;->getNode()Lorg/w3c/dom/Node;

    move-result-object v3

    move-object v4, v2

    invoke-interface {v3, v4}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 354
    return-void
.end method

.method public writeDTD(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 362
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/writers/XMLDOMWriterImpl;
    move-object v1, p1

    .local v1, "str":Ljava/lang/String;
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v2
.end method

.method public writeDefaultNamespace(Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 371
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/writers/XMLDOMWriterImpl;
    move-object v1, p1

    .local v1, "namespaceURI":Ljava/lang/String;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/writers/XMLDOMWriterImpl;->currentNode:Lorg/w3c/dom/Node;

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 372
    const-string v3, "xmlns"

    move-object v2, v3

    .line 373
    .local v2, "qname":Ljava/lang/String;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/writers/XMLDOMWriterImpl;->currentNode:Lorg/w3c/dom/Node;

    check-cast v3, Lorg/w3c/dom/Element;

    const-string v4, "http://www.w3.org/2000/xmlns/"

    move-object v5, v2

    move-object v6, v1

    invoke-interface {v3, v4, v5, v6}, Lorg/w3c/dom/Element;->setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    .line 379
    return-void

    .line 376
    .end local v2    # "qname":Ljava/lang/String;
    :cond_0
    new-instance v3, Ljava/lang/IllegalStateException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Current DOM Node type  is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/writers/XMLDOMWriterImpl;->currentNode:Lorg/w3c/dom/Node;

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "and does not allow attributes to be set "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public writeEmptyElement(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 387
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/writers/XMLDOMWriterImpl;
    move-object v1, p1

    .local v1, "localName":Ljava/lang/String;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/writers/XMLDOMWriterImpl;->ownerDoc:Lorg/w3c/dom/Document;

    if-eqz v3, :cond_0

    .line 388
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/writers/XMLDOMWriterImpl;->ownerDoc:Lorg/w3c/dom/Document;

    move-object v4, v1

    invoke-interface {v3, v4}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v3

    move-object v2, v3

    .line 389
    .local v2, "element":Lorg/w3c/dom/Element;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/writers/XMLDOMWriterImpl;->currentNode:Lorg/w3c/dom/Node;

    if-eqz v3, :cond_1

    .line 390
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/writers/XMLDOMWriterImpl;->currentNode:Lorg/w3c/dom/Node;

    move-object v4, v2

    invoke-interface {v3, v4}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 396
    .end local v2    # "element":Lorg/w3c/dom/Element;
    :cond_0
    :goto_0
    return-void

    .line 392
    .restart local v2    # "element":Lorg/w3c/dom/Element;
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/writers/XMLDOMWriterImpl;->ownerDoc:Lorg/w3c/dom/Document;

    move-object v4, v2

    invoke-interface {v3, v4}, Lorg/w3c/dom/Document;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v3

    goto :goto_0
.end method

.method public writeEmptyElement(Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 405
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/writers/XMLDOMWriterImpl;
    move-object v1, p1

    .local v1, "namespaceURI":Ljava/lang/String;
    move-object v2, p2

    .local v2, "localName":Ljava/lang/String;
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/writers/XMLDOMWriterImpl;->ownerDoc:Lorg/w3c/dom/Document;

    if-eqz v6, :cond_4

    .line 406
    const/4 v6, 0x0

    move-object v3, v6

    .line 407
    .local v3, "qualifiedName":Ljava/lang/String;
    const/4 v6, 0x0

    move-object v4, v6

    .line 408
    .local v4, "prefix":Ljava/lang/String;
    move-object v6, v1

    if-nez v6, :cond_0

    .line 409
    new-instance v6, Lcom/sun/xml/stream/XMLStreamException2;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const-string v8, "NamespaceURI cannot be null"

    invoke-direct {v7, v8}, Lcom/sun/xml/stream/XMLStreamException2;-><init>(Ljava/lang/String;)V

    throw v6

    .line 411
    :cond_0
    move-object v6, v2

    if-nez v6, :cond_1

    .line 412
    new-instance v6, Lcom/sun/xml/stream/XMLStreamException2;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const-string v8, "Local name cannot be null"

    invoke-direct {v7, v8}, Lcom/sun/xml/stream/XMLStreamException2;-><init>(Ljava/lang/String;)V

    throw v6

    .line 415
    :cond_1
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/writers/XMLDOMWriterImpl;->namespaceContext:Lorg/xml/sax/helpers/NamespaceSupport;

    if-eqz v6, :cond_2

    .line 416
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/writers/XMLDOMWriterImpl;->namespaceContext:Lorg/xml/sax/helpers/NamespaceSupport;

    move-object v7, v1

    invoke-virtual {v6, v7}, Lorg/xml/sax/helpers/NamespaceSupport;->getPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v4, v6

    .line 418
    :cond_2
    move-object v6, v4

    if-nez v6, :cond_3

    .line 419
    new-instance v6, Lcom/sun/xml/stream/XMLStreamException2;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v10, v8

    move-object v8, v10

    move-object v9, v10

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Namespace URI "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "is not bound to any prefix"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/sun/xml/stream/XMLStreamException2;-><init>(Ljava/lang/String;)V

    throw v6

    .line 422
    :cond_3
    const-string v6, ""

    move-object v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 423
    move-object v6, v2

    move-object v3, v6

    .line 429
    :goto_0
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/writers/XMLDOMWriterImpl;->ownerDoc:Lorg/w3c/dom/Document;

    move-object v7, v1

    move-object v8, v3

    invoke-interface {v6, v7, v8}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v6

    move-object v5, v6

    .line 430
    .local v5, "element":Lorg/w3c/dom/Element;
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/writers/XMLDOMWriterImpl;->currentNode:Lorg/w3c/dom/Node;

    if-eqz v6, :cond_6

    .line 431
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/writers/XMLDOMWriterImpl;->currentNode:Lorg/w3c/dom/Node;

    move-object v7, v5

    invoke-interface {v6, v7}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v6

    .line 437
    .end local v3    # "qualifiedName":Ljava/lang/String;
    .end local v4    # "prefix":Ljava/lang/String;
    .end local v5    # "element":Lorg/w3c/dom/Element;
    :cond_4
    :goto_1
    return-void

    .line 426
    .restart local v3    # "qualifiedName":Ljava/lang/String;
    .restart local v4    # "prefix":Ljava/lang/String;
    :cond_5
    move-object v6, v0

    move-object v7, v4

    move-object v8, v2

    invoke-direct {v6, v7, v8}, Lcom/sun/xml/stream/writers/XMLDOMWriterImpl;->getQName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v3, v6

    goto :goto_0

    .line 433
    .restart local v5    # "element":Lorg/w3c/dom/Element;
    :cond_6
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/writers/XMLDOMWriterImpl;->ownerDoc:Lorg/w3c/dom/Document;

    move-object v7, v5

    invoke-interface {v6, v7}, Lorg/w3c/dom/Document;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v6

    goto :goto_1
.end method

.method public writeEmptyElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 447
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/writers/XMLDOMWriterImpl;
    move-object v1, p1

    .local v1, "prefix":Ljava/lang/String;
    move-object v2, p2

    .local v2, "localName":Ljava/lang/String;
    move-object v3, p3

    .local v3, "namespaceURI":Ljava/lang/String;
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/writers/XMLDOMWriterImpl;->ownerDoc:Lorg/w3c/dom/Document;

    if-eqz v6, :cond_3

    .line 448
    move-object v6, v3

    if-nez v6, :cond_0

    .line 449
    new-instance v6, Lcom/sun/xml/stream/XMLStreamException2;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    const-string v8, "NamespaceURI cannot be null"

    invoke-direct {v7, v8}, Lcom/sun/xml/stream/XMLStreamException2;-><init>(Ljava/lang/String;)V

    throw v6

    .line 451
    :cond_0
    move-object v6, v2

    if-nez v6, :cond_1

    .line 452
    new-instance v6, Lcom/sun/xml/stream/XMLStreamException2;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    const-string v8, "Local name cannot be null"

    invoke-direct {v7, v8}, Lcom/sun/xml/stream/XMLStreamException2;-><init>(Ljava/lang/String;)V

    throw v6

    .line 454
    :cond_1
    move-object v6, v1

    if-nez v6, :cond_2

    .line 455
    new-instance v6, Lcom/sun/xml/stream/XMLStreamException2;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    const-string v8, "Prefix cannot be null"

    invoke-direct {v7, v8}, Lcom/sun/xml/stream/XMLStreamException2;-><init>(Ljava/lang/String;)V

    throw v6

    .line 457
    :cond_2
    const/4 v6, 0x0

    move-object v4, v6

    .line 458
    .local v4, "qualifiedName":Ljava/lang/String;
    const-string v6, ""

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 459
    move-object v6, v2

    move-object v4, v6

    .line 463
    :goto_0
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/writers/XMLDOMWriterImpl;->ownerDoc:Lorg/w3c/dom/Document;

    move-object v7, v3

    move-object v8, v4

    invoke-interface {v6, v7, v8}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v6

    move-object v5, v6

    .line 464
    .local v5, "el":Lorg/w3c/dom/Element;
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/writers/XMLDOMWriterImpl;->currentNode:Lorg/w3c/dom/Node;

    if-eqz v6, :cond_5

    .line 465
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/writers/XMLDOMWriterImpl;->currentNode:Lorg/w3c/dom/Node;

    move-object v7, v5

    invoke-interface {v6, v7}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v6

    .line 471
    .end local v4    # "qualifiedName":Ljava/lang/String;
    .end local v5    # "el":Lorg/w3c/dom/Element;
    :cond_3
    :goto_1
    return-void

    .line 461
    .restart local v4    # "qualifiedName":Ljava/lang/String;
    :cond_4
    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    invoke-direct {v6, v7, v8}, Lcom/sun/xml/stream/writers/XMLDOMWriterImpl;->getQName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v4, v6

    goto :goto_0

    .line 467
    .restart local v5    # "el":Lorg/w3c/dom/Element;
    :cond_5
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/writers/XMLDOMWriterImpl;->ownerDoc:Lorg/w3c/dom/Document;

    move-object v7, v5

    invoke-interface {v6, v7}, Lorg/w3c/dom/Document;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v6

    goto :goto_1
.end method

.method public writeEndDocument()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 479
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/writers/XMLDOMWriterImpl;
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/sun/xml/stream/writers/XMLDOMWriterImpl;->currentNode:Lorg/w3c/dom/Node;

    .line 480
    const/4 v2, 0x0

    move v1, v2

    .local v1, "i":I
    :goto_0
    move v2, v1

    move-object v3, v0

    iget v3, v3, Lcom/sun/xml/stream/writers/XMLDOMWriterImpl;->depth:I

    if-ge v2, v3, :cond_1

    .line 481
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/writers/XMLDOMWriterImpl;->needContextPop:[Z

    move-object v3, v0

    iget v3, v3, Lcom/sun/xml/stream/writers/XMLDOMWriterImpl;->depth:I

    aget-boolean v2, v2, v3

    if-eqz v2, :cond_0

    .line 482
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/writers/XMLDOMWriterImpl;->needContextPop:[Z

    move-object v3, v0

    iget v3, v3, Lcom/sun/xml/stream/writers/XMLDOMWriterImpl;->depth:I

    const/4 v4, 0x0

    aput-boolean v4, v2, v3

    .line 483
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/writers/XMLDOMWriterImpl;->namespaceContext:Lorg/xml/sax/helpers/NamespaceSupport;

    invoke-virtual {v2}, Lorg/xml/sax/helpers/NamespaceSupport;->popContext()V

    .line 485
    :cond_0
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Lcom/sun/xml/stream/writers/XMLDOMWriterImpl;->depth:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    iput v3, v2, Lcom/sun/xml/stream/writers/XMLDOMWriterImpl;->depth:I

    .line 480
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 487
    :cond_1
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Lcom/sun/xml/stream/writers/XMLDOMWriterImpl;->depth:I

    .line 488
    return-void
.end method

.method public writeEndElement()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 495
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/writers/XMLDOMWriterImpl;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/writers/XMLDOMWriterImpl;->currentNode:Lorg/w3c/dom/Node;

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v2

    move-object v1, v2

    .line 496
    .local v1, "node":Lorg/w3c/dom/Node;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/writers/XMLDOMWriterImpl;->currentNode:Lorg/w3c/dom/Node;

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v2

    const/16 v3, 0x9

    if-ne v2, v3, :cond_1

    .line 497
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/sun/xml/stream/writers/XMLDOMWriterImpl;->currentNode:Lorg/w3c/dom/Node;

    .line 501
    :goto_0
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/writers/XMLDOMWriterImpl;->needContextPop:[Z

    move-object v3, v0

    iget v3, v3, Lcom/sun/xml/stream/writers/XMLDOMWriterImpl;->depth:I

    aget-boolean v2, v2, v3

    if-eqz v2, :cond_0

    .line 502
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/writers/XMLDOMWriterImpl;->needContextPop:[Z

    move-object v3, v0

    iget v3, v3, Lcom/sun/xml/stream/writers/XMLDOMWriterImpl;->depth:I

    const/4 v4, 0x0

    aput-boolean v4, v2, v3

    .line 503
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/writers/XMLDOMWriterImpl;->namespaceContext:Lorg/xml/sax/helpers/NamespaceSupport;

    invoke-virtual {v2}, Lorg/xml/sax/helpers/NamespaceSupport;->popContext()V

    .line 505
    :cond_0
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Lcom/sun/xml/stream/writers/XMLDOMWriterImpl;->depth:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    iput v3, v2, Lcom/sun/xml/stream/writers/XMLDOMWriterImpl;->depth:I

    .line 506
    return-void

    .line 499
    :cond_1
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/xml/stream/writers/XMLDOMWriterImpl;->currentNode:Lorg/w3c/dom/Node;

    goto :goto_0
.end method

.method public writeEntityRef(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 514
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/writers/XMLDOMWriterImpl;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/writers/XMLDOMWriterImpl;->ownerDoc:Lorg/w3c/dom/Document;

    move-object v4, v1

    invoke-interface {v3, v4}, Lorg/w3c/dom/Document;->createEntityReference(Ljava/lang/String;)Lorg/w3c/dom/EntityReference;

    move-result-object v3

    move-object v2, v3

    .line 515
    .local v2, "er":Lorg/w3c/dom/EntityReference;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/writers/XMLDOMWriterImpl;->currentNode:Lorg/w3c/dom/Node;

    move-object v4, v2

    invoke-interface {v3, v4}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 516
    return-void
.end method

.method public writeNamespace(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 527
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/writers/XMLDOMWriterImpl;
    move-object v1, p1

    .local v1, "prefix":Ljava/lang/String;
    move-object v2, p2

    .local v2, "namespaceURI":Ljava/lang/String;
    move-object v4, v1

    if-nez v4, :cond_0

    .line 528
    new-instance v4, Lcom/sun/xml/stream/XMLStreamException2;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const-string v6, "prefix cannot be null"

    invoke-direct {v5, v6}, Lcom/sun/xml/stream/XMLStreamException2;-><init>(Ljava/lang/String;)V

    throw v4

    .line 531
    :cond_0
    move-object v4, v2

    if-nez v4, :cond_1

    .line 532
    new-instance v4, Lcom/sun/xml/stream/XMLStreamException2;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const-string v6, "NamespaceURI cannot be null"

    invoke-direct {v5, v6}, Lcom/sun/xml/stream/XMLStreamException2;-><init>(Ljava/lang/String;)V

    throw v4

    .line 535
    :cond_1
    const/4 v4, 0x0

    move-object v3, v4

    .line 537
    .local v3, "qname":Ljava/lang/String;
    move-object v4, v1

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 538
    const-string v4, "xmlns"

    move-object v3, v4

    .line 543
    :goto_0
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/writers/XMLDOMWriterImpl;->currentNode:Lorg/w3c/dom/Node;

    check-cast v4, Lorg/w3c/dom/Element;

    const-string v5, "http://www.w3.org/2000/xmlns/"

    move-object v6, v3

    move-object v7, v2

    invoke-interface {v4, v5, v6, v7}, Lorg/w3c/dom/Element;->setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    return-void

    .line 540
    :cond_2
    move-object v4, v0

    const-string v5, "xmlns"

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Lcom/sun/xml/stream/writers/XMLDOMWriterImpl;->getQName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    goto :goto_0
.end method

.method public writeProcessingInstruction(Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 552
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/writers/XMLDOMWriterImpl;
    move-object v1, p1

    .local v1, "target":Ljava/lang/String;
    move-object v3, v1

    if-nez v3, :cond_0

    .line 553
    new-instance v3, Lcom/sun/xml/stream/XMLStreamException2;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "Target cannot be null"

    invoke-direct {v4, v5}, Lcom/sun/xml/stream/XMLStreamException2;-><init>(Ljava/lang/String;)V

    throw v3

    .line 555
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/writers/XMLDOMWriterImpl;->ownerDoc:Lorg/w3c/dom/Document;

    move-object v4, v1

    const-string v5, ""

    invoke-interface {v3, v4, v5}, Lorg/w3c/dom/Document;->createProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/ProcessingInstruction;

    move-result-object v3

    move-object v2, v3

    .line 556
    .local v2, "pi":Lorg/w3c/dom/ProcessingInstruction;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/writers/XMLDOMWriterImpl;->currentNode:Lorg/w3c/dom/Node;

    move-object v4, v2

    invoke-interface {v3, v4}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 557
    return-void
.end method

.method public writeProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 566
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/writers/XMLDOMWriterImpl;
    move-object v1, p1

    .local v1, "target":Ljava/lang/String;
    move-object v2, p2

    .local v2, "data":Ljava/lang/String;
    move-object v4, v1

    if-nez v4, :cond_0

    .line 567
    new-instance v4, Lcom/sun/xml/stream/XMLStreamException2;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const-string v6, "Target cannot be null"

    invoke-direct {v5, v6}, Lcom/sun/xml/stream/XMLStreamException2;-><init>(Ljava/lang/String;)V

    throw v4

    .line 569
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/writers/XMLDOMWriterImpl;->ownerDoc:Lorg/w3c/dom/Document;

    move-object v5, v1

    move-object v6, v2

    invoke-interface {v4, v5, v6}, Lorg/w3c/dom/Document;->createProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/ProcessingInstruction;

    move-result-object v4

    move-object v3, v4

    .line 570
    .local v3, "pi":Lorg/w3c/dom/ProcessingInstruction;
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/writers/XMLDOMWriterImpl;->currentNode:Lorg/w3c/dom/Node;

    move-object v5, v3

    invoke-interface {v4, v5}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v4

    .line 571
    return-void
.end method

.method public writeStartDocument()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 580
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/writers/XMLDOMWriterImpl;
    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Lcom/sun/xml/stream/writers/XMLDOMWriterImpl;->mXmlVersion:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_0

    .line 581
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/writers/XMLDOMWriterImpl;->mXmlVersion:Ljava/lang/reflect/Method;

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/writers/XMLDOMWriterImpl;->ownerDoc:Lorg/w3c/dom/Document;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    const-string v7, "1.0"

    aput-object v7, v5, v6

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 587
    .line 588
    :cond_0
    return-void

    .line 583
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 584
    .local v1, "iae":Ljava/lang/IllegalAccessException;
    new-instance v2, Lcom/sun/xml/stream/XMLStreamException2;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v1

    invoke-direct {v3, v4}, Lcom/sun/xml/stream/XMLStreamException2;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 585
    .end local v1    # "iae":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v2

    move-object v1, v2

    .line 586
    .local v1, "ite":Ljava/lang/reflect/InvocationTargetException;
    new-instance v2, Lcom/sun/xml/stream/XMLStreamException2;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v1

    invoke-direct {v3, v4}, Lcom/sun/xml/stream/XMLStreamException2;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public writeStartDocument(Ljava/lang/String;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 598
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/writers/XMLDOMWriterImpl;
    move-object v1, p1

    .local v1, "version":Ljava/lang/String;
    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Lcom/sun/xml/stream/writers/XMLDOMWriterImpl;->mXmlVersion:Ljava/lang/reflect/Method;

    if-eqz v3, :cond_0

    .line 599
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/writers/XMLDOMWriterImpl;->mXmlVersion:Ljava/lang/reflect/Method;

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/writers/XMLDOMWriterImpl;->ownerDoc:Lorg/w3c/dom/Document;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move-object v8, v1

    aput-object v8, v6, v7

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 605
    .line 606
    :cond_0
    return-void

    .line 601
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 602
    .local v2, "iae":Ljava/lang/IllegalAccessException;
    new-instance v3, Lcom/sun/xml/stream/XMLStreamException2;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    move-object v5, v2

    invoke-direct {v4, v5}, Lcom/sun/xml/stream/XMLStreamException2;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 603
    .end local v2    # "iae":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v3

    move-object v2, v3

    .line 604
    .local v2, "ite":Ljava/lang/reflect/InvocationTargetException;
    new-instance v3, Lcom/sun/xml/stream/XMLStreamException2;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    move-object v5, v2

    invoke-direct {v4, v5}, Lcom/sun/xml/stream/XMLStreamException2;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public writeStartDocument(Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 617
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/writers/XMLDOMWriterImpl;
    move-object v1, p1

    .local v1, "encoding":Ljava/lang/String;
    move-object v2, p2

    .local v2, "version":Ljava/lang/String;
    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Lcom/sun/xml/stream/writers/XMLDOMWriterImpl;->mXmlVersion:Ljava/lang/reflect/Method;

    if-eqz v4, :cond_0

    .line 618
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/writers/XMLDOMWriterImpl;->mXmlVersion:Ljava/lang/reflect/Method;

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/xml/stream/writers/XMLDOMWriterImpl;->ownerDoc:Lorg/w3c/dom/Document;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x0

    move-object v9, v2

    aput-object v9, v7, v8

    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    .line 624
    .line 626
    :cond_0
    return-void

    .line 620
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 621
    .local v3, "iae":Ljava/lang/IllegalAccessException;
    new-instance v4, Lcom/sun/xml/stream/XMLStreamException2;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v6, v3

    invoke-direct {v5, v6}, Lcom/sun/xml/stream/XMLStreamException2;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 622
    .end local v3    # "iae":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v4

    move-object v3, v4

    .line 623
    .local v3, "ite":Ljava/lang/reflect/InvocationTargetException;
    new-instance v4, Lcom/sun/xml/stream/XMLStreamException2;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v6, v3

    invoke-direct {v5, v6}, Lcom/sun/xml/stream/XMLStreamException2;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method

.method public writeStartElement(Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 634
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/writers/XMLDOMWriterImpl;
    move-object v1, p1

    .local v1, "localName":Ljava/lang/String;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/writers/XMLDOMWriterImpl;->ownerDoc:Lorg/w3c/dom/Document;

    if-eqz v3, :cond_0

    .line 635
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/writers/XMLDOMWriterImpl;->ownerDoc:Lorg/w3c/dom/Document;

    move-object v4, v1

    invoke-interface {v3, v4}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v3

    move-object v2, v3

    .line 636
    .local v2, "element":Lorg/w3c/dom/Element;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/writers/XMLDOMWriterImpl;->currentNode:Lorg/w3c/dom/Node;

    if-eqz v3, :cond_2

    .line 637
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/writers/XMLDOMWriterImpl;->currentNode:Lorg/w3c/dom/Node;

    move-object v4, v2

    invoke-interface {v3, v4}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 641
    :goto_0
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/sun/xml/stream/writers/XMLDOMWriterImpl;->currentNode:Lorg/w3c/dom/Node;

    .line 643
    .end local v2    # "element":Lorg/w3c/dom/Element;
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/writers/XMLDOMWriterImpl;->needContextPop:[Z

    move-object v4, v0

    iget v4, v4, Lcom/sun/xml/stream/writers/XMLDOMWriterImpl;->depth:I

    aget-boolean v3, v3, v4

    if-eqz v3, :cond_1

    .line 644
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/writers/XMLDOMWriterImpl;->namespaceContext:Lorg/xml/sax/helpers/NamespaceSupport;

    invoke-virtual {v3}, Lorg/xml/sax/helpers/NamespaceSupport;->pushContext()V

    .line 646
    :cond_1
    move-object v3, v0

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    iget v4, v4, Lcom/sun/xml/stream/writers/XMLDOMWriterImpl;->depth:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/sun/xml/stream/writers/XMLDOMWriterImpl;->depth:I

    .line 647
    return-void

    .line 639
    .restart local v2    # "element":Lorg/w3c/dom/Element;
    :cond_2
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/writers/XMLDOMWriterImpl;->ownerDoc:Lorg/w3c/dom/Document;

    move-object v4, v2

    invoke-interface {v3, v4}, Lorg/w3c/dom/Document;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v3

    goto :goto_0
.end method

.method public writeStartElement(Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 656
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/writers/XMLDOMWriterImpl;
    move-object v1, p1

    .local v1, "namespaceURI":Ljava/lang/String;
    move-object v2, p2

    .local v2, "localName":Ljava/lang/String;
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/writers/XMLDOMWriterImpl;->ownerDoc:Lorg/w3c/dom/Document;

    if-eqz v6, :cond_4

    .line 657
    const/4 v6, 0x0

    move-object v3, v6

    .line 658
    .local v3, "qualifiedName":Ljava/lang/String;
    const/4 v6, 0x0

    move-object v4, v6

    .line 660
    .local v4, "prefix":Ljava/lang/String;
    move-object v6, v1

    if-nez v6, :cond_0

    .line 661
    new-instance v6, Lcom/sun/xml/stream/XMLStreamException2;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const-string v8, "NamespaceURI cannot be null"

    invoke-direct {v7, v8}, Lcom/sun/xml/stream/XMLStreamException2;-><init>(Ljava/lang/String;)V

    throw v6

    .line 663
    :cond_0
    move-object v6, v2

    if-nez v6, :cond_1

    .line 664
    new-instance v6, Lcom/sun/xml/stream/XMLStreamException2;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const-string v8, "Local name cannot be null"

    invoke-direct {v7, v8}, Lcom/sun/xml/stream/XMLStreamException2;-><init>(Ljava/lang/String;)V

    throw v6

    .line 667
    :cond_1
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/writers/XMLDOMWriterImpl;->namespaceContext:Lorg/xml/sax/helpers/NamespaceSupport;

    if-eqz v6, :cond_2

    .line 668
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/writers/XMLDOMWriterImpl;->namespaceContext:Lorg/xml/sax/helpers/NamespaceSupport;

    move-object v7, v1

    invoke-virtual {v6, v7}, Lorg/xml/sax/helpers/NamespaceSupport;->getPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v4, v6

    .line 670
    :cond_2
    move-object v6, v4

    if-nez v6, :cond_3

    .line 671
    new-instance v6, Lcom/sun/xml/stream/XMLStreamException2;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v10, v8

    move-object v8, v10

    move-object v9, v10

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Namespace URI "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "is not bound to any prefix"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/sun/xml/stream/XMLStreamException2;-><init>(Ljava/lang/String;)V

    throw v6

    .line 674
    :cond_3
    const-string v6, ""

    move-object v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 675
    move-object v6, v2

    move-object v3, v6

    .line 680
    :goto_0
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/writers/XMLDOMWriterImpl;->ownerDoc:Lorg/w3c/dom/Document;

    move-object v7, v1

    move-object v8, v3

    invoke-interface {v6, v7, v8}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v6

    move-object v5, v6

    .line 682
    .local v5, "element":Lorg/w3c/dom/Element;
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/writers/XMLDOMWriterImpl;->currentNode:Lorg/w3c/dom/Node;

    if-eqz v6, :cond_7

    .line 683
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/writers/XMLDOMWriterImpl;->currentNode:Lorg/w3c/dom/Node;

    move-object v7, v5

    invoke-interface {v6, v7}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v6

    .line 687
    :goto_1
    move-object v6, v0

    move-object v7, v5

    iput-object v7, v6, Lcom/sun/xml/stream/writers/XMLDOMWriterImpl;->currentNode:Lorg/w3c/dom/Node;

    .line 689
    .end local v3    # "qualifiedName":Ljava/lang/String;
    .end local v4    # "prefix":Ljava/lang/String;
    .end local v5    # "element":Lorg/w3c/dom/Element;
    :cond_4
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/writers/XMLDOMWriterImpl;->needContextPop:[Z

    move-object v7, v0

    iget v7, v7, Lcom/sun/xml/stream/writers/XMLDOMWriterImpl;->depth:I

    aget-boolean v6, v6, v7

    if-eqz v6, :cond_5

    .line 690
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/writers/XMLDOMWriterImpl;->namespaceContext:Lorg/xml/sax/helpers/NamespaceSupport;

    invoke-virtual {v6}, Lorg/xml/sax/helpers/NamespaceSupport;->pushContext()V

    .line 692
    :cond_5
    move-object v6, v0

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    iget v7, v7, Lcom/sun/xml/stream/writers/XMLDOMWriterImpl;->depth:I

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Lcom/sun/xml/stream/writers/XMLDOMWriterImpl;->depth:I

    .line 693
    return-void

    .line 677
    .restart local v3    # "qualifiedName":Ljava/lang/String;
    .restart local v4    # "prefix":Ljava/lang/String;
    :cond_6
    move-object v6, v0

    move-object v7, v4

    move-object v8, v2

    invoke-direct {v6, v7, v8}, Lcom/sun/xml/stream/writers/XMLDOMWriterImpl;->getQName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v3, v6

    goto :goto_0

    .line 685
    .restart local v5    # "element":Lorg/w3c/dom/Element;
    :cond_7
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/writers/XMLDOMWriterImpl;->ownerDoc:Lorg/w3c/dom/Document;

    move-object v7, v5

    invoke-interface {v6, v7}, Lorg/w3c/dom/Document;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v6

    goto :goto_1
.end method

.method public writeStartElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 704
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/writers/XMLDOMWriterImpl;
    move-object v1, p1

    .local v1, "prefix":Ljava/lang/String;
    move-object v2, p2

    .local v2, "localName":Ljava/lang/String;
    move-object v3, p3

    .local v3, "namespaceURI":Ljava/lang/String;
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/writers/XMLDOMWriterImpl;->ownerDoc:Lorg/w3c/dom/Document;

    if-eqz v6, :cond_4

    .line 705
    const/4 v6, 0x0

    move-object v4, v6

    .line 706
    .local v4, "qname":Ljava/lang/String;
    move-object v6, v3

    if-nez v6, :cond_0

    .line 707
    new-instance v6, Lcom/sun/xml/stream/XMLStreamException2;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    const-string v8, "NamespaceURI cannot be null"

    invoke-direct {v7, v8}, Lcom/sun/xml/stream/XMLStreamException2;-><init>(Ljava/lang/String;)V

    throw v6

    .line 709
    :cond_0
    move-object v6, v2

    if-nez v6, :cond_1

    .line 710
    new-instance v6, Lcom/sun/xml/stream/XMLStreamException2;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    const-string v8, "Local name cannot be null"

    invoke-direct {v7, v8}, Lcom/sun/xml/stream/XMLStreamException2;-><init>(Ljava/lang/String;)V

    throw v6

    .line 712
    :cond_1
    move-object v6, v1

    if-nez v6, :cond_2

    .line 713
    new-instance v6, Lcom/sun/xml/stream/XMLStreamException2;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    const-string v8, "Prefix cannot be null"

    invoke-direct {v7, v8}, Lcom/sun/xml/stream/XMLStreamException2;-><init>(Ljava/lang/String;)V

    throw v6

    .line 716
    :cond_2
    move-object v6, v1

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 717
    move-object v6, v2

    move-object v4, v6

    .line 722
    :goto_0
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/writers/XMLDOMWriterImpl;->ownerDoc:Lorg/w3c/dom/Document;

    move-object v7, v3

    move-object v8, v4

    invoke-interface {v6, v7, v8}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v6

    move-object v5, v6

    .line 724
    .local v5, "el":Lorg/w3c/dom/Element;
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/writers/XMLDOMWriterImpl;->currentNode:Lorg/w3c/dom/Node;

    if-eqz v6, :cond_6

    .line 725
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/writers/XMLDOMWriterImpl;->currentNode:Lorg/w3c/dom/Node;

    move-object v7, v5

    invoke-interface {v6, v7}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v6

    .line 729
    :goto_1
    move-object v6, v0

    move-object v7, v5

    iput-object v7, v6, Lcom/sun/xml/stream/writers/XMLDOMWriterImpl;->currentNode:Lorg/w3c/dom/Node;

    .line 730
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/writers/XMLDOMWriterImpl;->needContextPop:[Z

    move-object v7, v0

    iget v7, v7, Lcom/sun/xml/stream/writers/XMLDOMWriterImpl;->depth:I

    aget-boolean v6, v6, v7

    if-eqz v6, :cond_3

    .line 731
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/writers/XMLDOMWriterImpl;->namespaceContext:Lorg/xml/sax/helpers/NamespaceSupport;

    invoke-virtual {v6}, Lorg/xml/sax/helpers/NamespaceSupport;->pushContext()V

    .line 733
    :cond_3
    move-object v6, v0

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    iget v7, v7, Lcom/sun/xml/stream/writers/XMLDOMWriterImpl;->depth:I

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Lcom/sun/xml/stream/writers/XMLDOMWriterImpl;->depth:I

    .line 736
    .end local v4    # "qname":Ljava/lang/String;
    .end local v5    # "el":Lorg/w3c/dom/Element;
    :cond_4
    return-void

    .line 719
    .restart local v4    # "qname":Ljava/lang/String;
    :cond_5
    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    invoke-direct {v6, v7, v8}, Lcom/sun/xml/stream/writers/XMLDOMWriterImpl;->getQName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v4, v6

    goto :goto_0

    .line 727
    .restart local v5    # "el":Lorg/w3c/dom/Element;
    :cond_6
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/writers/XMLDOMWriterImpl;->ownerDoc:Lorg/w3c/dom/Document;

    move-object v7, v5

    invoke-interface {v6, v7}, Lorg/w3c/dom/Document;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v6

    goto :goto_1
.end method
