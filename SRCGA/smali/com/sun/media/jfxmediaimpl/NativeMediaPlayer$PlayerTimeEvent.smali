.class Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$PlayerTimeEvent;
.super Lcom/sun/media/jfxmedia/events/PlayerEvent;
.source "NativeMediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PlayerTimeEvent"
.end annotation


# instance fields
.field private final time:D


# direct methods
.method public constructor <init>(D)V
    .locals 7

    .prologue
    .line 237
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$PlayerTimeEvent;
    move-wide v1, p1

    .local v1, "time":D
    move-object v3, v0

    invoke-direct {v3}, Lcom/sun/media/jfxmedia/events/PlayerEvent;-><init>()V

    .line 238
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$PlayerTimeEvent;->time:D

    .line 239
    return-void
.end method


# virtual methods
.method public getTime()D
    .locals 3

    .prologue
    .line 242
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$PlayerTimeEvent;
    move-object v1, v0

    iget-wide v1, v1, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$PlayerTimeEvent;->time:D

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$PlayerTimeEvent;
    return-wide v0
.end method
