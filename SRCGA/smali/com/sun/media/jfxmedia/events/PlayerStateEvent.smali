.class public Lcom/sun/media/jfxmedia/events/PlayerStateEvent;
.super Lcom/sun/media/jfxmedia/events/PlayerEvent;
.source "PlayerStateEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/media/jfxmedia/events/PlayerStateEvent$PlayerState;
    }
.end annotation


# instance fields
.field private message:Ljava/lang/String;

.field private playerState:Lcom/sun/media/jfxmedia/events/PlayerStateEvent$PlayerState;

.field private playerTime:D


# direct methods
.method public constructor <init>(Lcom/sun/media/jfxmedia/events/PlayerStateEvent$PlayerState;D)V
    .locals 10

    .prologue
    .line 51
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmedia/events/PlayerStateEvent;
    move-object v1, p1

    .local v1, "state":Lcom/sun/media/jfxmedia/events/PlayerStateEvent$PlayerState;
    move-wide v2, p2

    .local v2, "time":D
    move-object v4, v0

    invoke-direct {v4}, Lcom/sun/media/jfxmedia/events/PlayerEvent;-><init>()V

    .line 52
    move-object v4, v1

    if-nez v4, :cond_0

    .line 53
    new-instance v4, Ljava/lang/IllegalArgumentException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const-string v6, "state == null!"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 54
    :cond_0
    move-wide v4, v2

    const-wide/16 v6, 0x0

    cmpg-double v4, v4, v6

    if-gez v4, :cond_1

    .line 55
    new-instance v4, Ljava/lang/IllegalArgumentException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const-string v6, "time < 0.0!"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 58
    :cond_1
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/sun/media/jfxmedia/events/PlayerStateEvent;->playerState:Lcom/sun/media/jfxmedia/events/PlayerStateEvent$PlayerState;

    .line 59
    move-object v4, v0

    move-wide v5, v2

    iput-wide v5, v4, Lcom/sun/media/jfxmedia/events/PlayerStateEvent;->playerTime:D

    .line 60
    return-void
.end method

.method public constructor <init>(Lcom/sun/media/jfxmedia/events/PlayerStateEvent$PlayerState;DLjava/lang/String;)V
    .locals 10

    .prologue
    .line 72
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmedia/events/PlayerStateEvent;
    move-object v1, p1

    .local v1, "state":Lcom/sun/media/jfxmedia/events/PlayerStateEvent$PlayerState;
    move-wide v2, p2

    .local v2, "time":D
    move-object v4, p4

    .local v4, "message":Ljava/lang/String;
    move-object v5, v0

    move-object v6, v1

    move-wide v7, v2

    invoke-direct {v5, v6, v7, v8}, Lcom/sun/media/jfxmedia/events/PlayerStateEvent;-><init>(Lcom/sun/media/jfxmedia/events/PlayerStateEvent$PlayerState;D)V

    .line 73
    move-object v5, v0

    move-object v6, v4

    iput-object v6, v5, Lcom/sun/media/jfxmedia/events/PlayerStateEvent;->message:Ljava/lang/String;

    .line 74
    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 2

    .prologue
    .line 100
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmedia/events/PlayerStateEvent;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/media/jfxmedia/events/PlayerStateEvent;->message:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/media/jfxmedia/events/PlayerStateEvent;
    return-object v0
.end method

.method public getState()Lcom/sun/media/jfxmedia/events/PlayerStateEvent$PlayerState;
    .locals 2

    .prologue
    .line 82
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmedia/events/PlayerStateEvent;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/media/jfxmedia/events/PlayerStateEvent;->playerState:Lcom/sun/media/jfxmedia/events/PlayerStateEvent$PlayerState;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/media/jfxmedia/events/PlayerStateEvent;
    return-object v0
.end method

.method public getTime()D
    .locals 3

    .prologue
    .line 91
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmedia/events/PlayerStateEvent;
    move-object v1, v0

    iget-wide v1, v1, Lcom/sun/media/jfxmedia/events/PlayerStateEvent;->playerTime:D

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/media/jfxmedia/events/PlayerStateEvent;
    return-wide v0
.end method
