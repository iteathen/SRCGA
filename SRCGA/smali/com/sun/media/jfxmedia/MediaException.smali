.class public Lcom/sun/media/jfxmedia/MediaException;
.super Ljava/lang/RuntimeException;
.source "MediaException.java"


# static fields
.field private static final serialVersionUID:J = 0xeL


# instance fields
.field private error:Lcom/sun/media/jfxmedia/MediaError;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 45
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmedia/MediaException;
    move-object v1, p1

    .local v1, "message":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 35
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/sun/media/jfxmedia/MediaException;->error:Lcom/sun/media/jfxmedia/MediaError;

    .line 46
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 6

    .prologue
    .line 57
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmedia/MediaException;
    move-object v1, p1

    .local v1, "message":Ljava/lang/String;
    move-object v2, p2

    .local v2, "cause":Ljava/lang/Throwable;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 35
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/sun/media/jfxmedia/MediaException;->error:Lcom/sun/media/jfxmedia/MediaError;

    .line 58
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;Lcom/sun/media/jfxmedia/MediaError;)V
    .locals 7

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmedia/MediaException;
    move-object v1, p1

    .local v1, "message":Ljava/lang/String;
    move-object v2, p2

    .local v2, "cause":Ljava/lang/Throwable;
    move-object v3, p3

    .local v3, "error":Lcom/sun/media/jfxmedia/MediaError;
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 35
    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Lcom/sun/media/jfxmedia/MediaException;->error:Lcom/sun/media/jfxmedia/MediaError;

    .line 71
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lcom/sun/media/jfxmedia/MediaException;->error:Lcom/sun/media/jfxmedia/MediaError;

    .line 72
    return-void
.end method


# virtual methods
.method public getMediaError()Lcom/sun/media/jfxmedia/MediaError;
    .locals 2

    .prologue
    .line 75
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmedia/MediaException;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/media/jfxmedia/MediaException;->error:Lcom/sun/media/jfxmedia/MediaError;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/media/jfxmedia/MediaException;
    return-object v0
.end method
