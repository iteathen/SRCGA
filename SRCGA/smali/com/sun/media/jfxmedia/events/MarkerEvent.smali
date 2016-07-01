.class public Lcom/sun/media/jfxmedia/events/MarkerEvent;
.super Lcom/sun/media/jfxmedia/events/PlayerEvent;
.source "MarkerEvent.java"


# instance fields
.field private markerName:Ljava/lang/String;

.field private presentationTime:D


# direct methods
.method public constructor <init>(Ljava/lang/String;D)V
    .locals 10

    .prologue
    .line 47
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmedia/events/MarkerEvent;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-wide v2, p2

    .local v2, "time":D
    move-object v4, v0

    invoke-direct {v4}, Lcom/sun/media/jfxmedia/events/PlayerEvent;-><init>()V

    .line 48
    move-object v4, v1

    if-nez v4, :cond_0

    .line 49
    new-instance v4, Ljava/lang/IllegalArgumentException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const-string v6, "name == null!"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 50
    :cond_0
    move-wide v4, v2

    const-wide/16 v6, 0x0

    cmpg-double v4, v4, v6

    if-gez v4, :cond_1

    .line 51
    new-instance v4, Ljava/lang/IllegalArgumentException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const-string v6, "time < 0.0!"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 54
    :cond_1
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/sun/media/jfxmedia/events/MarkerEvent;->markerName:Ljava/lang/String;

    .line 55
    move-object v4, v0

    move-wide v5, v2

    iput-wide v5, v4, Lcom/sun/media/jfxmedia/events/MarkerEvent;->presentationTime:D

    .line 56
    return-void
.end method


# virtual methods
.method public getMarkerName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 65
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmedia/events/MarkerEvent;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/media/jfxmedia/events/MarkerEvent;->markerName:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/media/jfxmedia/events/MarkerEvent;
    return-object v0
.end method

.method public getPresentationTime()D
    .locals 3

    .prologue
    .line 75
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmedia/events/MarkerEvent;
    move-object v1, v0

    iget-wide v1, v1, Lcom/sun/media/jfxmedia/events/MarkerEvent;->presentationTime:D

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/media/jfxmedia/events/MarkerEvent;
    return-wide v0
.end method
