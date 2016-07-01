.class public Lcom/sun/xml/stream/events/EndDocumentEvent;
.super Lcom/sun/xml/stream/events/DummyEvent;
.source "EndDocumentEvent.java"

# interfaces
.implements Ljavax/xml/stream/events/EndDocument;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 60
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/events/EndDocumentEvent;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/xml/stream/events/DummyEvent;-><init>()V

    .line 61
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/xml/stream/events/EndDocumentEvent;->init()V

    .line 62
    return-void
.end method


# virtual methods
.method protected init()V
    .locals 3

    .prologue
    .line 65
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/events/EndDocumentEvent;
    move-object v1, v0

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/sun/xml/stream/events/EndDocumentEvent;->setEventType(I)V

    .line 66
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 69
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/events/EndDocumentEvent;
    const-string v1, "ENDDOCUMENT"

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/events/EndDocumentEvent;
    return-object v0
.end method

.method protected writeAsEncodedUnicodeEx(Ljava/io/Writer;)V
    .locals 0
    .param p1, "writer"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 76
    return-void
.end method
