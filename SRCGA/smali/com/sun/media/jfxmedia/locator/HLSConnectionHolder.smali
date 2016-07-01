.class final Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;
.super Lcom/sun/media/jfxmedia/locator/ConnectionHolder;
.source "HLSConnectionHolder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;,
        Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$VariantPlaylist;,
        Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistParser;,
        Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistThread;
    }
.end annotation


# static fields
.field private static final CHARSET_US_ASCII:Ljava/lang/String; = "US-ASCII"

.field private static final CHARSET_UTF_8:Ljava/lang/String; = "UTF-8"

.field private static final HLS_PROP_GET_DURATION:I = 0x1

.field private static final HLS_PROP_GET_HLS_MODE:I = 0x2

.field private static final HLS_PROP_GET_MIMETYPE:I = 0x3

.field private static final HLS_VALUE_FLOAT_MULTIPLIER:J = 0x3e8L

.field private static final HLS_VALUE_MIMETYPE_MP2T:I = 0x1

.field private static final HLS_VALUE_MIMETYPE_MP3:I = 0x2


# instance fields
.field private currentPlaylist:Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;

.field private isBitrateAdjustable:Z

.field private isPlaylistClosed:Z

.field private liveSemaphore:Ljava/util/concurrent/Semaphore;

.field private mediaFileIndex:I

.field private playlistThread:Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistThread;

.field private readySignal:Ljava/util/concurrent/CountDownLatch;

.field private startTime:J

.field private urlConnection:Ljava/net/URLConnection;

.field private variantPlaylist:Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$VariantPlaylist;


# direct methods
.method constructor <init>(Ljava/net/URI;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 64
    move-object v1, p0

    .local v1, "this":Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;
    move-object v2, p1

    .local v2, "uri":Ljava/net/URI;
    move-object v3, v1

    invoke-direct {v3}, Lcom/sun/media/jfxmedia/locator/ConnectionHolder;-><init>()V

    .line 45
    move-object v3, v1

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;->urlConnection:Ljava/net/URLConnection;

    .line 46
    move-object v3, v1

    new-instance v4, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistThread;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v1

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistThread;-><init>(Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$1;)V

    iput-object v4, v3, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;->playlistThread:Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistThread;

    .line 47
    move-object v3, v1

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;->variantPlaylist:Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$VariantPlaylist;

    .line 48
    move-object v3, v1

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;->currentPlaylist:Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;

    .line 49
    move-object v3, v1

    const/4 v4, -0x1

    iput v4, v3, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;->mediaFileIndex:I

    .line 50
    move-object v3, v1

    new-instance v4, Ljava/util/concurrent/CountDownLatch;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v4, v3, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;->readySignal:Ljava/util/concurrent/CountDownLatch;

    .line 51
    move-object v3, v1

    new-instance v4, Ljava/util/concurrent/Semaphore;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v4, v3, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;->liveSemaphore:Ljava/util/concurrent/Semaphore;

    .line 52
    move-object v3, v1

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;->isPlaylistClosed:Z

    .line 53
    move-object v3, v1

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;->isBitrateAdjustable:Z

    .line 54
    move-object v3, v1

    const-wide/16 v4, -0x1

    iput-wide v4, v3, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;->startTime:J

    .line 65
    move-object v3, v1

    iget-object v3, v3, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;->playlistThread:Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistThread;

    move-object v4, v2

    invoke-static {v3, v4}, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistThread;->access$100(Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistThread;Ljava/net/URI;)V

    .line 66
    move-object v3, v1

    invoke-direct {v3}, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;->init()V

    .line 67
    return-void
.end method

.method static synthetic access$1700(Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;)Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$VariantPlaylist;
    .locals 2

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "x0":Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;->variantPlaylist:Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$VariantPlaylist;

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;
    return-object v0
.end method

.method static synthetic access$1702(Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$VariantPlaylist;)Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$VariantPlaylist;
    .locals 7

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "x0":Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;
    move-object v1, p1

    .local v1, "x1":Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$VariantPlaylist;
    move-object v2, v0

    move-object v3, v1

    move-object v5, v2

    move-object v6, v3

    move-object v2, v6

    move-object v3, v5

    move-object v4, v6

    iput-object v4, v3, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;->variantPlaylist:Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$VariantPlaylist;

    move-object v0, v2

    .end local v0    # "x0":Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;
    return-object v0
.end method

.method static synthetic access$2300(Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;)Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;
    .locals 2

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "x0":Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;->currentPlaylist:Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;
    return-object v0
.end method

.method static synthetic access$2302(Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;)Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;
    .locals 7

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "x0":Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;
    move-object v1, p1

    .local v1, "x1":Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;
    move-object v2, v0

    move-object v3, v1

    move-object v5, v2

    move-object v6, v3

    move-object v2, v6

    move-object v3, v5

    move-object v4, v6

    iput-object v4, v3, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;->currentPlaylist:Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;

    move-object v0, v2

    .end local v0    # "x0":Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;
    return-object v0
.end method

.method static synthetic access$3802(Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;Z)Z
    .locals 7

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "x0":Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;
    move v1, p1

    .local v1, "x1":Z
    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput-boolean v4, v3, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;->isBitrateAdjustable:Z

    move v0, v2

    .end local v0    # "x0":Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;
    return v0
.end method

.method static synthetic access$3900(Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;)Ljava/util/concurrent/CountDownLatch;
    .locals 2

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "x0":Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;->readySignal:Ljava/util/concurrent/CountDownLatch;

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;
    return-object v0
.end method

.method static synthetic access$4100(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "x0":Ljava/lang/String;
    move-object v1, v0

    invoke-static {v1}, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;->stripParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "x0":Ljava/lang/String;
    return-object v0
.end method

.method static synthetic access$4300(Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;)I
    .locals 2

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "x0":Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;
    move-object v1, v0

    iget v1, v1, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;->mediaFileIndex:I

    move v0, v1

    .end local v0    # "x0":Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;
    return v0
.end method

.method static synthetic access$4302(Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;I)I
    .locals 7

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "x0":Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;
    move v1, p1

    .local v1, "x1":I
    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput v4, v3, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;->mediaFileIndex:I

    move v0, v2

    .end local v0    # "x0":Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;
    return v0
.end method

.method static synthetic access$4308(Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;)I
    .locals 7

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "x0":Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;
    move-object v1, v0

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    iget v2, v2, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;->mediaFileIndex:I

    move-object v5, v1

    move v6, v2

    move v1, v6

    move-object v2, v5

    move v3, v6

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;->mediaFileIndex:I

    move v0, v1

    .end local v0    # "x0":Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;
    return v0
.end method

.method static synthetic access$4310(Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;)I
    .locals 7

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "x0":Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;
    move-object v1, v0

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    iget v2, v2, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;->mediaFileIndex:I

    move-object v5, v1

    move v6, v2

    move v1, v6

    move-object v2, v5

    move v3, v6

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    iput v3, v2, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;->mediaFileIndex:I

    move v0, v1

    .end local v0    # "x0":Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;
    return v0
.end method

.method static synthetic access$4400(Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;)Ljava/util/concurrent/Semaphore;
    .locals 2

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "x0":Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;->liveSemaphore:Ljava/util/concurrent/Semaphore;

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;
    return-object v0
.end method

.method static synthetic access$4500(Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;)Z
    .locals 2

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "x0":Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;->isPlaylistClosed:Z

    move v0, v1

    .end local v0    # "x0":Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;
    return v0
.end method

.method static synthetic access$4502(Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;Z)Z
    .locals 7

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "x0":Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;
    move v1, p1

    .local v1, "x1":Z
    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput-boolean v4, v3, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;->isPlaylistClosed:Z

    move v0, v2

    .end local v0    # "x0":Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;
    return v0
.end method

.method private adjustBitrate(J)V
    .locals 11

    .prologue
    .line 192
    move-object v1, p0

    .local v1, "this":Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;
    move-wide v2, p1

    .local v2, "readTime":J
    move-object v6, v1

    iget-object v6, v6, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;->urlConnection:Ljava/net/URLConnection;

    invoke-virtual {v6}, Ljava/net/URLConnection;->getContentLength()I

    move-result v6

    int-to-long v6, v6

    const-wide/16 v8, 0x8

    mul-long/2addr v6, v8

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    move-wide v8, v2

    div-long/2addr v6, v8

    long-to-int v6, v6

    move v4, v6

    .line 194
    .local v4, "avgBitrate":I
    move-object v6, v1

    iget-object v6, v6, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;->variantPlaylist:Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$VariantPlaylist;

    move v7, v4

    invoke-static {v6, v7}, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$VariantPlaylist;->access$900(Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$VariantPlaylist;I)Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;

    move-result-object v6

    move-object v5, v6

    .line 195
    .local v5, "playlist":Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;
    move-object v6, v5

    if-eqz v6, :cond_1

    move-object v6, v5

    move-object v7, v1

    iget-object v7, v7, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;->currentPlaylist:Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;

    if-eq v6, v7, :cond_1

    .line 196
    move-object v6, v1

    iget-object v6, v6, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;->currentPlaylist:Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;

    invoke-static {v6}, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;->access$1000(Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 197
    move-object v6, v5

    move-object v7, v1

    iget-object v7, v7, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;->currentPlaylist:Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;

    invoke-static {v7}, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;->access$700(Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;->access$1100(Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;Ljava/lang/String;)V

    .line 198
    move-object v6, v1

    iget-object v6, v6, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;->playlistThread:Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistThread;

    move-object v7, v5

    invoke-static {v6, v7}, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistThread;->access$1200(Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistThread;Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;)V

    .line 201
    :cond_0
    move-object v6, v5

    const/4 v7, 0x1

    invoke-static {v6, v7}, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;->access$1300(Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;Z)V

    .line 202
    move-object v6, v1

    move-object v7, v5

    iput-object v7, v6, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;->currentPlaylist:Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;

    .line 204
    :cond_1
    return-void
.end method

.method private init()V
    .locals 3

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;->playlistThread:Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistThread;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistThread;->access$200(Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistThread;I)V

    .line 71
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;->playlistThread:Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistThread;

    invoke-virtual {v1}, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistThread;->start()V

    .line 72
    return-void
.end method

.method private loadNextSegment()I
    .locals 7

    .prologue
    .line 165
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;
    move-object v3, v0

    invoke-direct {v3}, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;->resetConnection()V

    .line 167
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;->currentPlaylist:Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;

    invoke-static {v3}, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;->access$700(Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;)Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .line 168
    .local v1, "mediaFile":Ljava/lang/String;
    move-object v3, v1

    if-nez v3, :cond_0

    .line 169
    const/4 v3, -0x1

    move v0, v3

    .line 183
    .end local v0    # "this":Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;
    :goto_0
    return v0

    .line 173
    .restart local v0    # "this":Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;
    :cond_0
    :try_start_0
    new-instance v3, Ljava/net/URI;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    .line 174
    .local v2, "uri":Ljava/net/URI;
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v4}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    iput-object v4, v3, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;->urlConnection:Ljava/net/URLConnection;

    .line 175
    move-object v3, v0

    move-object v4, v0

    invoke-direct {v4}, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;->openChannel()Ljava/nio/channels/ReadableByteChannel;

    move-result-object v4

    iput-object v4, v3, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;->channel:Ljava/nio/channels/ReadableByteChannel;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    .line 180
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;->currentPlaylist:Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;

    invoke-static {v3}, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;->access$800(Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 181
    const/4 v3, -0x1

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;->urlConnection:Ljava/net/URLConnection;

    invoke-virtual {v4}, Ljava/net/URLConnection;->getContentLength()I

    move-result v4

    mul-int/2addr v3, v4

    move v0, v3

    goto :goto_0

    .line 176
    .end local v2    # "uri":Ljava/net/URI;
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 177
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, -0x1

    move v0, v3

    goto :goto_0

    .line 183
    .local v2, "uri":Ljava/net/URI;
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;->urlConnection:Ljava/net/URLConnection;

    invoke-virtual {v3}, Ljava/net/URLConnection;->getContentLength()I

    move-result v3

    move v0, v3

    goto :goto_0
.end method

.method private openChannel()Ljava/nio/channels/ReadableByteChannel;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 188
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;->urlConnection:Ljava/net/URLConnection;

    invoke-virtual {v1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Ljava/nio/channels/Channels;->newChannel(Ljava/io/InputStream;)Ljava/nio/channels/ReadableByteChannel;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;
    return-object v0
.end method

.method private resetConnection()V
    .locals 3

    .prologue
    .line 155
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;
    move-object v1, v0

    invoke-super {v1}, Lcom/sun/media/jfxmedia/locator/ConnectionHolder;->closeConnection()V

    .line 157
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;->urlConnection:Ljava/net/URLConnection;

    invoke-static {v1}, Lcom/sun/media/jfxmedia/locator/Locator;->closeConnection(Ljava/net/URLConnection;)V

    .line 158
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;->urlConnection:Ljava/net/URLConnection;

    .line 159
    return-void
.end method

.method private static stripParameters(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 207
    move-object v0, p0

    .local v0, "mediaFile":Ljava/lang/String;
    move-object v2, v0

    const/16 v3, 0x3f

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    move v1, v2

    .line 208
    .local v1, "qp":I
    move v2, v1

    if-lez v2, :cond_0

    .line 209
    move-object v2, v0

    const/4 v3, 0x0

    move v4, v1

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .line 211
    :cond_0
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "mediaFile":Ljava/lang/String;
    return-object v0
.end method


# virtual methods
.method public closeConnection()V
    .locals 3

    .prologue
    .line 118
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;->currentPlaylist:Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;

    invoke-static {v1}, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;->access$400(Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;)V

    .line 119
    move-object v1, v0

    invoke-super {v1}, Lcom/sun/media/jfxmedia/locator/ConnectionHolder;->closeConnection()V

    .line 120
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;->resetConnection()V

    .line 121
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;->playlistThread:Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistThread;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistThread;->access$200(Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistThread;I)V

    .line 122
    return-void
.end method

.method getStreamSize()I
    .locals 3

    .prologue
    .line 146
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;
    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;->readySignal:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    .line 151
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;->loadNextSegment()I

    move-result v2

    move v0, v2

    .end local v0    # "this":Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;
    :goto_0
    return v0

    .line 147
    .restart local v0    # "this":Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 148
    .local v1, "e":Ljava/lang/Exception;
    const/4 v2, -0x1

    move v0, v2

    goto :goto_0
.end method

.method isRandomAccess()Z
    .locals 2

    .prologue
    .line 103
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;
    return v0
.end method

.method isSeekable()Z
    .locals 2

    .prologue
    .line 99
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;
    const/4 v1, 0x1

    move v0, v1

    .end local v0    # "this":Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;
    return v0
.end method

.method needBuffer()Z
    .locals 2

    .prologue
    .line 95
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;
    const/4 v1, 0x1

    move v0, v1

    .end local v0    # "this":Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;
    return v0
.end method

.method property(II)I
    .locals 8

    .prologue
    .line 127
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;
    move v1, p1

    .local v1, "prop":I
    move v2, p2

    .local v2, "value":I
    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;->readySignal:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v4}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    .line 132
    move v4, v1

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 133
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;->currentPlaylist:Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;

    invoke-static {v4}, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;->access$500(Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;)D

    move-result-wide v4

    const-wide v6, 0x408f400000000000L    # 1000.0

    mul-double/2addr v4, v6

    double-to-int v4, v4

    move v0, v4

    .line 140
    .end local v0    # "this":Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;
    :goto_0
    return v0

    .line 128
    .restart local v0    # "this":Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 129
    .local v3, "e":Ljava/lang/Exception;
    const/4 v4, -0x1

    move v0, v4

    goto :goto_0

    .line 134
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_0
    move v4, v1

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 135
    const/4 v4, 0x1

    move v0, v4

    goto :goto_0

    .line 136
    :cond_1
    move v4, v1

    const/4 v5, 0x3

    if-ne v4, v5, :cond_2

    .line 137
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;->currentPlaylist:Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;

    invoke-static {v4}, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;->access$600(Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;)I

    move-result v4

    move v0, v4

    goto :goto_0

    .line 140
    :cond_2
    const/4 v4, -0x1

    move v0, v4

    goto :goto_0
.end method

.method readBlock(JI)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 91
    move-object v1, p0

    .local v1, "this":Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;
    move-wide v2, p1

    .local v2, "position":J
    move v4, p3

    .local v4, "size":I
    new-instance v5, Ljava/io/IOException;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/io/IOException;-><init>()V

    throw v5
.end method

.method public readNextBlock()I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 76
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;
    move-object v4, v0

    iget-boolean v4, v4, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;->isBitrateAdjustable:Z

    if-eqz v4, :cond_0

    move-object v4, v0

    iget-wide v4, v4, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;->startTime:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    .line 77
    move-object v4, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, v4, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;->startTime:J

    .line 80
    :cond_0
    move-object v4, v0

    invoke-super {v4}, Lcom/sun/media/jfxmedia/locator/ConnectionHolder;->readNextBlock()I

    move-result v4

    move v1, v4

    .line 81
    .local v1, "read":I
    move-object v4, v0

    iget-boolean v4, v4, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;->isBitrateAdjustable:Z

    if-eqz v4, :cond_1

    move v4, v1

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1

    .line 82
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object v6, v0

    iget-wide v6, v6, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;->startTime:J

    sub-long/2addr v4, v6

    move-wide v2, v4

    .line 83
    .local v2, "readTime":J
    move-object v4, v0

    const-wide/16 v5, -0x1

    iput-wide v5, v4, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;->startTime:J

    .line 84
    move-object v4, v0

    move-wide v5, v2

    invoke-direct {v4, v5, v6}, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;->adjustBitrate(J)V

    .line 87
    .end local v2    # "readTime":J
    :cond_1
    move v4, v1

    move v0, v4

    .end local v0    # "this":Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;
    return v0
.end method

.method public seek(J)J
    .locals 9

    .prologue
    .line 108
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;
    move-wide v1, p1

    .local v1, "position":J
    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;->readySignal:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v4}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    .line 113
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;->currentPlaylist:Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;

    move-wide v5, v1

    invoke-static {v4, v5, v6}, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;->access$300(Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;J)D

    move-result-wide v4

    const-wide v6, 0x408f400000000000L    # 1000.0

    mul-double/2addr v4, v6

    double-to-long v4, v4

    move-wide v0, v4

    .end local v0    # "this":Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;
    :goto_0
    return-wide v0

    .line 109
    .restart local v0    # "this":Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 110
    .local v3, "e":Ljava/lang/Exception;
    const-wide/16 v4, -0x1

    move-wide v0, v4

    goto :goto_0
.end method
