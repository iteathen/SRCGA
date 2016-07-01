.class public Lcom/sun/glass/ui/monocle/AndroidScreen;
.super Ljava/lang/Object;
.source "AndroidScreen.java"

# interfaces
.implements Lcom/sun/glass/ui/monocle/NativeScreen;


# static fields
.field public static final framebufferSwapLock:Ljava/lang/Object;


# instance fields
.field private density:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 128
    new-instance v0, Ljava/lang/Object;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sun/glass/ui/monocle/AndroidScreen;->framebufferSwapLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 33
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/AndroidScreen;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 35
    move-object v1, v0

    const/high16 v2, -0x40800000    # -1.0f

    iput v2, v1, Lcom/sun/glass/ui/monocle/AndroidScreen;->density:F

    return-void
.end method


# virtual methods
.method native _getDensity()F
.end method

.method native _getHeight()I
.end method

.method native _getNativeHandle()J
.end method

.method native _getScreenCapture()Ljava/nio/ByteBuffer;
.end method

.method native _getWidth()I
.end method

.method native _shutdown()V
.end method

.method native _swapBuffers()V
.end method

.method native _uploadPixels(Ljava/nio/Buffer;IIIIF)V
.end method

.method public getDPI()I
    .locals 2

    .prologue
    .line 67
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/AndroidScreen;
    const/16 v1, 0x64

    move v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/AndroidScreen;
    return v0
.end method

.method public getDepth()I
    .locals 2

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/AndroidScreen;
    const/16 v1, 0x18

    move v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/AndroidScreen;
    return v0
.end method

.method public getHeight()I
    .locals 3

    .prologue
    .line 60
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/AndroidScreen;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/glass/ui/monocle/AndroidScreen;->_getHeight()I

    move-result v1

    int-to-float v1, v1

    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/glass/ui/monocle/AndroidScreen;->getScale()F

    move-result v2

    div-float/2addr v1, v2

    float-to-int v1, v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/AndroidScreen;
    return v0
.end method

.method public getNativeFormat()I
    .locals 2

    .prologue
    .line 45
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/AndroidScreen;
    const/4 v1, 0x2

    move v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/AndroidScreen;
    return v0
.end method

.method public getNativeHandle()J
    .locals 6

    .prologue
    .line 82
    move-object v1, p0

    .local v1, "this":Lcom/sun/glass/ui/monocle/AndroidScreen;
    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/glass/ui/monocle/AndroidScreen;->_getNativeHandle()J

    move-result-wide v4

    move-wide v2, v4

    .line 83
    .local v2, "answer":J
    move-wide v4, v2

    move-wide v1, v4

    .end local v1    # "this":Lcom/sun/glass/ui/monocle/AndroidScreen;
    return-wide v1
.end method

.method public getScale()F
    .locals 3

    .prologue
    .line 72
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/AndroidScreen;
    move-object v1, v0

    iget v1, v1, Lcom/sun/glass/ui/monocle/AndroidScreen;->density:F

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 73
    move-object v1, v0

    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/glass/ui/monocle/AndroidScreen;->_getDensity()F

    move-result v2

    iput v2, v1, Lcom/sun/glass/ui/monocle/AndroidScreen;->density:F

    .line 75
    :cond_0
    move-object v1, v0

    iget v1, v1, Lcom/sun/glass/ui/monocle/AndroidScreen;->density:F

    move v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/AndroidScreen;
    return v0
.end method

.method public getScreenCapture()Ljava/nio/ByteBuffer;
    .locals 2

    .prologue
    .line 122
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/AndroidScreen;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/glass/ui/monocle/AndroidScreen;->_getScreenCapture()Ljava/nio/ByteBuffer;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/AndroidScreen;
    return-object v0
.end method

.method public getWidth()I
    .locals 4

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/AndroidScreen;
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/glass/ui/monocle/AndroidScreen;->_getWidth()I

    move-result v2

    int-to-float v2, v2

    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/glass/ui/monocle/AndroidScreen;->getScale()F

    move-result v3

    div-float/2addr v2, v3

    float-to-int v2, v2

    move v1, v2

    .line 53
    .local v1, "answer":I
    move v2, v1

    move v0, v2

    .end local v0    # "this":Lcom/sun/glass/ui/monocle/AndroidScreen;
    return v0
.end method

.method public shutdown()V
    .locals 2

    .prologue
    .line 90
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/AndroidScreen;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/glass/ui/monocle/AndroidScreen;->_shutdown()V

    .line 91
    return-void
.end method

.method public swapBuffers()V
    .locals 2

    .prologue
    .line 114
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/AndroidScreen;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/glass/ui/monocle/AndroidScreen;->_swapBuffers()V

    .line 115
    return-void
.end method

.method public uploadPixels(Ljava/nio/Buffer;IIIIF)V
    .locals 14

    .prologue
    .line 106
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/ui/monocle/AndroidScreen;
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

    move-object v8, v1

    move v9, v2

    move v10, v3

    move v11, v4

    move v12, v5

    move v13, v6

    invoke-virtual/range {v7 .. v13}, Lcom/sun/glass/ui/monocle/AndroidScreen;->_uploadPixels(Ljava/nio/Buffer;IIIIF)V

    .line 107
    return-void
.end method
