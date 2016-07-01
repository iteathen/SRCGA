.class Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$FrameSizeChangedEvent;
.super Lcom/sun/media/jfxmedia/events/PlayerEvent;
.source "NativeMediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FrameSizeChangedEvent"
.end annotation


# instance fields
.field private final height:I

.field private final width:I


# direct methods
.method public constructor <init>(II)V
    .locals 5

    .prologue
    .line 270
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$FrameSizeChangedEvent;
    move v1, p1

    .local v1, "width":I
    move v2, p2

    .local v2, "height":I
    move-object v3, v0

    invoke-direct {v3}, Lcom/sun/media/jfxmedia/events/PlayerEvent;-><init>()V

    .line 271
    move v3, v1

    if-lez v3, :cond_0

    .line 272
    move-object v3, v0

    move v4, v1

    iput v4, v3, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$FrameSizeChangedEvent;->width:I

    .line 277
    :goto_0
    move v3, v2

    if-lez v3, :cond_1

    .line 278
    move-object v3, v0

    move v4, v2

    iput v4, v3, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$FrameSizeChangedEvent;->height:I

    .line 282
    :goto_1
    return-void

    .line 274
    :cond_0
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$FrameSizeChangedEvent;->width:I

    goto :goto_0

    .line 280
    :cond_1
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$FrameSizeChangedEvent;->height:I

    goto :goto_1
.end method


# virtual methods
.method public getHeight()I
    .locals 2

    .prologue
    .line 289
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$FrameSizeChangedEvent;
    move-object v1, v0

    iget v1, v1, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$FrameSizeChangedEvent;->height:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$FrameSizeChangedEvent;
    return v0
.end method

.method public getWidth()I
    .locals 2

    .prologue
    .line 285
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$FrameSizeChangedEvent;
    move-object v1, v0

    iget v1, v1, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$FrameSizeChangedEvent;->width:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$FrameSizeChangedEvent;
    return v0
.end method
