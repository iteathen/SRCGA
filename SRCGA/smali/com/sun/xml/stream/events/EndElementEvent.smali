.class public Lcom/sun/xml/stream/events/EndElementEvent;
.super Lcom/sun/xml/stream/events/DummyEvent;
.source "EndElementEvent.java"

# interfaces
.implements Ljavax/xml/stream/events/EndElement;


# instance fields
.field fNamespaces:Ljava/util/List;

.field fQName:Ljavax/xml/namespace/QName;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 69
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/events/EndElementEvent;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/xml/stream/events/DummyEvent;-><init>()V

    .line 66
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sun/xml/stream/events/EndElementEvent;->fNamespaces:Ljava/util/List;

    .line 70
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/xml/stream/events/EndElementEvent;->init()V

    .line 71
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    .prologue
    .line 80
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/events/EndElementEvent;
    move-object v1, p1

    .local v1, "prefix":Ljava/lang/String;
    move-object v2, p2

    .local v2, "uri":Ljava/lang/String;
    move-object v3, p3

    .local v3, "localpart":Ljava/lang/String;
    move-object v4, v0

    new-instance v5, Ljavax/xml/namespace/QName;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v2

    move-object v8, v3

    move-object v9, v1

    invoke-direct {v6, v7, v8, v9}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v4, v5}, Lcom/sun/xml/stream/events/EndElementEvent;-><init>(Ljavax/xml/namespace/QName;)V

    .line 81
    return-void
.end method

.method public constructor <init>(Ljavax/xml/namespace/QName;)V
    .locals 4

    .prologue
    .line 83
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/events/EndElementEvent;
    move-object v1, p1

    .local v1, "qname":Ljavax/xml/namespace/QName;
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/xml/stream/events/DummyEvent;-><init>()V

    .line 66
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/sun/xml/stream/events/EndElementEvent;->fNamespaces:Ljava/util/List;

    .line 84
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/xml/stream/events/EndElementEvent;->fQName:Ljavax/xml/namespace/QName;

    .line 85
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/xml/stream/events/EndElementEvent;->init()V

    .line 86
    return-void
.end method


# virtual methods
.method addNamespace(Ljavax/xml/stream/events/Namespace;)V
    .locals 4

    .prologue
    .line 124
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/events/EndElementEvent;
    move-object v1, p1

    .local v1, "attr":Ljavax/xml/stream/events/Namespace;
    move-object v2, v1

    if-eqz v2, :cond_0

    .line 125
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/events/EndElementEvent;->fNamespaces:Ljava/util/List;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 127
    :cond_0
    return-void
.end method

.method public getName()Ljavax/xml/namespace/QName;
    .locals 2

    .prologue
    .line 89
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/events/EndElementEvent;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/events/EndElementEvent;->fQName:Ljavax/xml/namespace/QName;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/events/EndElementEvent;
    return-object v0
.end method

.method public getNamespaces()Ljava/util/Iterator;
    .locals 4

    .prologue
    .line 118
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/events/EndElementEvent;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/events/EndElementEvent;->fNamespaces:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 119
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/events/EndElementEvent;->fNamespaces:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 120
    :cond_0
    new-instance v1, Lcom/sun/xml/stream/util/ReadOnlyIterator;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Lcom/sun/xml/stream/util/ReadOnlyIterator;-><init>()V

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/events/EndElementEvent;
    return-object v0
.end method

.method protected init()V
    .locals 5

    .prologue
    .line 74
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/events/EndElementEvent;
    move-object v1, v0

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/sun/xml/stream/events/EndElementEvent;->setEventType(I)V

    .line 75
    move-object v1, v0

    new-instance v2, Ljava/util/ArrayList;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lcom/sun/xml/stream/events/EndElementEvent;->fNamespaces:Ljava/util/List;

    .line 76
    return-void
.end method

.method public nameAsString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 136
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/events/EndElementEvent;
    const-string v1, ""

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/events/EndElementEvent;->fQName:Ljavax/xml/namespace/QName;

    invoke-virtual {v2}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 137
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/events/EndElementEvent;->fQName:Ljavax/xml/namespace/QName;

    invoke-virtual {v1}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 141
    .end local v0    # "this":Lcom/sun/xml/stream/events/EndElementEvent;
    :goto_0
    return-object v0

    .line 138
    .restart local v0    # "this":Lcom/sun/xml/stream/events/EndElementEvent;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/events/EndElementEvent;->fQName:Ljavax/xml/namespace/QName;

    invoke-virtual {v1}, Ljavax/xml/namespace/QName;->getPrefix()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 139
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/events/EndElementEvent;->fQName:Ljavax/xml/namespace/QName;

    invoke-virtual {v2}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\']:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/events/EndElementEvent;->fQName:Ljavax/xml/namespace/QName;

    invoke-virtual {v2}, Ljavax/xml/namespace/QName;->getPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/events/EndElementEvent;->fQName:Ljavax/xml/namespace/QName;

    invoke-virtual {v2}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    goto :goto_0

    .line 141
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/events/EndElementEvent;->fQName:Ljavax/xml/namespace/QName;

    invoke-virtual {v2}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\']:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/events/EndElementEvent;->fQName:Ljavax/xml/namespace/QName;

    invoke-virtual {v2}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    goto :goto_0
.end method

.method public setName(Ljavax/xml/namespace/QName;)V
    .locals 4

    .prologue
    .line 93
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/events/EndElementEvent;
    move-object v1, p1

    .local v1, "qname":Ljavax/xml/namespace/QName;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/xml/stream/events/EndElementEvent;->fQName:Ljavax/xml/namespace/QName;

    .line 94
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 130
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/events/EndElementEvent;
    new-instance v2, Ljava/lang/StringBuilder;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "</"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/xml/stream/events/EndElementEvent;->nameAsString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 131
    .local v1, "s":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 132
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/xml/stream/events/EndElementEvent;
    return-object v0
.end method

.method protected writeAsEncodedUnicodeEx(Ljava/io/Writer;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 100
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/events/EndElementEvent;
    move-object v1, p1

    .local v1, "writer":Ljava/io/Writer;
    move-object v3, v1

    const-string v4, "</"

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 101
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/events/EndElementEvent;->fQName:Ljavax/xml/namespace/QName;

    invoke-virtual {v3}, Ljavax/xml/namespace/QName;->getPrefix()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 102
    .local v2, "prefix":Ljava/lang/String;
    move-object v3, v2

    if-eqz v3, :cond_0

    move-object v3, v2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 103
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 104
    move-object v3, v1

    const/16 v4, 0x3a

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(I)V

    .line 106
    :cond_0
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/xml/stream/events/EndElementEvent;->fQName:Ljavax/xml/namespace/QName;

    invoke-virtual {v4}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 107
    move-object v3, v1

    const/16 v4, 0x3e

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(I)V

    .line 108
    return-void
.end method
