.class public abstract Lcom/sun/xml/stream/events/DummyEvent;
.super Ljava/lang/Object;
.source "DummyEvent.java"

# interfaces
.implements Ljavax/xml/stream/events/XMLEvent;


# instance fields
.field private fEventType:I

.field protected fLocation:Ljavax/xml/stream/Location;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 73
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/events/DummyEvent;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 71
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sun/xml/stream/events/DummyEvent;->fLocation:Ljavax/xml/stream/Location;

    .line 75
    return-void
.end method

.method public constructor <init>(I)V
    .locals 4

    .prologue
    .line 77
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/events/DummyEvent;
    move v1, p1

    .local v1, "i":I
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 71
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/sun/xml/stream/events/DummyEvent;->fLocation:Ljavax/xml/stream/Location;

    .line 78
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/sun/xml/stream/events/DummyEvent;->fEventType:I

    .line 79
    return-void
.end method


# virtual methods
.method public asCharacters()Ljavax/xml/stream/events/Characters;
    .locals 2

    .prologue
    .line 130
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/events/DummyEvent;
    move-object v1, v0

    check-cast v1, Ljavax/xml/stream/events/Characters;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/events/DummyEvent;
    return-object v0
.end method

.method public asEndElement()Ljavax/xml/stream/events/EndElement;
    .locals 2

    .prologue
    .line 137
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/events/DummyEvent;
    move-object v1, v0

    check-cast v1, Ljavax/xml/stream/events/EndElement;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/events/DummyEvent;
    return-object v0
.end method

.method public asStartElement()Ljavax/xml/stream/events/StartElement;
    .locals 2

    .prologue
    .line 144
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/events/DummyEvent;
    move-object v1, v0

    check-cast v1, Ljavax/xml/stream/events/StartElement;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/events/DummyEvent;
    return-object v0
.end method

.method protected charEncode(Ljava/io/Writer;Ljava/lang/String;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 214
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/events/DummyEvent;
    move-object v1, p1

    .local v1, "writer":Ljava/io/Writer;
    move-object v2, p2

    .local v2, "data":Ljava/lang/String;
    move-object v6, v2

    if-eqz v6, :cond_0

    move-object v6, v2

    const-string v7, ""

    if-ne v6, v7, :cond_1

    .line 247
    :cond_0
    :goto_0
    return-void

    .line 215
    :cond_1
    const/4 v6, 0x0

    move v3, v6

    .local v3, "i":I
    const/4 v6, 0x0

    move v4, v6

    .line 216
    .local v4, "start":I
    move-object v6, v2

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    move v5, v6

    .line 219
    .local v5, "len":I
    :goto_1
    move v6, v3

    move v7, v5

    if-ge v6, v7, :cond_2

    .line 220
    move-object v6, v2

    move v7, v3

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    sparse-switch v6, :sswitch_data_0

    .line 219
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 222
    :sswitch_0
    move-object v6, v1

    move-object v7, v2

    move v8, v4

    move v9, v3

    move v10, v4

    sub-int/2addr v9, v10

    invoke-virtual {v6, v7, v8, v9}, Ljava/io/Writer;->write(Ljava/lang/String;II)V

    .line 223
    move-object v6, v1

    const-string v7, "&lt;"

    invoke-virtual {v6, v7}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 224
    move v6, v3

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    move v4, v6

    .line 225
    goto :goto_2

    .line 228
    :sswitch_1
    move-object v6, v1

    move-object v7, v2

    move v8, v4

    move v9, v3

    move v10, v4

    sub-int/2addr v9, v10

    invoke-virtual {v6, v7, v8, v9}, Ljava/io/Writer;->write(Ljava/lang/String;II)V

    .line 229
    move-object v6, v1

    const-string v7, "&amp;"

    invoke-virtual {v6, v7}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 230
    move v6, v3

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    move v4, v6

    .line 231
    goto :goto_2

    .line 234
    :sswitch_2
    move-object v6, v1

    move-object v7, v2

    move v8, v4

    move v9, v3

    move v10, v4

    sub-int/2addr v9, v10

    invoke-virtual {v6, v7, v8, v9}, Ljava/io/Writer;->write(Ljava/lang/String;II)V

    .line 235
    move-object v6, v1

    const-string v7, "&gt;"

    invoke-virtual {v6, v7}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 236
    move v6, v3

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    move v4, v6

    .line 237
    goto :goto_2

    .line 239
    :sswitch_3
    move-object v6, v1

    move-object v7, v2

    move v8, v4

    move v9, v3

    move v10, v4

    sub-int/2addr v9, v10

    invoke-virtual {v6, v7, v8, v9}, Ljava/io/Writer;->write(Ljava/lang/String;II)V

    .line 240
    move-object v6, v1

    const-string v7, "&quot;"

    invoke-virtual {v6, v7}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 241
    move v6, v3

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    move v4, v6

    goto :goto_2

    .line 246
    :cond_2
    move-object v6, v1

    move-object v7, v2

    move v8, v4

    move v9, v5

    move v10, v4

    sub-int/2addr v9, v10

    invoke-virtual {v6, v7, v8, v9}, Ljava/io/Writer;->write(Ljava/lang/String;II)V

    .line 247
    goto :goto_0

    .line 220
    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_3
        0x26 -> :sswitch_1
        0x3c -> :sswitch_0
        0x3e -> :sswitch_2
    .end sparse-switch
.end method

.method public getEventType()I
    .locals 2

    .prologue
    .line 82
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/events/DummyEvent;
    move-object v1, v0

    iget v1, v1, Lcom/sun/xml/stream/events/DummyEvent;->fEventType:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/events/DummyEvent;
    return v0
.end method

.method public getLocation()Ljavax/xml/stream/Location;
    .locals 2

    .prologue
    .line 119
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/events/DummyEvent;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/xml/stream/events/DummyEvent;->fLocation:Ljavax/xml/stream/Location;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/events/DummyEvent;
    return-object v0
.end method

.method public getSchemaType()Ljavax/xml/namespace/QName;
    .locals 2

    .prologue
    .line 154
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/events/DummyEvent;
    const/4 v1, 0x0

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/events/DummyEvent;
    return-object v0
.end method

.method public isAttribute()Z
    .locals 3

    .prologue
    .line 161
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/events/DummyEvent;
    move-object v1, v0

    iget v1, v1, Lcom/sun/xml/stream/events/DummyEvent;->fEventType:I

    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/events/DummyEvent;
    return v0

    .restart local v0    # "this":Lcom/sun/xml/stream/events/DummyEvent;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isCharacterData()Z
    .locals 3

    .prologue
    .line 107
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/events/DummyEvent;
    move-object v1, v0

    iget v1, v1, Lcom/sun/xml/stream/events/DummyEvent;->fEventType:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/events/DummyEvent;
    return v0

    .restart local v0    # "this":Lcom/sun/xml/stream/events/DummyEvent;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isCharacters()Z
    .locals 3

    .prologue
    .line 168
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/events/DummyEvent;
    move-object v1, v0

    iget v1, v1, Lcom/sun/xml/stream/events/DummyEvent;->fEventType:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/events/DummyEvent;
    return v0

    .restart local v0    # "this":Lcom/sun/xml/stream/events/DummyEvent;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isEndDocument()Z
    .locals 3

    .prologue
    .line 115
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/events/DummyEvent;
    move-object v1, v0

    iget v1, v1, Lcom/sun/xml/stream/events/DummyEvent;->fEventType:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/events/DummyEvent;
    return v0

    .restart local v0    # "this":Lcom/sun/xml/stream/events/DummyEvent;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isEndElement()Z
    .locals 3

    .prologue
    .line 95
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/events/DummyEvent;
    move-object v1, v0

    iget v1, v1, Lcom/sun/xml/stream/events/DummyEvent;->fEventType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/events/DummyEvent;
    return v0

    .restart local v0    # "this":Lcom/sun/xml/stream/events/DummyEvent;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isEntityReference()Z
    .locals 3

    .prologue
    .line 99
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/events/DummyEvent;
    move-object v1, v0

    iget v1, v1, Lcom/sun/xml/stream/events/DummyEvent;->fEventType:I

    const/16 v2, 0x9

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/events/DummyEvent;
    return v0

    .restart local v0    # "this":Lcom/sun/xml/stream/events/DummyEvent;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isNamespace()Z
    .locals 3

    .prologue
    .line 175
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/events/DummyEvent;
    move-object v1, v0

    iget v1, v1, Lcom/sun/xml/stream/events/DummyEvent;->fEventType:I

    const/16 v2, 0xd

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/events/DummyEvent;
    return v0

    .restart local v0    # "this":Lcom/sun/xml/stream/events/DummyEvent;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isProcessingInstruction()Z
    .locals 3

    .prologue
    .line 103
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/events/DummyEvent;
    move-object v1, v0

    iget v1, v1, Lcom/sun/xml/stream/events/DummyEvent;->fEventType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/events/DummyEvent;
    return v0

    .restart local v0    # "this":Lcom/sun/xml/stream/events/DummyEvent;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isStartDocument()Z
    .locals 3

    .prologue
    .line 111
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/events/DummyEvent;
    move-object v1, v0

    iget v1, v1, Lcom/sun/xml/stream/events/DummyEvent;->fEventType:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/events/DummyEvent;
    return v0

    .restart local v0    # "this":Lcom/sun/xml/stream/events/DummyEvent;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isStartElement()Z
    .locals 3

    .prologue
    .line 91
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/events/DummyEvent;
    move-object v1, v0

    iget v1, v1, Lcom/sun/xml/stream/events/DummyEvent;->fEventType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/sun/xml/stream/events/DummyEvent;
    return v0

    .restart local v0    # "this":Lcom/sun/xml/stream/events/DummyEvent;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected setEventType(I)V
    .locals 4

    .prologue
    .line 86
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/events/DummyEvent;
    move v1, p1

    .local v1, "eventType":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/sun/xml/stream/events/DummyEvent;->fEventType:I

    .line 87
    return-void
.end method

.method setLocation(Ljavax/xml/stream/Location;)V
    .locals 4

    .prologue
    .line 123
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/events/DummyEvent;
    move-object v1, p1

    .local v1, "loc":Ljavax/xml/stream/Location;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/xml/stream/events/DummyEvent;->fLocation:Ljavax/xml/stream/Location;

    .line 124
    return-void
.end method

.method public writeAsEncodedUnicode(Ljava/io/Writer;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .prologue
    .line 195
    move-object v0, p0

    .local v0, "this":Lcom/sun/xml/stream/events/DummyEvent;
    move-object v1, p1

    .local v1, "writer":Ljava/io/Writer;
    move-object v3, v0

    move-object v4, v1

    :try_start_0
    invoke-virtual {v3, v4}, Lcom/sun/xml/stream/events/DummyEvent;->writeAsEncodedUnicodeEx(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    .line 199
    return-void

    .line 196
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 197
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Lcom/sun/xml/stream/XMLStreamException2;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v2

    invoke-direct {v4, v5}, Lcom/sun/xml/stream/XMLStreamException2;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method protected abstract writeAsEncodedUnicodeEx(Ljava/io/Writer;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation
.end method
