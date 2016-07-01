.class Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistThread;
.super Ljava/lang/Thread;
.source "HLSConnectionHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PlaylistThread"
.end annotation


# static fields
.field public static final STATE_EXIT:I = 0x1

.field public static final STATE_INIT:I = 0x0

.field public static final STATE_RELOAD_PLAYLIST:I = 0x2


# instance fields
.field private playlistURI:Ljava/net/URI;

.field private final reloadLock:Ljava/lang/Object;

.field private reloadPlaylist:Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;

.field private stateQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private volatile stopped:Z

.field final synthetic this$0:Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;


# direct methods
.method private constructor <init>(Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;)V
    .locals 6

    .prologue
    .line 225
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistThread;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistThread;->this$0:Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Thread;-><init>()V

    .line 219
    move-object v2, v0

    new-instance v3, Ljava/util/concurrent/LinkedBlockingQueue;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v3, v2, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistThread;->stateQueue:Ljava/util/concurrent/BlockingQueue;

    .line 220
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistThread;->playlistURI:Ljava/net/URI;

    .line 221
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistThread;->reloadPlaylist:Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;

    .line 222
    move-object v2, v0

    new-instance v3, Ljava/lang/Object;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v3, v2, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistThread;->reloadLock:Ljava/lang/Object;

    .line 223
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistThread;->stopped:Z

    .line 226
    move-object v2, v0

    const-string v3, "JFXMedia HLS Playlist Thread"

    invoke-virtual {v2, v3}, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistThread;->setName(Ljava/lang/String;)V

    .line 227
    move-object v2, v0

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistThread;->setDaemon(Z)V

    .line 228
    return-void
.end method

.method synthetic constructor <init>(Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$1;)V
    .locals 5

    .prologue
    .line 214
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistThread;
    move-object v1, p1

    .local v1, "x0":Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;
    move-object v2, p2

    .local v2, "x1":Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$1;
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistThread;-><init>(Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;)V

    return-void
.end method

.method static synthetic access$100(Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistThread;Ljava/net/URI;)V
    .locals 4

    .prologue
    .line 214
    move-object v0, p0

    .local v0, "x0":Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistThread;
    move-object v1, p1

    .local v1, "x1":Ljava/net/URI;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistThread;->setPlaylistURI(Ljava/net/URI;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistThread;Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;)V
    .locals 4

    .prologue
    .line 214
    move-object v0, p0

    .local v0, "x0":Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistThread;
    move-object v1, p1

    .local v1, "x1":Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistThread;->setReloadPlaylist(Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;)V

    return-void
.end method

.method static synthetic access$200(Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistThread;I)V
    .locals 4

    .prologue
    .line 214
    move-object v0, p0

    .local v0, "x0":Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistThread;
    move v1, p1

    .local v1, "x1":I
    move-object v2, v0

    move v3, v1

    invoke-direct {v2, v3}, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistThread;->putState(I)V

    return-void
.end method

.method private putState(I)V
    .locals 5

    .prologue
    .line 264
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistThread;
    move v1, p1

    .local v1, "state":I
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistThread;->stateQueue:Ljava/util/concurrent/BlockingQueue;

    if-eqz v3, :cond_0

    .line 266
    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistThread;->stateQueue:Ljava/util/concurrent/BlockingQueue;

    move v4, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 268
    .line 270
    :cond_0
    :goto_0
    return-void

    .line 267
    :catch_0
    move-exception v3

    move-object v2, v3

    goto :goto_0
.end method

.method private setPlaylistURI(Ljava/net/URI;)V
    .locals 4

    .prologue
    .line 231
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistThread;
    move-object v1, p1

    .local v1, "playlistURI":Ljava/net/URI;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistThread;->playlistURI:Ljava/net/URI;

    .line 232
    return-void
.end method

.method private setReloadPlaylist(Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;)V
    .locals 7

    .prologue
    .line 235
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistThread;
    move-object v1, p1

    .local v1, "playlist":Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistThread;->reloadLock:Ljava/lang/Object;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    move-object v2, v5

    monitor-enter v4

    .line 236
    move-object v4, v0

    move-object v5, v1

    :try_start_0
    iput-object v5, v4, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistThread;->reloadPlaylist:Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;

    .line 237
    move-object v4, v2

    monitor-exit v4

    .line 238
    return-void

    .line 237
    :catchall_0
    move-exception v4

    move-object v3, v4

    move-object v4, v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v4, v3

    throw v4
.end method

.method private stateInit()V
    .locals 12

    .prologue
    .line 273
    move-object v1, p0

    .local v1, "this":Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistThread;
    move-object v4, v1

    iget-object v4, v4, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistThread;->playlistURI:Ljava/net/URI;

    if-nez v4, :cond_0

    .line 274
    .line 329
    :goto_0
    return-void

    .line 277
    :cond_0
    new-instance v4, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistParser;

    move-object v11, v4

    move-object v4, v11

    move-object v5, v11

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistParser;-><init>(Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$1;)V

    move-object v2, v4

    .line 278
    .local v2, "parser":Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistParser;
    move-object v4, v2

    move-object v5, v1

    iget-object v5, v5, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistThread;->playlistURI:Ljava/net/URI;

    invoke-static {v4, v5}, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistParser;->access$1500(Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistParser;Ljava/net/URI;)V

    .line 280
    move-object v4, v2

    invoke-static {v4}, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistParser;->access$1600(Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistParser;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 281
    move-object v4, v1

    iget-object v4, v4, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistThread;->this$0:Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;

    new-instance v5, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$VariantPlaylist;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    move-object v7, v1

    iget-object v7, v7, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistThread;->playlistURI:Ljava/net/URI;

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8}, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$VariantPlaylist;-><init>(Ljava/net/URI;Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$1;)V

    invoke-static {v4, v5}, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;->access$1702(Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$VariantPlaylist;)Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$VariantPlaylist;

    move-result-object v4

    .line 283
    :goto_1
    move-object v4, v2

    invoke-static {v4}, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistParser;->access$1900(Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistParser;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 284
    move-object v4, v1

    iget-object v4, v4, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistThread;->this$0:Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;

    invoke-static {v4}, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;->access$1700(Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;)Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$VariantPlaylist;

    move-result-object v4

    move-object v5, v2

    invoke-static {v5}, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistParser;->access$2000(Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistParser;)Ljava/lang/String;

    move-result-object v5

    move-object v6, v2

    invoke-static {v6}, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistParser;->access$2100(Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistParser;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v4, v5, v6}, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$VariantPlaylist;->access$2200(Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$VariantPlaylist;Ljava/lang/String;I)V

    goto :goto_1

    .line 287
    :cond_1
    move-object v4, v1

    iget-object v4, v4, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistThread;->this$0:Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;

    invoke-static {v4}, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;->access$2300(Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;)Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;

    move-result-object v4

    if-nez v4, :cond_2

    .line 288
    move-object v4, v1

    iget-object v4, v4, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistThread;->this$0:Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;

    new-instance v5, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    move-object v7, v1

    iget-object v7, v7, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistThread;->this$0:Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;

    move-object v8, v2

    invoke-static {v8}, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistParser;->access$2400(Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistParser;)Z

    move-result v8

    move-object v9, v2

    invoke-static {v9}, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistParser;->access$2500(Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistParser;)I

    move-result v9

    const/4 v10, 0x0

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;-><init>(Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;ZILcom/sun/media/jfxmedia/locator/HLSConnectionHolder$1;)V

    invoke-static {v4, v5}, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;->access$2302(Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;)Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;

    move-result-object v4

    .line 289
    move-object v4, v1

    iget-object v4, v4, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistThread;->this$0:Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;

    invoke-static {v4}, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;->access$2300(Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;)Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;

    move-result-object v4

    move-object v5, v1

    iget-object v5, v5, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistThread;->playlistURI:Ljava/net/URI;

    invoke-static {v4, v5}, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;->access$2700(Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;Ljava/net/URI;)V

    .line 292
    :cond_2
    move-object v4, v1

    iget-object v4, v4, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistThread;->this$0:Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;

    invoke-static {v4}, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;->access$2300(Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;)Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;

    move-result-object v4

    move-object v5, v2

    invoke-static {v5}, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistParser;->access$2800(Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistParser;)I

    move-result v5

    invoke-static {v4, v5}, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;->access$2900(Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 293
    :goto_2
    move-object v4, v2

    invoke-static {v4}, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistParser;->access$1900(Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistParser;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 294
    move-object v4, v1

    iget-object v4, v4, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistThread;->this$0:Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;

    invoke-static {v4}, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;->access$2300(Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;)Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;

    move-result-object v4

    move-object v5, v2

    invoke-static {v5}, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistParser;->access$2000(Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistParser;)Ljava/lang/String;

    move-result-object v5

    move-object v6, v2

    invoke-static {v6}, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistParser;->access$3000(Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistParser;)Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    move-object v8, v2

    invoke-static {v8}, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistParser;->access$3100(Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistParser;)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    invoke-static {v4, v5, v6, v7, v8}, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;->access$3200(Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;Ljava/lang/String;DZ)V

    goto :goto_2

    .line 298
    :cond_3
    move-object v4, v1

    iget-object v4, v4, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistThread;->this$0:Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;

    invoke-static {v4}, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;->access$1700(Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;)Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$VariantPlaylist;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 299
    move-object v4, v1

    iget-object v4, v4, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistThread;->this$0:Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;

    invoke-static {v4}, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;->access$1700(Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;)Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$VariantPlaylist;

    move-result-object v4

    move-object v5, v1

    iget-object v5, v5, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistThread;->this$0:Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;

    invoke-static {v5}, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;->access$2300(Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;)Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$VariantPlaylist;->access$3300(Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$VariantPlaylist;Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;)V

    .line 304
    :cond_4
    move-object v4, v1

    iget-object v4, v4, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistThread;->this$0:Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;

    invoke-static {v4}, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;->access$1700(Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;)Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$VariantPlaylist;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 305
    :goto_3
    move-object v4, v1

    iget-object v4, v4, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistThread;->this$0:Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;

    invoke-static {v4}, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;->access$1700(Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;)Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$VariantPlaylist;

    move-result-object v4

    invoke-static {v4}, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$VariantPlaylist;->access$3400(Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$VariantPlaylist;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 307
    move-object v4, v1

    :try_start_0
    iget-object v4, v4, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistThread;->this$0:Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;

    new-instance v5, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    move-object v7, v1

    iget-object v7, v7, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistThread;->this$0:Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;

    move-object v8, v1

    iget-object v8, v8, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistThread;->this$0:Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;

    invoke-static {v8}, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;->access$1700(Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;)Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$VariantPlaylist;

    move-result-object v8

    invoke-static {v8}, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$VariantPlaylist;->access$3500(Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$VariantPlaylist;)Ljava/net/URI;

    move-result-object v8

    const/4 v9, 0x0

    invoke-direct {v6, v7, v8, v9}, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;-><init>(Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;Ljava/net/URI;Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$1;)V

    invoke-static {v4, v5}, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;->access$2302(Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;)Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;

    move-result-object v4

    .line 308
    move-object v4, v1

    iget-object v4, v4, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistThread;->this$0:Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;

    invoke-static {v4}, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;->access$2300(Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;)Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;->access$1100(Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;Ljava/lang/String;)V

    .line 309
    move-object v4, v1

    iget-object v4, v4, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistThread;->this$0:Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;

    invoke-static {v4}, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;->access$1700(Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;)Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$VariantPlaylist;

    move-result-object v4

    move-object v5, v1

    iget-object v5, v5, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistThread;->this$0:Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;

    invoke-static {v5}, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;->access$2300(Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;)Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$VariantPlaylist;->access$3300(Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$VariantPlaylist;Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1

    .line 312
    goto :goto_3

    .line 310
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 312
    goto :goto_3

    .line 311
    :catch_1
    move-exception v4

    move-object v3, v4

    .line 312
    goto :goto_3

    .line 317
    :cond_5
    move-object v4, v1

    iget-object v4, v4, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistThread;->this$0:Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;

    invoke-static {v4}, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;->access$1700(Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;)Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$VariantPlaylist;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 318
    move-object v4, v1

    iget-object v4, v4, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistThread;->this$0:Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;

    move-object v5, v1

    iget-object v5, v5, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistThread;->this$0:Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;

    invoke-static {v5}, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;->access$1700(Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;)Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$VariantPlaylist;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$VariantPlaylist;->access$3700(Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$VariantPlaylist;I)Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;->access$2302(Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;)Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;

    move-result-object v4

    .line 319
    move-object v4, v1

    iget-object v4, v4, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistThread;->this$0:Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;->access$3802(Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;Z)Z

    move-result v4

    .line 323
    :cond_6
    move-object v4, v1

    iget-object v4, v4, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistThread;->this$0:Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;

    invoke-static {v4}, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;->access$2300(Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;)Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;

    move-result-object v4

    invoke-static {v4}, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;->access$1000(Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 324
    move-object v4, v1

    move-object v5, v1

    iget-object v5, v5, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistThread;->this$0:Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;

    invoke-static {v5}, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;->access$2300(Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;)Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistThread;->setReloadPlaylist(Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;)V

    .line 325
    move-object v4, v1

    const/4 v5, 0x2

    invoke-direct {v4, v5}, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistThread;->putState(I)V

    .line 328
    :cond_7
    move-object v4, v1

    iget-object v4, v4, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistThread;->this$0:Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;

    invoke-static {v4}, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;->access$3900(Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 329
    goto/16 :goto_0
.end method

.method private stateReloadPlaylist()V
    .locals 11

    .prologue
    .line 334
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistThread;
    move-object v6, v0

    :try_start_0
    iget-object v6, v6, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistThread;->reloadLock:Ljava/lang/Object;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v3, v7

    monitor-enter v6
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 335
    move-object v6, v0

    :try_start_1
    iget-object v6, v6, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistThread;->reloadPlaylist:Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;

    invoke-static {v6}, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;->access$4000(Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;)J

    move-result-wide v6

    const-wide/16 v8, 0x2

    div-long/2addr v6, v8

    move-wide v1, v6

    .line 336
    .local v1, "timeout":J
    move-object v6, v3

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 337
    move-wide v6, v1

    :try_start_2
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 340
    .line 342
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistThread;->reloadLock:Ljava/lang/Object;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v1, v7

    monitor-enter v6

    .line 343
    .end local v1    # "timeout":J
    move-object v6, v0

    :try_start_3
    iget-object v6, v6, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistThread;->reloadPlaylist:Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;->access$1100(Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;Ljava/lang/String;)V

    .line 344
    move-object v6, v1

    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 346
    move-object v6, v0

    const/4 v7, 0x2

    invoke-direct {v6, v7}, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistThread;->putState(I)V

    .line 347
    :goto_0
    return-void

    .line 336
    :catchall_0
    move-exception v6

    move-object v4, v6

    move-object v6, v3

    :try_start_4
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v6, v4

    :try_start_5
    throw v6
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0

    .line 338
    :catch_0
    move-exception v6

    move-object v1, v6

    .line 339
    .local v1, "ex":Ljava/lang/InterruptedException;
    goto :goto_0

    .line 344
    .end local v1    # "ex":Ljava/lang/InterruptedException;
    :catchall_1
    move-exception v6

    move-object v5, v6

    move-object v6, v1

    :try_start_6
    monitor-exit v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-object v6, v5

    throw v6
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 242
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistThread;
    :goto_0
    move-object v2, v0

    iget-boolean v2, v2, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistThread;->stopped:Z

    if-nez v2, :cond_0

    .line 244
    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistThread;->stateQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move v1, v2

    .line 245
    .local v1, "state":I
    move v2, v1

    packed-switch v2, :pswitch_data_0

    .line 259
    :goto_1
    goto :goto_0

    .line 247
    :pswitch_0
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistThread;->stateInit()V

    .line 248
    goto :goto_1

    .line 250
    :pswitch_1
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistThread;->stopped:Z

    .line 251
    goto :goto_1

    .line 253
    :pswitch_2
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistThread;->stateReloadPlaylist()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 254
    goto :goto_1

    .line 258
    .end local v1    # "state":I
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 259
    goto :goto_0

    .line 261
    :cond_0
    return-void

    .line 245
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
