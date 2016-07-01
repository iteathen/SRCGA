.class public Lcom/sun/media/jfxmedia/track/VideoResolution;
.super Ljava/lang/Object;
.source "VideoResolution.java"


# instance fields
.field public height:I

.field public width:I


# direct methods
.method public constructor <init>(II)V
    .locals 7

    .prologue
    .line 50
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmedia/track/VideoResolution;
    move v1, p1

    .local v1, "width":I
    move v2, p2

    .local v2, "height":I
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 51
    move v3, v1

    if-gtz v3, :cond_0

    .line 52
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "width <= 0"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 53
    :cond_0
    move v3, v2

    if-gtz v3, :cond_1

    .line 54
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "height <= 0"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 55
    :cond_1
    move-object v3, v0

    move v4, v1

    iput v4, v3, Lcom/sun/media/jfxmedia/track/VideoResolution;->width:I

    .line 56
    move-object v3, v0

    move v4, v2

    iput v4, v3, Lcom/sun/media/jfxmedia/track/VideoResolution;->height:I

    .line 57
    return-void
.end method


# virtual methods
.method public getHeight()I
    .locals 2

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmedia/track/VideoResolution;
    move-object v1, v0

    iget v1, v1, Lcom/sun/media/jfxmedia/track/VideoResolution;->height:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/media/jfxmedia/track/VideoResolution;
    return v0
.end method

.method public getWidth()I
    .locals 2

    .prologue
    .line 63
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmedia/track/VideoResolution;
    move-object v1, v0

    iget v1, v1, Lcom/sun/media/jfxmedia/track/VideoResolution;->width:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/media/jfxmedia/track/VideoResolution;
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 77
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmedia/track/VideoResolution;
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VideoResolution {width: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Lcom/sun/media/jfxmedia/track/VideoResolution;->width:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " height: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Lcom/sun/media/jfxmedia/track/VideoResolution;->height:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/media/jfxmedia/track/VideoResolution;
    return-object v0
.end method
