.class public Lcom/sun/xml/stream/events/ZephyrEventFactory;
.super Ljavax/xml/stream/XMLEventFactory;
.source "ZephyrEventFactory.java"


# instance fields
.field location:Ljavax/xml/stream/Location;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 59
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/events/ZephyrEventFactory;
    move-object v1, v0

    invoke-direct {v1}, Ljavax/xml/stream/XMLEventFactory;-><init>()V

    .line 57
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sun/xml/stream/events/ZephyrEventFactory;->location:Ljavax/xml/stream/Location;

    .line 60
    return-void
.end method


# virtual methods
.method public createAttribute(Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/stream/events/Attribute;
    .locals 9

    .prologue
    .line 63
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/events/ZephyrEventFactory;
    move-object v1, p1

    .local v1, "localName":Ljava/lang/String;
    move-object v2, p2

    .local v2, "value":Ljava/lang/String;
    new-instance v4, Lcom/sun/xml/stream/events/AttributeImpl;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v1

    move-object v7, v2

    invoke-direct {v5, v6, v7}, Lcom/sun/xml/stream/events/AttributeImpl;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v4

    .line 64
    .local v3, "attr":Lcom/sun/xml/stream/events/AttributeImpl;
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/events/ZephyrEventFactory;->location:Ljavax/xml/stream/Location;

    if-eqz v4, :cond_0

    move-object v4, v3

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/xml/stream/events/ZephyrEventFactory;->location:Ljavax/xml/stream/Location;

    invoke-virtual {v4, v5}, Lcom/sun/xml/stream/events/AttributeImpl;->setLocation(Ljavax/xml/stream/Location;)V

    .line 65
    :cond_0
    move-object v4, v3

    move-object v0, v4

    .end local v0    # "this":Lcom/sun/xml/stream/events/ZephyrEventFactory;
    return-object v0
.end method

.method public createAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/stream/events/Attribute;
    .locals 14

    .prologue
    .line 73
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/events/ZephyrEventFactory;
    move-object v1, p1

    .local v1, "prefix":Ljava/lang/String;
    move-object/from16 v2, p2

    .local v2, "namespaceURI":Ljava/lang/String;
    move-object/from16 v3, p3

    .local v3, "localName":Ljava/lang/String;
    move-object/from16 v4, p4

    .local v4, "value":Ljava/lang/String;
    new-instance v6, Lcom/sun/xml/stream/events/AttributeImpl;

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    move-object v8, v1

    move-object v9, v2

    move-object v10, v3

    move-object v11, v4

    const/4 v12, 0x0

    invoke-direct/range {v7 .. v12}, Lcom/sun/xml/stream/events/AttributeImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, v6

    .line 74
    .local v5, "attr":Lcom/sun/xml/stream/events/AttributeImpl;
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/events/ZephyrEventFactory;->location:Ljavax/xml/stream/Location;

    if-eqz v6, :cond_0

    move-object v6, v5

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/xml/stream/events/ZephyrEventFactory;->location:Ljavax/xml/stream/Location;

    invoke-virtual {v6, v7}, Lcom/sun/xml/stream/events/AttributeImpl;->setLocation(Ljavax/xml/stream/Location;)V

    .line 75
    :cond_0
    move-object v6, v5

    move-object v0, v6

    .end local v0    # "this":Lcom/sun/xml/stream/events/ZephyrEventFactory;
    return-object v0
.end method

.method public createAttribute(Ljavax/xml/namespace/QName;Ljava/lang/String;)Ljavax/xml/stream/events/Attribute;
    .locals 8

    .prologue
    .line 69
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/events/ZephyrEventFactory;
    move-object v1, p1

    .local v1, "name":Ljavax/xml/namespace/QName;
    move-object v2, p2

    .local v2, "value":Ljava/lang/String;
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Ljavax/xml/namespace/QName;->getPrefix()Ljava/lang/String;

    move-result-object v4

    move-object v5, v1

    invoke-virtual {v5}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v6}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v6

    move-object v7, v2

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/sun/xml/stream/events/ZephyrEventFactory;->createAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/stream/events/Attribute;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/xml/stream/events/ZephyrEventFactory;
    return-object v0
.end method

.method public createCData(Ljava/lang/String;)Ljavax/xml/stream/events/Characters;
    .locals 8

    .prologue
    .line 81
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/events/ZephyrEventFactory;
    move-object v1, p1

    .local v1, "content":Ljava/lang/String;
    new-instance v3, Lcom/sun/xml/stream/events/CharacterEvent;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v1

    const/4 v6, 0x1

    invoke-direct {v4, v5, v6}, Lcom/sun/xml/stream/events/CharacterEvent;-><init>(Ljava/lang/String;Z)V

    move-object v2, v3

    .line 82
    .local v2, "charEvent":Lcom/sun/xml/stream/events/CharacterEvent;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/events/ZephyrEventFactory;->location:Ljavax/xml/stream/Location;

    if-eqz v3, :cond_0

    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/events/ZephyrEventFactory;->location:Ljavax/xml/stream/Location;

    invoke-virtual {v3, v4}, Lcom/sun/xml/stream/events/CharacterEvent;->setLocation(Ljavax/xml/stream/Location;)V

    .line 83
    :cond_0
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/xml/stream/events/ZephyrEventFactory;
    return-object v0
.end method

.method public createCharacters(Ljava/lang/String;)Ljavax/xml/stream/events/Characters;
    .locals 7

    .prologue
    .line 87
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/events/ZephyrEventFactory;
    move-object v1, p1

    .local v1, "content":Ljava/lang/String;
    new-instance v3, Lcom/sun/xml/stream/events/CharacterEvent;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Lcom/sun/xml/stream/events/CharacterEvent;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    .line 88
    .local v2, "charEvent":Lcom/sun/xml/stream/events/CharacterEvent;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/events/ZephyrEventFactory;->location:Ljavax/xml/stream/Location;

    if-eqz v3, :cond_0

    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/events/ZephyrEventFactory;->location:Ljavax/xml/stream/Location;

    invoke-virtual {v3, v4}, Lcom/sun/xml/stream/events/CharacterEvent;->setLocation(Ljavax/xml/stream/Location;)V

    .line 89
    :cond_0
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/xml/stream/events/ZephyrEventFactory;
    return-object v0
.end method

.method public createComment(Ljava/lang/String;)Ljavax/xml/stream/events/Comment;
    .locals 7

    .prologue
    .line 93
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/events/ZephyrEventFactory;
    move-object v1, p1

    .local v1, "text":Ljava/lang/String;
    new-instance v3, Lcom/sun/xml/stream/events/CommentEvent;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Lcom/sun/xml/stream/events/CommentEvent;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    .line 94
    .local v2, "charEvent":Lcom/sun/xml/stream/events/CommentEvent;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/events/ZephyrEventFactory;->location:Ljavax/xml/stream/Location;

    if-eqz v3, :cond_0

    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/events/ZephyrEventFactory;->location:Ljavax/xml/stream/Location;

    invoke-virtual {v3, v4}, Lcom/sun/xml/stream/events/CommentEvent;->setLocation(Ljavax/xml/stream/Location;)V

    .line 95
    :cond_0
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/xml/stream/events/ZephyrEventFactory;
    return-object v0
.end method

.method public createDTD(Ljava/lang/String;)Ljavax/xml/stream/events/DTD;
    .locals 7

    .prologue
    .line 99
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/events/ZephyrEventFactory;
    move-object v1, p1

    .local v1, "dtd":Ljava/lang/String;
    new-instance v3, Lcom/sun/xml/stream/events/DTDEvent;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Lcom/sun/xml/stream/events/DTDEvent;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    .line 100
    .local v2, "dtdEvent":Lcom/sun/xml/stream/events/DTDEvent;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/events/ZephyrEventFactory;->location:Ljavax/xml/stream/Location;

    if-eqz v3, :cond_0

    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/events/ZephyrEventFactory;->location:Ljavax/xml/stream/Location;

    invoke-virtual {v3, v4}, Lcom/sun/xml/stream/events/DTDEvent;->setLocation(Ljavax/xml/stream/Location;)V

    .line 101
    :cond_0
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/xml/stream/events/ZephyrEventFactory;
    return-object v0
.end method

.method public createEndDocument()Ljavax/xml/stream/events/EndDocument;
    .locals 5

    .prologue
    .line 105
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/events/ZephyrEventFactory;
    new-instance v2, Lcom/sun/xml/stream/events/EndDocumentEvent;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lcom/sun/xml/stream/events/EndDocumentEvent;-><init>()V

    move-object v1, v2

    .line 106
    .local v1, "event":Lcom/sun/xml/stream/events/EndDocumentEvent;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/events/ZephyrEventFactory;->location:Ljavax/xml/stream/Location;

    if-eqz v2, :cond_0

    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/events/ZephyrEventFactory;->location:Ljavax/xml/stream/Location;

    invoke-virtual {v2, v3}, Lcom/sun/xml/stream/events/EndDocumentEvent;->setLocation(Ljavax/xml/stream/Location;)V

    .line 107
    :cond_0
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/xml/stream/events/ZephyrEventFactory;
    return-object v0
.end method

.method public createEndElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/stream/events/EndElement;
    .locals 11

    .prologue
    .line 115
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/events/ZephyrEventFactory;
    move-object v1, p1

    .local v1, "prefix":Ljava/lang/String;
    move-object v2, p2

    .local v2, "namespaceUri":Ljava/lang/String;
    move-object v3, p3

    .local v3, "localName":Ljava/lang/String;
    new-instance v5, Lcom/sun/xml/stream/events/EndElementEvent;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v1

    move-object v8, v2

    move-object v9, v3

    invoke-direct {v6, v7, v8, v9}, Lcom/sun/xml/stream/events/EndElementEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v5

    .line 116
    .local v4, "event":Lcom/sun/xml/stream/events/EndElementEvent;
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/xml/stream/events/ZephyrEventFactory;->location:Ljavax/xml/stream/Location;

    if-eqz v5, :cond_0

    move-object v5, v4

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/events/ZephyrEventFactory;->location:Ljavax/xml/stream/Location;

    invoke-virtual {v5, v6}, Lcom/sun/xml/stream/events/EndElementEvent;->setLocation(Ljavax/xml/stream/Location;)V

    .line 117
    :cond_0
    move-object v5, v4

    move-object v0, v5

    .end local v0    # "this":Lcom/sun/xml/stream/events/ZephyrEventFactory;
    return-object v0
.end method

.method public createEndElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Iterator;)Ljavax/xml/stream/events/EndElement;
    .locals 12

    .prologue
    .line 122
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/events/ZephyrEventFactory;
    move-object v1, p1

    .local v1, "prefix":Ljava/lang/String;
    move-object v2, p2

    .local v2, "namespaceUri":Ljava/lang/String;
    move-object v3, p3

    .local v3, "localName":Ljava/lang/String;
    move-object/from16 v4, p4

    .local v4, "namespaces":Ljava/util/Iterator;
    new-instance v6, Lcom/sun/xml/stream/events/EndElementEvent;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-object v8, v1

    move-object v9, v2

    move-object v10, v3

    invoke-direct {v7, v8, v9, v10}, Lcom/sun/xml/stream/events/EndElementEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, v6

    .line 123
    .local v5, "event":Lcom/sun/xml/stream/events/EndElementEvent;
    move-object v6, v4

    if-eqz v6, :cond_0

    .line 124
    :goto_0
    move-object v6, v4

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 125
    move-object v6, v5

    move-object v7, v4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljavax/xml/stream/events/Namespace;

    invoke-virtual {v6, v7}, Lcom/sun/xml/stream/events/EndElementEvent;->addNamespace(Ljavax/xml/stream/events/Namespace;)V

    goto :goto_0

    .line 127
    :cond_0
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/events/ZephyrEventFactory;->location:Ljavax/xml/stream/Location;

    if-eqz v6, :cond_1

    move-object v6, v5

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/xml/stream/events/ZephyrEventFactory;->location:Ljavax/xml/stream/Location;

    invoke-virtual {v6, v7}, Lcom/sun/xml/stream/events/EndElementEvent;->setLocation(Ljavax/xml/stream/Location;)V

    .line 128
    :cond_1
    move-object v6, v5

    move-object v0, v6

    .end local v0    # "this":Lcom/sun/xml/stream/events/ZephyrEventFactory;
    return-object v0
.end method

.method public createEndElement(Ljavax/xml/namespace/QName;Ljava/util/Iterator;)Ljavax/xml/stream/events/EndElement;
    .locals 7

    .prologue
    .line 111
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/events/ZephyrEventFactory;
    move-object v1, p1

    .local v1, "name":Ljavax/xml/namespace/QName;
    move-object v2, p2

    .local v2, "namespaces":Ljava/util/Iterator;
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Ljavax/xml/namespace/QName;->getPrefix()Ljava/lang/String;

    move-result-object v4

    move-object v5, v1

    invoke-virtual {v5}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v6}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/sun/xml/stream/events/ZephyrEventFactory;->createEndElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/stream/events/EndElement;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/xml/stream/events/ZephyrEventFactory;
    return-object v0
.end method

.method public createEntityReference(Ljava/lang/String;Ljavax/xml/stream/events/EntityDeclaration;)Ljavax/xml/stream/events/EntityReference;
    .locals 9

    .prologue
    .line 132
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/events/ZephyrEventFactory;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, p2

    .local v2, "entityDeclaration":Ljavax/xml/stream/events/EntityDeclaration;
    new-instance v4, Lcom/sun/xml/stream/events/EntityReferenceEvent;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v1

    move-object v7, v2

    invoke-direct {v5, v6, v7}, Lcom/sun/xml/stream/events/EntityReferenceEvent;-><init>(Ljava/lang/String;Ljavax/xml/stream/events/EntityDeclaration;)V

    move-object v3, v4

    .line 133
    .local v3, "event":Lcom/sun/xml/stream/events/EntityReferenceEvent;
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/events/ZephyrEventFactory;->location:Ljavax/xml/stream/Location;

    if-eqz v4, :cond_0

    move-object v4, v3

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/xml/stream/events/ZephyrEventFactory;->location:Ljavax/xml/stream/Location;

    invoke-virtual {v4, v5}, Lcom/sun/xml/stream/events/EntityReferenceEvent;->setLocation(Ljavax/xml/stream/Location;)V

    .line 134
    :cond_0
    move-object v4, v3

    move-object v0, v4

    .end local v0    # "this":Lcom/sun/xml/stream/events/ZephyrEventFactory;
    return-object v0
.end method

.method public createIgnorableSpace(Ljava/lang/String;)Ljavax/xml/stream/events/Characters;
    .locals 9

    .prologue
    .line 138
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/events/ZephyrEventFactory;
    move-object v1, p1

    .local v1, "content":Ljava/lang/String;
    new-instance v3, Lcom/sun/xml/stream/events/CharacterEvent;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v1

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-direct {v4, v5, v6, v7}, Lcom/sun/xml/stream/events/CharacterEvent;-><init>(Ljava/lang/String;ZZ)V

    move-object v2, v3

    .line 139
    .local v2, "event":Lcom/sun/xml/stream/events/CharacterEvent;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/events/ZephyrEventFactory;->location:Ljavax/xml/stream/Location;

    if-eqz v3, :cond_0

    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/events/ZephyrEventFactory;->location:Ljavax/xml/stream/Location;

    invoke-virtual {v3, v4}, Lcom/sun/xml/stream/events/CharacterEvent;->setLocation(Ljavax/xml/stream/Location;)V

    .line 140
    :cond_0
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/xml/stream/events/ZephyrEventFactory;
    return-object v0
.end method

.method public createNamespace(Ljava/lang/String;)Ljavax/xml/stream/events/Namespace;
    .locals 7

    .prologue
    .line 144
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/events/ZephyrEventFactory;
    move-object v1, p1

    .local v1, "namespaceURI":Ljava/lang/String;
    new-instance v3, Lcom/sun/xml/stream/events/NamespaceImpl;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Lcom/sun/xml/stream/events/NamespaceImpl;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    .line 145
    .local v2, "event":Lcom/sun/xml/stream/events/NamespaceImpl;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/events/ZephyrEventFactory;->location:Ljavax/xml/stream/Location;

    if-eqz v3, :cond_0

    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/events/ZephyrEventFactory;->location:Ljavax/xml/stream/Location;

    invoke-virtual {v3, v4}, Lcom/sun/xml/stream/events/NamespaceImpl;->setLocation(Ljavax/xml/stream/Location;)V

    .line 146
    :cond_0
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/xml/stream/events/ZephyrEventFactory;
    return-object v0
.end method

.method public createNamespace(Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/stream/events/Namespace;
    .locals 9

    .prologue
    .line 150
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/events/ZephyrEventFactory;
    move-object v1, p1

    .local v1, "prefix":Ljava/lang/String;
    move-object v2, p2

    .local v2, "namespaceURI":Ljava/lang/String;
    new-instance v4, Lcom/sun/xml/stream/events/NamespaceImpl;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v1

    move-object v7, v2

    invoke-direct {v5, v6, v7}, Lcom/sun/xml/stream/events/NamespaceImpl;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v4

    .line 151
    .local v3, "event":Lcom/sun/xml/stream/events/NamespaceImpl;
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/events/ZephyrEventFactory;->location:Ljavax/xml/stream/Location;

    if-eqz v4, :cond_0

    move-object v4, v3

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/xml/stream/events/ZephyrEventFactory;->location:Ljavax/xml/stream/Location;

    invoke-virtual {v4, v5}, Lcom/sun/xml/stream/events/NamespaceImpl;->setLocation(Ljavax/xml/stream/Location;)V

    .line 152
    :cond_0
    move-object v4, v3

    move-object v0, v4

    .end local v0    # "this":Lcom/sun/xml/stream/events/ZephyrEventFactory;
    return-object v0
.end method

.method public createProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/stream/events/ProcessingInstruction;
    .locals 9

    .prologue
    .line 156
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/events/ZephyrEventFactory;
    move-object v1, p1

    .local v1, "target":Ljava/lang/String;
    move-object v2, p2

    .local v2, "data":Ljava/lang/String;
    new-instance v4, Lcom/sun/xml/stream/events/ProcessingInstructionEvent;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v1

    move-object v7, v2

    invoke-direct {v5, v6, v7}, Lcom/sun/xml/stream/events/ProcessingInstructionEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v4

    .line 157
    .local v3, "event":Lcom/sun/xml/stream/events/ProcessingInstructionEvent;
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/events/ZephyrEventFactory;->location:Ljavax/xml/stream/Location;

    if-eqz v4, :cond_0

    move-object v4, v3

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/xml/stream/events/ZephyrEventFactory;->location:Ljavax/xml/stream/Location;

    invoke-virtual {v4, v5}, Lcom/sun/xml/stream/events/ProcessingInstructionEvent;->setLocation(Ljavax/xml/stream/Location;)V

    .line 158
    :cond_0
    move-object v4, v3

    move-object v0, v4

    .end local v0    # "this":Lcom/sun/xml/stream/events/ZephyrEventFactory;
    return-object v0
.end method

.method public createSpace(Ljava/lang/String;)Ljavax/xml/stream/events/Characters;
    .locals 7

    .prologue
    .line 162
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/events/ZephyrEventFactory;
    move-object v1, p1

    .local v1, "content":Ljava/lang/String;
    new-instance v3, Lcom/sun/xml/stream/events/CharacterEvent;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Lcom/sun/xml/stream/events/CharacterEvent;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    .line 163
    .local v2, "event":Lcom/sun/xml/stream/events/CharacterEvent;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/events/ZephyrEventFactory;->location:Ljavax/xml/stream/Location;

    if-eqz v3, :cond_0

    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/events/ZephyrEventFactory;->location:Ljavax/xml/stream/Location;

    invoke-virtual {v3, v4}, Lcom/sun/xml/stream/events/CharacterEvent;->setLocation(Ljavax/xml/stream/Location;)V

    .line 164
    :cond_0
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/xml/stream/events/ZephyrEventFactory;
    return-object v0
.end method

.method public createStartDocument()Ljavax/xml/stream/events/StartDocument;
    .locals 5

    .prologue
    .line 168
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/events/ZephyrEventFactory;
    new-instance v2, Lcom/sun/xml/stream/events/StartDocumentEvent;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lcom/sun/xml/stream/events/StartDocumentEvent;-><init>()V

    move-object v1, v2

    .line 169
    .local v1, "event":Lcom/sun/xml/stream/events/StartDocumentEvent;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/events/ZephyrEventFactory;->location:Ljavax/xml/stream/Location;

    if-eqz v2, :cond_0

    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/events/ZephyrEventFactory;->location:Ljavax/xml/stream/Location;

    invoke-virtual {v2, v3}, Lcom/sun/xml/stream/events/StartDocumentEvent;->setLocation(Ljavax/xml/stream/Location;)V

    .line 170
    :cond_0
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/xml/stream/events/ZephyrEventFactory;
    return-object v0
.end method

.method public createStartDocument(Ljava/lang/String;)Ljavax/xml/stream/events/StartDocument;
    .locals 7

    .prologue
    .line 174
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/events/ZephyrEventFactory;
    move-object v1, p1

    .local v1, "encoding":Ljava/lang/String;
    new-instance v3, Lcom/sun/xml/stream/events/StartDocumentEvent;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Lcom/sun/xml/stream/events/StartDocumentEvent;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    .line 175
    .local v2, "event":Lcom/sun/xml/stream/events/StartDocumentEvent;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/events/ZephyrEventFactory;->location:Ljavax/xml/stream/Location;

    if-eqz v3, :cond_0

    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/events/ZephyrEventFactory;->location:Ljavax/xml/stream/Location;

    invoke-virtual {v3, v4}, Lcom/sun/xml/stream/events/StartDocumentEvent;->setLocation(Ljavax/xml/stream/Location;)V

    .line 176
    :cond_0
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/xml/stream/events/ZephyrEventFactory;
    return-object v0
.end method

.method public createStartDocument(Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/stream/events/StartDocument;
    .locals 9

    .prologue
    .line 180
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/events/ZephyrEventFactory;
    move-object v1, p1

    .local v1, "encoding":Ljava/lang/String;
    move-object v2, p2

    .local v2, "version":Ljava/lang/String;
    new-instance v4, Lcom/sun/xml/stream/events/StartDocumentEvent;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v1

    move-object v7, v2

    invoke-direct {v5, v6, v7}, Lcom/sun/xml/stream/events/StartDocumentEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v4

    .line 181
    .local v3, "event":Lcom/sun/xml/stream/events/StartDocumentEvent;
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/events/ZephyrEventFactory;->location:Ljavax/xml/stream/Location;

    if-eqz v4, :cond_0

    move-object v4, v3

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/xml/stream/events/ZephyrEventFactory;->location:Ljavax/xml/stream/Location;

    invoke-virtual {v4, v5}, Lcom/sun/xml/stream/events/StartDocumentEvent;->setLocation(Ljavax/xml/stream/Location;)V

    .line 182
    :cond_0
    move-object v4, v3

    move-object v0, v4

    .end local v0    # "this":Lcom/sun/xml/stream/events/ZephyrEventFactory;
    return-object v0
.end method

.method public createStartDocument(Ljava/lang/String;Ljava/lang/String;Z)Ljavax/xml/stream/events/StartDocument;
    .locals 11

    .prologue
    .line 186
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/events/ZephyrEventFactory;
    move-object v1, p1

    .local v1, "encoding":Ljava/lang/String;
    move-object v2, p2

    .local v2, "version":Ljava/lang/String;
    move v3, p3

    .local v3, "standalone":Z
    new-instance v5, Lcom/sun/xml/stream/events/StartDocumentEvent;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v1

    move-object v8, v2

    move v9, v3

    invoke-direct {v6, v7, v8, v9}, Lcom/sun/xml/stream/events/StartDocumentEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    move-object v4, v5

    .line 187
    .local v4, "event":Lcom/sun/xml/stream/events/StartDocumentEvent;
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/xml/stream/events/ZephyrEventFactory;->location:Ljavax/xml/stream/Location;

    if-eqz v5, :cond_0

    move-object v5, v4

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/events/ZephyrEventFactory;->location:Ljavax/xml/stream/Location;

    invoke-virtual {v5, v6}, Lcom/sun/xml/stream/events/StartDocumentEvent;->setLocation(Ljavax/xml/stream/Location;)V

    .line 188
    :cond_0
    move-object v5, v4

    move-object v0, v5

    .end local v0    # "this":Lcom/sun/xml/stream/events/ZephyrEventFactory;
    return-object v0
.end method

.method public createStartElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/stream/events/StartElement;
    .locals 11

    .prologue
    .line 196
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/events/ZephyrEventFactory;
    move-object v1, p1

    .local v1, "prefix":Ljava/lang/String;
    move-object v2, p2

    .local v2, "namespaceUri":Ljava/lang/String;
    move-object v3, p3

    .local v3, "localName":Ljava/lang/String;
    new-instance v5, Lcom/sun/xml/stream/events/StartElementEvent;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v1

    move-object v8, v2

    move-object v9, v3

    invoke-direct {v6, v7, v8, v9}, Lcom/sun/xml/stream/events/StartElementEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v5

    .line 197
    .local v4, "event":Lcom/sun/xml/stream/events/StartElementEvent;
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/xml/stream/events/ZephyrEventFactory;->location:Ljavax/xml/stream/Location;

    if-eqz v5, :cond_0

    move-object v5, v4

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/xml/stream/events/ZephyrEventFactory;->location:Ljavax/xml/stream/Location;

    invoke-virtual {v5, v6}, Lcom/sun/xml/stream/events/StartElementEvent;->setLocation(Ljavax/xml/stream/Location;)V

    .line 198
    :cond_0
    move-object v5, v4

    move-object v0, v5

    .end local v0    # "this":Lcom/sun/xml/stream/events/ZephyrEventFactory;
    return-object v0
.end method

.method public createStartElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Iterator;Ljava/util/Iterator;)Ljavax/xml/stream/events/StartElement;
    .locals 13

    .prologue
    .line 202
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/events/ZephyrEventFactory;
    move-object v1, p1

    .local v1, "prefix":Ljava/lang/String;
    move-object v2, p2

    .local v2, "namespaceUri":Ljava/lang/String;
    move-object/from16 v3, p3

    .local v3, "localName":Ljava/lang/String;
    move-object/from16 v4, p4

    .local v4, "attributes":Ljava/util/Iterator;
    move-object/from16 v5, p5

    .local v5, "namespaces":Ljava/util/Iterator;
    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    move-object v9, v3

    move-object v10, v4

    move-object v11, v5

    const/4 v12, 0x0

    invoke-virtual/range {v6 .. v12}, Lcom/sun/xml/stream/events/ZephyrEventFactory;->createStartElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Iterator;Ljava/util/Iterator;Ljavax/xml/namespace/NamespaceContext;)Ljavax/xml/stream/events/StartElement;

    move-result-object v6

    move-object v0, v6

    .end local v0    # "this":Lcom/sun/xml/stream/events/ZephyrEventFactory;
    return-object v0
.end method

.method public createStartElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Iterator;Ljava/util/Iterator;Ljavax/xml/namespace/NamespaceContext;)Ljavax/xml/stream/events/StartElement;
    .locals 14

    .prologue
    .line 206
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/events/ZephyrEventFactory;
    move-object v1, p1

    .local v1, "prefix":Ljava/lang/String;
    move-object/from16 v2, p2

    .local v2, "namespaceUri":Ljava/lang/String;
    move-object/from16 v3, p3

    .local v3, "localName":Ljava/lang/String;
    move-object/from16 v4, p4

    .local v4, "attributes":Ljava/util/Iterator;
    move-object/from16 v5, p5

    .local v5, "namespaces":Ljava/util/Iterator;
    move-object/from16 v6, p6

    .local v6, "context":Ljavax/xml/namespace/NamespaceContext;
    new-instance v8, Lcom/sun/xml/stream/events/StartElementEvent;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    move-object v10, v1

    move-object v11, v2

    move-object v12, v3

    invoke-direct {v9, v10, v11, v12}, Lcom/sun/xml/stream/events/StartElementEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v7, v8

    .line 207
    .local v7, "elem":Lcom/sun/xml/stream/events/StartElementEvent;
    move-object v8, v7

    move-object v9, v4

    invoke-virtual {v8, v9}, Lcom/sun/xml/stream/events/StartElementEvent;->addAttributes(Ljava/util/Iterator;)V

    .line 208
    move-object v8, v7

    move-object v9, v5

    invoke-virtual {v8, v9}, Lcom/sun/xml/stream/events/StartElementEvent;->addNamespaceAttributes(Ljava/util/Iterator;)V

    .line 209
    move-object v8, v7

    move-object v9, v6

    invoke-virtual {v8, v9}, Lcom/sun/xml/stream/events/StartElementEvent;->setNamespaceContext(Ljavax/xml/namespace/NamespaceContext;)V

    .line 210
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/xml/stream/events/ZephyrEventFactory;->location:Ljavax/xml/stream/Location;

    if-eqz v8, :cond_0

    move-object v8, v7

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/xml/stream/events/ZephyrEventFactory;->location:Ljavax/xml/stream/Location;

    invoke-virtual {v8, v9}, Lcom/sun/xml/stream/events/StartElementEvent;->setLocation(Ljavax/xml/stream/Location;)V

    .line 211
    :cond_0
    move-object v8, v7

    move-object v0, v8

    .end local v0    # "this":Lcom/sun/xml/stream/events/ZephyrEventFactory;
    return-object v0
.end method

.method public createStartElement(Ljavax/xml/namespace/QName;Ljava/util/Iterator;Ljava/util/Iterator;)Ljavax/xml/stream/events/StartElement;
    .locals 10

    .prologue
    .line 192
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/events/ZephyrEventFactory;
    move-object v1, p1

    .local v1, "name":Ljavax/xml/namespace/QName;
    move-object v2, p2

    .local v2, "attributes":Ljava/util/Iterator;
    move-object v3, p3

    .local v3, "namespaces":Ljava/util/Iterator;
    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v5}, Ljavax/xml/namespace/QName;->getPrefix()Ljava/lang/String;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v6}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v6

    move-object v7, v1

    invoke-virtual {v7}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v7

    move-object v8, v2

    move-object v9, v3

    invoke-virtual/range {v4 .. v9}, Lcom/sun/xml/stream/events/ZephyrEventFactory;->createStartElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Iterator;Ljava/util/Iterator;)Ljavax/xml/stream/events/StartElement;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Lcom/sun/xml/stream/events/ZephyrEventFactory;
    return-object v0
.end method

.method public setLocation(Ljavax/xml/stream/Location;)V
    .locals 4

    .prologue
    .line 215
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/events/ZephyrEventFactory;
    move-object v1, p1

    .local v1, "location":Ljavax/xml/stream/Location;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/xml/stream/events/ZephyrEventFactory;->location:Ljavax/xml/stream/Location;

    .line 216
    return-void
.end method
