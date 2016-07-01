.class public Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$MediaErrorEvent;
.super Lcom/sun/media/jfxmedia/events/PlayerEvent;
.source "NativeMediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MediaErrorEvent"
.end annotation


# instance fields
.field private final error:Lcom/sun/media/jfxmedia/MediaError;

.field private final source:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lcom/sun/media/jfxmedia/MediaError;)V
    .locals 5

    .prologue
    .line 215
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$MediaErrorEvent;
    move-object v1, p1

    .local v1, "source":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "error":Lcom/sun/media/jfxmedia/MediaError;
    move-object v3, v0

    invoke-direct {v3}, Lcom/sun/media/jfxmedia/events/PlayerEvent;-><init>()V

    .line 216
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$MediaErrorEvent;->source:Ljava/lang/Object;

    .line 217
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$MediaErrorEvent;->error:Lcom/sun/media/jfxmedia/MediaError;

    .line 218
    return-void
.end method


# virtual methods
.method public getErrorCode()I
    .locals 2

    .prologue
    .line 229
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$MediaErrorEvent;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$MediaErrorEvent;->error:Lcom/sun/media/jfxmedia/MediaError;

    invoke-virtual {v1}, Lcom/sun/media/jfxmedia/MediaError;->code()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$MediaErrorEvent;
    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 2

    .prologue
    .line 225
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$MediaErrorEvent;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$MediaErrorEvent;->error:Lcom/sun/media/jfxmedia/MediaError;

    invoke-virtual {v1}, Lcom/sun/media/jfxmedia/MediaError;->description()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$MediaErrorEvent;
    return-object v0
.end method

.method public getSource()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 221
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$MediaErrorEvent;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$MediaErrorEvent;->source:Ljava/lang/Object;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$MediaErrorEvent;
    return-object v0
.end method
