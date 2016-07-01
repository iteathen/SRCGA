.class final Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer;
.super Ljava/lang/Object;
.source "NativeMediaAudioClipPlayer.java"

# interfaces
.implements Lcom/sun/media/jfxmedia/events/PlayerStateListener;
.implements Lcom/sun/media/jfxmedia/events/MediaErrorListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer$SchedulerEntry;,
        Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer$Enthreaderator;
    }
.end annotation


# static fields
.field private static final MAX_PLAYER_COUNT:I = 0x10

.field private static final activePlayers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer;",
            ">;"
        }
    .end annotation
.end field

.field private static final playerListLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private static final schedule:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer$SchedulerEntry;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private balance:D

.field private loopCount:I

.field private mediaPlayer:Lcom/sun/media/jfxmedia/MediaPlayer;

.field private pan:D

.field private playCount:I

.field private final playerStateLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private playing:Z

.field private priority:I

.field private rate:D

.field private ready:Z

.field private sourceClip:Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClip;

.field private volume:D


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 67
    new-instance v0, Ljava/util/ArrayList;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const/16 v2, 0x10

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer;->activePlayers:Ljava/util/List;

    .line 69
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer;->playerListLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 96
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    invoke-direct {v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    sput-object v0, Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer;->schedule:Ljava/util/concurrent/LinkedBlockingQueue;

    return-void
.end method

.method private constructor <init>(Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClip;DDDDII)V
    .locals 16

    .prologue
    .line 241
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer;
    move-object/from16 v1, p1

    .local v1, "clip":Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClip;
    move-wide/from16 v2, p2

    .local v2, "volume":D
    move-wide/from16 v4, p4

    .local v4, "balance":D
    move-wide/from16 v6, p6

    .local v6, "rate":D
    move-wide/from16 v8, p8

    .local v8, "pan":D
    move/from16 v10, p10

    .local v10, "loopCount":I
    move/from16 v11, p11

    .local v11, "priority":I
    move-object v12, v0

    invoke-direct {v12}, Ljava/lang/Object;-><init>()V

    .line 63
    move-object v12, v0

    new-instance v13, Ljava/util/concurrent/locks/ReentrantLock;

    move-object v15, v13

    move-object v13, v15

    move-object v14, v15

    invoke-direct {v14}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v13, v12, Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer;->playerStateLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 242
    move-object v12, v0

    move-object v13, v1

    iput-object v13, v12, Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer;->sourceClip:Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClip;

    .line 243
    move-object v12, v0

    move-wide v13, v2

    iput-wide v13, v12, Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer;->volume:D

    .line 244
    move-object v12, v0

    move-wide v13, v4

    iput-wide v13, v12, Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer;->balance:D

    .line 245
    move-object v12, v0

    move-wide v13, v8

    iput-wide v13, v12, Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer;->pan:D

    .line 246
    move-object v12, v0

    move-wide v13, v6

    iput-wide v13, v12, Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer;->rate:D

    .line 247
    move-object v12, v0

    move v13, v10

    iput v13, v12, Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer;->loopCount:I

    .line 248
    move-object v12, v0

    move v13, v11

    iput v13, v12, Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer;->priority:I

    .line 249
    move-object v12, v0

    const/4 v13, 0x0

    iput-boolean v13, v12, Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer;->ready:Z

    .line 250
    return-void
.end method

.method static synthetic access$000()V
    .locals 0

    .prologue
    .line 47
    invoke-static {}, Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer;->clipScheduler()V

    return-void
.end method

.method private static addPlayer(Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer;)Z
    .locals 8

    .prologue
    .line 188
    move-object v0, p0

    .local v0, "newPlayer":Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer;
    sget-object v6, Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer;->playerListLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 190
    move-object v6, v0

    :try_start_0
    invoke-virtual {v6}, Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer;->priority()I

    move-result v6

    move v1, v6

    .line 191
    .local v1, "priority":I
    :goto_0
    sget-object v6, Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer;->activePlayers:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    const/16 v7, 0x10

    if-lt v6, v7, :cond_4

    .line 193
    const/4 v6, 0x0

    move-object v2, v6

    .line 194
    .local v2, "target":Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer;
    sget-object v6, Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer;->activePlayers:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v3, v6

    :goto_1
    move-object v6, v3

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    move-object v6, v3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer;

    move-object v4, v6

    .line 195
    .local v4, "player":Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer;
    move-object v6, v4

    invoke-virtual {v6}, Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer;->priority()I

    move-result v6

    move v7, v1

    if-gt v6, v7, :cond_1

    move-object v6, v2

    if-eqz v6, :cond_0

    move-object v6, v2

    .line 196
    invoke-direct {v6}, Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer;->isReady()Z

    move-result v6

    if-eqz v6, :cond_1

    move-object v6, v4

    invoke-virtual {v6}, Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer;->priority()I

    move-result v6

    move-object v7, v2

    invoke-virtual {v7}, Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer;->priority()I

    move-result v7

    if-ge v6, v7, :cond_1

    .line 199
    :cond_0
    move-object v6, v4

    move-object v2, v6

    .line 201
    :cond_1
    goto :goto_1

    .line 202
    .end local v4    # "player":Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer;
    :cond_2
    const/4 v6, 0x0

    move-object v7, v2

    if-eq v6, v7, :cond_3

    .line 204
    move-object v6, v2

    invoke-virtual {v6}, Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer;->invalidate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 209
    goto :goto_0

    .line 207
    :cond_3
    const/4 v6, 0x0

    move v3, v6

    .line 212
    sget-object v6, Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer;->playerListLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    move v6, v3

    move v0, v6

    .line 214
    .end local v0    # "newPlayer":Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer;
    .end local v2    # "target":Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer;
    :goto_2
    return v0

    .line 210
    .restart local v0    # "newPlayer":Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer;
    :cond_4
    :try_start_1
    sget-object v6, Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer;->activePlayers:Ljava/util/List;

    move-object v7, v0

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v6

    .line 212
    sget-object v6, Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer;->playerListLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 213
    .line 214
    const/4 v6, 0x1

    move v0, v6

    goto :goto_2

    .line 212
    .end local v1    # "priority":I
    :catchall_0
    move-exception v6

    move-object v5, v6

    sget-object v6, Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer;->playerListLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    move-object v6, v5

    throw v6
.end method

.method private static clipScheduler()V
    .locals 9

    .prologue
    .line 101
    .local v0, "entry":Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer$SchedulerEntry;
    :goto_0
    const/4 v6, 0x0

    move-object v0, v6

    .line 103
    :try_start_0
    sget-object v6, Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer;->schedule:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v6}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer$SchedulerEntry;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v6

    .line 104
    .line 106
    :goto_1
    const/4 v6, 0x0

    move-object v7, v0

    if-eq v6, v7, :cond_1

    .line 107
    move-object v6, v0

    invoke-virtual {v6}, Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer$SchedulerEntry;->getCommand()I

    move-result v6

    if-nez v6, :cond_3

    .line 108
    move-object v6, v0

    invoke-virtual {v6}, Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer$SchedulerEntry;->getPlayer()Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer;

    move-result-object v6

    move-object v1, v6

    .line 109
    .local v1, "player":Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer;
    const/4 v6, 0x0

    move-object v7, v1

    if-eq v6, v7, :cond_0

    .line 111
    move-object v6, v1

    invoke-static {v6}, Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer;->addPlayer(Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 112
    move-object v6, v1

    invoke-virtual {v6}, Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer;->play()V

    .line 117
    .line 157
    .end local v1    # "player":Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer;
    :cond_0
    :goto_2
    move-object v6, v0

    invoke-virtual {v6}, Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer$SchedulerEntry;->signal()V

    .line 159
    :cond_1
    goto :goto_0

    .line 104
    :catch_0
    move-exception v6

    move-object v1, v6

    goto :goto_1

    .line 114
    .restart local v1    # "player":Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer;
    :cond_2
    move-object v6, v1

    iget-object v6, v6, Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer;->sourceClip:Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClip;

    invoke-virtual {v6}, Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClip;->playFinished()V

    goto :goto_2

    .line 117
    .end local v1    # "player":Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer;
    :cond_3
    move-object v6, v0

    invoke-virtual {v6}, Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer$SchedulerEntry;->getCommand()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_b

    .line 120
    move-object v6, v0

    invoke-virtual {v6}, Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer$SchedulerEntry;->getClipURI()Ljava/net/URI;

    move-result-object v6

    move-object v1, v6

    .line 122
    .local v1, "sourceURI":Ljava/net/URI;
    sget-object v6, Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer;->playerListLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 125
    const/16 v6, 0x10

    :try_start_1
    new-array v6, v6, [Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer;

    move-object v2, v6

    .line 126
    .local v2, "players":[Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer;
    sget-object v6, Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer;->activePlayers:Ljava/util/List;

    move-object v7, v2

    invoke-interface {v6, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer;

    move-object v2, v6

    .line 127
    const/4 v6, 0x0

    move-object v7, v2

    if-eq v6, v7, :cond_6

    .line 128
    const/4 v6, 0x0

    move v3, v6

    .local v3, "index":I
    :goto_3
    move v6, v3

    move-object v7, v2

    array-length v7, v7

    if-ge v6, v7, :cond_6

    .line 129
    const/4 v6, 0x0

    move-object v7, v2

    move v8, v3

    aget-object v7, v7, v8

    if-eq v6, v7, :cond_5

    const/4 v6, 0x0

    move-object v7, v1

    if-eq v6, v7, :cond_4

    move-object v6, v2

    move v7, v3

    aget-object v6, v6, v7

    .line 130
    invoke-direct {v6}, Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer;->source()Lcom/sun/media/jfxmedia/locator/Locator;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sun/media/jfxmedia/locator/Locator;->getURI()Ljava/net/URI;

    move-result-object v6

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljava/net/URI;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 132
    :cond_4
    move-object v6, v2

    move v7, v3

    aget-object v6, v6, v7

    invoke-virtual {v6}, Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer;->invalidate()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 128
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 137
    .end local v3    # "index":I
    :cond_6
    sget-object v6, Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer;->playerListLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 138
    .line 141
    const/4 v6, 0x0

    move-object v7, v1

    if-ne v6, v7, :cond_9

    const/4 v6, 0x1

    :goto_4
    move v2, v6

    .line 142
    .local v2, "clearSchedule":Z
    sget-object v6, Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer;->schedule:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v6}, Ljava/util/concurrent/LinkedBlockingQueue;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v3, v6

    :goto_5
    move-object v6, v3

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a

    move-object v6, v3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer$SchedulerEntry;

    move-object v4, v6

    .line 143
    .local v4, "killEntry":Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer$SchedulerEntry;
    move-object v6, v4

    invoke-virtual {v6}, Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer$SchedulerEntry;->getPlayer()Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer;

    move-result-object v6

    move-object v5, v6

    .line 144
    .local v5, "player":Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer;
    move v6, v2

    if-nez v6, :cond_7

    const/4 v6, 0x0

    move-object v7, v5

    if-eq v6, v7, :cond_8

    move-object v6, v5

    iget-object v6, v6, Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer;->sourceClip:Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClip;

    .line 145
    invoke-virtual {v6}, Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClip;->getLocator()Lcom/sun/media/jfxmedia/locator/Locator;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sun/media/jfxmedia/locator/Locator;->getURI()Ljava/net/URI;

    move-result-object v6

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljava/net/URI;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 148
    :cond_7
    sget-object v6, Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer;->schedule:Ljava/util/concurrent/LinkedBlockingQueue;

    move-object v7, v4

    invoke-virtual {v6, v7}, Ljava/util/concurrent/LinkedBlockingQueue;->remove(Ljava/lang/Object;)Z

    move-result v6

    .line 149
    move-object v6, v5

    iget-object v6, v6, Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer;->sourceClip:Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClip;

    invoke-virtual {v6}, Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClip;->playFinished()V

    .line 151
    :cond_8
    goto :goto_5

    .line 137
    .end local v2    # "clearSchedule":Z
    .end local v4    # "killEntry":Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer$SchedulerEntry;
    .end local v5    # "player":Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer;
    :catchall_0
    move-exception v6

    move-object v4, v6

    sget-object v6, Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer;->playerListLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    move-object v6, v4

    throw v6

    .line 141
    .local v2, "players":[Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer;
    :cond_9
    const/4 v6, 0x0

    goto :goto_4

    .line 152
    .local v2, "clearSchedule":Z
    :cond_a
    goto/16 :goto_2

    .end local v1    # "sourceURI":Ljava/net/URI;
    .end local v2    # "clearSchedule":Z
    :cond_b
    move-object v6, v0

    invoke-virtual {v6}, Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer$SchedulerEntry;->getCommand()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_0

    .line 153
    move-object v6, v0

    invoke-virtual {v6}, Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer$SchedulerEntry;->getMediaPlayer()Lcom/sun/media/jfxmedia/MediaPlayer;

    move-result-object v6

    invoke-interface {v6}, Lcom/sun/media/jfxmedia/MediaPlayer;->dispose()V

    goto/16 :goto_2
.end method

.method public static getPlayerCount()I
    .locals 1

    .prologue
    .line 76
    sget-object v0, Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer;->activePlayers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public static getPlayerLimit()I
    .locals 1

    .prologue
    .line 72
    const/16 v0, 0x10

    return v0
.end method

.method private isReady()Z
    .locals 2

    .prologue
    .line 309
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer;->ready:Z

    move v0, v1

    .end local v0    # "this":Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer;
    return v0
.end method

.method public static playClip(Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClip;DDDDII)V
    .locals 29

    .prologue
    .line 168
    move-object/from16 v1, p0

    .local v1, "clip":Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClip;
    move-wide/from16 v2, p1

    .local v2, "volume":D
    move-wide/from16 v4, p3

    .local v4, "balance":D
    move-wide/from16 v6, p5

    .local v6, "rate":D
    move-wide/from16 v8, p7

    .local v8, "pan":D
    move/from16 v10, p9

    .local v10, "loopCount":I
    move/from16 v11, p10

    .local v11, "priority":I
    invoke-static {}, Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer$Enthreaderator;->getSchedulerThread()Ljava/lang/Thread;

    move-result-object v15

    .line 172
    new-instance v15, Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer;

    move-object/from16 v28, v15

    move-object/from16 v15, v28

    move-object/from16 v16, v28

    move-object/from16 v17, v1

    move-wide/from16 v18, v2

    move-wide/from16 v20, v4

    move-wide/from16 v22, v6

    move-wide/from16 v24, v8

    move/from16 v26, v10

    move/from16 v27, v11

    invoke-direct/range {v16 .. v27}, Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer;-><init>(Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClip;DDDDII)V

    move-object v12, v15

    .line 173
    .local v12, "newPlayer":Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer;
    new-instance v15, Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer$SchedulerEntry;

    move-object/from16 v28, v15

    move-object/from16 v15, v28

    move-object/from16 v16, v28

    move-object/from16 v17, v12

    invoke-direct/range {v16 .. v17}, Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer$SchedulerEntry;-><init>(Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer;)V

    move-object v13, v15

    .line 174
    .local v13, "entry":Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer$SchedulerEntry;
    sget-object v15, Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer;->schedule:Ljava/util/concurrent/LinkedBlockingQueue;

    move-object/from16 v16, v13

    invoke-virtual/range {v15 .. v16}, Ljava/util/concurrent/LinkedBlockingQueue;->contains(Ljava/lang/Object;)Z

    move-result v15

    move v14, v15

    .line 175
    .local v14, "scheduled":Z
    move v15, v14

    if-nez v15, :cond_0

    sget-object v15, Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer;->schedule:Ljava/util/concurrent/LinkedBlockingQueue;

    move-object/from16 v16, v13

    invoke-virtual/range {v15 .. v16}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_2

    .line 178
    :cond_0
    const/4 v15, 0x1

    invoke-static {v15}, Lcom/sun/media/jfxmedia/logging/Logger;->canLog(I)Z

    move-result v15

    if-eqz v15, :cond_1

    move v15, v14

    if-nez v15, :cond_1

    .line 179
    const/4 v15, 0x1

    const-string v16, "AudioClip could not be scheduled for playback!"

    invoke-static/range {v15 .. v16}, Lcom/sun/media/jfxmedia/logging/Logger;->logMsg(ILjava/lang/String;)V

    .line 181
    :cond_1
    move-object v15, v1

    invoke-virtual {v15}, Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClip;->playFinished()V

    .line 183
    :cond_2
    return-void
.end method

.method private source()Lcom/sun/media/jfxmedia/locator/Locator;
    .locals 2

    .prologue
    .line 253
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer;->sourceClip:Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClip;

    invoke-virtual {v1}, Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClip;->getLocator()Lcom/sun/media/jfxmedia/locator/Locator;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer;
    return-object v0
.end method

.method public static stopPlayers(Lcom/sun/media/jfxmedia/locator/Locator;)V
    .locals 10

    .prologue
    .line 219
    move-object v0, p0

    .local v0, "source":Lcom/sun/media/jfxmedia/locator/Locator;
    move-object v5, v0

    if-eqz v5, :cond_1

    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/media/jfxmedia/locator/Locator;->getURI()Ljava/net/URI;

    move-result-object v5

    :goto_0
    move-object v1, v5

    .line 223
    .local v1, "sourceURI":Ljava/net/URI;
    const/4 v5, 0x0

    invoke-static {}, Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer$Enthreaderator;->getSchedulerThread()Ljava/lang/Thread;

    move-result-object v6

    if-eq v5, v6, :cond_0

    .line 227
    new-instance v5, Ljava/util/concurrent/CountDownLatch;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x1

    invoke-direct {v6, v7}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    move-object v2, v5

    .line 228
    .local v2, "stopSignal":Ljava/util/concurrent/CountDownLatch;
    new-instance v5, Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer$SchedulerEntry;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v1

    move-object v8, v2

    invoke-direct {v6, v7, v8}, Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer$SchedulerEntry;-><init>(Ljava/net/URI;Ljava/util/concurrent/CountDownLatch;)V

    move-object v3, v5

    .line 229
    .local v3, "entry":Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer$SchedulerEntry;
    sget-object v5, Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer;->schedule:Ljava/util/concurrent/LinkedBlockingQueue;

    move-object v6, v3

    invoke-virtual {v5, v6}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 233
    move-object v5, v2

    const-wide/16 v6, 0x5

    :try_start_0
    sget-object v8, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, v6, v7, v8}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 234
    .line 237
    .end local v2    # "stopSignal":Ljava/util/concurrent/CountDownLatch;
    .end local v3    # "entry":Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer$SchedulerEntry;
    :cond_0
    :goto_1
    return-void

    .line 219
    .end local v1    # "sourceURI":Ljava/net/URI;
    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    .line 234
    .restart local v1    # "sourceURI":Ljava/net/URI;
    .restart local v2    # "stopSignal":Ljava/util/concurrent/CountDownLatch;
    .restart local v3    # "entry":Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer$SchedulerEntry;
    :catch_0
    move-exception v5

    move-object v4, v5

    goto :goto_1
.end method


# virtual methods
.method public balance()D
    .locals 3

    .prologue
    .line 265
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer;
    move-object v1, v0

    iget-wide v1, v1, Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer;->balance:D

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer;
    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 10

    .prologue
    .line 433
    move-object v1, p0

    .local v1, "this":Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer;
    move-object v2, p1

    .local v2, "that":Ljava/lang/Object;
    move-object v6, v2

    move-object v7, v1

    if-ne v6, v7, :cond_0

    .line 434
    const/4 v6, 0x1

    move v1, v6

    .line 450
    .end local v1    # "this":Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer;
    :goto_0
    return v1

    .line 437
    .restart local v1    # "this":Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer;
    :cond_0
    move-object v6, v2

    instance-of v6, v6, Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer;

    if-eqz v6, :cond_2

    .line 438
    move-object v6, v2

    check-cast v6, Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer;

    move-object v3, v6

    .line 439
    .local v3, "otherPlayer":Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer;
    move-object v6, v1

    iget-object v6, v6, Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer;->sourceClip:Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClip;

    invoke-virtual {v6}, Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClip;->getLocator()Lcom/sun/media/jfxmedia/locator/Locator;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sun/media/jfxmedia/locator/Locator;->getURI()Ljava/net/URI;

    move-result-object v6

    move-object v4, v6

    .line 440
    .local v4, "myURI":Ljava/net/URI;
    move-object v6, v3

    iget-object v6, v6, Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer;->sourceClip:Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClip;

    invoke-virtual {v6}, Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClip;->getLocator()Lcom/sun/media/jfxmedia/locator/Locator;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sun/media/jfxmedia/locator/Locator;->getURI()Ljava/net/URI;

    move-result-object v6

    move-object v5, v6

    .line 442
    .local v5, "otherURI":Ljava/net/URI;
    move-object v6, v4

    move-object v7, v5

    invoke-virtual {v6, v7}, Ljava/net/URI;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move-object v6, v1

    iget v6, v6, Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer;->priority:I

    move-object v7, v3

    iget v7, v7, Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer;->priority:I

    if-ne v6, v7, :cond_1

    move-object v6, v1

    iget v6, v6, Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer;->loopCount:I

    move-object v7, v3

    iget v7, v7, Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer;->loopCount:I

    if-ne v6, v7, :cond_1

    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer;->volume:D

    move-object v8, v3

    iget-wide v8, v8, Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer;->volume:D

    .line 445
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Double;->compare(DD)I

    move-result v6

    if-nez v6, :cond_1

    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer;->balance:D

    move-object v8, v3

    iget-wide v8, v8, Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer;->balance:D

    .line 446
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Double;->compare(DD)I

    move-result v6

    if-nez v6, :cond_1

    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer;->rate:D

    move-object v8, v3

    iget-wide v8, v8, Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer;->rate:D

    .line 447
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Double;->compare(DD)I

    move-result v6

    if-nez v6, :cond_1

    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer;->pan:D

    move-object v8, v3

    iget-wide v8, v8, Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer;->pan:D

    .line 448
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Double;->compare(DD)I

    move-result v6

    if-nez v6, :cond_1

    const/4 v6, 0x1

    :goto_1
    move v1, v6

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    goto :goto_1

    .line 450
    .end local v3    # "otherPlayer":Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer;
    .end local v4    # "myURI":Ljava/net/URI;
    .end local v5    # "otherURI":Ljava/net/URI;
    :cond_2
    const/4 v6, 0x0

    move v1, v6

    goto :goto_0
.end method

.method public declared-synchronized invalidate()V
    .locals 8

    .prologue
    .line 335
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer;
    move-object v6, p0

    monitor-enter v6

    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer;->playerStateLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 336
    sget-object v3, Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer;->playerListLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 339
    move-object v3, v0

    const/4 v4, 0x0

    :try_start_1
    iput-boolean v4, v3, Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer;->playing:Z

    .line 340
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer;->playCount:I

    .line 341
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer;->ready:Z

    .line 343
    sget-object v3, Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer;->activePlayers:Ljava/util/List;

    move-object v4, v0

    invoke-interface {v3, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v3

    .line 344
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer;->sourceClip:Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClip;

    invoke-virtual {v3}, Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClip;->playFinished()V

    .line 346
    const/4 v3, 0x0

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer;->mediaPlayer:Lcom/sun/media/jfxmedia/MediaPlayer;

    if-eq v3, v4, :cond_1

    .line 347
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer;->mediaPlayer:Lcom/sun/media/jfxmedia/MediaPlayer;

    move-object v4, v0

    invoke-interface {v3, v4}, Lcom/sun/media/jfxmedia/MediaPlayer;->removeMediaPlayerListener(Lcom/sun/media/jfxmedia/events/PlayerStateListener;)V

    .line 348
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer;->mediaPlayer:Lcom/sun/media/jfxmedia/MediaPlayer;

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Lcom/sun/media/jfxmedia/MediaPlayer;->setMute(Z)V

    .line 349
    new-instance v3, Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer$SchedulerEntry;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer;->mediaPlayer:Lcom/sun/media/jfxmedia/MediaPlayer;

    invoke-direct {v4, v5}, Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer$SchedulerEntry;-><init>(Lcom/sun/media/jfxmedia/MediaPlayer;)V

    move-object v1, v3

    .line 350
    .local v1, "entry":Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer$SchedulerEntry;
    sget-object v3, Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer;->schedule:Ljava/util/concurrent/LinkedBlockingQueue;

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 351
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer;->mediaPlayer:Lcom/sun/media/jfxmedia/MediaPlayer;

    invoke-interface {v3}, Lcom/sun/media/jfxmedia/MediaPlayer;->dispose()V

    .line 353
    :cond_0
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer;->mediaPlayer:Lcom/sun/media/jfxmedia/MediaPlayer;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 360
    .end local v1    # "entry":Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer$SchedulerEntry;
    :cond_1
    :try_start_2
    sget-object v3, Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer;->playerListLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 361
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer;->playerStateLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 362
    .line 363
    :goto_0
    monitor-exit v6

    return-void

    .line 356
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 360
    :try_start_3
    sget-object v3, Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer;->playerListLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 361
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer;->playerStateLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 362
    goto :goto_0

    .line 360
    :catchall_0
    move-exception v3

    move-object v2, v3

    sget-object v3, Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer;->playerListLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 361
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer;->playerStateLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    move-object v3, v2

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 335
    :catchall_1
    move-exception v0

    monitor-exit v6

    .end local v0    # "this":Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer;
    throw v0
.end method

.method public isPlaying()Z
    .locals 2

    .prologue
    .line 305
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer;->playing:Z

    move v0, v1

    .end local v0    # "this":Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer;
    return v0
.end method

.method public loopCount()I
    .locals 2

    .prologue
    .line 297
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer;
    move-object v1, v0

    iget v1, v1, Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer;->loopCount:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer;
    return v0
.end method

.method public onError(Ljava/lang/Object;ILjava/lang/String;)V
    .locals 8

    .prologue
    .line 421
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer;
    move-object v1, p1

    .local v1, "source":Ljava/lang/Object;
    move v2, p2

    .local v2, "errorCode":I
    move-object v3, p3

    .local v3, "message":Ljava/lang/String;
    const/4 v4, 0x4

    invoke-static {v4}, Lcom/sun/media/jfxmedia/logging/Logger;->canLog(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 422
    const/4 v4, 0x4

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error with AudioClip player: code "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sun/media/jfxmedia/logging/Logger;->logMsg(ILjava/lang/String;)V

    .line 424
    :cond_0
    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer;->invalidate()V

    .line 425
    return-void
.end method

.method public onFinish(Lcom/sun/media/jfxmedia/events/PlayerStateEvent;)V
    .locals 7

    .prologue
    .line 394
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer;
    move-object v1, p1

    .local v1, "evt":Lcom/sun/media/jfxmedia/events/PlayerStateEvent;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer;->playerStateLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 396
    move-object v3, v0

    :try_start_0
    iget-boolean v3, v3, Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer;->playing:Z

    if-eqz v3, :cond_0

    .line 397
    move-object v3, v0

    iget v3, v3, Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer;->loopCount:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    .line 398
    move-object v3, v0

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    iget v4, v4, Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer;->playCount:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer;->playCount:I

    .line 399
    move-object v3, v0

    iget v3, v3, Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer;->playCount:I

    move-object v4, v0

    iget v4, v4, Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer;->loopCount:I

    if-gt v3, v4, :cond_1

    .line 400
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer;->mediaPlayer:Lcom/sun/media/jfxmedia/MediaPlayer;

    const-wide/16 v4, 0x0

    invoke-interface {v3, v4, v5}, Lcom/sun/media/jfxmedia/MediaPlayer;->seek(D)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 409
    :cond_0
    :goto_0
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer;->playerStateLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 410
    .line 411
    return-void

    .line 402
    :cond_1
    move-object v3, v0

    :try_start_1
    invoke-virtual {v3}, Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer;->invalidate()V

    goto :goto_0

    .line 405
    :cond_2
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer;->mediaPlayer:Lcom/sun/media/jfxmedia/MediaPlayer;

    const-wide/16 v4, 0x0

    invoke-interface {v3, v4, v5}, Lcom/sun/media/jfxmedia/MediaPlayer;->seek(D)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 409
    :catchall_0
    move-exception v3

    move-object v2, v3

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer;->playerStateLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    move-object v3, v2

    throw v3
.end method

.method public onHalt(Lcom/sun/media/jfxmedia/events/PlayerStateEvent;)V
    .locals 3

    .prologue
    .line 414
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer;
    move-object v1, p1

    .local v1, "evt":Lcom/sun/media/jfxmedia/events/PlayerStateEvent;
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer;->invalidate()V

    .line 415
    return-void
.end method

.method public onPause(Lcom/sun/media/jfxmedia/events/PlayerStateEvent;)V
    .locals 0
    .param p1, "evt"    # Lcom/sun/media/jfxmedia/events/PlayerStateEvent;

    .prologue
    .line 384
    return-void
.end method

.method public onPlaying(Lcom/sun/media/jfxmedia/events/PlayerStateEvent;)V
    .locals 0
    .param p1, "evt"    # Lcom/sun/media/jfxmedia/events/PlayerStateEvent;

    .prologue
    .line 381
    return-void
.end method

.method public onReady(Lcom/sun/media/jfxmedia/events/PlayerStateEvent;)V
    .locals 6

    .prologue
    .line 366
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer;
    move-object v1, p1

    .local v1, "evt":Lcom/sun/media/jfxmedia/events/PlayerStateEvent;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer;->playerStateLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 368
    move-object v3, v0

    const/4 v4, 0x1

    :try_start_0
    iput-boolean v4, v3, Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer;->ready:Z

    .line 369
    move-object v3, v0

    iget-boolean v3, v3, Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer;->playing:Z

    if-eqz v3, :cond_0

    .line 370
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer;->mediaPlayer:Lcom/sun/media/jfxmedia/MediaPlayer;

    move-object v4, v0

    iget-wide v4, v4, Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer;->volume:D

    double-to-float v4, v4

    invoke-interface {v3, v4}, Lcom/sun/media/jfxmedia/MediaPlayer;->setVolume(F)V

    .line 371
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer;->mediaPlayer:Lcom/sun/media/jfxmedia/MediaPlayer;

    move-object v4, v0

    iget-wide v4, v4, Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer;->balance:D

    double-to-float v4, v4

    invoke-interface {v3, v4}, Lcom/sun/media/jfxmedia/MediaPlayer;->setBalance(F)V

    .line 372
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer;->mediaPlayer:Lcom/sun/media/jfxmedia/MediaPlayer;

    move-object v4, v0

    iget-wide v4, v4, Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer;->rate:D

    double-to-float v4, v4

    invoke-interface {v3, v4}, Lcom/sun/media/jfxmedia/MediaPlayer;->setRate(F)V

    .line 373
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer;->mediaPlayer:Lcom/sun/media/jfxmedia/MediaPlayer;

    invoke-interface {v3}, Lcom/sun/media/jfxmedia/MediaPlayer;->play()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 376
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer;->playerStateLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 377
    .line 378
    return-void

    .line 376
    :catchall_0
    move-exception v3

    move-object v2, v3

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer;->playerStateLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    move-object v3, v2

    throw v3
.end method

.method public onStall(Lcom/sun/media/jfxmedia/events/PlayerStateEvent;)V
    .locals 0
    .param p1, "evt"    # Lcom/sun/media/jfxmedia/events/PlayerStateEvent;

    .prologue
    .line 391
    return-void
.end method

.method public onStop(Lcom/sun/media/jfxmedia/events/PlayerStateEvent;)V
    .locals 3

    .prologue
    .line 387
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer;
    move-object v1, p1

    .local v1, "evt":Lcom/sun/media/jfxmedia/events/PlayerStateEvent;
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer;->invalidate()V

    .line 388
    return-void
.end method

.method public onWarning(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0
    .param p1, "source"    # Ljava/lang/Object;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 418
    return-void
.end method

.method public pan()D
    .locals 3

    .prologue
    .line 273
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer;
    move-object v1, v0

    iget-wide v1, v1, Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer;->pan:D

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer;
    return-wide v0
.end method

.method public declared-synchronized play()V
    .locals 5

    .prologue
    .line 313
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer;
    move-object v4, p0

    monitor-enter v4

    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer;->playerStateLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 315
    move-object v2, v0

    const/4 v3, 0x1

    :try_start_1
    iput-boolean v3, v2, Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer;->playing:Z

    .line 316
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer;->playCount:I

    .line 318
    const/4 v2, 0x0

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer;->mediaPlayer:Lcom/sun/media/jfxmedia/MediaPlayer;

    if-ne v2, v3, :cond_0

    .line 319
    move-object v2, v0

    move-object v3, v0

    invoke-direct {v3}, Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer;->source()Lcom/sun/media/jfxmedia/locator/Locator;

    move-result-object v3

    invoke-static {v3}, Lcom/sun/media/jfxmedia/MediaManager;->getPlayer(Lcom/sun/media/jfxmedia/locator/Locator;)Lcom/sun/media/jfxmedia/MediaPlayer;

    move-result-object v3

    iput-object v3, v2, Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer;->mediaPlayer:Lcom/sun/media/jfxmedia/MediaPlayer;

    .line 320
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer;->mediaPlayer:Lcom/sun/media/jfxmedia/MediaPlayer;

    move-object v3, v0

    invoke-interface {v2, v3}, Lcom/sun/media/jfxmedia/MediaPlayer;->addMediaPlayerListener(Lcom/sun/media/jfxmedia/events/PlayerStateListener;)V

    .line 321
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer;->mediaPlayer:Lcom/sun/media/jfxmedia/MediaPlayer;

    move-object v3, v0

    invoke-interface {v2, v3}, Lcom/sun/media/jfxmedia/MediaPlayer;->addMediaErrorListener(Lcom/sun/media/jfxmedia/events/MediaErrorListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 326
    :goto_0
    move-object v2, v0

    :try_start_2
    iget-object v2, v2, Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer;->playerStateLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 327
    .line 328
    monitor-exit v4

    return-void

    .line 323
    :cond_0
    move-object v2, v0

    :try_start_3
    iget-object v2, v2, Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer;->mediaPlayer:Lcom/sun/media/jfxmedia/MediaPlayer;

    invoke-interface {v2}, Lcom/sun/media/jfxmedia/MediaPlayer;->play()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 326
    :catchall_0
    move-exception v2

    move-object v1, v2

    move-object v2, v0

    :try_start_4
    iget-object v2, v2, Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer;->playerStateLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    move-object v2, v1

    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 313
    :catchall_1
    move-exception v0

    monitor-exit v4

    .end local v0    # "this":Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer;
    throw v0
.end method

.method public playbackRate()D
    .locals 3

    .prologue
    .line 281
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer;
    move-object v1, v0

    iget-wide v1, v1, Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer;->rate:D

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer;
    return-wide v0
.end method

.method public priority()I
    .locals 2

    .prologue
    .line 289
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer;
    move-object v1, v0

    iget v1, v1, Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer;->priority:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer;
    return v0
.end method

.method public setBalance(D)V
    .locals 7

    .prologue
    .line 269
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer;
    move-wide v1, p1

    .local v1, "balance":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer;->balance:D

    .line 270
    return-void
.end method

.method public setLoopCount(I)V
    .locals 4

    .prologue
    .line 301
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer;
    move v1, p1

    .local v1, "loopCount":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer;->loopCount:I

    .line 302
    return-void
.end method

.method public setPan(D)V
    .locals 7

    .prologue
    .line 277
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer;
    move-wide v1, p1

    .local v1, "pan":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer;->pan:D

    .line 278
    return-void
.end method

.method public setPlaybackRate(D)V
    .locals 7

    .prologue
    .line 285
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer;
    move-wide v1, p1

    .local v1, "rate":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer;->rate:D

    .line 286
    return-void
.end method

.method public setPriority(I)V
    .locals 4

    .prologue
    .line 293
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer;
    move v1, p1

    .local v1, "priority":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer;->priority:I

    .line 294
    return-void
.end method

.method public setVolume(D)V
    .locals 7

    .prologue
    .line 261
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer;
    move-wide v1, p1

    .local v1, "volume":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer;->volume:D

    .line 262
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 331
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer;->invalidate()V

    .line 332
    return-void
.end method

.method public volume()D
    .locals 3

    .prologue
    .line 257
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer;
    move-object v1, v0

    iget-wide v1, v1, Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer;->volume:D

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/media/jfxmediaimpl/NativeMediaAudioClipPlayer;
    return-wide v0
.end method
