.class public final Lcom/sun/prism/MultiTexture;
.super Ljava/lang/Object;
.source "MultiTexture.java"

# interfaces
.implements Lcom/sun/prism/Texture;


# instance fields
.field private format:Lcom/sun/prism/PixelFormat;

.field private height:I

.field private lastImageSerial:I

.field private linearFiltering:Z

.field private final textures:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sun/prism/Texture;",
            ">;"
        }
    .end annotation
.end field

.field private width:I

.field private wrapMode:Lcom/sun/prism/Texture$WrapMode;


# direct methods
.method private constructor <init>(Lcom/sun/prism/MultiTexture;Lcom/sun/prism/Texture$WrapMode;)V
    .locals 10

    .prologue
    .line 53
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/MultiTexture;
    move-object v1, p1

    .local v1, "sharedTex":Lcom/sun/prism/MultiTexture;
    move-object v2, p2

    .local v2, "newMode":Lcom/sun/prism/Texture$WrapMode;
    move-object v5, v0

    move-object v6, v1

    iget-object v6, v6, Lcom/sun/prism/MultiTexture;->format:Lcom/sun/prism/PixelFormat;

    move-object v7, v2

    move-object v8, v1

    iget v8, v8, Lcom/sun/prism/MultiTexture;->width:I

    move-object v9, v1

    iget v9, v9, Lcom/sun/prism/MultiTexture;->height:I

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/sun/prism/MultiTexture;-><init>(Lcom/sun/prism/PixelFormat;Lcom/sun/prism/Texture$WrapMode;II)V

    .line 54
    const/4 v5, 0x0

    move v3, v5

    .local v3, "i":I
    :goto_0
    move v5, v3

    move-object v6, v1

    invoke-virtual {v6}, Lcom/sun/prism/MultiTexture;->textureCount()I

    move-result v6

    if-ge v5, v6, :cond_0

    .line 55
    move-object v5, v1

    move v6, v3

    invoke-virtual {v5, v6}, Lcom/sun/prism/MultiTexture;->getTexture(I)Lcom/sun/prism/Texture;

    move-result-object v5

    move-object v4, v5

    .line 56
    .local v4, "t":Lcom/sun/prism/Texture;
    move-object v5, v0

    move-object v6, v4

    move-object v7, v2

    invoke-interface {v6, v7}, Lcom/sun/prism/Texture;->getSharedTexture(Lcom/sun/prism/Texture$WrapMode;)Lcom/sun/prism/Texture;

    move-result-object v6

    move v7, v3

    invoke-virtual {v5, v6, v7}, Lcom/sun/prism/MultiTexture;->setTexture(Lcom/sun/prism/Texture;I)V

    .line 54
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 59
    .end local v4    # "t":Lcom/sun/prism/Texture;
    :cond_0
    move-object v5, v0

    move-object v6, v1

    iget-boolean v6, v6, Lcom/sun/prism/MultiTexture;->linearFiltering:Z

    iput-boolean v6, v5, Lcom/sun/prism/MultiTexture;->linearFiltering:Z

    .line 60
    move-object v5, v0

    move-object v6, v1

    iget v6, v6, Lcom/sun/prism/MultiTexture;->lastImageSerial:I

    iput v6, v5, Lcom/sun/prism/MultiTexture;->lastImageSerial:I

    .line 61
    return-void
.end method

.method public constructor <init>(Lcom/sun/prism/PixelFormat;Lcom/sun/prism/Texture$WrapMode;II)V
    .locals 10

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/MultiTexture;
    move-object v1, p1

    .local v1, "format":Lcom/sun/prism/PixelFormat;
    move-object v2, p2

    .local v2, "wrapMode":Lcom/sun/prism/Texture$WrapMode;
    move v3, p3

    .local v3, "width":I
    move v4, p4

    .local v4, "height":I
    move-object v5, v0

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 40
    move-object v5, v0

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/sun/prism/MultiTexture;->linearFiltering:Z

    .line 45
    move-object v5, v0

    move v6, v3

    iput v6, v5, Lcom/sun/prism/MultiTexture;->width:I

    .line 46
    move-object v5, v0

    move v6, v4

    iput v6, v5, Lcom/sun/prism/MultiTexture;->height:I

    .line 47
    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Lcom/sun/prism/MultiTexture;->format:Lcom/sun/prism/PixelFormat;

    .line 48
    move-object v5, v0

    move-object v6, v2

    iput-object v6, v5, Lcom/sun/prism/MultiTexture;->wrapMode:Lcom/sun/prism/Texture$WrapMode;

    .line 49
    move-object v5, v0

    new-instance v6, Ljava/util/ArrayList;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    const/4 v8, 0x4

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v6, v5, Lcom/sun/prism/MultiTexture;->textures:Ljava/util/ArrayList;

    .line 50
    return-void
.end method


# virtual methods
.method public assertLocked()V
    .locals 4

    .prologue
    .line 288
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/MultiTexture;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/prism/MultiTexture;->textures:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v3

    :goto_0
    move-object v3, v1

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/prism/Texture;

    move-object v2, v3

    .line 289
    .local v2, "tex":Lcom/sun/prism/Texture;
    move-object v3, v2

    invoke-interface {v3}, Lcom/sun/prism/Texture;->assertLocked()V

    .line 290
    goto :goto_0

    .line 291
    .end local v2    # "tex":Lcom/sun/prism/Texture;
    :cond_0
    return-void
.end method

.method public contentsNotUseful()V
    .locals 4

    .prologue
    .line 309
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/MultiTexture;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/prism/MultiTexture;->textures:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v3

    :goto_0
    move-object v3, v1

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/prism/Texture;

    move-object v2, v3

    .line 310
    .local v2, "tex":Lcom/sun/prism/Texture;
    move-object v3, v2

    invoke-interface {v3}, Lcom/sun/prism/Texture;->contentsNotUseful()V

    .line 311
    goto :goto_0

    .line 312
    .end local v2    # "tex":Lcom/sun/prism/Texture;
    :cond_0
    return-void
.end method

.method public contentsUseful()V
    .locals 4

    .prologue
    .line 302
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/MultiTexture;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/prism/MultiTexture;->textures:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v3

    :goto_0
    move-object v3, v1

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/prism/Texture;

    move-object v2, v3

    .line 303
    .local v2, "tex":Lcom/sun/prism/Texture;
    move-object v3, v2

    invoke-interface {v3}, Lcom/sun/prism/Texture;->contentsUseful()V

    .line 304
    goto :goto_0

    .line 305
    .end local v2    # "tex":Lcom/sun/prism/Texture;
    :cond_0
    return-void
.end method

.method public dispose()V
    .locals 4

    .prologue
    .line 324
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/MultiTexture;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/prism/MultiTexture;->textures:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v3

    :goto_0
    move-object v3, v1

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/prism/Texture;

    move-object v2, v3

    .line 325
    .local v2, "tex":Lcom/sun/prism/Texture;
    move-object v3, v2

    invoke-interface {v3}, Lcom/sun/prism/Texture;->dispose()V

    .line 326
    goto :goto_0

    .line 327
    .end local v2    # "tex":Lcom/sun/prism/Texture;
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/prism/MultiTexture;->textures:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 328
    return-void
.end method

.method public getContentHeight()I
    .locals 2

    .prologue
    .line 157
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/MultiTexture;
    move-object v1, v0

    iget v1, v1, Lcom/sun/prism/MultiTexture;->height:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/prism/MultiTexture;
    return v0
.end method

.method public getContentWidth()I
    .locals 2

    .prologue
    .line 152
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/MultiTexture;
    move-object v1, v0

    iget v1, v1, Lcom/sun/prism/MultiTexture;->width:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/prism/MultiTexture;
    return v0
.end method

.method public getContentX()I
    .locals 2

    .prologue
    .line 142
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/MultiTexture;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Lcom/sun/prism/MultiTexture;
    return v0
.end method

.method public getContentY()I
    .locals 2

    .prologue
    .line 147
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/MultiTexture;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Lcom/sun/prism/MultiTexture;
    return v0
.end method

.method public getLastImageSerial()I
    .locals 2

    .prologue
    .line 162
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/MultiTexture;
    move-object v1, v0

    iget v1, v1, Lcom/sun/prism/MultiTexture;->lastImageSerial:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/prism/MultiTexture;
    return v0
.end method

.method public getLinearFiltering()Z
    .locals 2

    .prologue
    .line 244
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/MultiTexture;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/prism/MultiTexture;->linearFiltering:Z

    move v0, v1

    .end local v0    # "this":Lcom/sun/prism/MultiTexture;
    return v0
.end method

.method public getLockCount()I
    .locals 6

    .prologue
    .line 279
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/MultiTexture;
    const/4 v4, 0x0

    move v1, v4

    .line 280
    .local v1, "count":I
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/prism/MultiTexture;->textures:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v2, v4

    :goto_0
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/prism/Texture;

    move-object v3, v4

    .line 281
    .local v3, "tex":Lcom/sun/prism/Texture;
    move v4, v1

    move-object v5, v3

    invoke-interface {v5}, Lcom/sun/prism/Texture;->getLockCount()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    move v1, v4

    .line 282
    goto :goto_0

    .line 283
    .end local v3    # "tex":Lcom/sun/prism/Texture;
    :cond_0
    move v4, v1

    move v0, v4

    .end local v0    # "this":Lcom/sun/prism/MultiTexture;
    return v0
.end method

.method public getMaxContentHeight()I
    .locals 2

    .prologue
    .line 337
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/MultiTexture;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/prism/MultiTexture;->getPhysicalHeight()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/prism/MultiTexture;
    return v0
.end method

.method public getMaxContentWidth()I
    .locals 2

    .prologue
    .line 332
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/MultiTexture;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/prism/MultiTexture;->getPhysicalWidth()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/prism/MultiTexture;
    return v0
.end method

.method public getPhysicalHeight()I
    .locals 2

    .prologue
    .line 137
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/MultiTexture;
    move-object v1, v0

    iget v1, v1, Lcom/sun/prism/MultiTexture;->height:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/prism/MultiTexture;
    return v0
.end method

.method public getPhysicalWidth()I
    .locals 2

    .prologue
    .line 132
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/MultiTexture;
    move-object v1, v0

    iget v1, v1, Lcom/sun/prism/MultiTexture;->width:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/prism/MultiTexture;
    return v0
.end method

.method public getPixelFormat()Lcom/sun/prism/PixelFormat;
    .locals 2

    .prologue
    .line 127
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/MultiTexture;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/prism/MultiTexture;->format:Lcom/sun/prism/PixelFormat;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/prism/MultiTexture;
    return-object v0
.end method

.method public getSharedTexture(Lcom/sun/prism/Texture$WrapMode;)Lcom/sun/prism/Texture;
    .locals 8

    .prologue
    .line 65
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/MultiTexture;
    move-object v1, p1

    .local v1, "altMode":Lcom/sun/prism/Texture$WrapMode;
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/prism/MultiTexture;->assertLocked()V

    .line 66
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/prism/MultiTexture;->wrapMode:Lcom/sun/prism/Texture$WrapMode;

    move-object v4, v1

    if-ne v3, v4, :cond_0

    .line 67
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/prism/MultiTexture;->lock()V

    .line 68
    move-object v3, v0

    move-object v0, v3

    .line 86
    .end local v0    # "this":Lcom/sun/prism/MultiTexture;
    :goto_0
    return-object v0

    .line 70
    .restart local v0    # "this":Lcom/sun/prism/MultiTexture;
    :cond_0
    sget-object v3, Lcom/sun/prism/MultiTexture$1;->$SwitchMap$com$sun$prism$Texture$WrapMode:[I

    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/prism/Texture$WrapMode;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 82
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_0

    .line 72
    :pswitch_0
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/prism/MultiTexture;->wrapMode:Lcom/sun/prism/Texture$WrapMode;

    sget-object v4, Lcom/sun/prism/Texture$WrapMode;->CLAMP_TO_EDGE:Lcom/sun/prism/Texture$WrapMode;

    if-eq v3, v4, :cond_1

    .line 73
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_0

    .line 77
    :pswitch_1
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/prism/MultiTexture;->wrapMode:Lcom/sun/prism/Texture$WrapMode;

    sget-object v4, Lcom/sun/prism/Texture$WrapMode;->REPEAT:Lcom/sun/prism/Texture$WrapMode;

    if-eq v3, v4, :cond_1

    .line 78
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_0

    .line 84
    :cond_1
    new-instance v3, Lcom/sun/prism/MultiTexture;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Lcom/sun/prism/MultiTexture;-><init>(Lcom/sun/prism/MultiTexture;Lcom/sun/prism/Texture$WrapMode;)V

    move-object v2, v3

    .line 85
    .local v2, "altTex":Lcom/sun/prism/Texture;
    move-object v3, v2

    invoke-interface {v3}, Lcom/sun/prism/Texture;->lock()V

    .line 86
    move-object v3, v2

    move-object v0, v3

    goto :goto_0

    .line 70
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getTexture(I)Lcom/sun/prism/Texture;
    .locals 4

    .prologue
    .line 110
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/MultiTexture;
    move v1, p1

    .local v1, "index":I
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/prism/MultiTexture;->textures:Ljava/util/ArrayList;

    move v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/prism/Texture;

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/prism/MultiTexture;
    return-object v0
.end method

.method public getTextures()[Lcom/sun/prism/Texture;
    .locals 3

    .prologue
    .line 114
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/MultiTexture;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/prism/MultiTexture;->textures:Ljava/util/ArrayList;

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/prism/MultiTexture;->textures:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Lcom/sun/prism/Texture;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/sun/prism/Texture;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/prism/MultiTexture;
    return-object v0
.end method

.method public getUseMipmap()Z
    .locals 2

    .prologue
    .line 239
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/MultiTexture;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Lcom/sun/prism/MultiTexture;
    return v0
.end method

.method public getWrapMode()Lcom/sun/prism/Texture$WrapMode;
    .locals 2

    .prologue
    .line 233
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/MultiTexture;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/prism/MultiTexture;->wrapMode:Lcom/sun/prism/Texture$WrapMode;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/prism/MultiTexture;
    return-object v0
.end method

.method public isLocked()Z
    .locals 4

    .prologue
    .line 271
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/MultiTexture;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/prism/MultiTexture;->textures:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v3

    :goto_0
    move-object v3, v1

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v3, v1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/prism/Texture;

    move-object v2, v3

    .line 272
    .local v2, "tex":Lcom/sun/prism/Texture;
    move-object v3, v2

    invoke-interface {v3}, Lcom/sun/prism/Texture;->isLocked()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    move v0, v3

    .line 274
    .end local v0    # "this":Lcom/sun/prism/MultiTexture;
    :goto_1
    return v0

    .line 273
    .restart local v0    # "this":Lcom/sun/prism/MultiTexture;
    :cond_0
    goto :goto_0

    .line 274
    .end local v2    # "tex":Lcom/sun/prism/Texture;
    :cond_1
    const/4 v3, 0x0

    move v0, v3

    goto :goto_1
.end method

.method public isSurfaceLost()Z
    .locals 4

    .prologue
    .line 316
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/MultiTexture;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/prism/MultiTexture;->textures:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v3

    :goto_0
    move-object v3, v1

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v3, v1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/prism/Texture;

    move-object v2, v3

    .line 317
    .local v2, "tex":Lcom/sun/prism/Texture;
    move-object v3, v2

    invoke-interface {v3}, Lcom/sun/prism/Texture;->isSurfaceLost()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    move v0, v3

    .line 319
    .end local v0    # "this":Lcom/sun/prism/MultiTexture;
    :goto_1
    return v0

    .line 318
    .restart local v0    # "this":Lcom/sun/prism/MultiTexture;
    :cond_0
    goto :goto_0

    .line 319
    .end local v2    # "tex":Lcom/sun/prism/Texture;
    :cond_1
    const/4 v3, 0x0

    move v0, v3

    goto :goto_1
.end method

.method public lock()V
    .locals 4

    .prologue
    .line 257
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/MultiTexture;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/prism/MultiTexture;->textures:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v3

    :goto_0
    move-object v3, v1

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/prism/Texture;

    move-object v2, v3

    .line 258
    .local v2, "tex":Lcom/sun/prism/Texture;
    move-object v3, v2

    invoke-interface {v3}, Lcom/sun/prism/Texture;->lock()V

    .line 259
    goto :goto_0

    .line 260
    .end local v2    # "tex":Lcom/sun/prism/Texture;
    :cond_0
    return-void
.end method

.method public makePermanent()V
    .locals 4

    .prologue
    .line 295
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/MultiTexture;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/prism/MultiTexture;->textures:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v3

    :goto_0
    move-object v3, v1

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/prism/Texture;

    move-object v2, v3

    .line 296
    .local v2, "tex":Lcom/sun/prism/Texture;
    move-object v3, v2

    invoke-interface {v3}, Lcom/sun/prism/Texture;->makePermanent()V

    .line 297
    goto :goto_0

    .line 298
    .end local v2    # "tex":Lcom/sun/prism/Texture;
    :cond_0
    return-void
.end method

.method public removeTexture(I)V
    .locals 4

    .prologue
    .line 122
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/MultiTexture;
    move v1, p1

    .local v1, "index":I
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/prism/MultiTexture;->textures:Ljava/util/ArrayList;

    move v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    .line 123
    return-void
.end method

.method public removeTexture(Lcom/sun/prism/Texture;)V
    .locals 4

    .prologue
    .line 118
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/MultiTexture;
    move-object v1, p1

    .local v1, "tex":Lcom/sun/prism/Texture;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/prism/MultiTexture;->textures:Ljava/util/ArrayList;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v2

    .line 119
    return-void
.end method

.method public setContentHeight(I)V
    .locals 6

    .prologue
    .line 347
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/MultiTexture;
    move v1, p1

    .local v1, "contentHeight":I
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "Not supported."

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public setContentWidth(I)V
    .locals 6

    .prologue
    .line 342
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/MultiTexture;
    move v1, p1

    .local v1, "contentWidth":I
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "Not supported."

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public setLastImageSerial(I)V
    .locals 4

    .prologue
    .line 167
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/MultiTexture;
    move v1, p1

    .local v1, "serial":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/sun/prism/MultiTexture;->lastImageSerial:I

    .line 168
    return-void
.end method

.method public setLinearFiltering(Z)V
    .locals 6

    .prologue
    .line 249
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/MultiTexture;
    move v1, p1

    .local v1, "linear":Z
    move-object v4, v0

    move v5, v1

    iput-boolean v5, v4, Lcom/sun/prism/MultiTexture;->linearFiltering:Z

    .line 250
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/prism/MultiTexture;->textures:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v2, v4

    :goto_0
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/prism/Texture;

    move-object v3, v4

    .line 251
    .local v3, "tex":Lcom/sun/prism/Texture;
    move-object v4, v3

    move v5, v1

    invoke-interface {v4, v5}, Lcom/sun/prism/Texture;->setLinearFiltering(Z)V

    .line 252
    goto :goto_0

    .line 253
    .end local v3    # "tex":Lcom/sun/prism/Texture;
    :cond_0
    return-void
.end method

.method public setTexture(Lcom/sun/prism/Texture;I)V
    .locals 8

    .prologue
    .line 94
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/MultiTexture;
    move-object v1, p1

    .local v1, "tex":Lcom/sun/prism/Texture;
    move v2, p2

    .local v2, "index":I
    move-object v4, v1

    invoke-interface {v4}, Lcom/sun/prism/Texture;->getWrapMode()Lcom/sun/prism/Texture$WrapMode;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/prism/MultiTexture;->wrapMode:Lcom/sun/prism/Texture$WrapMode;

    invoke-virtual {v4, v5}, Lcom/sun/prism/Texture$WrapMode;->isCompatibleWith(Lcom/sun/prism/Texture$WrapMode;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 95
    new-instance v4, Ljava/lang/IllegalArgumentException;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const-string v6, "texture wrap mode must match multi-texture mode"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 97
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/prism/MultiTexture;->textures:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v5, v2

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    if-ge v4, v5, :cond_2

    .line 99
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/prism/MultiTexture;->textures:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v3, v4

    .local v3, "ii":I
    :goto_0
    move v4, v3

    move v5, v2

    if-ge v4, v5, :cond_1

    .line 100
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/prism/MultiTexture;->textures:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v4

    .line 99
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 102
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/prism/MultiTexture;->textures:Ljava/util/ArrayList;

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v4

    .line 106
    .end local v3    # "ii":I
    :goto_1
    move-object v4, v1

    move-object v5, v0

    iget-boolean v5, v5, Lcom/sun/prism/MultiTexture;->linearFiltering:Z

    invoke-interface {v4, v5}, Lcom/sun/prism/Texture;->setLinearFiltering(Z)V

    .line 107
    return-void

    .line 104
    :cond_2
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/prism/MultiTexture;->textures:Ljava/util/ArrayList;

    move v5, v2

    move-object v6, v1

    invoke-virtual {v4, v5, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_1
.end method

.method public textureCount()I
    .locals 2

    .prologue
    .line 90
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/MultiTexture;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/prism/MultiTexture;->textures:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/prism/MultiTexture;
    return v0
.end method

.method public unlock()V
    .locals 4

    .prologue
    .line 264
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/MultiTexture;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/prism/MultiTexture;->textures:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v3

    :goto_0
    move-object v3, v1

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/prism/Texture;

    move-object v2, v3

    .line 265
    .local v2, "tex":Lcom/sun/prism/Texture;
    move-object v3, v2

    invoke-interface {v3}, Lcom/sun/prism/Texture;->unlock()V

    .line 266
    goto :goto_0

    .line 267
    .end local v2    # "tex":Lcom/sun/prism/Texture;
    :cond_0
    return-void
.end method

.method public update(Lcom/sun/prism/Image;)V
    .locals 6

    .prologue
    .line 172
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/MultiTexture;
    move-object v1, p1

    .local v1, "img":Lcom/sun/prism/Image;
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "Update from Image not supported"

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public update(Lcom/sun/prism/Image;II)V
    .locals 8

    .prologue
    .line 177
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/MultiTexture;
    move-object v1, p1

    .local v1, "img":Lcom/sun/prism/Image;
    move v2, p2

    .local v2, "dstx":I
    move v3, p3

    .local v3, "dsty":I
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const-string v6, "Update from Image not supported"

    invoke-direct {v5, v6}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public update(Lcom/sun/prism/Image;IIII)V
    .locals 10

    .prologue
    .line 182
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/MultiTexture;
    move-object v1, p1

    .local v1, "img":Lcom/sun/prism/Image;
    move v2, p2

    .local v2, "dstx":I
    move v3, p3

    .local v3, "dsty":I
    move v4, p4

    .local v4, "srcw":I
    move v5, p5

    .local v5, "srch":I
    new-instance v6, Ljava/lang/UnsupportedOperationException;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    const-string v8, "Update from Image not supported"

    invoke-direct {v7, v8}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method public update(Lcom/sun/prism/Image;IIIIZ)V
    .locals 11

    .prologue
    .line 187
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/MultiTexture;
    move-object v1, p1

    .local v1, "img":Lcom/sun/prism/Image;
    move v2, p2

    .local v2, "dstx":I
    move v3, p3

    .local v3, "dsty":I
    move v4, p4

    .local v4, "srcw":I
    move/from16 v5, p5

    .local v5, "srch":I
    move/from16 v6, p6

    .local v6, "skipFlush":Z
    new-instance v7, Ljava/lang/UnsupportedOperationException;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    const-string v9, "Update from Image not supported"

    invoke-direct {v8, v9}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method public update(Lcom/sun/prism/MediaFrame;Z)V
    .locals 22

    .prologue
    .line 201
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/prism/MultiTexture;
    move-object/from16 v1, p1

    .local v1, "frame":Lcom/sun/prism/MediaFrame;
    move/from16 v2, p2

    .local v2, "skipFlush":Z
    move-object v10, v1

    invoke-interface {v10}, Lcom/sun/prism/MediaFrame;->getPixelFormat()Lcom/sun/prism/PixelFormat;

    move-result-object v10

    sget-object v11, Lcom/sun/prism/PixelFormat;->MULTI_YCbCr_420:Lcom/sun/prism/PixelFormat;

    if-ne v10, v11, :cond_4

    .line 204
    move-object v10, v1

    invoke-interface {v10}, Lcom/sun/prism/MediaFrame;->getEncodedWidth()I

    move-result v10

    move v4, v10

    .line 205
    .local v4, "encWidth":I
    move-object v10, v1

    invoke-interface {v10}, Lcom/sun/prism/MediaFrame;->getEncodedHeight()I

    move-result v10

    move v5, v10

    .line 207
    .local v5, "encHeight":I
    const/4 v10, 0x0

    move v6, v10

    .local v6, "index":I
    :goto_0
    move v10, v6

    move-object v11, v1

    invoke-interface {v11}, Lcom/sun/prism/MediaFrame;->planeCount()I

    move-result v11

    if-ge v10, v11, :cond_3

    .line 208
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/prism/MultiTexture;->textures:Ljava/util/ArrayList;

    move v11, v6

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/sun/prism/Texture;

    move-object v3, v10

    .line 209
    .local v3, "tex":Lcom/sun/prism/Texture;
    const/4 v10, 0x0

    move-object v11, v3

    if-eq v10, v11, :cond_2

    .line 210
    move v10, v4

    move v7, v10

    .line 211
    .local v7, "texWidth":I
    move v10, v5

    move v8, v10

    .line 213
    .local v8, "texHeight":I
    move v10, v6

    const/4 v11, 0x2

    if-eq v10, v11, :cond_0

    move v10, v6

    const/4 v11, 0x1

    if-ne v10, v11, :cond_1

    .line 215
    :cond_0
    move v10, v7

    const/4 v11, 0x2

    div-int/lit8 v10, v10, 0x2

    move v7, v10

    .line 216
    move v10, v8

    const/4 v11, 0x2

    div-int/lit8 v10, v10, 0x2

    move v8, v10

    .line 219
    :cond_1
    move-object v10, v1

    move v11, v6

    invoke-interface {v10, v11}, Lcom/sun/prism/MediaFrame;->getBufferForPlane(I)Ljava/nio/ByteBuffer;

    move-result-object v10

    move-object v9, v10

    .line 220
    .local v9, "pixels":Ljava/nio/ByteBuffer;
    move-object v10, v3

    move-object v11, v9

    sget-object v12, Lcom/sun/prism/PixelFormat;->BYTE_ALPHA:Lcom/sun/prism/PixelFormat;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v17, v7

    move/from16 v18, v8

    move-object/from16 v19, v1

    move/from16 v20, v6

    .line 223
    invoke-interface/range {v19 .. v20}, Lcom/sun/prism/MediaFrame;->strideForPlane(I)I

    move-result v19

    move/from16 v20, v2

    .line 220
    invoke-interface/range {v10 .. v20}, Lcom/sun/prism/Texture;->update(Ljava/nio/Buffer;Lcom/sun/prism/PixelFormat;IIIIIIIZ)V

    .line 207
    .end local v7    # "texWidth":I
    .end local v8    # "texHeight":I
    .end local v9    # "pixels":Ljava/nio/ByteBuffer;
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 226
    .line 229
    .end local v3    # "tex":Lcom/sun/prism/Texture;
    :cond_3
    return-void

    .line 227
    .end local v4    # "encWidth":I
    .end local v5    # "encHeight":I
    .end local v6    # "index":I
    :cond_4
    new-instance v10, Ljava/lang/IllegalArgumentException;

    move-object/from16 v21, v10

    move-object/from16 v10, v21

    move-object/from16 v11, v21

    const-string v12, "Invalid pixel format in MediaFrame"

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10
.end method

.method public update(Ljava/nio/Buffer;Lcom/sun/prism/PixelFormat;IIIIIIIZ)V
    .locals 15

    .prologue
    .line 196
    move-object v0, p0

    .local v0, "this":Lcom/sun/prism/MultiTexture;
    move-object/from16 v1, p1

    .local v1, "buffer":Ljava/nio/Buffer;
    move-object/from16 v2, p2

    .local v2, "format":Lcom/sun/prism/PixelFormat;
    move/from16 v3, p3

    .local v3, "dstx":I
    move/from16 v4, p4

    .local v4, "dsty":I
    move/from16 v5, p5

    .local v5, "srcx":I
    move/from16 v6, p6

    .local v6, "srcy":I
    move/from16 v7, p7

    .local v7, "srcw":I
    move/from16 v8, p8

    .local v8, "srch":I
    move/from16 v9, p9

    .local v9, "srcscan":I
    move/from16 v10, p10

    .local v10, "skipFlush":Z
    new-instance v11, Ljava/lang/UnsupportedOperationException;

    move-object v14, v11

    move-object v11, v14

    move-object v12, v14

    const-string v13, "Update from generic Buffer not supported"

    invoke-direct {v12, v13}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v11
.end method
