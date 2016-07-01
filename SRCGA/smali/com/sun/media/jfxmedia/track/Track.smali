.class public abstract Lcom/sun/media/jfxmedia/track/Track;
.super Ljava/lang/Object;
.source "Track.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/media/jfxmedia/track/Track$Encoding;
    }
.end annotation


# instance fields
.field private encoding:Lcom/sun/media/jfxmedia/track/Track$Encoding;

.field private locale:Ljava/util/Locale;

.field private name:Ljava/lang/String;

.field private trackEnabled:Z

.field private trackID:J


# direct methods
.method protected constructor <init>(ZJLjava/lang/String;Ljava/util/Locale;Lcom/sun/media/jfxmedia/track/Track$Encoding;)V
    .locals 12

    .prologue
    .line 83
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmedia/track/Track;
    move v1, p1

    .local v1, "enabled":Z
    move-wide v2, p2

    .local v2, "trackID":J
    move-object/from16 v4, p4

    .local v4, "name":Ljava/lang/String;
    move-object/from16 v5, p5

    .local v5, "locale":Ljava/util/Locale;
    move-object/from16 v6, p6

    .local v6, "encoding":Lcom/sun/media/jfxmedia/track/Track$Encoding;
    move-object v7, v0

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 84
    move-object v7, v4

    if-nez v7, :cond_0

    .line 85
    new-instance v7, Ljava/lang/IllegalArgumentException;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    const-string v9, "name == null!"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 86
    :cond_0
    move-object v7, v6

    if-nez v7, :cond_1

    .line 87
    new-instance v7, Ljava/lang/IllegalArgumentException;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    const-string v9, "encoding == null!"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 90
    :cond_1
    move-object v7, v0

    move v8, v1

    iput-boolean v8, v7, Lcom/sun/media/jfxmedia/track/Track;->trackEnabled:Z

    .line 91
    move-object v7, v0

    move-wide v8, v2

    iput-wide v8, v7, Lcom/sun/media/jfxmedia/track/Track;->trackID:J

    .line 92
    move-object v7, v0

    move-object v8, v5

    iput-object v8, v7, Lcom/sun/media/jfxmedia/track/Track;->locale:Ljava/util/Locale;

    .line 93
    move-object v7, v0

    move-object v8, v6

    iput-object v8, v7, Lcom/sun/media/jfxmedia/track/Track;->encoding:Lcom/sun/media/jfxmedia/track/Track$Encoding;

    .line 94
    move-object v7, v0

    move-object v8, v4

    iput-object v8, v7, Lcom/sun/media/jfxmedia/track/Track;->name:Ljava/lang/String;

    .line 95
    return-void
.end method


# virtual methods
.method public getEncodingType()Lcom/sun/media/jfxmedia/track/Track$Encoding;
    .locals 2

    .prologue
    .line 104
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmedia/track/Track;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/media/jfxmedia/track/Track;->encoding:Lcom/sun/media/jfxmedia/track/Track$Encoding;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/media/jfxmedia/track/Track;
    return-object v0
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 2

    .prologue
    .line 118
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmedia/track/Track;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/media/jfxmedia/track/Track;->locale:Ljava/util/Locale;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/media/jfxmedia/track/Track;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 114
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmedia/track/Track;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/media/jfxmedia/track/Track;->name:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/media/jfxmedia/track/Track;
    return-object v0
.end method

.method public getTrackID()J
    .locals 3

    .prologue
    .line 122
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmedia/track/Track;
    move-object v1, v0

    iget-wide v1, v1, Lcom/sun/media/jfxmedia/track/Track;->trackID:J

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/media/jfxmedia/track/Track;
    return-wide v0
.end method

.method public isEnabled()Z
    .locals 2

    .prologue
    .line 132
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmedia/track/Track;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/media/jfxmedia/track/Track;->trackEnabled:Z

    move v0, v1

    .end local v0    # "this":Lcom/sun/media/jfxmedia/track/Track;
    return v0
.end method
