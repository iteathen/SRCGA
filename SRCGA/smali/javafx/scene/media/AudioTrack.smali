.class public final Ljavafx/scene/media/AudioTrack;
.super Ljavafx/scene/media/Track;
.source "AudioTrack.java"


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
    .line 53
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/media/AudioTrack;
    move-wide v2, p1

    .local v2, "trackID":J
    move-object v4, p3

    .local v4, "metadata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object v5, v1

    move-wide v6, v2

    move-object v8, v4

    invoke-direct {v5, v6, v7, v8}, Ljavafx/scene/media/Track;-><init>(JLjava/util/Map;)V

    .line 54
    return-void
.end method


# virtual methods
.method public final getLanguage()Ljava/lang/String;
    .locals 4

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/AudioTrack;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/media/AudioTrack;->getLocale()Ljava/util/Locale;

    move-result-object v2

    move-object v1, v2

    .line 49
    .local v1, "l":Ljava/util/Locale;
    const/4 v2, 0x0

    move-object v3, v1

    if-ne v2, v3, :cond_0

    const/4 v2, 0x0

    :goto_0
    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/media/AudioTrack;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/media/AudioTrack;
    :cond_0
    move-object v2, v1

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method
