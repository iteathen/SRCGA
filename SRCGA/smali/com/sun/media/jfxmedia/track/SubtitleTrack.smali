.class public Lcom/sun/media/jfxmedia/track/SubtitleTrack;
.super Lcom/sun/media/jfxmedia/track/Track;
.source "SubtitleTrack.java"


# direct methods
.method public constructor <init>(ZJLjava/lang/String;Ljava/util/Locale;Lcom/sun/media/jfxmedia/track/Track$Encoding;)V
    .locals 14

    .prologue
    .line 35
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmedia/track/SubtitleTrack;
    move v1, p1

    .local v1, "enabled":Z
    move-wide/from16 v2, p2

    .local v2, "trackID":J
    move-object/from16 v4, p4

    .local v4, "name":Ljava/lang/String;
    move-object/from16 v5, p5

    .local v5, "locale":Ljava/util/Locale;
    move-object/from16 v6, p6

    .local v6, "encoding":Lcom/sun/media/jfxmedia/track/Track$Encoding;
    move-object v7, v0

    move v8, v1

    move-wide v9, v2

    move-object v11, v4

    move-object v12, v5

    move-object v13, v6

    invoke-direct/range {v7 .. v13}, Lcom/sun/media/jfxmedia/track/Track;-><init>(ZJLjava/lang/String;Ljava/util/Locale;Lcom/sun/media/jfxmedia/track/Track$Encoding;)V

    .line 36
    return-void
.end method
