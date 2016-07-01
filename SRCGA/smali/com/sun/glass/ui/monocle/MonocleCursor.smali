.class final Lcom/sun/glass/ui/monocle/MonocleCursor;
.super Lcom/sun/glass/ui/Cursor;
.source "MonocleCursor.java"


# instance fields
.field private hotspotX:I

.field private hotspotY:I

.field private image:[B


# direct methods
.method constructor <init>(I)V
    .locals 4

    .prologue
    .line 41
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/MonocleCursor;
    move v1, p1

    .local v1, "type":I
    move-object v2, v0

    move v3, v1

    invoke-direct {v2, v3}, Lcom/sun/glass/ui/Cursor;-><init>(I)V

    .line 42
    move-object v2, v0

    move v3, v1

    invoke-static {v3}, Lcom/sun/glass/ui/monocle/MonocleCursor;->getImage(I)[B

    move-result-object v3

    iput-object v3, v2, Lcom/sun/glass/ui/monocle/MonocleCursor;->image:[B

    .line 43
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Lcom/sun/glass/ui/monocle/MonocleCursor;->hotspotX:I

    .line 44
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Lcom/sun/glass/ui/monocle/MonocleCursor;->hotspotY:I

    .line 45
    return-void
.end method

.method constructor <init>(IILcom/sun/glass/ui/Pixels;)V
    .locals 8

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/MonocleCursor;
    move v1, p1

    .local v1, "x":I
    move v2, p2

    .local v2, "y":I
    move-object v3, p3

    .local v3, "pixels":Lcom/sun/glass/ui/Pixels;
    move-object v4, v0

    move v5, v1

    move v6, v2

    move-object v7, v3

    invoke-direct {v4, v5, v6, v7}, Lcom/sun/glass/ui/Cursor;-><init>(IILcom/sun/glass/ui/Pixels;)V

    .line 49
    return-void
.end method

.method private static cursorResourceName(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 75
    move v0, p0

    .local v0, "cursorType":I
    move v1, v0

    packed-switch v1, :pswitch_data_0

    .line 94
    const-string v1, "Default"

    move-object v0, v1

    .end local v0    # "cursorType":I
    :goto_0
    return-object v0

    .line 76
    .restart local v0    # "cursorType":I
    :pswitch_0
    const-string v1, "ClosedHand"

    move-object v0, v1

    goto :goto_0

    .line 77
    :pswitch_1
    const-string v1, "Crosshair"

    move-object v0, v1

    goto :goto_0

    .line 78
    :pswitch_2
    const-string v1, "Disappear"

    move-object v0, v1

    goto :goto_0

    .line 79
    :pswitch_3
    const-string v1, "Move"

    move-object v0, v1

    goto :goto_0

    .line 80
    :pswitch_4
    const-string v1, "OpenHand"

    move-object v0, v1

    goto :goto_0

    .line 81
    :pswitch_5
    const-string v1, "PointingHand"

    move-object v0, v1

    goto :goto_0

    .line 82
    :pswitch_6
    const-string v1, "ResizeDown"

    move-object v0, v1

    goto :goto_0

    .line 83
    :pswitch_7
    const-string v1, "ResizeLeft"

    move-object v0, v1

    goto :goto_0

    .line 84
    :pswitch_8
    const-string v1, "ResizeLeftRight"

    move-object v0, v1

    goto :goto_0

    .line 85
    :pswitch_9
    const-string v1, "ResizeNorthEast"

    move-object v0, v1

    goto :goto_0

    .line 86
    :pswitch_a
    const-string v1, "ResizeNorthWest"

    move-object v0, v1

    goto :goto_0

    .line 87
    :pswitch_b
    const-string v1, "ResizeRight"

    move-object v0, v1

    goto :goto_0

    .line 88
    :pswitch_c
    const-string v1, "ResizeSouthEast"

    move-object v0, v1

    goto :goto_0

    .line 89
    :pswitch_d
    const-string v1, "ResizeSouthWest"

    move-object v0, v1

    goto :goto_0

    .line 90
    :pswitch_e
    const-string v1, "ResizeUp"

    move-object v0, v1

    goto :goto_0

    .line 91
    :pswitch_f
    const-string v1, "ResizeUpDown"

    move-object v0, v1

    goto :goto_0

    .line 92
    :pswitch_10
    const-string v1, "Text"

    move-object v0, v1

    goto :goto_0

    .line 93
    :pswitch_11
    const-string v1, "Wait"

    move-object v0, v1

    goto :goto_0

    .line 75
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_10
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_7
        :pswitch_b
        :pswitch_e
        :pswitch_6
        :pswitch_8
        :pswitch_f
        :pswitch_2
        :pswitch_11
        :pswitch_d
        :pswitch_c
        :pswitch_a
        :pswitch_9
        :pswitch_3
    .end packed-switch
.end method

.method private static getImage(I)[B
    .locals 14

    .prologue
    .line 99
    move v0, p0

    .local v0, "cursorType":I
    const/4 v8, 0x0

    move-object v1, v8

    .line 101
    .local v1, "in":Ljava/io/InputStream;
    :try_start_0
    const-class v8, Lcom/sun/glass/ui/monocle/MonocleCursor;

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Cursor"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move v10, v0

    .line 103
    invoke-static {v10}, Lcom/sun/glass/ui/monocle/MonocleCursor;->cursorResourceName(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "Translucent.raw"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 101
    invoke-virtual {v8, v9}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v8

    move-object v1, v8

    .line 105
    const/16 v8, 0x400

    new-array v8, v8, [B

    move-object v2, v8

    .line 106
    .local v2, "b":[B
    const/4 v8, 0x0

    move v3, v8

    .line 107
    .local v3, "bytesRead":I
    :goto_0
    move v8, v3

    const/16 v9, 0x400

    if-ge v8, v9, :cond_2

    .line 108
    move-object v8, v1

    move-object v9, v2

    move v10, v3

    const/16 v11, 0x400

    move v12, v3

    rsub-int v11, v12, 0x400

    invoke-virtual {v8, v9, v10, v11}, Ljava/io/InputStream;->read([BII)I

    move-result v8

    move v4, v8

    .line 109
    .local v4, "read":I
    move v8, v4

    if-ltz v8, :cond_0

    .line 110
    move v8, v3

    move v9, v4

    add-int/2addr v8, v9

    move v3, v8

    .line 114
    goto :goto_0

    .line 112
    :cond_0
    new-instance v8, Ljava/io/IOException;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    const-string v10, "Incomplete cursor resource"

    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    .end local v2    # "b":[B
    .end local v3    # "bytesRead":I
    .end local v4    # "read":I
    :catch_0
    move-exception v8

    move-object v2, v8

    .line 117
    .local v2, "e":Ljava/io/IOException;
    move-object v8, v2

    :try_start_1
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 118
    const/4 v8, 0x0

    move-object v3, v8

    .line 120
    move-object v8, v1

    if-eqz v8, :cond_1

    .line 122
    move-object v8, v1

    :try_start_2
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 123
    :cond_1
    :goto_1
    move-object v8, v3

    move-object v0, v8

    .end local v0    # "cursorType":I
    .end local v2    # "e":Ljava/io/IOException;
    :goto_2
    return-object v0

    .line 115
    .restart local v0    # "cursorType":I
    .local v2, "b":[B
    .restart local v3    # "bytesRead":I
    :cond_2
    move-object v8, v2

    move-object v4, v8

    .line 120
    move-object v8, v1

    if-eqz v8, :cond_3

    .line 122
    move-object v8, v1

    :try_start_3
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 123
    :cond_3
    :goto_3
    move-object v8, v4

    move-object v0, v8

    goto :goto_2

    :catch_1
    move-exception v8

    move-object v5, v8

    goto :goto_3

    .end local v3    # "bytesRead":I
    .local v2, "e":Ljava/io/IOException;
    :catch_2
    move-exception v8

    move-object v4, v8

    goto :goto_1

    .line 120
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    move-object v6, v8

    move-object v8, v1

    if-eqz v8, :cond_4

    .line 122
    move-object v8, v1

    :try_start_4
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 123
    :cond_4
    :goto_4
    move-object v8, v6

    throw v8

    :catch_3
    move-exception v8

    move-object v7, v8

    goto :goto_4
.end method


# virtual methods
.method protected _createCursor(IILcom/sun/glass/ui/Pixels;)J
    .locals 6

    .prologue
    .line 68
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/MonocleCursor;
    move v1, p1

    .local v1, "x":I
    move v2, p2

    .local v2, "y":I
    move-object v3, p3

    .local v3, "pixels":Lcom/sun/glass/ui/Pixels;
    move-object v4, v0

    move v5, v1

    iput v5, v4, Lcom/sun/glass/ui/monocle/MonocleCursor;->hotspotX:I

    .line 69
    move-object v4, v0

    move v5, v2

    iput v5, v4, Lcom/sun/glass/ui/monocle/MonocleCursor;->hotspotY:I

    .line 70
    move-object v4, v0

    move-object v5, v3

    invoke-virtual {v5}, Lcom/sun/glass/ui/Pixels;->asByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    iput-object v5, v4, Lcom/sun/glass/ui/monocle/MonocleCursor;->image:[B

    .line 71
    const-wide/16 v4, 0x1

    move-wide v0, v4

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/MonocleCursor;
    return-wide v0
.end method

.method applyCursor()V
    .locals 5

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/MonocleCursor;
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/glass/ui/monocle/MonocleCursor;->getType()I

    move-result v3

    move v1, v3

    .line 53
    .local v1, "type":I
    move v3, v1

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 56
    invoke-static {}, Lcom/sun/glass/ui/Application;->GetApplication()Lcom/sun/glass/ui/Application;

    move-result-object v3

    check-cast v3, Lcom/sun/glass/ui/monocle/MonocleApplication;

    const/4 v4, 0x0

    .line 57
    invoke-virtual {v3, v4}, Lcom/sun/glass/ui/monocle/MonocleApplication;->staticCursor_setVisible(Z)V

    .line 64
    :goto_0
    return-void

    .line 59
    :cond_0
    invoke-static {}, Lcom/sun/glass/ui/monocle/NativePlatformFactory;->getNativePlatform()Lcom/sun/glass/ui/monocle/NativePlatform;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sun/glass/ui/monocle/NativePlatform;->getCursor()Lcom/sun/glass/ui/monocle/NativeCursor;

    move-result-object v3

    move-object v2, v3

    .line 60
    .local v2, "cursor":Lcom/sun/glass/ui/monocle/NativeCursor;
    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/glass/ui/monocle/MonocleCursor;->image:[B

    invoke-virtual {v3, v4}, Lcom/sun/glass/ui/monocle/NativeCursor;->setImage([B)V

    .line 61
    invoke-static {}, Lcom/sun/glass/ui/Application;->GetApplication()Lcom/sun/glass/ui/Application;

    move-result-object v3

    check-cast v3, Lcom/sun/glass/ui/monocle/MonocleApplication;

    const/4 v4, 0x1

    .line 62
    invoke-virtual {v3, v4}, Lcom/sun/glass/ui/monocle/MonocleApplication;->staticCursor_setVisible(Z)V

    goto :goto_0
.end method
