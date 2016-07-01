.class Lcom/sun/glass/ui/monocle/HeadlessScreen;
.super Ljava/lang/Object;
.source "HeadlessScreen.java"

# interfaces
.implements Lcom/sun/glass/ui/monocle/NativeScreen;


# instance fields
.field protected depth:I

.field protected fb:Lcom/sun/glass/ui/monocle/Framebuffer;

.field protected height:I

.field protected width:I


# direct methods
.method constructor <init>()V
    .locals 5

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/HeadlessScreen;
    move-object v1, v0

    const/16 v2, 0x500

    const/16 v3, 0x320

    const/16 v4, 0x20

    invoke-direct {v1, v2, v3, v4}, Lcom/sun/glass/ui/monocle/HeadlessScreen;-><init>(III)V

    .line 45
    return-void
.end method

.method protected constructor <init>(III)V
    .locals 16

    .prologue
    .line 49
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/HeadlessScreen;
    move/from16 v1, p1

    .local v1, "defaultWidth":I
    move/from16 v2, p2

    .local v2, "defaultHeight":I
    move/from16 v3, p3

    .local v3, "defaultDepth":I
    move-object v7, v0

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 50
    move-object v7, v0

    move v8, v1

    iput v8, v7, Lcom/sun/glass/ui/monocle/HeadlessScreen;->width:I

    .line 51
    move-object v7, v0

    move v8, v2

    iput v8, v7, Lcom/sun/glass/ui/monocle/HeadlessScreen;->height:I

    .line 52
    move-object v7, v0

    move v8, v3

    iput v8, v7, Lcom/sun/glass/ui/monocle/HeadlessScreen;->depth:I

    .line 53
    invoke-static {}, Lcom/sun/glass/ui/monocle/HeadlessScreen$$Lambda$1;->lambdaFactory$()Ljava/security/PrivilegedAction;

    move-result-object v7

    invoke-static {v7}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    move-object v4, v7

    .line 54
    .local v4, "geometry":Ljava/lang/String;
    move-object v7, v4

    if-eqz v7, :cond_0

    move-object v7, v4

    const/16 v8, 0x78

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-lez v7, :cond_0

    .line 56
    move-object v7, v4

    :try_start_0
    const-string v8, "x"

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    move v5, v7

    .line 57
    .local v5, "i":I
    move-object v7, v0

    move-object v8, v4

    const/4 v9, 0x0

    move v10, v5

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v7, Lcom/sun/glass/ui/monocle/HeadlessScreen;->width:I

    .line 58
    move-object v7, v4

    const-string v8, "-"

    move v9, v5

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v7

    move v6, v7

    .line 59
    .local v6, "j":I
    move v7, v6

    if-lez v7, :cond_1

    .line 60
    move-object v7, v0

    move-object v8, v4

    move v9, v6

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v7, Lcom/sun/glass/ui/monocle/HeadlessScreen;->depth:I

    .line 64
    :goto_0
    move-object v7, v0

    move-object v8, v4

    move v9, v5

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    move v10, v6

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v7, Lcom/sun/glass/ui/monocle/HeadlessScreen;->height:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    .line 70
    .end local v5    # "i":I
    .end local v6    # "j":I
    :cond_0
    :goto_1
    move-object v7, v0

    iget v7, v7, Lcom/sun/glass/ui/monocle/HeadlessScreen;->width:I

    move-object v8, v0

    iget v8, v8, Lcom/sun/glass/ui/monocle/HeadlessScreen;->height:I

    mul-int/2addr v7, v8

    move-object v8, v0

    iget v8, v8, Lcom/sun/glass/ui/monocle/HeadlessScreen;->depth:I

    const/4 v9, 0x3

    ushr-int/lit8 v8, v8, 0x3

    mul-int/2addr v7, v8

    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    move-object v5, v7

    .line 71
    .local v5, "bb":Ljava/nio/ByteBuffer;
    move-object v7, v5

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 72
    move-object v7, v0

    new-instance v8, Lcom/sun/glass/ui/monocle/Framebuffer;

    move-object v15, v8

    move-object v8, v15

    move-object v9, v15

    move-object v10, v5

    move-object v11, v0

    iget v11, v11, Lcom/sun/glass/ui/monocle/HeadlessScreen;->width:I

    move-object v12, v0

    iget v12, v12, Lcom/sun/glass/ui/monocle/HeadlessScreen;->height:I

    move-object v13, v0

    iget v13, v13, Lcom/sun/glass/ui/monocle/HeadlessScreen;->depth:I

    const/4 v14, 0x1

    invoke-direct/range {v9 .. v14}, Lcom/sun/glass/ui/monocle/Framebuffer;-><init>(Ljava/nio/ByteBuffer;IIIZ)V

    iput-object v8, v7, Lcom/sun/glass/ui/monocle/HeadlessScreen;->fb:Lcom/sun/glass/ui/monocle/Framebuffer;

    .line 73
    return-void

    .line 62
    .local v5, "i":I
    .restart local v6    # "j":I
    :cond_1
    move-object v7, v4

    :try_start_1
    invoke-virtual {v7}, Ljava/lang/String;->length()I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v7

    move v6, v7

    goto :goto_0

    .line 65
    .end local v5    # "i":I
    .end local v6    # "j":I
    :catch_0
    move-exception v7

    move-object v5, v7

    .line 66
    .local v5, "e":Ljava/lang/NumberFormatException;
    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v15, v8

    move-object v8, v15

    move-object v9, v15

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Cannot parse geometry string: \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v4

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1
.end method

.method static synthetic access$lambda$0()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/sun/glass/ui/monocle/HeadlessScreen;->lambda$new$94()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$new$94()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    const-string v0, "headless.geometry"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDPI()I
    .locals 2

    .prologue
    .line 107
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/HeadlessScreen;
    const/16 v1, 0x60

    move v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/HeadlessScreen;
    return v0
.end method

.method public getDepth()I
    .locals 2

    .prologue
    .line 77
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/HeadlessScreen;
    move-object v1, v0

    iget v1, v1, Lcom/sun/glass/ui/monocle/HeadlessScreen;->depth:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/HeadlessScreen;
    return v0
.end method

.method public getHeight()I
    .locals 2

    .prologue
    .line 92
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/HeadlessScreen;
    move-object v1, v0

    iget v1, v1, Lcom/sun/glass/ui/monocle/HeadlessScreen;->height:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/HeadlessScreen;
    return v0
.end method

.method public getNativeFormat()I
    .locals 2

    .prologue
    .line 82
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/HeadlessScreen;
    const/4 v1, 0x1

    move v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/HeadlessScreen;
    return v0
.end method

.method public getNativeHandle()J
    .locals 3

    .prologue
    .line 102
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/HeadlessScreen;
    const-wide/16 v1, 0x1

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/HeadlessScreen;
    return-wide v0
.end method

.method public getScale()F
    .locals 2

    .prologue
    .line 97
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/HeadlessScreen;
    const/high16 v1, 0x3f800000    # 1.0f

    move v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/HeadlessScreen;
    return v0
.end method

.method public getScreenCapture()Ljava/nio/ByteBuffer;
    .locals 2

    .prologue
    .line 128
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/HeadlessScreen;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/glass/ui/monocle/HeadlessScreen;->fb:Lcom/sun/glass/ui/monocle/Framebuffer;

    invoke-virtual {v1}, Lcom/sun/glass/ui/monocle/Framebuffer;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/HeadlessScreen;
    return-object v0
.end method

.method public getWidth()I
    .locals 2

    .prologue
    .line 87
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/HeadlessScreen;
    move-object v1, v0

    iget v1, v1, Lcom/sun/glass/ui/monocle/HeadlessScreen;->width:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/HeadlessScreen;
    return v0
.end method

.method public shutdown()V
    .locals 0

    .prologue
    .line 112
    return-void
.end method

.method public swapBuffers()V
    .locals 2

    .prologue
    .line 123
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/HeadlessScreen;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/glass/ui/monocle/HeadlessScreen;->fb:Lcom/sun/glass/ui/monocle/Framebuffer;

    invoke-virtual {v1}, Lcom/sun/glass/ui/monocle/Framebuffer;->reset()V

    .line 124
    return-void
.end method

.method public uploadPixels(Ljava/nio/Buffer;IIIIF)V
    .locals 14

    .prologue
    .line 118
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/HeadlessScreen;
    move-object v1, p1

    .local v1, "b":Ljava/nio/Buffer;
    move/from16 v2, p2

    .local v2, "x":I
    move/from16 v3, p3

    .local v3, "y":I
    move/from16 v4, p4

    .local v4, "width":I
    move/from16 v5, p5

    .local v5, "height":I
    move/from16 v6, p6

    .local v6, "alpha":F
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/glass/ui/monocle/HeadlessScreen;->fb:Lcom/sun/glass/ui/monocle/Framebuffer;

    move-object v8, v1

    move v9, v2

    move v10, v3

    move v11, v4

    move v12, v5

    move v13, v6

    invoke-virtual/range {v7 .. v13}, Lcom/sun/glass/ui/monocle/Framebuffer;->composePixels(Ljava/nio/Buffer;IIIIF)V

    .line 119
    return-void
.end method
