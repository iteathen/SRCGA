.class Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$VariantPlaylist;
.super Ljava/lang/Object;
.source "HLSConnectionHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VariantPlaylist"
.end annotation


# instance fields
.field private infoIndex:I

.field private mediaFileExtension:Ljava/lang/String;

.field private playlistURI:Ljava/net/URI;

.field private playlists:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;",
            ">;"
        }
    .end annotation
.end field

.field private playlistsBitrates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private playlistsLocations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/net/URI;)V
    .locals 6

    .prologue
    .line 554
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$VariantPlaylist;
    move-object v1, p1

    .local v1, "uri":Ljava/net/URI;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 547
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$VariantPlaylist;->playlistURI:Ljava/net/URI;

    .line 548
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$VariantPlaylist;->infoIndex:I

    .line 549
    move-object v2, v0

    new-instance v3, Ljava/util/ArrayList;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$VariantPlaylist;->playlistsLocations:Ljava/util/List;

    .line 550
    move-object v2, v0

    new-instance v3, Ljava/util/ArrayList;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$VariantPlaylist;->playlistsBitrates:Ljava/util/List;

    .line 551
    move-object v2, v0

    new-instance v3, Ljava/util/ArrayList;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$VariantPlaylist;->playlists:Ljava/util/List;

    .line 552
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$VariantPlaylist;->mediaFileExtension:Ljava/lang/String;

    .line 555
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$VariantPlaylist;->playlistURI:Ljava/net/URI;

    .line 556
    return-void
.end method

.method synthetic constructor <init>(Ljava/net/URI;Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$1;)V
    .locals 5

    .prologue
    .line 545
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$VariantPlaylist;
    move-object v1, p1

    .local v1, "x0":Ljava/net/URI;
    move-object v2, p2

    .local v2, "x1":Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$1;
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$VariantPlaylist;-><init>(Ljava/net/URI;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$VariantPlaylist;Ljava/lang/String;I)V
    .locals 6

    .prologue
    .line 545
    move-object v0, p0

    .local v0, "x0":Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$VariantPlaylist;
    move-object v1, p1

    .local v1, "x1":Ljava/lang/String;
    move v2, p2

    .local v2, "x2":I
    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$VariantPlaylist;->addPlaylistInfo(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$3300(Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$VariantPlaylist;Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;)V
    .locals 4

    .prologue
    .line 545
    move-object v0, p0

    .local v0, "x0":Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$VariantPlaylist;
    move-object v1, p1

    .local v1, "x1":Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$VariantPlaylist;->addPlaylist(Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;)V

    return-void
.end method

.method static synthetic access$3400(Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$VariantPlaylist;)Z
    .locals 2

    .prologue
    .line 545
    move-object v0, p0

    .local v0, "x0":Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$VariantPlaylist;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$VariantPlaylist;->hasNext()Z

    move-result v1

    move v0, v1

    .end local v0    # "x0":Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$VariantPlaylist;
    return v0
.end method

.method static synthetic access$3500(Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$VariantPlaylist;)Ljava/net/URI;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;,
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 545
    move-object v0, p0

    .local v0, "x0":Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$VariantPlaylist;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$VariantPlaylist;->getPlaylistURI()Ljava/net/URI;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$VariantPlaylist;
    return-object v0
.end method

.method static synthetic access$3700(Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$VariantPlaylist;I)Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;
    .locals 4

    .prologue
    .line 545
    move-object v0, p0

    .local v0, "x0":Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$VariantPlaylist;
    move v1, p1

    .local v1, "x1":I
    move-object v2, v0

    move v3, v1

    invoke-direct {v2, v3}, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$VariantPlaylist;->getPlaylist(I)Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "x0":Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$VariantPlaylist;
    return-object v0
.end method

.method static synthetic access$900(Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$VariantPlaylist;I)Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;
    .locals 4

    .prologue
    .line 545
    move-object v0, p0

    .local v0, "x0":Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$VariantPlaylist;
    move v1, p1

    .local v1, "x1":I
    move-object v2, v0

    move v3, v1

    invoke-direct {v2, v3}, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$VariantPlaylist;->getPlaylistBasedOnBitrate(I)Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "x0":Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$VariantPlaylist;
    return-object v0
.end method

.method private addPlaylist(Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;)V
    .locals 6

    .prologue
    .line 564
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$VariantPlaylist;
    move-object v1, p1

    .local v1, "playlist":Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$VariantPlaylist;->mediaFileExtension:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 565
    move-object v2, v0

    move-object v3, v1

    invoke-static {v3}, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;->access$4200(Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$VariantPlaylist;->mediaFileExtension:Ljava/lang/String;

    .line 574
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$VariantPlaylist;->playlists:Ljava/util/List;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 575
    :goto_0
    return-void

    .line 567
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$VariantPlaylist;->mediaFileExtension:Ljava/lang/String;

    move-object v3, v1

    invoke-static {v3}, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;->access$4200(Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 568
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$VariantPlaylist;->playlistsLocations:Ljava/util/List;

    move-object v3, v0

    iget v3, v3, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$VariantPlaylist;->infoIndex:I

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    .line 569
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$VariantPlaylist;->playlistsBitrates:Ljava/util/List;

    move-object v3, v0

    iget v3, v3, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$VariantPlaylist;->infoIndex:I

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    .line 570
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$VariantPlaylist;->infoIndex:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    iput v3, v2, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$VariantPlaylist;->infoIndex:I

    .line 571
    goto :goto_0
.end method

.method private addPlaylistInfo(Ljava/lang/String;I)V
    .locals 5

    .prologue
    .line 559
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$VariantPlaylist;
    move-object v1, p1

    .local v1, "location":Ljava/lang/String;
    move v2, p2

    .local v2, "bitrate":I
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$VariantPlaylist;->playlistsLocations:Ljava/util/List;

    move-object v4, v1

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 560
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$VariantPlaylist;->playlistsBitrates:Ljava/util/List;

    move v4, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 561
    return-void
.end method

.method private getPlaylist(I)Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;
    .locals 4

    .prologue
    .line 578
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$VariantPlaylist;
    move v1, p1

    .local v1, "index":I
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$VariantPlaylist;->playlists:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    move v3, v1

    if-le v2, v3, :cond_0

    .line 579
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$VariantPlaylist;->playlists:Ljava/util/List;

    move v3, v1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;

    move-object v0, v2

    .line 581
    .end local v0    # "this":Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$VariantPlaylist;
    :goto_0
    return-object v0

    .restart local v0    # "this":Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$VariantPlaylist;
    :cond_0
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_0
.end method

.method private getPlaylistBasedOnBitrate(I)Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;
    .locals 8

    .prologue
    .line 604
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$VariantPlaylist;
    move v1, p1

    .local v1, "bitrate":I
    const/4 v6, -0x1

    move v2, v6

    .line 605
    .local v2, "playlistIndex":I
    const/4 v6, 0x0

    move v3, v6

    .line 608
    .local v3, "playlistBitrate":I
    const/4 v6, 0x0

    move v4, v6

    .local v4, "i":I
    :goto_0
    move v6, v4

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$VariantPlaylist;->playlistsBitrates:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_2

    .line 609
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$VariantPlaylist;->playlistsBitrates:Ljava/util/List;

    move v7, v4

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move v5, v6

    .line 610
    .local v5, "b":I
    move v6, v5

    move v7, v1

    if-ge v6, v7, :cond_0

    .line 611
    move v6, v2

    const/4 v7, -0x1

    if-eq v6, v7, :cond_1

    .line 612
    move v6, v5

    move v7, v3

    if-le v6, v7, :cond_0

    .line 613
    move v6, v5

    move v3, v6

    .line 614
    move v6, v4

    move v2, v6

    .line 608
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 617
    :cond_1
    move v6, v4

    move v2, v6

    goto :goto_1

    .line 623
    .end local v5    # "b":I
    :cond_2
    move v6, v2

    const/4 v7, -0x1

    if-ne v6, v7, :cond_5

    .line 624
    const/4 v6, 0x0

    move v4, v6

    :goto_2
    move v6, v4

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$VariantPlaylist;->playlistsBitrates:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_5

    .line 625
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$VariantPlaylist;->playlistsBitrates:Ljava/util/List;

    move v7, v4

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move v5, v6

    .line 626
    .restart local v5    # "b":I
    move v6, v5

    move v7, v3

    if-lt v6, v7, :cond_3

    move v6, v2

    const/4 v7, -0x1

    if-ne v6, v7, :cond_4

    .line 627
    :cond_3
    move v6, v5

    move v3, v6

    .line 628
    move v6, v4

    move v2, v6

    .line 624
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 634
    .end local v5    # "b":I
    :cond_5
    move v6, v2

    if-ltz v6, :cond_6

    move v6, v2

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$VariantPlaylist;->playlists:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-lt v6, v7, :cond_7

    .line 635
    :cond_6
    const/4 v6, 0x0

    move-object v0, v6

    .line 637
    .end local v0    # "this":Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$VariantPlaylist;
    :goto_3
    return-object v0

    .restart local v0    # "this":Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$VariantPlaylist;
    :cond_7
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$VariantPlaylist;->playlists:Ljava/util/List;

    move v7, v2

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$Playlist;

    move-object v0, v6

    goto :goto_3
.end method

.method private getPlaylistURI()Ljava/net/URI;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;,
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 595
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$VariantPlaylist;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$VariantPlaylist;->playlistsLocations:Ljava/util/List;

    move-object v3, v0

    iget v3, v3, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$VariantPlaylist;->infoIndex:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v1, v2

    .line 596
    .local v1, "location":Ljava/lang/String;
    move-object v2, v1

    const-string v3, "http://"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 597
    new-instance v2, Ljava/net/URI;

    move-object v9, v2

    move-object v2, v9

    move-object v3, v9

    move-object v4, v1

    invoke-direct {v3, v4}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    move-object v0, v2

    .line 599
    .end local v0    # "this":Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$VariantPlaylist;
    :goto_0
    return-object v0

    .restart local v0    # "this":Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$VariantPlaylist;
    :cond_0
    new-instance v2, Ljava/net/URI;

    move-object v9, v2

    move-object v2, v9

    move-object v3, v9

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$VariantPlaylist;->playlistURI:Ljava/net/URI;

    invoke-virtual {v5}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$VariantPlaylist;->playlistURI:Ljava/net/URI;

    invoke-virtual {v7}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v7

    invoke-virtual {v7}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    move-object v0, v2

    goto :goto_0
.end method

.method private hasNext()Z
    .locals 5

    .prologue
    .line 586
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$VariantPlaylist;
    move-object v1, v0

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    iget v2, v2, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$VariantPlaylist;->infoIndex:I

    const/4 v3, 0x1

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$VariantPlaylist;->infoIndex:I

    .line 587
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$VariantPlaylist;->playlistsLocations:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    move-object v2, v0

    iget v2, v2, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$VariantPlaylist;->infoIndex:I

    if-le v1, v2, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$VariantPlaylist;->playlistsBitrates:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    move-object v2, v0

    iget v2, v2, Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$VariantPlaylist;->infoIndex:I

    if-le v1, v2, :cond_0

    .line 588
    const/4 v1, 0x1

    move v0, v1

    .line 590
    .end local v0    # "this":Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$VariantPlaylist;
    :goto_0
    return v0

    .restart local v0    # "this":Lcom/sun/media/jfxmedia/locator/HLSConnectionHolder$VariantPlaylist;
    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method
