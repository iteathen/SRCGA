.class public Ljavafx/scene/media/SubtitleTrack;
.super Ljavafx/scene/media/Track;
.source "SubtitleTrack.java"


# direct methods
.method constructor <init>(JLjava/util/Map;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 37
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/media/SubtitleTrack;
    move-wide v2, p1

    .local v2, "trackID":J
    move-object v4, p3

    .local v4, "metadata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object v5, v1

    move-wide v6, v2

    move-object v8, v4

    invoke-direct {v5, v6, v7, v8}, Ljavafx/scene/media/Track;-><init>(JLjava/util/Map;)V

    .line 38
    return-void
.end method
