.class public abstract Lcom/sun/webkit/graphics/WCImage;
.super Ljava/lang/Object;
.source "WCImage.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 30
    move-object v0, p0

    .local v0, "this":Lcom/sun/webkit/graphics/WCImage;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected drawPixelBuffer()V
    .locals 0

    .prologue
    .line 43
    return-void
.end method

.method public abstract getHeight()I
.end method

.method public getPixelBuffer()Ljava/nio/ByteBuffer;
    .locals 2

    .prologue
    .line 41
    move-object v0, p0

    .local v0, "this":Lcom/sun/webkit/graphics/WCImage;
    const/4 v1, 0x0

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/webkit/graphics/WCImage;
    return-object v0
.end method

.method public getPlatformImage()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Lcom/sun/webkit/graphics/WCImage;
    const/4 v1, 0x0

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/webkit/graphics/WCImage;
    return-object v0
.end method

.method public abstract getWidth()I
.end method

.method protected abstract toDataURL(Ljava/lang/String;)Ljava/lang/String;
.end method
