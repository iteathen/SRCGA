.class public Lcom/sun/xml/stream/events/NamedEvent;
.super Lcom/sun/xml/stream/events/DummyEvent;
.source "NamedEvent.java"


# instance fields
.field private name:Ljavax/xml/namespace/QName;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 56
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/events/NamedEvent;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/xml/stream/events/DummyEvent;-><init>()V

    .line 57
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    .prologue
    .line 65
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/events/NamedEvent;
    move-object v1, p1

    .local v1, "prefix":Ljava/lang/String;
    move-object v2, p2

    .local v2, "uri":Ljava/lang/String;
    move-object v3, p3

    .local v3, "localpart":Ljava/lang/String;
    move-object v4, v0

    invoke-direct {v4}, Lcom/sun/xml/stream/events/DummyEvent;-><init>()V

    .line 66
    move-object v4, v0

    new-instance v5, Ljavax/xml/namespace/QName;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v2

    move-object v8, v3

    move-object v9, v1

    invoke-direct {v6, v7, v8, v9}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v5, v4, Lcom/sun/xml/stream/events/NamedEvent;->name:Ljavax/xml/namespace/QName;

    .line 67
    return-void
.end method

.method public constructor <init>(Ljavax/xml/namespace/QName;)V
    .locals 4

    .prologue
    .line 60
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/events/NamedEvent;
    move-object v1, p1

    .local v1, "qname":Ljavax/xml/namespace/QName;
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/xml/stream/events/DummyEvent;-><init>()V

    .line 61
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/xml/stream/events/NamedEvent;->name:Ljavax/xml/namespace/QName;

    .line 62
    return-void
.end method


# virtual methods
.method public getName()Ljavax/xml/namespace/QName;
    .locals 2

    .prologue
    .line 75
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/events/NamedEvent;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/events/NamedEvent;->name:Ljavax/xml/namespace/QName;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/events/NamedEvent;
    return-object v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 2

    .prologue
    .line 92
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/events/NamedEvent;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/events/NamedEvent;->name:Ljavax/xml/namespace/QName;

    invoke-virtual {v1}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/events/NamedEvent;
    return-object v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 2

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/events/NamedEvent;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/events/NamedEvent;->name:Ljavax/xml/namespace/QName;

    invoke-virtual {v1}, Ljavax/xml/namespace/QName;->getPrefix()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/events/NamedEvent;
    return-object v0
.end method

.method public nameAsString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 83
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/events/NamedEvent;
    const-string v1, ""

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/events/NamedEvent;->name:Ljavax/xml/namespace/QName;

    invoke-virtual {v2}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 84
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/events/NamedEvent;->name:Ljavax/xml/namespace/QName;

    invoke-virtual {v1}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 88
    .end local v0    # "this":Lcom/sun/xml/stream/events/NamedEvent;
    :goto_0
    return-object v0

    .line 85
    .restart local v0    # "this":Lcom/sun/xml/stream/events/NamedEvent;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/events/NamedEvent;->name:Ljavax/xml/namespace/QName;

    invoke-virtual {v1}, Ljavax/xml/namespace/QName;->getPrefix()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 86
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/events/NamedEvent;->name:Ljavax/xml/namespace/QName;

    invoke-virtual {v2}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\']:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/xml/stream/events/NamedEvent;->getPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/events/NamedEvent;->name:Ljavax/xml/namespace/QName;

    invoke-virtual {v2}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    goto :goto_0

    .line 88
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

    iget-object v2, v2, Lcom/sun/xml/stream/events/NamedEvent;->name:Ljavax/xml/namespace/QName;

    invoke-virtual {v2}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\']:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/events/NamedEvent;->name:Ljavax/xml/namespace/QName;

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
    .line 79
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/events/NamedEvent;
    move-object v1, p1

    .local v1, "qname":Ljavax/xml/namespace/QName;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/xml/stream/events/NamedEvent;->name:Ljavax/xml/namespace/QName;

    .line 80
    return-void
.end method

.method protected writeAsEncodedUnicodeEx(Ljava/io/Writer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 98
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/events/NamedEvent;
    move-object v1, p1

    .local v1, "writer":Ljava/io/Writer;
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/xml/stream/events/NamedEvent;->nameAsString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 99
    return-void
.end method
