.class public Lcom/sun/xml/stream/events/XMLEventAllocatorImpl;
.super Ljava/lang/Object;
.source "XMLEventAllocatorImpl.java"

# interfaces
.implements Ljavax/xml/stream/util/XMLEventAllocator;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 64
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/events/XMLEventAllocatorImpl;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 65
    return-void
.end method

.method private getQName(Ljavax/xml/stream/XMLStreamReader;)Ljavax/xml/namespace/QName;
    .locals 8

    .prologue
    .line 275
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/events/XMLEventAllocatorImpl;
    move-object v1, p1

    .local v1, "xmlr":Ljavax/xml/stream/XMLStreamReader;
    new-instance v2, Ljavax/xml/namespace/QName;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v1

    invoke-interface {v4}, Ljavax/xml/stream/XMLStreamReader;->getNamespaceURI()Ljava/lang/String;

    move-result-object v4

    move-object v5, v1

    invoke-interface {v5}, Ljavax/xml/stream/XMLStreamReader;->getLocalName()Ljava/lang/String;

    move-result-object v5

    move-object v6, v1

    .line 276
    invoke-interface {v6}, Ljavax/xml/stream/XMLStreamReader;->getPrefix()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/xml/stream/events/XMLEventAllocatorImpl;
    return-object v0
.end method

.method private setNamespaceContext(Lcom/sun/xml/stream/events/StartElementEvent;Ljavax/xml/stream/XMLStreamReader;)V
    .locals 10

    .prologue
    .line 269
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/events/XMLEventAllocatorImpl;
    move-object v1, p1

    .local v1, "event":Lcom/sun/xml/stream/events/StartElementEvent;
    move-object v2, p2

    .local v2, "xmlr":Ljavax/xml/stream/XMLStreamReader;
    move-object v5, v2

    invoke-interface {v5}, Ljavax/xml/stream/XMLStreamReader;->getNamespaceContext()Ljavax/xml/namespace/NamespaceContext;

    move-result-object v5

    check-cast v5, Lorg/apache/xerces/util/NamespaceContextWrapper;

    move-object v3, v5

    .line 270
    .local v3, "contextWrapper":Lorg/apache/xerces/util/NamespaceContextWrapper;
    new-instance v5, Lorg/apache/xerces/util/NamespaceSupport;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v3

    invoke-virtual {v7}, Lorg/apache/xerces/util/NamespaceContextWrapper;->getNamespaceContext()Lorg/apache/xerces/xni/NamespaceContext;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/apache/xerces/util/NamespaceSupport;-><init>(Lorg/apache/xerces/xni/NamespaceContext;)V

    move-object v4, v5

    .line 271
    .local v4, "ns":Lorg/apache/xerces/util/NamespaceSupport;
    move-object v5, v1

    new-instance v6, Lorg/apache/xerces/util/NamespaceContextWrapper;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v4

    invoke-direct {v7, v8}, Lorg/apache/xerces/util/NamespaceContextWrapper;-><init>(Lorg/apache/xerces/xni/NamespaceContext;)V

    invoke-virtual {v5, v6}, Lcom/sun/xml/stream/events/StartElementEvent;->setNamespaceContext(Ljavax/xml/namespace/NamespaceContext;)V

    .line 272
    return-void
.end method


# virtual methods
.method public allocate(Ljavax/xml/stream/XMLStreamReader;)Ljavax/xml/stream/events/XMLEvent;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 68
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/events/XMLEventAllocatorImpl;
    move-object v1, p1

    .local v1, "xMLStreamReader":Ljavax/xml/stream/XMLStreamReader;
    move-object v2, v1

    if-nez v2, :cond_0

    .line 69
    new-instance v2, Lcom/sun/xml/stream/XMLStreamException2;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "Reader cannot be null"

    invoke-direct {v3, v4}, Lcom/sun/xml/stream/XMLStreamException2;-><init>(Ljava/lang/String;)V

    throw v2

    .line 72
    :cond_0
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/xml/stream/events/XMLEventAllocatorImpl;->getXMLEvent(Ljavax/xml/stream/XMLStreamReader;)Ljavax/xml/stream/events/XMLEvent;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/xml/stream/events/XMLEventAllocatorImpl;
    return-object v0
.end method

.method public allocate(Ljavax/xml/stream/XMLStreamReader;Ljavax/xml/stream/util/XMLEventConsumer;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 76
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/events/XMLEventAllocatorImpl;
    move-object v1, p1

    .local v1, "xMLStreamReader":Ljavax/xml/stream/XMLStreamReader;
    move-object v2, p2

    .local v2, "xMLEventConsumer":Ljavax/xml/stream/util/XMLEventConsumer;
    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v4, v5}, Lcom/sun/xml/stream/events/XMLEventAllocatorImpl;->getXMLEvent(Ljavax/xml/stream/XMLStreamReader;)Ljavax/xml/stream/events/XMLEvent;

    move-result-object v4

    move-object v3, v4

    .line 77
    .local v3, "currentEvent":Ljavax/xml/stream/events/XMLEvent;
    move-object v4, v3

    if-eqz v4, :cond_0

    .line 78
    move-object v4, v2

    move-object v5, v3

    invoke-interface {v4, v5}, Ljavax/xml/stream/util/XMLEventConsumer;->add(Ljavax/xml/stream/events/XMLEvent;)V

    .line 80
    :cond_0
    return-void
.end method

.method protected fillAttributes(Lcom/sun/xml/stream/events/StartElementEvent;Ljavax/xml/stream/XMLStreamReader;)V
    .locals 14

    .prologue
    .line 202
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/events/XMLEventAllocatorImpl;
    move-object v1, p1

    .local v1, "event":Lcom/sun/xml/stream/events/StartElementEvent;
    move-object/from16 v2, p2

    .local v2, "xmlr":Ljavax/xml/stream/XMLStreamReader;
    move-object v10, v2

    invoke-interface {v10}, Ljavax/xml/stream/XMLStreamReader;->getAttributeCount()I

    move-result v10

    move v3, v10

    .line 203
    .local v3, "len":I
    const/4 v10, 0x0

    move-object v4, v10

    .line 204
    .local v4, "qname":Ljavax/xml/namespace/QName;
    const/4 v10, 0x0

    move-object v5, v10

    .line 205
    .local v5, "prefix":Ljava/lang/String;
    const/4 v10, 0x0

    move-object v6, v10

    .line 206
    .local v6, "localpart":Ljava/lang/String;
    const/4 v10, 0x0

    move-object v7, v10

    .line 207
    .local v7, "attr":Lcom/sun/xml/stream/events/AttributeImpl;
    const/4 v10, 0x0

    move-object v8, v10

    .line 208
    .local v8, "nattr":Lcom/sun/xml/stream/events/NamespaceImpl;
    const/4 v10, 0x0

    move v9, v10

    .local v9, "i":I
    :goto_0
    move v10, v9

    move v11, v3

    if-ge v10, v11, :cond_0

    .line 209
    move-object v10, v2

    move v11, v9

    invoke-interface {v10, v11}, Ljavax/xml/stream/XMLStreamReader;->getAttributeName(I)Ljavax/xml/namespace/QName;

    move-result-object v10

    move-object v4, v10

    .line 210
    move-object v10, v4

    invoke-virtual {v10}, Ljavax/xml/namespace/QName;->getPrefix()Ljava/lang/String;

    move-result-object v10

    move-object v5, v10

    .line 211
    move-object v10, v4

    invoke-virtual {v10}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v10

    move-object v6, v10

    .line 225
    new-instance v10, Lcom/sun/xml/stream/events/AttributeImpl;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    invoke-direct {v11}, Lcom/sun/xml/stream/events/AttributeImpl;-><init>()V

    move-object v7, v10

    .line 226
    move-object v10, v7

    move-object v11, v4

    invoke-virtual {v10, v11}, Lcom/sun/xml/stream/events/AttributeImpl;->setName(Ljavax/xml/namespace/QName;)V

    .line 227
    move-object v10, v7

    move-object v11, v2

    move v12, v9

    invoke-interface {v11, v12}, Ljavax/xml/stream/XMLStreamReader;->getAttributeType(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/sun/xml/stream/events/AttributeImpl;->setAttributeType(Ljava/lang/String;)V

    .line 228
    move-object v10, v7

    move-object v11, v2

    move v12, v9

    invoke-interface {v11, v12}, Ljavax/xml/stream/XMLStreamReader;->isAttributeSpecified(I)Z

    move-result v11

    invoke-virtual {v10, v11}, Lcom/sun/xml/stream/events/AttributeImpl;->setSpecified(Z)V

    .line 229
    move-object v10, v7

    move-object v11, v2

    move v12, v9

    invoke-interface {v11, v12}, Ljavax/xml/stream/XMLStreamReader;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/sun/xml/stream/events/AttributeImpl;->setValue(Ljava/lang/String;)V

    .line 230
    move-object v10, v1

    move-object v11, v7

    invoke-virtual {v10, v11}, Lcom/sun/xml/stream/events/StartElementEvent;->addAttribute(Ljavax/xml/stream/events/Attribute;)V

    .line 208
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 232
    :cond_0
    return-void
.end method

.method protected fillNamespaceAttributes(Lcom/sun/xml/stream/events/EndElementEvent;Ljavax/xml/stream/XMLStreamReader;)V
    .locals 13

    .prologue
    .line 251
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/events/XMLEventAllocatorImpl;
    move-object v1, p1

    .local v1, "event":Lcom/sun/xml/stream/events/EndElementEvent;
    move-object v2, p2

    .local v2, "xmlr":Ljavax/xml/stream/XMLStreamReader;
    move-object v8, v2

    invoke-interface {v8}, Ljavax/xml/stream/XMLStreamReader;->getNamespaceCount()I

    move-result v8

    move v3, v8

    .line 252
    .local v3, "count":I
    const/4 v8, 0x0

    move-object v4, v8

    .line 253
    .local v4, "uri":Ljava/lang/String;
    const/4 v8, 0x0

    move-object v5, v8

    .line 254
    .local v5, "prefix":Ljava/lang/String;
    const/4 v8, 0x0

    move-object v6, v8

    .line 255
    .local v6, "attr":Lcom/sun/xml/stream/events/NamespaceImpl;
    const/4 v8, 0x0

    move v7, v8

    .local v7, "i":I
    :goto_0
    move v8, v7

    move v9, v3

    if-ge v8, v9, :cond_1

    .line 256
    move-object v8, v2

    move v9, v7

    invoke-interface {v8, v9}, Ljavax/xml/stream/XMLStreamReader;->getNamespaceURI(I)Ljava/lang/String;

    move-result-object v8

    move-object v4, v8

    .line 257
    move-object v8, v2

    move v9, v7

    invoke-interface {v8, v9}, Ljavax/xml/stream/XMLStreamReader;->getNamespacePrefix(I)Ljava/lang/String;

    move-result-object v8

    move-object v5, v8

    .line 258
    move-object v8, v5

    if-nez v8, :cond_0

    .line 259
    const-string v8, ""

    move-object v5, v8

    .line 261
    :cond_0
    new-instance v8, Lcom/sun/xml/stream/events/NamespaceImpl;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    move-object v10, v5

    move-object v11, v4

    invoke-direct {v9, v10, v11}, Lcom/sun/xml/stream/events/NamespaceImpl;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v6, v8

    .line 262
    move-object v8, v1

    move-object v9, v6

    invoke-virtual {v8, v9}, Lcom/sun/xml/stream/events/EndElementEvent;->addNamespace(Ljavax/xml/stream/events/Namespace;)V

    .line 255
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 264
    :cond_1
    return-void
.end method

.method protected fillNamespaceAttributes(Lcom/sun/xml/stream/events/StartElementEvent;Ljavax/xml/stream/XMLStreamReader;)V
    .locals 13

    .prologue
    .line 235
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/events/XMLEventAllocatorImpl;
    move-object v1, p1

    .local v1, "event":Lcom/sun/xml/stream/events/StartElementEvent;
    move-object v2, p2

    .local v2, "xmlr":Ljavax/xml/stream/XMLStreamReader;
    move-object v8, v2

    invoke-interface {v8}, Ljavax/xml/stream/XMLStreamReader;->getNamespaceCount()I

    move-result v8

    move v3, v8

    .line 236
    .local v3, "count":I
    const/4 v8, 0x0

    move-object v4, v8

    .line 237
    .local v4, "uri":Ljava/lang/String;
    const/4 v8, 0x0

    move-object v5, v8

    .line 238
    .local v5, "prefix":Ljava/lang/String;
    const/4 v8, 0x0

    move-object v6, v8

    .line 239
    .local v6, "attr":Lcom/sun/xml/stream/events/NamespaceImpl;
    const/4 v8, 0x0

    move v7, v8

    .local v7, "i":I
    :goto_0
    move v8, v7

    move v9, v3

    if-ge v8, v9, :cond_1

    .line 240
    move-object v8, v2

    move v9, v7

    invoke-interface {v8, v9}, Ljavax/xml/stream/XMLStreamReader;->getNamespaceURI(I)Ljava/lang/String;

    move-result-object v8

    move-object v4, v8

    .line 241
    move-object v8, v2

    move v9, v7

    invoke-interface {v8, v9}, Ljavax/xml/stream/XMLStreamReader;->getNamespacePrefix(I)Ljava/lang/String;

    move-result-object v8

    move-object v5, v8

    .line 242
    move-object v8, v5

    if-nez v8, :cond_0

    .line 243
    const-string v8, ""

    move-object v5, v8

    .line 245
    :cond_0
    new-instance v8, Lcom/sun/xml/stream/events/NamespaceImpl;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    move-object v10, v5

    move-object v11, v4

    invoke-direct {v9, v10, v11}, Lcom/sun/xml/stream/events/NamespaceImpl;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v6, v8

    .line 246
    move-object v8, v1

    move-object v9, v6

    invoke-virtual {v8, v9}, Lcom/sun/xml/stream/events/StartElementEvent;->addNamespaceAttribute(Ljavax/xml/stream/events/Namespace;)V

    .line 239
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 248
    :cond_1
    return-void
.end method

.method protected getNextEvent(Ljavax/xml/stream/XMLStreamReader;)Ljavax/xml/stream/events/XMLEvent;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 196
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/events/XMLEventAllocatorImpl;
    move-object v1, p1

    .local v1, "streamReader":Ljavax/xml/stream/XMLStreamReader;
    move-object v2, v1

    invoke-interface {v2}, Ljavax/xml/stream/XMLStreamReader;->next()I

    move-result v2

    .line 197
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/xml/stream/events/XMLEventAllocatorImpl;->getXMLEvent(Ljavax/xml/stream/XMLStreamReader;)Ljavax/xml/stream/events/XMLEvent;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/xml/stream/events/XMLEventAllocatorImpl;
    return-object v0
.end method

.method getXMLEvent(Ljavax/xml/stream/XMLStreamReader;)Ljavax/xml/stream/events/XMLEvent;
    .locals 15

    .prologue
    .line 89
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/events/XMLEventAllocatorImpl;
    move-object/from16 v1, p1

    .local v1, "streamReader":Ljavax/xml/stream/XMLStreamReader;
    const/4 v7, 0x0

    move-object v2, v7

    .line 91
    .local v2, "event":Ljavax/xml/stream/events/XMLEvent;
    move-object v7, v1

    invoke-interface {v7}, Ljavax/xml/stream/XMLStreamReader;->getEventType()I

    move-result v7

    move v3, v7

    .line 92
    .local v3, "eventType":I
    move v7, v3

    packed-switch v7, :pswitch_data_0

    .line 190
    :goto_0
    move-object v7, v2

    move-object v0, v7

    .end local v0    # "this":Lcom/sun/xml/stream/events/XMLEventAllocatorImpl;
    return-object v0

    .line 95
    .restart local v0    # "this":Lcom/sun/xml/stream/events/XMLEventAllocatorImpl;
    :pswitch_0
    new-instance v7, Lcom/sun/xml/stream/events/StartElementEvent;

    move-object v14, v7

    move-object v7, v14

    move-object v8, v14

    move-object v9, v0

    move-object v10, v1

    invoke-direct {v9, v10}, Lcom/sun/xml/stream/events/XMLEventAllocatorImpl;->getQName(Ljavax/xml/stream/XMLStreamReader;)Ljavax/xml/namespace/QName;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/sun/xml/stream/events/StartElementEvent;-><init>(Ljavax/xml/namespace/QName;)V

    move-object v4, v7

    .line 96
    .local v4, "startElementEvent":Lcom/sun/xml/stream/events/StartElementEvent;
    move-object v7, v0

    move-object v8, v4

    move-object v9, v1

    invoke-virtual {v7, v8, v9}, Lcom/sun/xml/stream/events/XMLEventAllocatorImpl;->fillAttributes(Lcom/sun/xml/stream/events/StartElementEvent;Ljavax/xml/stream/XMLStreamReader;)V

    .line 99
    move-object v7, v1

    const-string v8, "javax.xml.stream.isNamespaceAware"

    invoke-interface {v7, v8}, Ljavax/xml/stream/XMLStreamReader;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 100
    move-object v7, v0

    move-object v8, v4

    move-object v9, v1

    invoke-virtual {v7, v8, v9}, Lcom/sun/xml/stream/events/XMLEventAllocatorImpl;->fillNamespaceAttributes(Lcom/sun/xml/stream/events/StartElementEvent;Ljavax/xml/stream/XMLStreamReader;)V

    .line 101
    move-object v7, v0

    move-object v8, v4

    move-object v9, v1

    invoke-direct {v7, v8, v9}, Lcom/sun/xml/stream/events/XMLEventAllocatorImpl;->setNamespaceContext(Lcom/sun/xml/stream/events/StartElementEvent;Ljavax/xml/stream/XMLStreamReader;)V

    .line 104
    :cond_0
    move-object v7, v4

    move-object v8, v1

    invoke-interface {v8}, Ljavax/xml/stream/XMLStreamReader;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/sun/xml/stream/events/StartElementEvent;->setLocation(Ljavax/xml/stream/Location;)V

    .line 105
    move-object v7, v4

    move-object v2, v7

    .line 106
    goto :goto_0

    .line 109
    .end local v4    # "startElementEvent":Lcom/sun/xml/stream/events/StartElementEvent;
    :pswitch_1
    new-instance v7, Lcom/sun/xml/stream/events/EndElementEvent;

    move-object v14, v7

    move-object v7, v14

    move-object v8, v14

    move-object v9, v0

    move-object v10, v1

    invoke-direct {v9, v10}, Lcom/sun/xml/stream/events/XMLEventAllocatorImpl;->getQName(Ljavax/xml/stream/XMLStreamReader;)Ljavax/xml/namespace/QName;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/sun/xml/stream/events/EndElementEvent;-><init>(Ljavax/xml/namespace/QName;)V

    move-object v4, v7

    .line 110
    .local v4, "endElementEvent":Lcom/sun/xml/stream/events/EndElementEvent;
    move-object v7, v4

    move-object v8, v1

    invoke-interface {v8}, Ljavax/xml/stream/XMLStreamReader;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/sun/xml/stream/events/EndElementEvent;->setLocation(Ljavax/xml/stream/Location;)V

    .line 112
    move-object v7, v1

    const-string v8, "javax.xml.stream.isNamespaceAware"

    invoke-interface {v7, v8}, Ljavax/xml/stream/XMLStreamReader;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 113
    move-object v7, v0

    move-object v8, v4

    move-object v9, v1

    invoke-virtual {v7, v8, v9}, Lcom/sun/xml/stream/events/XMLEventAllocatorImpl;->fillNamespaceAttributes(Lcom/sun/xml/stream/events/EndElementEvent;Ljavax/xml/stream/XMLStreamReader;)V

    .line 115
    :cond_1
    move-object v7, v4

    move-object v2, v7

    .line 116
    goto :goto_0

    .line 119
    .end local v4    # "endElementEvent":Lcom/sun/xml/stream/events/EndElementEvent;
    :pswitch_2
    new-instance v7, Lcom/sun/xml/stream/events/ProcessingInstructionEvent;

    move-object v14, v7

    move-object v7, v14

    move-object v8, v14

    move-object v9, v1

    invoke-interface {v9}, Ljavax/xml/stream/XMLStreamReader;->getPITarget()Ljava/lang/String;

    move-result-object v9

    move-object v10, v1

    invoke-interface {v10}, Ljavax/xml/stream/XMLStreamReader;->getPIData()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lcom/sun/xml/stream/events/ProcessingInstructionEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v7

    .line 120
    .local v4, "piEvent":Lcom/sun/xml/stream/events/ProcessingInstructionEvent;
    move-object v7, v4

    move-object v8, v1

    invoke-interface {v8}, Ljavax/xml/stream/XMLStreamReader;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/sun/xml/stream/events/ProcessingInstructionEvent;->setLocation(Ljavax/xml/stream/Location;)V

    .line 121
    move-object v7, v4

    move-object v2, v7

    .line 122
    goto/16 :goto_0

    .line 125
    .end local v4    # "piEvent":Lcom/sun/xml/stream/events/ProcessingInstructionEvent;
    :pswitch_3
    new-instance v7, Lcom/sun/xml/stream/events/CharacterEvent;

    move-object v14, v7

    move-object v7, v14

    move-object v8, v14

    move-object v9, v1

    invoke-interface {v9}, Ljavax/xml/stream/XMLStreamReader;->getText()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/sun/xml/stream/events/CharacterEvent;-><init>(Ljava/lang/String;)V

    move-object v4, v7

    .line 126
    .local v4, "cDataEvent":Lcom/sun/xml/stream/events/CharacterEvent;
    move-object v7, v4

    move-object v8, v1

    invoke-interface {v8}, Ljavax/xml/stream/XMLStreamReader;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/sun/xml/stream/events/CharacterEvent;->setLocation(Ljavax/xml/stream/Location;)V

    .line 127
    move-object v7, v4

    move-object v2, v7

    .line 128
    goto/16 :goto_0

    .line 131
    .end local v4    # "cDataEvent":Lcom/sun/xml/stream/events/CharacterEvent;
    :pswitch_4
    new-instance v7, Lcom/sun/xml/stream/events/CommentEvent;

    move-object v14, v7

    move-object v7, v14

    move-object v8, v14

    move-object v9, v1

    invoke-interface {v9}, Ljavax/xml/stream/XMLStreamReader;->getText()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/sun/xml/stream/events/CommentEvent;-><init>(Ljava/lang/String;)V

    move-object v4, v7

    .line 132
    .local v4, "commentEvent":Lcom/sun/xml/stream/events/CommentEvent;
    move-object v7, v4

    move-object v8, v1

    invoke-interface {v8}, Ljavax/xml/stream/XMLStreamReader;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/sun/xml/stream/events/CommentEvent;->setLocation(Ljavax/xml/stream/Location;)V

    .line 133
    move-object v7, v4

    move-object v2, v7

    .line 134
    goto/16 :goto_0

    .line 137
    .end local v4    # "commentEvent":Lcom/sun/xml/stream/events/CommentEvent;
    :pswitch_5
    new-instance v7, Lcom/sun/xml/stream/events/StartDocumentEvent;

    move-object v14, v7

    move-object v7, v14

    move-object v8, v14

    invoke-direct {v8}, Lcom/sun/xml/stream/events/StartDocumentEvent;-><init>()V

    move-object v4, v7

    .line 138
    .local v4, "sdEvent":Lcom/sun/xml/stream/events/StartDocumentEvent;
    move-object v7, v4

    move-object v8, v1

    invoke-interface {v8}, Ljavax/xml/stream/XMLStreamReader;->getVersion()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/sun/xml/stream/events/StartDocumentEvent;->setVersion(Ljava/lang/String;)V

    .line 139
    move-object v7, v4

    move-object v8, v1

    invoke-interface {v8}, Ljavax/xml/stream/XMLStreamReader;->getEncoding()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/sun/xml/stream/events/StartDocumentEvent;->setEncoding(Ljava/lang/String;)V

    .line 140
    move-object v7, v1

    invoke-interface {v7}, Ljavax/xml/stream/XMLStreamReader;->getCharacterEncodingScheme()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 141
    move-object v7, v4

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/sun/xml/stream/events/StartDocumentEvent;->setDeclaredEncoding(Z)V

    .line 145
    :goto_1
    move-object v7, v4

    move-object v8, v1

    invoke-interface {v8}, Ljavax/xml/stream/XMLStreamReader;->isStandalone()Z

    move-result v8

    invoke-virtual {v7, v8}, Lcom/sun/xml/stream/events/StartDocumentEvent;->setStandalone(Z)V

    .line 146
    move-object v7, v4

    move-object v8, v1

    invoke-interface {v8}, Ljavax/xml/stream/XMLStreamReader;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/sun/xml/stream/events/StartDocumentEvent;->setLocation(Ljavax/xml/stream/Location;)V

    .line 147
    move-object v7, v4

    move-object v2, v7

    .line 148
    goto/16 :goto_0

    .line 143
    :cond_2
    move-object v7, v4

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/sun/xml/stream/events/StartDocumentEvent;->setDeclaredEncoding(Z)V

    goto :goto_1

    .line 151
    .end local v4    # "sdEvent":Lcom/sun/xml/stream/events/StartDocumentEvent;
    :pswitch_6
    new-instance v7, Lcom/sun/xml/stream/events/EndDocumentEvent;

    move-object v14, v7

    move-object v7, v14

    move-object v8, v14

    invoke-direct {v8}, Lcom/sun/xml/stream/events/EndDocumentEvent;-><init>()V

    move-object v4, v7

    .line 152
    .local v4, "endDocumentEvent":Lcom/sun/xml/stream/events/EndDocumentEvent;
    move-object v7, v4

    move-object v8, v1

    invoke-interface {v8}, Ljavax/xml/stream/XMLStreamReader;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/sun/xml/stream/events/EndDocumentEvent;->setLocation(Ljavax/xml/stream/Location;)V

    .line 153
    move-object v7, v4

    move-object v2, v7

    .line 154
    goto/16 :goto_0

    .line 157
    .end local v4    # "endDocumentEvent":Lcom/sun/xml/stream/events/EndDocumentEvent;
    :pswitch_7
    new-instance v7, Lcom/sun/xml/stream/events/EntityReferenceEvent;

    move-object v14, v7

    move-object v7, v14

    move-object v8, v14

    move-object v9, v1

    invoke-interface {v9}, Ljavax/xml/stream/XMLStreamReader;->getLocalName()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lcom/sun/xml/stream/events/EntityDeclarationImpl;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    move-object v12, v1

    invoke-interface {v12}, Ljavax/xml/stream/XMLStreamReader;->getLocalName()Ljava/lang/String;

    move-result-object v12

    move-object v13, v1

    invoke-interface {v13}, Ljavax/xml/stream/XMLStreamReader;->getText()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v11, v12, v13}, Lcom/sun/xml/stream/events/EntityDeclarationImpl;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v8, v9, v10}, Lcom/sun/xml/stream/events/EntityReferenceEvent;-><init>(Ljava/lang/String;Ljavax/xml/stream/events/EntityDeclaration;)V

    move-object v4, v7

    .line 158
    .local v4, "entityEvent":Lcom/sun/xml/stream/events/EntityReferenceEvent;
    move-object v7, v4

    move-object v8, v1

    invoke-interface {v8}, Ljavax/xml/stream/XMLStreamReader;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/sun/xml/stream/events/EntityReferenceEvent;->setLocation(Ljavax/xml/stream/Location;)V

    .line 159
    move-object v7, v4

    move-object v2, v7

    .line 160
    goto/16 :goto_0

    .line 164
    .end local v4    # "entityEvent":Lcom/sun/xml/stream/events/EntityReferenceEvent;
    :pswitch_8
    const/4 v7, 0x0

    move-object v2, v7

    .line 165
    goto/16 :goto_0

    .line 168
    :pswitch_9
    new-instance v7, Lcom/sun/xml/stream/events/DTDEvent;

    move-object v14, v7

    move-object v7, v14

    move-object v8, v14

    move-object v9, v1

    invoke-interface {v9}, Ljavax/xml/stream/XMLStreamReader;->getText()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/sun/xml/stream/events/DTDEvent;-><init>(Ljava/lang/String;)V

    move-object v4, v7

    .line 169
    .local v4, "dtdEvent":Lcom/sun/xml/stream/events/DTDEvent;
    move-object v7, v4

    move-object v8, v1

    invoke-interface {v8}, Ljavax/xml/stream/XMLStreamReader;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/sun/xml/stream/events/DTDEvent;->setLocation(Ljavax/xml/stream/Location;)V

    .line 170
    move-object v7, v1

    const-string v8, "javax.xml.stream.entities"

    invoke-interface {v7, v8}, Ljavax/xml/stream/XMLStreamReader;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    move-object v5, v7

    .line 171
    .local v5, "entities":Ljava/util/List;
    move-object v7, v5

    if-eqz v7, :cond_3

    move-object v7, v5

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-eqz v7, :cond_3

    move-object v7, v4

    move-object v8, v5

    invoke-virtual {v7, v8}, Lcom/sun/xml/stream/events/DTDEvent;->setEntities(Ljava/util/List;)V

    .line 172
    :cond_3
    move-object v7, v1

    const-string v8, "javax.xml.stream.notations"

    invoke-interface {v7, v8}, Ljavax/xml/stream/XMLStreamReader;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    move-object v6, v7

    .line 173
    .local v6, "notations":Ljava/util/List;
    move-object v7, v6

    if-eqz v7, :cond_4

    move-object v7, v6

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-eqz v7, :cond_4

    move-object v7, v4

    move-object v8, v6

    invoke-virtual {v7, v8}, Lcom/sun/xml/stream/events/DTDEvent;->setNotations(Ljava/util/List;)V

    .line 174
    :cond_4
    move-object v7, v4

    move-object v2, v7

    .line 175
    goto/16 :goto_0

    .line 178
    .end local v4    # "dtdEvent":Lcom/sun/xml/stream/events/DTDEvent;
    .end local v5    # "entities":Ljava/util/List;
    .end local v6    # "notations":Ljava/util/List;
    :pswitch_a
    new-instance v7, Lcom/sun/xml/stream/events/CharacterEvent;

    move-object v14, v7

    move-object v7, v14

    move-object v8, v14

    move-object v9, v1

    invoke-interface {v9}, Ljavax/xml/stream/XMLStreamReader;->getText()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    invoke-direct {v8, v9, v10}, Lcom/sun/xml/stream/events/CharacterEvent;-><init>(Ljava/lang/String;Z)V

    move-object v4, v7

    .line 179
    .local v4, "cDataEvent":Lcom/sun/xml/stream/events/CharacterEvent;
    move-object v7, v4

    move-object v8, v1

    invoke-interface {v8}, Ljavax/xml/stream/XMLStreamReader;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/sun/xml/stream/events/CharacterEvent;->setLocation(Ljavax/xml/stream/Location;)V

    .line 180
    move-object v7, v4

    move-object v2, v7

    .line 181
    goto/16 :goto_0

    .line 184
    .end local v4    # "cDataEvent":Lcom/sun/xml/stream/events/CharacterEvent;
    :pswitch_b
    new-instance v7, Lcom/sun/xml/stream/events/CharacterEvent;

    move-object v14, v7

    move-object v7, v14

    move-object v8, v14

    move-object v9, v1

    invoke-interface {v9}, Ljavax/xml/stream/XMLStreamReader;->getText()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-direct {v8, v9, v10, v11}, Lcom/sun/xml/stream/events/CharacterEvent;-><init>(Ljava/lang/String;ZZ)V

    move-object v4, v7

    .line 185
    .local v4, "spaceEvent":Lcom/sun/xml/stream/events/CharacterEvent;
    move-object v7, v4

    move-object v8, v1

    invoke-interface {v8}, Ljavax/xml/stream/XMLStreamReader;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/sun/xml/stream/events/CharacterEvent;->setLocation(Ljavax/xml/stream/Location;)V

    .line 186
    move-object v7, v4

    move-object v2, v7

    .line 187
    goto/16 :goto_0

    .line 92
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_b
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method public newInstance()Ljavax/xml/stream/util/XMLEventAllocator;
    .locals 4

    .prologue
    .line 84
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/events/XMLEventAllocatorImpl;
    new-instance v1, Lcom/sun/xml/stream/events/XMLEventAllocatorImpl;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Lcom/sun/xml/stream/events/XMLEventAllocatorImpl;-><init>()V

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/events/XMLEventAllocatorImpl;
    return-object v0
.end method
