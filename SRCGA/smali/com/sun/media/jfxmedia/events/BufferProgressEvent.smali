.class public Lcom/sun/media/jfxmedia/events/BufferProgressEvent;
.super Lcom/sun/media/jfxmedia/events/PlayerEvent;
.source "BufferProgressEvent.java"


# instance fields
.field private duration:D

.field private position:J

.field private start:J

.field private stop:J


# direct methods
.method public constructor <init>(DJJJ)V
    .locals 13

    .prologue
    .line 46
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmedia/events/BufferProgressEvent;
    move-wide v1, p1

    .local v1, "duration":D
    move-wide/from16 v3, p3

    .local v3, "start":J
    move-wide/from16 v5, p5

    .local v5, "stop":J
    move-wide/from16 v7, p7

    .local v7, "position":J
    move-object v9, v0

    invoke-direct {v9}, Lcom/sun/media/jfxmedia/events/PlayerEvent;-><init>()V

    .line 47
    move-object v9, v0

    move-wide v10, v1

    iput-wide v10, v9, Lcom/sun/media/jfxmedia/events/BufferProgressEvent;->duration:D

    .line 48
    move-object v9, v0

    move-wide v10, v3

    iput-wide v10, v9, Lcom/sun/media/jfxmedia/events/BufferProgressEvent;->start:J

    .line 49
    move-object v9, v0

    move-wide v10, v5

    iput-wide v10, v9, Lcom/sun/media/jfxmedia/events/BufferProgressEvent;->stop:J

    .line 50
    move-object v9, v0

    move-wide v10, v7

    iput-wide v10, v9, Lcom/sun/media/jfxmedia/events/BufferProgressEvent;->position:J

    .line 51
    return-void
.end method


# virtual methods
.method public getBufferPosition()J
    .locals 3

    .prologue
    .line 84
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmedia/events/BufferProgressEvent;
    move-object v1, v0

    iget-wide v1, v1, Lcom/sun/media/jfxmedia/events/BufferProgressEvent;->position:J

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/media/jfxmedia/events/BufferProgressEvent;
    return-wide v0
.end method

.method public getBufferStart()J
    .locals 3

    .prologue
    .line 64
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmedia/events/BufferProgressEvent;
    move-object v1, v0

    iget-wide v1, v1, Lcom/sun/media/jfxmedia/events/BufferProgressEvent;->start:J

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/media/jfxmedia/events/BufferProgressEvent;
    return-wide v0
.end method

.method public getBufferStop()J
    .locals 3

    .prologue
    .line 74
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmedia/events/BufferProgressEvent;
    move-object v1, v0

    iget-wide v1, v1, Lcom/sun/media/jfxmedia/events/BufferProgressEvent;->stop:J

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/media/jfxmedia/events/BufferProgressEvent;
    return-wide v0
.end method

.method public getDuration()D
    .locals 3

    .prologue
    .line 55
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmedia/events/BufferProgressEvent;
    move-object v1, v0

    iget-wide v1, v1, Lcom/sun/media/jfxmedia/events/BufferProgressEvent;->duration:D

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/media/jfxmedia/events/BufferProgressEvent;
    return-wide v0
.end method
