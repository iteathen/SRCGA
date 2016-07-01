.class Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$TrackEvent;
.super Lcom/sun/media/jfxmedia/events/PlayerEvent;
.source "NativeMediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TrackEvent"
.end annotation


# instance fields
.field private final track:Lcom/sun/media/jfxmedia/track/Track;


# direct methods
.method constructor <init>(Lcom/sun/media/jfxmedia/track/Track;)V
    .locals 4

    .prologue
    .line 253
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$TrackEvent;
    move-object v1, p1

    .local v1, "track":Lcom/sun/media/jfxmedia/track/Track;
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/media/jfxmedia/events/PlayerEvent;-><init>()V

    .line 254
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$TrackEvent;->track:Lcom/sun/media/jfxmedia/track/Track;

    .line 255
    return-void
.end method


# virtual methods
.method public getTrack()Lcom/sun/media/jfxmedia/track/Track;
    .locals 2

    .prologue
    .line 258
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$TrackEvent;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$TrackEvent;->track:Lcom/sun/media/jfxmedia/track/Track;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/media/jfxmediaimpl/NativeMediaPlayer$TrackEvent;
    return-object v0
.end method
