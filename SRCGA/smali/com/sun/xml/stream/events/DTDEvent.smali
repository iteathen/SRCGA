.class public Lcom/sun/xml/stream/events/DTDEvent;
.super Lcom/sun/xml/stream/events/DummyEvent;
.source "DTDEvent.java"

# interfaces
.implements Ljavax/xml/stream/events/DTD;


# instance fields
.field private fDoctypeDeclaration:Ljava/lang/String;

.field private fEntities:Ljava/util/List;

.field private fNotations:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 77
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/events/DTDEvent;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/xml/stream/events/DummyEvent;-><init>()V

    .line 78
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/xml/stream/events/DTDEvent;->init()V

    .line 79
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 81
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/events/DTDEvent;
    move-object v1, p1

    .local v1, "doctypeDeclaration":Ljava/lang/String;
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/xml/stream/events/DummyEvent;-><init>()V

    .line 82
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/xml/stream/events/DTDEvent;->init()V

    .line 83
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/xml/stream/events/DTDEvent;->fDoctypeDeclaration:Ljava/lang/String;

    .line 84
    return-void
.end method


# virtual methods
.method public getDocumentTypeDeclaration()Ljava/lang/String;
    .locals 2

    .prologue
    .line 91
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/events/DTDEvent;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/events/DTDEvent;->fDoctypeDeclaration:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/events/DTDEvent;
    return-object v0
.end method

.method public getEntities()Ljava/util/List;
    .locals 2

    .prologue
    .line 102
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/events/DTDEvent;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/events/DTDEvent;->fEntities:Ljava/util/List;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/events/DTDEvent;
    return-object v0
.end method

.method public getNotations()Ljava/util/List;
    .locals 2

    .prologue
    .line 113
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/events/DTDEvent;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/events/DTDEvent;->fNotations:Ljava/util/List;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/events/DTDEvent;
    return-object v0
.end method

.method public getProcessedDTD()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 122
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/events/DTDEvent;
    const/4 v1, 0x0

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/events/DTDEvent;
    return-object v0
.end method

.method protected init()V
    .locals 3

    .prologue
    .line 126
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/events/DTDEvent;
    move-object v1, v0

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Lcom/sun/xml/stream/events/DTDEvent;->setEventType(I)V

    .line 127
    return-void
.end method

.method public setDocumentTypeDeclaration(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 87
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/events/DTDEvent;
    move-object v1, p1

    .local v1, "doctypeDeclaration":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/xml/stream/events/DTDEvent;->fDoctypeDeclaration:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public setEntities(Ljava/util/List;)V
    .locals 4

    .prologue
    .line 98
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/events/DTDEvent;
    move-object v1, p1

    .local v1, "entites":Ljava/util/List;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/xml/stream/events/DTDEvent;->fEntities:Ljava/util/List;

    .line 99
    return-void
.end method

.method public setNotations(Ljava/util/List;)V
    .locals 4

    .prologue
    .line 109
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/events/DTDEvent;
    move-object v1, p1

    .local v1, "notations":Ljava/util/List;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/xml/stream/events/DTDEvent;->fNotations:Ljava/util/List;

    .line 110
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 130
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/events/DTDEvent;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/events/DTDEvent;->fDoctypeDeclaration:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/events/DTDEvent;
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
    .line 136
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/events/DTDEvent;
    move-object v1, p1

    .local v1, "writer":Ljava/io/Writer;
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/xml/stream/events/DTDEvent;->fDoctypeDeclaration:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 137
    return-void
.end method
