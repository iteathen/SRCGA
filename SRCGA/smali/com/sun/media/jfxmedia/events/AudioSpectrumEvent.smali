.class public Lcom/sun/media/jfxmedia/events/AudioSpectrumEvent;
.super Lcom/sun/media/jfxmedia/events/PlayerEvent;
.source "AudioSpectrumEvent.java"


# instance fields
.field private duration:D

.field private source:Lcom/sun/media/jfxmedia/effects/AudioSpectrum;

.field private timestamp:D


# direct methods
.method public constructor <init>(Lcom/sun/media/jfxmedia/effects/AudioSpectrum;DD)V
    .locals 10

    .prologue
    .line 35
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmedia/events/AudioSpectrumEvent;
    move-object v1, p1

    .local v1, "source":Lcom/sun/media/jfxmedia/effects/AudioSpectrum;
    move-wide v2, p2

    .local v2, "timestamp":D
    move-wide v4, p4

    .local v4, "duration":D
    move-object v6, v0

    invoke-direct {v6}, Lcom/sun/media/jfxmedia/events/PlayerEvent;-><init>()V

    .line 36
    move-object v6, v0

    move-object v7, v1

    iput-object v7, v6, Lcom/sun/media/jfxmedia/events/AudioSpectrumEvent;->source:Lcom/sun/media/jfxmedia/effects/AudioSpectrum;

    .line 37
    move-object v6, v0

    move-wide v7, v2

    iput-wide v7, v6, Lcom/sun/media/jfxmedia/events/AudioSpectrumEvent;->timestamp:D

    .line 38
    move-object v6, v0

    move-wide v7, v4

    iput-wide v7, v6, Lcom/sun/media/jfxmedia/events/AudioSpectrumEvent;->duration:D

    .line 39
    return-void
.end method


# virtual methods
.method public final getDuration()D
    .locals 3

    .prologue
    .line 50
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmedia/events/AudioSpectrumEvent;
    move-object v1, v0

    iget-wide v1, v1, Lcom/sun/media/jfxmedia/events/AudioSpectrumEvent;->duration:D

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/media/jfxmedia/events/AudioSpectrumEvent;
    return-wide v0
.end method

.method public final getSource()Lcom/sun/media/jfxmedia/effects/AudioSpectrum;
    .locals 2

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmedia/events/AudioSpectrumEvent;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/media/jfxmedia/events/AudioSpectrumEvent;->source:Lcom/sun/media/jfxmedia/effects/AudioSpectrum;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/media/jfxmedia/events/AudioSpectrumEvent;
    return-object v0
.end method

.method public final getTimestamp()D
    .locals 3

    .prologue
    .line 46
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmedia/events/AudioSpectrumEvent;
    move-object v1, v0

    iget-wide v1, v1, Lcom/sun/media/jfxmedia/events/AudioSpectrumEvent;->timestamp:D

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/media/jfxmedia/events/AudioSpectrumEvent;
    return-wide v0
.end method
