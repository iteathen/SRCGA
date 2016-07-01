.class Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;
.super Ljava/lang/Object;
.source "HLSConnectionHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Playlist"
.end annotation


# instance fields
.field private baseURI:Ljava/lang/String;

.field private duration:D

.field private forceDiscontinuity:Z

.field private isLive:Z

.field private volatile isLiveStop:Z

.field private volatile isLiveWaiting:Z

.field private final lock:Ljava/lang/Object;

.field private mediaFiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mediaFilesDiscontinuities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mediaFilesStartTimes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private needBaseURI:Z

.field private playlistURI:Ljava/net/URI;

.field private sequenceNumber:I

.field private sequenceNumberStart:I

.field private sequenceNumberUpdated:Z

.field private targetDuration:J

.field final synthetic this$0:Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;


# direct methods
.method private constructor <init>(Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;Ljava/net/URI;)V
    .locals 7

    .prologue
    .line 670
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;
    move-object v1, p1

    move-object v2, p2

    .local v2, "uri":Ljava/net/URI;
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;->this$0:Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 644
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;->isLive:Z

    .line 645
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;->isLiveWaiting:Z

    .line 646
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;->isLiveStop:Z

    .line 647
    move-object v3, v0

    const-wide/16 v4, 0x0

    iput-wide v4, v3, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;->targetDuration:J

    .line 648
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;->playlistURI:Ljava/net/URI;

    .line 649
    move-object v3, v0

    new-instance v4, Ljava/lang/Object;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    iput-object v4, v3, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;->lock:Ljava/lang/Object;

    .line 650
    move-object v3, v0

    new-instance v4, Ljava/util/ArrayList;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v3, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;->mediaFiles:Ljava/util/List;

    .line 651
    move-object v3, v0

    new-instance v4, Ljava/util/ArrayList;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v3, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;->mediaFilesStartTimes:Ljava/util/List;

    .line 652
    move-object v3, v0

    new-instance v4, Ljava/util/ArrayList;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v3, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;->mediaFilesDiscontinuities:Ljava/util/List;

    .line 653
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;->needBaseURI:Z

    .line 654
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;->baseURI:Ljava/lang/String;

    .line 655
    move-object v3, v0

    const-wide/16 v4, 0x0

    iput-wide v4, v3, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;->duration:D

    .line 656
    move-object v3, v0

    const/4 v4, -0x1

    iput v4, v3, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;->sequenceNumber:I

    .line 657
    move-object v3, v0

    const/4 v4, -0x1

    iput v4, v3, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;->sequenceNumberStart:I

    .line 658
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;->sequenceNumberUpdated:Z

    .line 659
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;->forceDiscontinuity:Z

    .line 671
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;->playlistURI:Ljava/net/URI;

    .line 672
    return-void
.end method

.method synthetic constructor <init>(Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;Ljava/net/URI;Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$1;)V
    .locals 7

    .prologue
    .line 642
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;
    move-object v1, p1

    .local v1, "x0":Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;
    move-object v2, p2

    .local v2, "x1":Ljava/net/URI;
    move-object v3, p3

    .local v3, "x2":Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$1;
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;-><init>(Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;Ljava/net/URI;)V

    return-void
.end method

.method private constructor <init>(Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;ZI)V
    .locals 9

    .prologue
    .line 661
    move-object v1, p0

    .local v1, "this":Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;
    move-object v2, p1

    move v3, p2

    .local v3, "isLive":Z
    move v4, p3

    .local v4, "targetDuration":I
    move-object v5, v1

    move-object v6, v2

    iput-object v6, v5, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;->this$0:Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;

    move-object v5, v1

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 644
    move-object v5, v1

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;->isLive:Z

    .line 645
    move-object v5, v1

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;->isLiveWaiting:Z

    .line 646
    move-object v5, v1

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;->isLiveStop:Z

    .line 647
    move-object v5, v1

    const-wide/16 v6, 0x0

    iput-wide v6, v5, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;->targetDuration:J

    .line 648
    move-object v5, v1

    const/4 v6, 0x0

    iput-object v6, v5, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;->playlistURI:Ljava/net/URI;

    .line 649
    move-object v5, v1

    new-instance v6, Ljava/lang/Object;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    iput-object v6, v5, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;->lock:Ljava/lang/Object;

    .line 650
    move-object v5, v1

    new-instance v6, Ljava/util/ArrayList;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v5, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;->mediaFiles:Ljava/util/List;

    .line 651
    move-object v5, v1

    new-instance v6, Ljava/util/ArrayList;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v5, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;->mediaFilesStartTimes:Ljava/util/List;

    .line 652
    move-object v5, v1

    new-instance v6, Ljava/util/ArrayList;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v5, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;->mediaFilesDiscontinuities:Ljava/util/List;

    .line 653
    move-object v5, v1

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;->needBaseURI:Z

    .line 654
    move-object v5, v1

    const/4 v6, 0x0

    iput-object v6, v5, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;->baseURI:Ljava/lang/String;

    .line 655
    move-object v5, v1

    const-wide/16 v6, 0x0

    iput-wide v6, v5, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;->duration:D

    .line 656
    move-object v5, v1

    const/4 v6, -0x1

    iput v6, v5, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;->sequenceNumber:I

    .line 657
    move-object v5, v1

    const/4 v6, -0x1

    iput v6, v5, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;->sequenceNumberStart:I

    .line 658
    move-object v5, v1

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;->sequenceNumberUpdated:Z

    .line 659
    move-object v5, v1

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;->forceDiscontinuity:Z

    .line 662
    move-object v5, v1

    move v6, v3

    iput-boolean v6, v5, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;->isLive:Z

    .line 663
    move-object v5, v1

    move v6, v4

    const/16 v7, 0x3e8

    mul-int/lit16 v6, v6, 0x3e8

    int-to-long v6, v6

    iput-wide v6, v5, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;->targetDuration:J

    .line 665
    move v5, v3

    if-eqz v5, :cond_0

    .line 666
    move-object v5, v1

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    iput-wide v6, v5, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;->duration:D

    .line 668
    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;ZILcom/sun/media/jfxmedia/locator/HLSConnectionHolder$1;)V
    .locals 9

    .prologue
    .line 642
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;
    move-object v1, p1

    .local v1, "x0":Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;
    move v2, p2

    .local v2, "x1":Z
    move v3, p3

    .local v3, "x2":I
    move-object v4, p4

    .local v4, "x3":Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$1;
    move-object v5, v0

    move-object v6, v1

    move v7, v2

    move v8, v3

    invoke-direct {v5, v6, v7, v8}, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;-><init>(Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;ZI)V

    return-void
.end method

.method static synthetic access$1000(Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;)Z
    .locals 2

    .prologue
    .line 642
    move-object v0, p0

    .local v0, "x0":Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;->isLive()Z

    move-result v1

    move v0, v1

    .end local v0    # "x0":Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;
    return v0
.end method

.method static synthetic access$1100(Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 642
    move-object v0, p0

    .local v0, "x0":Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;
    move-object v1, p1

    .local v1, "x1":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;->update(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;Z)V
    .locals 4

    .prologue
    .line 642
    move-object v0, p0

    .local v0, "x0":Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;
    move v1, p1

    .local v1, "x1":Z
    move-object v2, v0

    move v3, v1

    invoke-direct {v2, v3}, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;->setForceDiscontinuity(Z)V

    return-void
.end method

.method static synthetic access$2700(Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;Ljava/net/URI;)V
    .locals 4

    .prologue
    .line 642
    move-object v0, p0

    .local v0, "x0":Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;
    move-object v1, p1

    .local v1, "x1":Ljava/net/URI;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;->setPlaylistURI(Ljava/net/URI;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;I)Z
    .locals 4

    .prologue
    .line 642
    move-object v0, p0

    .local v0, "x0":Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;
    move v1, p1

    .local v1, "x1":I
    move-object v2, v0

    move v3, v1

    invoke-direct {v2, v3}, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;->setSequenceNumber(I)Z

    move-result v2

    move v0, v2

    .end local v0    # "x0":Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;
    return v0
.end method

.method static synthetic access$300(Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;J)D
    .locals 7

    .prologue
    .line 642
    move-object v0, p0

    .local v0, "x0":Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;
    move-wide v1, p1

    .local v1, "x1":J
    move-object v3, v0

    move-wide v4, v1

    invoke-direct {v3, v4, v5}, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;->seek(J)D

    move-result-wide v3

    move-wide v0, v3

    .end local v0    # "x0":Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;
    return-wide v0
.end method

.method static synthetic access$3200(Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;Ljava/lang/String;DZ)V
    .locals 10

    .prologue
    .line 642
    move-object v0, p0

    .local v0, "x0":Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;
    move-object v1, p1

    .local v1, "x1":Ljava/lang/String;
    move-wide v2, p2

    .local v2, "x2":D
    move v4, p4

    .local v4, "x3":Z
    move-object v5, v0

    move-object v6, v1

    move-wide v7, v2

    move v9, v4

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;->addMediaFile(Ljava/lang/String;DZ)V

    return-void
.end method

.method static synthetic access$400(Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;)V
    .locals 2

    .prologue
    .line 642
    move-object v0, p0

    .local v0, "x0":Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;->close()V

    return-void
.end method

.method static synthetic access$4000(Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;)J
    .locals 3

    .prologue
    .line 642
    move-object v0, p0

    .local v0, "x0":Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;->getTargetDuration()J

    move-result-wide v1

    move-wide v0, v1

    .end local v0    # "x0":Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;
    return-wide v0
.end method

.method static synthetic access$4200(Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 642
    move-object v0, p0

    .local v0, "x0":Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;->getMediaFileExtension()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;
    return-object v0
.end method

.method static synthetic access$500(Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;)D
    .locals 3

    .prologue
    .line 642
    move-object v0, p0

    .local v0, "x0":Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;->getDuration()D

    move-result-wide v1

    move-wide v0, v1

    .end local v0    # "x0":Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;
    return-wide v0
.end method

.method static synthetic access$600(Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;)I
    .locals 2

    .prologue
    .line 642
    move-object v0, p0

    .local v0, "x0":Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;->getMimeType()I

    move-result v1

    move v0, v1

    .end local v0    # "x0":Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;
    return v0
.end method

.method static synthetic access$700(Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 642
    move-object v0, p0

    .local v0, "x0":Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;->getNextMediaFile()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;
    return-object v0
.end method

.method static synthetic access$800(Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;)Z
    .locals 2

    .prologue
    .line 642
    move-object v0, p0

    .local v0, "x0":Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;->isCurrentMediaFileDiscontinuity()Z

    move-result v1

    move v0, v1

    .end local v0    # "x0":Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;
    return v0
.end method

.method private addMediaFile(Ljava/lang/String;DZ)V
    .locals 16

    .prologue
    .line 717
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;
    move-object/from16 v1, p1

    .local v1, "URI":Ljava/lang/String;
    move-wide/from16 v2, p2

    .local v2, "duration":D
    move/from16 v4, p4

    .local v4, "isDiscontinuity":Z
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;->lock:Ljava/lang/Object;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    move-object v5, v10

    monitor-enter v9

    .line 719
    move-object v9, v0

    :try_start_0
    iget-boolean v9, v9, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;->needBaseURI:Z

    if-eqz v9, :cond_0

    .line 720
    move-object v9, v0

    move-object v10, v0

    iget-object v10, v10, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;->playlistURI:Ljava/net/URI;

    invoke-virtual {v10}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v10

    move-object v11, v1

    invoke-direct {v9, v10, v11}, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;->setBaseURI(Ljava/lang/String;Ljava/lang/String;)V

    .line 723
    :cond_0
    move-object v9, v0

    iget-boolean v9, v9, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;->isLive:Z

    if-eqz v9, :cond_5

    .line 724
    move-object v9, v0

    iget-boolean v9, v9, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;->sequenceNumberUpdated:Z

    if-eqz v9, :cond_4

    .line 725
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;->mediaFiles:Ljava/util/List;

    move-object v10, v1

    invoke-interface {v9, v10}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v9

    move v6, v9

    .line 726
    .local v6, "index":I
    move v9, v6

    const/4 v10, -0x1

    if-eq v9, v10, :cond_3

    .line 727
    const/4 v9, 0x0

    move v7, v9

    .local v7, "i":I
    :goto_0
    move v9, v7

    move v10, v6

    if-ge v9, v10, :cond_3

    .line 728
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;->mediaFiles:Ljava/util/List;

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v9

    .line 729
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;->mediaFilesDiscontinuities:Ljava/util/List;

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v9

    .line 730
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;->this$0:Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;

    invoke-static {v9}, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;->access$4300(Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;)I

    move-result v9

    const/4 v10, -0x1

    if-ne v9, v10, :cond_1

    .line 731
    move-object v9, v0

    const/4 v10, 0x1

    iput-boolean v10, v9, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;->forceDiscontinuity:Z

    .line 733
    :cond_1
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;->this$0:Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;

    invoke-static {v9}, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;->access$4300(Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;)I

    move-result v9

    if-ltz v9, :cond_2

    .line 734
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;->this$0:Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;

    invoke-static {v9}, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;->access$4310(Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;)I

    move-result v9

    .line 727
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 738
    .end local v7    # "i":I
    :cond_3
    move-object v9, v0

    const/4 v10, 0x0

    iput-boolean v10, v9, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;->sequenceNumberUpdated:Z

    .line 741
    .end local v6    # "index":I
    :cond_4
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;->mediaFiles:Ljava/util/List;

    move-object v10, v1

    invoke-interface {v9, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 742
    move-object v9, v5

    monitor-exit v9

    .line 758
    :goto_1
    return-void

    .line 746
    :cond_5
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;->mediaFiles:Ljava/util/List;

    move-object v10, v1

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v9

    .line 747
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;->mediaFilesDiscontinuities:Ljava/util/List;

    move v10, v4

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v9

    .line 749
    move-object v9, v0

    iget-boolean v9, v9, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;->isLive:Z

    if-eqz v9, :cond_7

    .line 750
    move-object v9, v0

    iget-boolean v9, v9, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;->isLiveWaiting:Z

    if-eqz v9, :cond_6

    .line 751
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;->this$0:Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;

    invoke-static {v9}, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;->access$4400(Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;)Ljava/util/concurrent/Semaphore;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/concurrent/Semaphore;->release()V

    .line 757
    :cond_6
    :goto_2
    move-object v9, v5

    monitor-exit v9

    .line 758
    goto :goto_1

    .line 754
    :cond_7
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;->mediaFilesStartTimes:Ljava/util/List;

    move-object v10, v0

    iget-wide v10, v10, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;->duration:D

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v9

    .line 755
    move-object v9, v0

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    iget-wide v10, v10, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;->duration:D

    move-wide v12, v2

    add-double/2addr v10, v12

    iput-wide v10, v9, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;->duration:D

    goto :goto_2

    .line 757
    :catchall_0
    move-exception v9

    move-object v8, v9

    move-object v9, v5

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v9, v8

    throw v9
.end method

.method private close()V
    .locals 3

    .prologue
    .line 895
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;->isLive:Z

    if-eqz v1, :cond_0

    .line 896
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;->this$0:Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;->access$4502(Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;Z)Z

    move-result v1

    .line 897
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;->this$0:Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;

    invoke-static {v1}, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;->access$4400(Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;)Ljava/util/concurrent/Semaphore;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 899
    :cond_0
    return-void
.end method

.method private getDuration()D
    .locals 3

    .prologue
    .line 798
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;
    move-object v1, v0

    iget-wide v1, v1, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;->duration:D

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;
    return-wide v0
.end method

.method private getMediaFileExtension()Ljava/lang/String;
    .locals 8

    .prologue
    .line 868
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;->lock:Ljava/lang/Object;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    move-object v1, v6

    monitor-enter v5

    .line 869
    move-object v5, v0

    :try_start_0
    iget-object v5, v5, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;->mediaFiles:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 870
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;->mediaFiles:Ljava/util/List;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;->access$4100(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v2, v5

    .line 871
    .local v2, "mediaFile":Ljava/lang/String;
    move-object v5, v2

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    move v3, v5

    .line 872
    .local v3, "index":I
    move v5, v3

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    .line 873
    move-object v5, v2

    move v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    move-object v6, v1

    monitor-exit v6

    move-object v0, v5

    .line 878
    .end local v0    # "this":Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;
    :goto_0
    return-object v0

    .line 876
    .end local v2    # "mediaFile":Ljava/lang/String;
    .end local v3    # "index":I
    .restart local v0    # "this":Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;
    :cond_0
    move-object v5, v1

    monitor-exit v5

    .line 878
    const/4 v5, 0x0

    move-object v0, v5

    goto :goto_0

    .line 876
    :catchall_0
    move-exception v5

    move-object v4, v5

    move-object v5, v1

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v5, v4

    throw v5
.end method

.method private getMimeType()I
    .locals 6

    .prologue
    .line 854
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;->lock:Ljava/lang/Object;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    move-object v1, v4

    monitor-enter v3

    .line 855
    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;->mediaFiles:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 856
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;->mediaFiles:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;->access$4100(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ".ts"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 857
    const/4 v3, 0x1

    move-object v4, v1

    monitor-exit v4

    move v0, v3

    .line 864
    .end local v0    # "this":Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;
    :goto_0
    return v0

    .line 858
    .restart local v0    # "this":Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;->mediaFiles:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;->access$4100(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ".mp3"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 859
    const/4 v3, 0x2

    move-object v4, v1

    monitor-exit v4

    move v0, v3

    goto :goto_0

    .line 862
    :cond_1
    move-object v3, v1

    monitor-exit v3

    .line 864
    const/4 v3, -0x1

    move v0, v3

    goto :goto_0

    .line 862
    :catchall_0
    move-exception v3

    move-object v2, v3

    move-object v3, v1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v2

    throw v3
.end method

.method private getNextMediaFile()Ljava/lang/String;
    .locals 8

    .prologue
    .line 761
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;
    move-object v4, v0

    iget-boolean v4, v4, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;->isLive:Z

    if-eqz v4, :cond_2

    .line 762
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;->lock:Ljava/lang/Object;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v1, v5

    monitor-enter v4

    .line 763
    move-object v4, v0

    move-object v5, v0

    :try_start_0
    iget-object v5, v5, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;->this$0:Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;

    invoke-static {v5}, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;->access$4300(Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;)I

    move-result v5

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;->mediaFiles:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lt v5, v6, :cond_0

    const/4 v5, 0x1

    :goto_0
    iput-boolean v5, v4, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;->isLiveWaiting:Z

    .line 764
    move-object v4, v1

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 765
    move-object v4, v0

    iget-boolean v4, v4, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;->isLiveWaiting:Z

    if-eqz v4, :cond_1

    .line 767
    move-object v4, v0

    :try_start_1
    iget-object v4, v4, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;->this$0:Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;

    invoke-static {v4}, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;->access$4400(Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;)Ljava/util/concurrent/Semaphore;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 768
    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;->isLiveWaiting:Z

    .line 769
    move-object v4, v0

    iget-boolean v4, v4, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;->isLiveStop:Z

    if-eqz v4, :cond_1

    .line 770
    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;->isLiveStop:Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 771
    const/4 v4, 0x0

    move-object v0, v4

    .line 792
    .end local v0    # "this":Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;
    :goto_1
    return-object v0

    .line 763
    .restart local v0    # "this":Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;
    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    .line 764
    :catchall_0
    move-exception v4

    move-object v2, v4

    move-object v4, v1

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v4, v2

    throw v4

    .line 776
    .line 778
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;->this$0:Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;

    invoke-static {v4}, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;->access$4500(Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 779
    const/4 v4, 0x0

    move-object v0, v4

    goto :goto_1

    .line 773
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 774
    .local v1, "e":Ljava/lang/InterruptedException;
    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;->isLiveWaiting:Z

    .line 775
    const/4 v4, 0x0

    move-object v0, v4

    goto :goto_1

    .line 783
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :cond_2
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;->lock:Ljava/lang/Object;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v1, v5

    monitor-enter v4

    .line 784
    move-object v4, v0

    :try_start_3
    iget-object v4, v4, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;->this$0:Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;

    invoke-static {v4}, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;->access$4308(Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;)I

    move-result v4

    .line 785
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;->this$0:Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;

    invoke-static {v4}, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;->access$4300(Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;)I

    move-result v4

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;->mediaFiles:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_4

    .line 786
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;->baseURI:Ljava/lang/String;

    if-eqz v4, :cond_3

    .line 787
    new-instance v4, Ljava/lang/StringBuilder;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;->baseURI:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;->mediaFiles:Ljava/util/List;

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;->this$0:Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;

    invoke-static {v6}, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;->access$4300(Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;)I

    move-result v6

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v5, v1

    monitor-exit v5

    move-object v0, v4

    goto :goto_1

    .line 789
    :cond_3
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;->mediaFiles:Ljava/util/List;

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;->this$0:Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;

    invoke-static {v5}, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;->access$4300(Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;)I

    move-result v5

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object v5, v1

    monitor-exit v5

    move-object v0, v4

    goto :goto_1

    .line 792
    :cond_4
    const/4 v4, 0x0

    move-object v5, v1

    monitor-exit v5

    move-object v0, v4

    goto/16 :goto_1

    .line 794
    :catchall_1
    move-exception v4

    move-object v3, v4

    move-object v4, v1

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v4, v3

    throw v4
.end method

.method private getTargetDuration()J
    .locals 3

    .prologue
    .line 709
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;
    move-object v1, v0

    iget-wide v1, v1, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;->targetDuration:J

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;
    return-wide v0
.end method

.method private isCurrentMediaFileDiscontinuity()Z
    .locals 3

    .prologue
    .line 806
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;->forceDiscontinuity:Z

    if-eqz v1, :cond_0

    .line 807
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;->forceDiscontinuity:Z

    .line 808
    const/4 v1, 0x1

    move v0, v1

    .line 810
    .end local v0    # "this":Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;
    :goto_0
    return v0

    .restart local v0    # "this":Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;->mediaFilesDiscontinuities:Ljava/util/List;

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;->this$0:Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;

    invoke-static {v2}, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;->access$4300(Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;)I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    move v0, v1

    goto :goto_0
.end method

.method private isLive()Z
    .locals 2

    .prologue
    .line 705
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;->isLive:Z

    move v0, v1

    .end local v0    # "this":Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;
    return v0
.end method

.method private seek(J)D
    .locals 15

    .prologue
    .line 815
    move-object v1, p0

    .local v1, "this":Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;
    move-wide/from16 v2, p1

    .local v2, "time":J
    move-object v8, v1

    iget-object v8, v8, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;->lock:Ljava/lang/Object;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    move-object v4, v9

    monitor-enter v8

    .line 816
    move-object v8, v1

    :try_start_0
    iget-boolean v8, v8, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;->isLive:Z

    if-eqz v8, :cond_1

    .line 817
    move-wide v8, v2

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-nez v8, :cond_5

    .line 818
    move-object v8, v1

    iget-object v8, v8, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;->this$0:Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;

    const/4 v9, -0x1

    invoke-static {v8, v9}, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;->access$4302(Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;I)I

    move-result v8

    .line 819
    move-object v8, v1

    iget-boolean v8, v8, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;->isLiveWaiting:Z

    if-eqz v8, :cond_0

    .line 820
    move-object v8, v1

    const/4 v9, 0x1

    iput-boolean v9, v8, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;->isLiveStop:Z

    .line 821
    move-object v8, v1

    iget-object v8, v8, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;->this$0:Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;

    invoke-static {v8}, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;->access$4400(Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;)Ljava/util/concurrent/Semaphore;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/concurrent/Semaphore;->release()V

    .line 823
    :cond_0
    const-wide/16 v8, 0x0

    move-object v10, v4

    monitor-exit v10

    move-wide v1, v8

    .line 850
    .end local v1    # "this":Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;
    :goto_0
    return-wide v1

    .line 826
    .restart local v1    # "this":Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;
    :cond_1
    move-wide v8, v2

    move-object v10, v1

    iget-wide v10, v10, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;->targetDuration:J

    const-wide/16 v12, 0x7d0

    div-long/2addr v10, v12

    add-long/2addr v8, v10

    move-wide v2, v8

    .line 828
    move-object v8, v1

    iget-object v8, v8, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;->mediaFilesStartTimes:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    move v5, v8

    .line 830
    .local v5, "mediaFileStartTimeSize":I
    const/4 v8, 0x0

    move v6, v8

    .local v6, "index":I
    :goto_1
    move v8, v6

    move v9, v5

    if-ge v8, v9, :cond_5

    .line 831
    move-wide v8, v2

    long-to-double v8, v8

    move-object v10, v1

    iget-object v10, v10, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;->mediaFilesStartTimes:Ljava/util/List;

    move v11, v6

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Double;

    invoke-virtual {v10}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    cmpl-double v8, v8, v10

    if-ltz v8, :cond_4

    .line 832
    move v8, v6

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    move v9, v5

    if-ge v8, v9, :cond_2

    .line 833
    move-wide v8, v2

    long-to-double v8, v8

    move-object v10, v1

    iget-object v10, v10, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;->mediaFilesStartTimes:Ljava/util/List;

    move v11, v6

    const/4 v12, 0x1

    add-int/lit8 v11, v11, 0x1

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Double;

    invoke-virtual {v10}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    cmpg-double v8, v8, v10

    if-gez v8, :cond_4

    .line 834
    move-object v8, v1

    iget-object v8, v8, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;->this$0:Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;

    move v9, v6

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    invoke-static {v8, v9}, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;->access$4302(Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;I)I

    move-result v8

    .line 835
    move-object v8, v1

    iget-object v8, v8, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;->mediaFilesStartTimes:Ljava/util/List;

    move v9, v6

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Double;

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    move-object v10, v4

    monitor-exit v10

    move-wide v1, v8

    goto :goto_0

    .line 838
    :cond_2
    move-wide v8, v2

    move-object v10, v1

    iget-wide v10, v10, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;->targetDuration:J

    const-wide/16 v12, 0x7d0

    div-long/2addr v10, v12

    sub-long/2addr v8, v10

    long-to-double v8, v8

    move-object v10, v1

    iget-wide v10, v10, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;->duration:D

    cmpg-double v8, v8, v10

    if-gez v8, :cond_3

    .line 839
    move-object v8, v1

    iget-object v8, v8, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;->this$0:Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;

    move v9, v6

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    invoke-static {v8, v9}, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;->access$4302(Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;I)I

    move-result v8

    .line 840
    move-object v8, v1

    iget-object v8, v8, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;->mediaFilesStartTimes:Ljava/util/List;

    move v9, v6

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Double;

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    move-object v10, v4

    monitor-exit v10

    move-wide v1, v8

    goto/16 :goto_0

    .line 841
    :cond_3
    move-wide v8, v2

    move-object v10, v1

    iget-wide v10, v10, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;->targetDuration:J

    const-wide/16 v12, 0x7d0

    div-long/2addr v10, v12

    sub-long/2addr v8, v10

    long-to-double v8, v8

    move-object v10, v1

    iget-wide v10, v10, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;->duration:D

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Double;->compare(DD)I

    move-result v8

    if-nez v8, :cond_4

    .line 842
    move-object v8, v1

    iget-wide v8, v8, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;->duration:D

    move-object v10, v4

    monitor-exit v10

    move-wide v1, v8

    goto/16 :goto_0

    .line 830
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    .line 848
    .end local v5    # "mediaFileStartTimeSize":I
    .end local v6    # "index":I
    :cond_5
    move-object v8, v4

    monitor-exit v8

    .line 850
    const-wide/high16 v8, -0x4010000000000000L    # -1.0

    move-wide v1, v8

    goto/16 :goto_0

    .line 848
    :catchall_0
    move-exception v8

    move-object v7, v8

    move-object v8, v4

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v8, v7

    throw v8
.end method

.method private setBaseURI(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 902
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;
    move-object v1, p1

    .local v1, "playlistURI":Ljava/lang/String;
    move-object v2, p2

    .local v2, "URI":Ljava/lang/String;
    move-object v3, v2

    const-string v4, "http://"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 903
    move-object v3, v0

    move-object v4, v1

    const/4 v5, 0x0

    move-object v6, v1

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;->baseURI:Ljava/lang/String;

    .line 905
    :cond_0
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;->needBaseURI:Z

    .line 906
    return-void
.end method

.method private setForceDiscontinuity(Z)V
    .locals 4

    .prologue
    .line 802
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;
    move v1, p1

    .local v1, "value":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;->forceDiscontinuity:Z

    .line 803
    return-void
.end method

.method private setPlaylistURI(Ljava/net/URI;)V
    .locals 4

    .prologue
    .line 713
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;
    move-object v1, p1

    .local v1, "uri":Ljava/net/URI;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;->playlistURI:Ljava/net/URI;

    .line 714
    return-void
.end method

.method private setSequenceNumber(I)Z
    .locals 4

    .prologue
    .line 882
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;
    move v1, p1

    .local v1, "value":I
    move-object v2, v0

    iget v2, v2, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;->sequenceNumberStart:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 883
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;->sequenceNumberStart:I

    .line 891
    :goto_0
    const/4 v2, 0x1

    move v0, v2

    .end local v0    # "this":Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;
    :goto_1
    return v0

    .line 884
    .restart local v0    # "this":Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;
    :cond_0
    move-object v2, v0

    iget v2, v2, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;->sequenceNumber:I

    move v3, v1

    if-eq v2, v3, :cond_1

    .line 885
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;->sequenceNumberUpdated:Z

    .line 886
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;->sequenceNumber:I

    goto :goto_0

    .line 888
    :cond_1
    const/4 v2, 0x0

    move v0, v2

    goto :goto_1
.end method

.method private update(Ljava/lang/String;)V
    .locals 13

    .prologue
    .line 675
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;
    move-object v1, p1

    .local v1, "nextMediaFile":Ljava/lang/String;
    new-instance v7, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistParser;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    const/4 v9, 0x0

    invoke-direct {v8, v9}, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistParser;-><init>(Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$1;)V

    move-object v2, v7

    .line 676
    .local v2, "parser":Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistParser;
    move-object v7, v2

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;->playlistURI:Ljava/net/URI;

    invoke-static {v7, v8}, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistParser;->access$1500(Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistParser;Ljava/net/URI;)V

    .line 678
    move-object v7, v0

    move-object v8, v2

    invoke-static {v8}, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistParser;->access$2400(Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistParser;)Z

    move-result v8

    iput-boolean v8, v7, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;->isLive:Z

    .line 679
    move-object v7, v0

    move-object v8, v2

    invoke-static {v8}, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistParser;->access$2500(Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistParser;)I

    move-result v8

    const/16 v9, 0x3e8

    mul-int/lit16 v8, v8, 0x3e8

    int-to-long v8, v8

    iput-wide v8, v7, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;->targetDuration:J

    .line 681
    move-object v7, v0

    iget-boolean v7, v7, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;->isLive:Z

    if-eqz v7, :cond_0

    .line 682
    move-object v7, v0

    const-wide/high16 v8, -0x4010000000000000L    # -1.0

    iput-wide v8, v7, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;->duration:D

    .line 685
    :cond_0
    move-object v7, v0

    move-object v8, v2

    invoke-static {v8}, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistParser;->access$2800(Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistParser;)I

    move-result v8

    invoke-direct {v7, v8}, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;->setSequenceNumber(I)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 686
    :goto_0
    move-object v7, v2

    invoke-static {v7}, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistParser;->access$1900(Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistParser;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 687
    move-object v7, v0

    move-object v8, v2

    invoke-static {v8}, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistParser;->access$2000(Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistParser;)Ljava/lang/String;

    move-result-object v8

    move-object v9, v2

    invoke-static {v9}, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistParser;->access$3000(Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistParser;)Ljava/lang/Double;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    move-object v11, v2

    invoke-static {v11}, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistParser;->access$3100(Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$PlaylistParser;)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;->addMediaFile(Ljava/lang/String;DZ)V

    goto :goto_0

    .line 691
    :cond_1
    move-object v7, v1

    if-eqz v7, :cond_3

    .line 692
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;->lock:Ljava/lang/Object;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    move-object v3, v8

    monitor-enter v7

    .line 693
    const/4 v7, 0x0

    move v4, v7

    .local v4, "i":I
    :goto_1
    move v7, v4

    move-object v8, v0

    :try_start_0
    iget-object v8, v8, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;->mediaFiles:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_2

    .line 694
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;->mediaFiles:Ljava/util/List;

    move v8, v4

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    move-object v5, v7

    .line 695
    .local v5, "mediaFile":Ljava/lang/String;
    move-object v7, v1

    move-object v8, v5

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 696
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;->this$0:Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;

    move v8, v4

    const/4 v9, 0x1

    add-int/lit8 v8, v8, -0x1

    invoke-static {v7, v8}, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;->access$4302(Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;I)I

    move-result v7

    .line 697
    .line 700
    .end local v5    # "mediaFile":Ljava/lang/String;
    :cond_2
    move-object v7, v3

    monitor-exit v7

    .line 702
    .end local v4    # "i":I
    :cond_3
    return-void

    .line 693
    .restart local v4    # "i":I
    .restart local v5    # "mediaFile":Ljava/lang/String;
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 700
    .end local v5    # "mediaFile":Ljava/lang/String;
    :catchall_0
    move-exception v7

    move-object v6, v7

    move-object v7, v3

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v7, v6

    throw v7
.end method
