.class public Lcom/sun/xml/stream/events/ProcessingInstructionEvent;
.super Lcom/sun/xml/stream/events/DummyEvent;
.source "ProcessingInstructionEvent.java"

# interfaces
.implements Ljavax/xml/stream/events/ProcessingInstruction;


# instance fields
.field private fContent:Ljava/lang/String;

.field private fName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 67
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/events/ProcessingInstructionEvent;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/xml/stream/events/DummyEvent;-><init>()V

    .line 68
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/xml/stream/events/ProcessingInstructionEvent;->init()V

    .line 69
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 72
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/events/ProcessingInstructionEvent;
    move-object v1, p1

    .local v1, "targetName":Ljava/lang/String;
    move-object v2, p2

    .local v2, "data":Ljava/lang/String;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Lcom/sun/xml/stream/events/ProcessingInstructionEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljavax/xml/stream/Location;)V

    .line 73
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljavax/xml/stream/Location;)V
    .locals 6

    .prologue
    .line 75
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/events/ProcessingInstructionEvent;
    move-object v1, p1

    .local v1, "targetName":Ljava/lang/String;
    move-object v2, p2

    .local v2, "data":Ljava/lang/String;
    move-object v3, p3

    .local v3, "loc":Ljavax/xml/stream/Location;
    move-object v4, v0

    invoke-direct {v4}, Lcom/sun/xml/stream/events/DummyEvent;-><init>()V

    .line 76
    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/xml/stream/events/ProcessingInstructionEvent;->init()V

    .line 77
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/sun/xml/stream/events/ProcessingInstructionEvent;->fName:Ljava/lang/String;

    .line 78
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lcom/sun/xml/stream/events/ProcessingInstructionEvent;->fContent:Ljava/lang/String;

    .line 79
    move-object v4, v0

    move-object v5, v3

    invoke-virtual {v4, v5}, Lcom/sun/xml/stream/events/ProcessingInstructionEvent;->setLocation(Ljavax/xml/stream/Location;)V

    .line 80
    return-void
.end method


# virtual methods
.method public getData()Ljava/lang/String;
    .locals 2

    .prologue
    .line 99
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/events/ProcessingInstructionEvent;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/events/ProcessingInstructionEvent;->fContent:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/events/ProcessingInstructionEvent;
    return-object v0
.end method

.method public getTarget()Ljava/lang/String;
    .locals 2

    .prologue
    .line 87
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/events/ProcessingInstructionEvent;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/events/ProcessingInstructionEvent;->fName:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/events/ProcessingInstructionEvent;
    return-object v0
.end method

.method protected init()V
    .locals 3

    .prologue
    .line 83
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/events/ProcessingInstructionEvent;
    move-object v1, v0

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/sun/xml/stream/events/ProcessingInstructionEvent;->setEventType(I)V

    .line 84
    return-void
.end method

.method public setData(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 95
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/events/ProcessingInstructionEvent;
    move-object v1, p1

    .local v1, "data":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/xml/stream/events/ProcessingInstructionEvent;->fContent:Ljava/lang/String;

    .line 96
    return-void
.end method

.method public setTarget(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 91
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/events/ProcessingInstructionEvent;
    move-object v1, p1

    .local v1, "targetName":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/xml/stream/events/ProcessingInstructionEvent;->fName:Ljava/lang/String;

    .line 92
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 103
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/events/ProcessingInstructionEvent;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/events/ProcessingInstructionEvent;->fContent:Ljava/lang/String;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/events/ProcessingInstructionEvent;->fName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 104
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/events/ProcessingInstructionEvent;->fName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/events/ProcessingInstructionEvent;->fContent:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 110
    .end local v0    # "this":Lcom/sun/xml/stream/events/ProcessingInstructionEvent;
    :goto_0
    return-object v0

    .line 105
    .restart local v0    # "this":Lcom/sun/xml/stream/events/ProcessingInstructionEvent;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/events/ProcessingInstructionEvent;->fName:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 106
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/events/ProcessingInstructionEvent;->fName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    goto :goto_0

    .line 107
    :cond_1
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/events/ProcessingInstructionEvent;->fContent:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 108
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/xml/stream/events/ProcessingInstructionEvent;->fContent:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    goto :goto_0

    .line 110
    :cond_2
    const-string v1, "<??>"

    move-object v0, v1

    goto :goto_0
.end method

.method protected writeAsEncodedUnicodeEx(Ljava/io/Writer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 116
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/events/ProcessingInstructionEvent;
    move-object v1, p1

    .local v1, "writer":Ljava/io/Writer;
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/xml/stream/events/ProcessingInstructionEvent;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 117
    return-void
.end method
