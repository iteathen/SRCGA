.class public Ljavax/xml/stream/util/StreamReaderDelegate;
.super Ljava/lang/Object;
.source "StreamReaderDelegate.java"

# interfaces
.implements Ljavax/xml/stream/XMLStreamReader;


# instance fields
.field private reader:Ljavax/xml/stream/XMLStreamReader;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 30
    move-object v0, p0

    .local v0, "this":Ljavax/xml/stream/util/StreamReaderDelegate;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljavax/xml/stream/XMLStreamReader;)V
    .locals 4

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "this":Ljavax/xml/stream/util/StreamReaderDelegate;
    move-object v1, p1

    .local v1, "reader":Ljavax/xml/stream/XMLStreamReader;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 37
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavax/xml/stream/util/StreamReaderDelegate;->reader:Ljavax/xml/stream/XMLStreamReader;

    .line 38
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 89
    move-object v0, p0

    .local v0, "this":Ljavax/xml/stream/util/StreamReaderDelegate;
    move-object v1, v0

    iget-object v1, v1, Ljavax/xml/stream/util/StreamReaderDelegate;->reader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v1}, Ljavax/xml/stream/XMLStreamReader;->close()V

    .line 90
    return-void
.end method

.method public getAttributeCount()I
    .locals 2

    .prologue
    .line 124
    move-object v0, p0

    .local v0, "this":Ljavax/xml/stream/util/StreamReaderDelegate;
    move-object v1, v0

    iget-object v1, v1, Ljavax/xml/stream/util/StreamReaderDelegate;->reader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v1}, Ljavax/xml/stream/XMLStreamReader;->getAttributeCount()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljavax/xml/stream/util/StreamReaderDelegate;
    return v0
.end method

.method public getAttributeLocalName(I)Ljava/lang/String;
    .locals 4

    .prologue
    .line 140
    move-object v0, p0

    .local v0, "this":Ljavax/xml/stream/util/StreamReaderDelegate;
    move v1, p1

    .local v1, "index":I
    move-object v2, v0

    iget-object v2, v2, Ljavax/xml/stream/util/StreamReaderDelegate;->reader:Ljavax/xml/stream/XMLStreamReader;

    move v3, v1

    invoke-interface {v2, v3}, Ljavax/xml/stream/XMLStreamReader;->getAttributeLocalName(I)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavax/xml/stream/util/StreamReaderDelegate;
    return-object v0
.end method

.method public getAttributeName(I)Ljavax/xml/namespace/QName;
    .locals 4

    .prologue
    .line 128
    move-object v0, p0

    .local v0, "this":Ljavax/xml/stream/util/StreamReaderDelegate;
    move v1, p1

    .local v1, "index":I
    move-object v2, v0

    iget-object v2, v2, Ljavax/xml/stream/util/StreamReaderDelegate;->reader:Ljavax/xml/stream/XMLStreamReader;

    move v3, v1

    invoke-interface {v2, v3}, Ljavax/xml/stream/XMLStreamReader;->getAttributeName(I)Ljavax/xml/namespace/QName;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavax/xml/stream/util/StreamReaderDelegate;
    return-object v0
.end method

.method public getAttributeNamespace(I)Ljava/lang/String;
    .locals 4

    .prologue
    .line 136
    move-object v0, p0

    .local v0, "this":Ljavax/xml/stream/util/StreamReaderDelegate;
    move v1, p1

    .local v1, "index":I
    move-object v2, v0

    iget-object v2, v2, Ljavax/xml/stream/util/StreamReaderDelegate;->reader:Ljavax/xml/stream/XMLStreamReader;

    move v3, v1

    invoke-interface {v2, v3}, Ljavax/xml/stream/XMLStreamReader;->getAttributeNamespace(I)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavax/xml/stream/util/StreamReaderDelegate;
    return-object v0
.end method

.method public getAttributePrefix(I)Ljava/lang/String;
    .locals 4

    .prologue
    .line 132
    move-object v0, p0

    .local v0, "this":Ljavax/xml/stream/util/StreamReaderDelegate;
    move v1, p1

    .local v1, "index":I
    move-object v2, v0

    iget-object v2, v2, Ljavax/xml/stream/util/StreamReaderDelegate;->reader:Ljavax/xml/stream/XMLStreamReader;

    move v3, v1

    invoke-interface {v2, v3}, Ljavax/xml/stream/XMLStreamReader;->getAttributePrefix(I)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavax/xml/stream/util/StreamReaderDelegate;
    return-object v0
.end method

.method public getAttributeType(I)Ljava/lang/String;
    .locals 4

    .prologue
    .line 144
    move-object v0, p0

    .local v0, "this":Ljavax/xml/stream/util/StreamReaderDelegate;
    move v1, p1

    .local v1, "index":I
    move-object v2, v0

    iget-object v2, v2, Ljavax/xml/stream/util/StreamReaderDelegate;->reader:Ljavax/xml/stream/XMLStreamReader;

    move v3, v1

    invoke-interface {v2, v3}, Ljavax/xml/stream/XMLStreamReader;->getAttributeType(I)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavax/xml/stream/util/StreamReaderDelegate;
    return-object v0
.end method

.method public getAttributeValue(I)Ljava/lang/String;
    .locals 4

    .prologue
    .line 148
    move-object v0, p0

    .local v0, "this":Ljavax/xml/stream/util/StreamReaderDelegate;
    move v1, p1

    .local v1, "index":I
    move-object v2, v0

    iget-object v2, v2, Ljavax/xml/stream/util/StreamReaderDelegate;->reader:Ljavax/xml/stream/XMLStreamReader;

    move v3, v1

    invoke-interface {v2, v3}, Ljavax/xml/stream/XMLStreamReader;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavax/xml/stream/util/StreamReaderDelegate;
    return-object v0
.end method

.method public getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 120
    move-object v0, p0

    .local v0, "this":Ljavax/xml/stream/util/StreamReaderDelegate;
    move-object v1, p1

    .local v1, "namespaceUri":Ljava/lang/String;
    move-object v2, p2

    .local v2, "localName":Ljava/lang/String;
    move-object v3, v0

    iget-object v3, v3, Ljavax/xml/stream/util/StreamReaderDelegate;->reader:Ljavax/xml/stream/XMLStreamReader;

    move-object v4, v1

    move-object v5, v2

    invoke-interface {v3, v4, v5}, Ljavax/xml/stream/XMLStreamReader;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljavax/xml/stream/util/StreamReaderDelegate;
    return-object v0
.end method

.method public getCharacterEncodingScheme()Ljava/lang/String;
    .locals 2

    .prologue
    .line 244
    move-object v0, p0

    .local v0, "this":Ljavax/xml/stream/util/StreamReaderDelegate;
    move-object v1, v0

    iget-object v1, v1, Ljavax/xml/stream/util/StreamReaderDelegate;->reader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v1}, Ljavax/xml/stream/XMLStreamReader;->getCharacterEncodingScheme()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavax/xml/stream/util/StreamReaderDelegate;
    return-object v0
.end method

.method public getElementText()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 71
    move-object v0, p0

    .local v0, "this":Ljavax/xml/stream/util/StreamReaderDelegate;
    move-object v1, v0

    iget-object v1, v1, Ljavax/xml/stream/util/StreamReaderDelegate;->reader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v1}, Ljavax/xml/stream/XMLStreamReader;->getElementText()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavax/xml/stream/util/StreamReaderDelegate;
    return-object v0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 2

    .prologue
    .line 200
    move-object v0, p0

    .local v0, "this":Ljavax/xml/stream/util/StreamReaderDelegate;
    move-object v1, v0

    iget-object v1, v1, Ljavax/xml/stream/util/StreamReaderDelegate;->reader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v1}, Ljavax/xml/stream/XMLStreamReader;->getEncoding()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavax/xml/stream/util/StreamReaderDelegate;
    return-object v0
.end method

.method public getEventType()I
    .locals 2

    .prologue
    .line 168
    move-object v0, p0

    .local v0, "this":Ljavax/xml/stream/util/StreamReaderDelegate;
    move-object v1, v0

    iget-object v1, v1, Ljavax/xml/stream/util/StreamReaderDelegate;->reader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v1}, Ljavax/xml/stream/XMLStreamReader;->getEventType()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljavax/xml/stream/util/StreamReaderDelegate;
    return v0
.end method

.method public getLocalName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 216
    move-object v0, p0

    .local v0, "this":Ljavax/xml/stream/util/StreamReaderDelegate;
    move-object v1, v0

    iget-object v1, v1, Ljavax/xml/stream/util/StreamReaderDelegate;->reader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v1}, Ljavax/xml/stream/XMLStreamReader;->getLocalName()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavax/xml/stream/util/StreamReaderDelegate;
    return-object v0
.end method

.method public getLocation()Ljavax/xml/stream/Location;
    .locals 2

    .prologue
    .line 208
    move-object v0, p0

    .local v0, "this":Ljavax/xml/stream/util/StreamReaderDelegate;
    move-object v1, v0

    iget-object v1, v1, Ljavax/xml/stream/util/StreamReaderDelegate;->reader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v1}, Ljavax/xml/stream/XMLStreamReader;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavax/xml/stream/util/StreamReaderDelegate;
    return-object v0
.end method

.method public getName()Ljavax/xml/namespace/QName;
    .locals 2

    .prologue
    .line 212
    move-object v0, p0

    .local v0, "this":Ljavax/xml/stream/util/StreamReaderDelegate;
    move-object v1, v0

    iget-object v1, v1, Ljavax/xml/stream/util/StreamReaderDelegate;->reader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v1}, Ljavax/xml/stream/XMLStreamReader;->getName()Ljavax/xml/namespace/QName;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavax/xml/stream/util/StreamReaderDelegate;
    return-object v0
.end method

.method public getNamespaceContext()Ljavax/xml/namespace/NamespaceContext;
    .locals 2

    .prologue
    .line 98
    move-object v0, p0

    .local v0, "this":Ljavax/xml/stream/util/StreamReaderDelegate;
    move-object v1, v0

    iget-object v1, v1, Ljavax/xml/stream/util/StreamReaderDelegate;->reader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v1}, Ljavax/xml/stream/XMLStreamReader;->getNamespaceContext()Ljavax/xml/namespace/NamespaceContext;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavax/xml/stream/util/StreamReaderDelegate;
    return-object v0
.end method

.method public getNamespaceCount()I
    .locals 2

    .prologue
    .line 156
    move-object v0, p0

    .local v0, "this":Ljavax/xml/stream/util/StreamReaderDelegate;
    move-object v1, v0

    iget-object v1, v1, Ljavax/xml/stream/util/StreamReaderDelegate;->reader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v1}, Ljavax/xml/stream/XMLStreamReader;->getNamespaceCount()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljavax/xml/stream/util/StreamReaderDelegate;
    return v0
.end method

.method public getNamespacePrefix(I)Ljava/lang/String;
    .locals 4

    .prologue
    .line 160
    move-object v0, p0

    .local v0, "this":Ljavax/xml/stream/util/StreamReaderDelegate;
    move v1, p1

    .local v1, "index":I
    move-object v2, v0

    iget-object v2, v2, Ljavax/xml/stream/util/StreamReaderDelegate;->reader:Ljavax/xml/stream/XMLStreamReader;

    move v3, v1

    invoke-interface {v2, v3}, Ljavax/xml/stream/XMLStreamReader;->getNamespacePrefix(I)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavax/xml/stream/util/StreamReaderDelegate;
    return-object v0
.end method

.method public getNamespaceURI()Ljava/lang/String;
    .locals 2

    .prologue
    .line 224
    move-object v0, p0

    .local v0, "this":Ljavax/xml/stream/util/StreamReaderDelegate;
    move-object v1, v0

    iget-object v1, v1, Ljavax/xml/stream/util/StreamReaderDelegate;->reader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v1}, Ljavax/xml/stream/XMLStreamReader;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavax/xml/stream/util/StreamReaderDelegate;
    return-object v0
.end method

.method public getNamespaceURI(I)Ljava/lang/String;
    .locals 4

    .prologue
    .line 164
    move-object v0, p0

    .local v0, "this":Ljavax/xml/stream/util/StreamReaderDelegate;
    move v1, p1

    .local v1, "index":I
    move-object v2, v0

    iget-object v2, v2, Ljavax/xml/stream/util/StreamReaderDelegate;->reader:Ljavax/xml/stream/XMLStreamReader;

    move v3, v1

    invoke-interface {v2, v3}, Ljavax/xml/stream/XMLStreamReader;->getNamespaceURI(I)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavax/xml/stream/util/StreamReaderDelegate;
    return-object v0
.end method

.method public getNamespaceURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 94
    move-object v0, p0

    .local v0, "this":Ljavax/xml/stream/util/StreamReaderDelegate;
    move-object v1, p1

    .local v1, "prefix":Ljava/lang/String;
    move-object v2, v0

    iget-object v2, v2, Ljavax/xml/stream/util/StreamReaderDelegate;->reader:Ljavax/xml/stream/XMLStreamReader;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljavax/xml/stream/XMLStreamReader;->getNamespaceURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavax/xml/stream/util/StreamReaderDelegate;
    return-object v0
.end method

.method public getPIData()Ljava/lang/String;
    .locals 2

    .prologue
    .line 252
    move-object v0, p0

    .local v0, "this":Ljavax/xml/stream/util/StreamReaderDelegate;
    move-object v1, v0

    iget-object v1, v1, Ljavax/xml/stream/util/StreamReaderDelegate;->reader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v1}, Ljavax/xml/stream/XMLStreamReader;->getPIData()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavax/xml/stream/util/StreamReaderDelegate;
    return-object v0
.end method

.method public getPITarget()Ljava/lang/String;
    .locals 2

    .prologue
    .line 248
    move-object v0, p0

    .local v0, "this":Ljavax/xml/stream/util/StreamReaderDelegate;
    move-object v1, v0

    iget-object v1, v1, Ljavax/xml/stream/util/StreamReaderDelegate;->reader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v1}, Ljavax/xml/stream/XMLStreamReader;->getPITarget()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavax/xml/stream/util/StreamReaderDelegate;
    return-object v0
.end method

.method public getParent()Ljavax/xml/stream/XMLStreamReader;
    .locals 2

    .prologue
    .line 53
    move-object v0, p0

    .local v0, "this":Ljavax/xml/stream/util/StreamReaderDelegate;
    move-object v1, v0

    iget-object v1, v1, Ljavax/xml/stream/util/StreamReaderDelegate;->reader:Ljavax/xml/stream/XMLStreamReader;

    move-object v0, v1

    .end local v0    # "this":Ljavax/xml/stream/util/StreamReaderDelegate;
    return-object v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 2

    .prologue
    .line 228
    move-object v0, p0

    .local v0, "this":Ljavax/xml/stream/util/StreamReaderDelegate;
    move-object v1, v0

    iget-object v1, v1, Ljavax/xml/stream/util/StreamReaderDelegate;->reader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v1}, Ljavax/xml/stream/XMLStreamReader;->getPrefix()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavax/xml/stream/util/StreamReaderDelegate;
    return-object v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 256
    move-object v0, p0

    .local v0, "this":Ljavax/xml/stream/util/StreamReaderDelegate;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, v0

    iget-object v2, v2, Ljavax/xml/stream/util/StreamReaderDelegate;->reader:Ljavax/xml/stream/XMLStreamReader;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljavax/xml/stream/XMLStreamReader;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavax/xml/stream/util/StreamReaderDelegate;
    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 172
    move-object v0, p0

    .local v0, "this":Ljavax/xml/stream/util/StreamReaderDelegate;
    move-object v1, v0

    iget-object v1, v1, Ljavax/xml/stream/util/StreamReaderDelegate;->reader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v1}, Ljavax/xml/stream/XMLStreamReader;->getText()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavax/xml/stream/util/StreamReaderDelegate;
    return-object v0
.end method

.method public getTextCharacters(I[CII)I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 180
    move-object v0, p0

    .local v0, "this":Ljavax/xml/stream/util/StreamReaderDelegate;
    move v1, p1

    .local v1, "sourceStart":I
    move-object v2, p2

    .local v2, "target":[C
    move v3, p3

    .local v3, "targetStart":I
    move v4, p4

    .local v4, "length":I
    move-object v5, v0

    iget-object v5, v5, Ljavax/xml/stream/util/StreamReaderDelegate;->reader:Ljavax/xml/stream/XMLStreamReader;

    move v6, v1

    move-object v7, v2

    move v8, v3

    move v9, v4

    invoke-interface {v5, v6, v7, v8, v9}, Ljavax/xml/stream/XMLStreamReader;->getTextCharacters(I[CII)I

    move-result v5

    move v0, v5

    .end local v0    # "this":Ljavax/xml/stream/util/StreamReaderDelegate;
    return v0
.end method

.method public getTextCharacters()[C
    .locals 2

    .prologue
    .line 188
    move-object v0, p0

    .local v0, "this":Ljavax/xml/stream/util/StreamReaderDelegate;
    move-object v1, v0

    iget-object v1, v1, Ljavax/xml/stream/util/StreamReaderDelegate;->reader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v1}, Ljavax/xml/stream/XMLStreamReader;->getTextCharacters()[C

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavax/xml/stream/util/StreamReaderDelegate;
    return-object v0
.end method

.method public getTextLength()I
    .locals 2

    .prologue
    .line 196
    move-object v0, p0

    .local v0, "this":Ljavax/xml/stream/util/StreamReaderDelegate;
    move-object v1, v0

    iget-object v1, v1, Ljavax/xml/stream/util/StreamReaderDelegate;->reader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v1}, Ljavax/xml/stream/XMLStreamReader;->getTextLength()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljavax/xml/stream/util/StreamReaderDelegate;
    return v0
.end method

.method public getTextStart()I
    .locals 2

    .prologue
    .line 192
    move-object v0, p0

    .local v0, "this":Ljavax/xml/stream/util/StreamReaderDelegate;
    move-object v1, v0

    iget-object v1, v1, Ljavax/xml/stream/util/StreamReaderDelegate;->reader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v1}, Ljavax/xml/stream/XMLStreamReader;->getTextStart()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljavax/xml/stream/util/StreamReaderDelegate;
    return v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 232
    move-object v0, p0

    .local v0, "this":Ljavax/xml/stream/util/StreamReaderDelegate;
    move-object v1, v0

    iget-object v1, v1, Ljavax/xml/stream/util/StreamReaderDelegate;->reader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v1}, Ljavax/xml/stream/XMLStreamReader;->getVersion()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavax/xml/stream/util/StreamReaderDelegate;
    return-object v0
.end method

.method public hasName()Z
    .locals 2

    .prologue
    .line 220
    move-object v0, p0

    .local v0, "this":Ljavax/xml/stream/util/StreamReaderDelegate;
    move-object v1, v0

    iget-object v1, v1, Ljavax/xml/stream/util/StreamReaderDelegate;->reader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v1}, Ljavax/xml/stream/XMLStreamReader;->hasName()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljavax/xml/stream/util/StreamReaderDelegate;
    return v0
.end method

.method public hasNext()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 83
    move-object v0, p0

    .local v0, "this":Ljavax/xml/stream/util/StreamReaderDelegate;
    move-object v1, v0

    iget-object v1, v1, Ljavax/xml/stream/util/StreamReaderDelegate;->reader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v1}, Ljavax/xml/stream/XMLStreamReader;->hasNext()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljavax/xml/stream/util/StreamReaderDelegate;
    return v0
.end method

.method public hasText()Z
    .locals 2

    .prologue
    .line 204
    move-object v0, p0

    .local v0, "this":Ljavax/xml/stream/util/StreamReaderDelegate;
    move-object v1, v0

    iget-object v1, v1, Ljavax/xml/stream/util/StreamReaderDelegate;->reader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v1}, Ljavax/xml/stream/XMLStreamReader;->hasText()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljavax/xml/stream/util/StreamReaderDelegate;
    return v0
.end method

.method public isAttributeSpecified(I)Z
    .locals 4

    .prologue
    .line 152
    move-object v0, p0

    .local v0, "this":Ljavax/xml/stream/util/StreamReaderDelegate;
    move v1, p1

    .local v1, "index":I
    move-object v2, v0

    iget-object v2, v2, Ljavax/xml/stream/util/StreamReaderDelegate;->reader:Ljavax/xml/stream/XMLStreamReader;

    move v3, v1

    invoke-interface {v2, v3}, Ljavax/xml/stream/XMLStreamReader;->isAttributeSpecified(I)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Ljavax/xml/stream/util/StreamReaderDelegate;
    return v0
.end method

.method public isCharacters()Z
    .locals 2

    .prologue
    .line 110
    move-object v0, p0

    .local v0, "this":Ljavax/xml/stream/util/StreamReaderDelegate;
    move-object v1, v0

    iget-object v1, v1, Ljavax/xml/stream/util/StreamReaderDelegate;->reader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v1}, Ljavax/xml/stream/XMLStreamReader;->isCharacters()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljavax/xml/stream/util/StreamReaderDelegate;
    return v0
.end method

.method public isEndElement()Z
    .locals 2

    .prologue
    .line 106
    move-object v0, p0

    .local v0, "this":Ljavax/xml/stream/util/StreamReaderDelegate;
    move-object v1, v0

    iget-object v1, v1, Ljavax/xml/stream/util/StreamReaderDelegate;->reader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v1}, Ljavax/xml/stream/XMLStreamReader;->isEndElement()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljavax/xml/stream/util/StreamReaderDelegate;
    return v0
.end method

.method public isStandalone()Z
    .locals 2

    .prologue
    .line 236
    move-object v0, p0

    .local v0, "this":Ljavax/xml/stream/util/StreamReaderDelegate;
    move-object v1, v0

    iget-object v1, v1, Ljavax/xml/stream/util/StreamReaderDelegate;->reader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v1}, Ljavax/xml/stream/XMLStreamReader;->isStandalone()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljavax/xml/stream/util/StreamReaderDelegate;
    return v0
.end method

.method public isStartElement()Z
    .locals 2

    .prologue
    .line 102
    move-object v0, p0

    .local v0, "this":Ljavax/xml/stream/util/StreamReaderDelegate;
    move-object v1, v0

    iget-object v1, v1, Ljavax/xml/stream/util/StreamReaderDelegate;->reader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v1}, Ljavax/xml/stream/XMLStreamReader;->isStartElement()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljavax/xml/stream/util/StreamReaderDelegate;
    return v0
.end method

.method public isWhiteSpace()Z
    .locals 2

    .prologue
    .line 114
    move-object v0, p0

    .local v0, "this":Ljavax/xml/stream/util/StreamReaderDelegate;
    move-object v1, v0

    iget-object v1, v1, Ljavax/xml/stream/util/StreamReaderDelegate;->reader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v1}, Ljavax/xml/stream/XMLStreamReader;->isWhiteSpace()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljavax/xml/stream/util/StreamReaderDelegate;
    return v0
.end method

.method public next()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 59
    move-object v0, p0

    .local v0, "this":Ljavax/xml/stream/util/StreamReaderDelegate;
    move-object v1, v0

    iget-object v1, v1, Ljavax/xml/stream/util/StreamReaderDelegate;->reader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v1}, Ljavax/xml/stream/XMLStreamReader;->next()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljavax/xml/stream/util/StreamReaderDelegate;
    return v0
.end method

.method public nextTag()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 65
    move-object v0, p0

    .local v0, "this":Ljavax/xml/stream/util/StreamReaderDelegate;
    move-object v1, v0

    iget-object v1, v1, Ljavax/xml/stream/util/StreamReaderDelegate;->reader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v1}, Ljavax/xml/stream/XMLStreamReader;->nextTag()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljavax/xml/stream/util/StreamReaderDelegate;
    return v0
.end method

.method public require(ILjava/lang/String;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 77
    move-object v0, p0

    .local v0, "this":Ljavax/xml/stream/util/StreamReaderDelegate;
    move v1, p1

    .local v1, "type":I
    move-object v2, p2

    .local v2, "namespaceURI":Ljava/lang/String;
    move-object v3, p3

    .local v3, "localName":Ljava/lang/String;
    move-object v4, v0

    iget-object v4, v4, Ljavax/xml/stream/util/StreamReaderDelegate;->reader:Ljavax/xml/stream/XMLStreamReader;

    move v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-interface {v4, v5, v6, v7}, Ljavax/xml/stream/XMLStreamReader;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 78
    return-void
.end method

.method public setParent(Ljavax/xml/stream/XMLStreamReader;)V
    .locals 4

    .prologue
    .line 45
    move-object v0, p0

    .local v0, "this":Ljavax/xml/stream/util/StreamReaderDelegate;
    move-object v1, p1

    .local v1, "reader":Ljavax/xml/stream/XMLStreamReader;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavax/xml/stream/util/StreamReaderDelegate;->reader:Ljavax/xml/stream/XMLStreamReader;

    .line 46
    return-void
.end method

.method public standaloneSet()Z
    .locals 2

    .prologue
    .line 240
    move-object v0, p0

    .local v0, "this":Ljavax/xml/stream/util/StreamReaderDelegate;
    move-object v1, v0

    iget-object v1, v1, Ljavax/xml/stream/util/StreamReaderDelegate;->reader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v1}, Ljavax/xml/stream/XMLStreamReader;->standaloneSet()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljavax/xml/stream/util/StreamReaderDelegate;
    return v0
.end method
