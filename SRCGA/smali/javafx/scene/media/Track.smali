.class public abstract Ljavafx/scene/media/Track;
.super Ljava/lang/Object;
.source "Track.java"


# instance fields
.field private description:Ljava/lang/String;

.field private locale:Ljava/util/Locale;

.field private metadata:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private name:Ljava/lang/String;

.field private trackID:J


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
    .line 91
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/Track;
    move-wide v1, p1

    .local v1, "trackID":J
    move-object v3, p3

    .local v3, "metadata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object v5, v0

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 92
    move-object v5, v0

    move-wide v6, v1

    iput-wide v6, v5, Ljavafx/scene/media/Track;->trackID:J

    .line 94
    move-object v5, v3

    const-string v6, "name"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v4, v5

    .line 95
    .local v4, "value":Ljava/lang/Object;
    const/4 v5, 0x0

    move-object v6, v4

    if-eq v5, v6, :cond_0

    move-object v5, v4

    instance-of v5, v5, Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 96
    move-object v5, v0

    move-object v6, v4

    check-cast v6, Ljava/lang/String;

    iput-object v6, v5, Ljavafx/scene/media/Track;->name:Ljava/lang/String;

    .line 99
    :cond_0
    move-object v5, v3

    const-string v6, "locale"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v4, v5

    .line 100
    const/4 v5, 0x0

    move-object v6, v4

    if-eq v5, v6, :cond_1

    move-object v5, v4

    instance-of v5, v5, Ljava/util/Locale;

    if-eqz v5, :cond_1

    .line 101
    move-object v5, v0

    move-object v6, v4

    check-cast v6, Ljava/util/Locale;

    iput-object v6, v5, Ljavafx/scene/media/Track;->locale:Ljava/util/Locale;

    .line 104
    :cond_1
    move-object v5, v0

    move-object v6, v3

    invoke-static {v6}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v6

    iput-object v6, v5, Ljavafx/scene/media/Track;->metadata:Ljava/util/Map;

    .line 105
    return-void
.end method


# virtual methods
.method public final getLocale()Ljava/util/Locale;
    .locals 2

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/Track;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/Track;->locale:Ljava/util/Locale;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/media/Track;
    return-object v0
.end method

.method public final getMetadata()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 88
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/Track;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/Track;->metadata:Ljava/util/Map;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/media/Track;
    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 56
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/Track;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/media/Track;->name:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/media/Track;
    return-object v0
.end method

.method public final getTrackID()J
    .locals 3

    .prologue
    .line 80
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/Track;
    move-object v1, v0

    iget-wide v1, v1, Ljavafx/scene/media/Track;->trackID:J

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/scene/media/Track;
    return-wide v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 13

    .prologue
    .line 110
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/media/Track;
    move-object v9, v1

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    move-object v2, v10

    monitor-enter v9

    .line 111
    const/4 v9, 0x0

    move-object v10, v1

    :try_start_0
    iget-object v10, v10, Ljavafx/scene/media/Track;->description:Ljava/lang/String;

    if-ne v9, v10, :cond_2

    .line 112
    new-instance v9, Ljava/lang/StringBuilder;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object v3, v9

    .line 113
    .local v3, "sb":Ljava/lang/StringBuilder;
    move-object v9, v1

    invoke-virtual {v9}, Ljavafx/scene/media/Track;->getMetadata()Ljava/util/Map;

    move-result-object v9

    move-object v4, v9

    .line 115
    .local v4, "md":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object v9, v3

    move-object v10, v1

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 116
    move-object v9, v3

    const-string v10, "[ track id = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 117
    move-object v9, v3

    move-object v10, v1

    iget-wide v10, v10, Ljavafx/scene/media/Track;->trackID:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 119
    move-object v9, v4

    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move-object v5, v9

    :goto_0
    move-object v9, v5

    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    move-object v9, v5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    move-object v6, v9

    .line 120
    .local v6, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object v9, v6

    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    move-object v7, v9

    .line 121
    .local v7, "value":Ljava/lang/Object;
    const/4 v9, 0x0

    move-object v10, v7

    if-eq v9, v10, :cond_0

    .line 122
    move-object v9, v3

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 123
    move-object v9, v3

    move-object v10, v6

    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 124
    move-object v9, v3

    const-string v10, " = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 125
    move-object v9, v3

    move-object v10, v7

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 127
    :cond_0
    goto :goto_0

    .line 128
    .end local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v7    # "value":Ljava/lang/Object;
    :cond_1
    move-object v9, v3

    const-string v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 129
    move-object v9, v1

    move-object v10, v3

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Ljavafx/scene/media/Track;->description:Ljava/lang/String;

    .line 131
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    .end local v4    # "md":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_2
    move-object v9, v2

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    move-object v9, v1

    iget-object v9, v9, Ljavafx/scene/media/Track;->description:Ljava/lang/String;

    move-object v1, v9

    .end local v1    # "this":Ljavafx/scene/media/Track;
    return-object v1

    .line 131
    .restart local v1    # "this":Ljavafx/scene/media/Track;
    :catchall_0
    move-exception v9

    move-object v8, v9

    move-object v9, v2

    :try_start_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v9, v8

    throw v9
.end method
