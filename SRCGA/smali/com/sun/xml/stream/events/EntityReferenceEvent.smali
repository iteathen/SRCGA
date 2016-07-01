.class public Lcom/sun/xml/stream/events/EntityReferenceEvent;
.super Lcom/sun/xml/stream/events/DummyEvent;
.source "EntityReferenceEvent.java"

# interfaces
.implements Ljavax/xml/stream/events/EntityReference;


# instance fields
.field private fEntityDeclaration:Ljavax/xml/stream/events/EntityDeclaration;

.field private fEntityName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 60
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/events/EntityReferenceEvent;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/xml/stream/events/DummyEvent;-><init>()V

    .line 61
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/xml/stream/events/EntityReferenceEvent;->init()V

    .line 62
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljavax/xml/stream/events/EntityDeclaration;)V
    .locals 5

    .prologue
    .line 64
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/events/EntityReferenceEvent;
    move-object v1, p1

    .local v1, "entityName":Ljava/lang/String;
    move-object v2, p2

    .local v2, "entityDeclaration":Ljavax/xml/stream/events/EntityDeclaration;
    move-object v3, v0

    invoke-direct {v3}, Lcom/sun/xml/stream/events/DummyEvent;-><init>()V

    .line 65
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/xml/stream/events/EntityReferenceEvent;->init()V

    .line 66
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/sun/xml/stream/events/EntityReferenceEvent;->fEntityName:Ljava/lang/String;

    .line 67
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/sun/xml/stream/events/EntityReferenceEvent;->fEntityDeclaration:Ljavax/xml/stream/events/EntityDeclaration;

    .line 68
    return-void
.end method


# virtual methods
.method public getDeclaration()Ljavax/xml/stream/events/EntityDeclaration;
    .locals 2

    .prologue
    .line 90
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/events/EntityReferenceEvent;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/events/EntityReferenceEvent;->fEntityDeclaration:Ljavax/xml/stream/events/EntityDeclaration;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/events/EntityReferenceEvent;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 71
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/events/EntityReferenceEvent;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/events/EntityReferenceEvent;->fEntityName:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/events/EntityReferenceEvent;
    return-object v0
.end method

.method protected init()V
    .locals 3

    .prologue
    .line 94
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/events/EntityReferenceEvent;
    move-object v1, v0

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Lcom/sun/xml/stream/events/EntityReferenceEvent;->setEventType(I)V

    .line 95
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 75
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/events/EntityReferenceEvent;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/events/EntityReferenceEvent;->fEntityDeclaration:Ljavax/xml/stream/events/EntityDeclaration;

    invoke-interface {v2}, Ljavax/xml/stream/events/EntityDeclaration;->getReplacementText()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 76
    .local v1, "text":Ljava/lang/String;
    move-object v2, v1

    if-nez v2, :cond_0

    .line 77
    const-string v2, ""

    move-object v1, v2

    .line 78
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "&"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/xml/stream/events/EntityReferenceEvent;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/xml/stream/events/EntityReferenceEvent;
    return-object v0
.end method

.method protected writeAsEncodedUnicodeEx(Ljava/io/Writer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 84
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/events/EntityReferenceEvent;
    move-object v1, p1

    .local v1, "writer":Ljava/io/Writer;
    move-object v2, v1

    const/16 v3, 0x26

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(I)V

    .line 85
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/xml/stream/events/EntityReferenceEvent;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 86
    move-object v2, v1

    const/16 v3, 0x3b

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(I)V

    .line 87
    return-void
.end method
