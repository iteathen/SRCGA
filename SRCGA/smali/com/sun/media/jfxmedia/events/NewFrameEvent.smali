.class public Lcom/sun/media/jfxmedia/events/NewFrameEvent;
.super Lcom/sun/media/jfxmedia/events/PlayerEvent;
.source "NewFrameEvent.java"


# instance fields
.field private frameData:Lcom/sun/media/jfxmedia/control/VideoDataBuffer;


# direct methods
.method public constructor <init>(Lcom/sun/media/jfxmedia/control/VideoDataBuffer;)V
    .locals 6

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmedia/events/NewFrameEvent;
    move-object v1, p1

    .local v1, "buffer":Lcom/sun/media/jfxmedia/control/VideoDataBuffer;
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/media/jfxmedia/events/PlayerEvent;-><init>()V

    .line 44
    move-object v2, v1

    if-nez v2, :cond_0

    .line 45
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "buffer == null!"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 47
    :cond_0
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/media/jfxmedia/events/NewFrameEvent;->frameData:Lcom/sun/media/jfxmedia/control/VideoDataBuffer;

    .line 48
    return-void
.end method


# virtual methods
.method public getFrameData()Lcom/sun/media/jfxmedia/control/VideoDataBuffer;
    .locals 2

    .prologue
    .line 56
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmedia/events/NewFrameEvent;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/media/jfxmedia/events/NewFrameEvent;->frameData:Lcom/sun/media/jfxmedia/control/VideoDataBuffer;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/media/jfxmedia/events/NewFrameEvent;
    return-object v0
.end method
