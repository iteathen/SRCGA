.class Ljavafx/scene/media/AudioEqualizer$Bands;
.super Lcom/sun/javafx/collections/VetoableListDecorator;
.source "AudioEqualizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/media/AudioEqualizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Bands"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sun/javafx/collections/VetoableListDecorator",
        "<",
        "Ljavafx/scene/media/EqualizerBand;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/media/AudioEqualizer;


# direct methods
.method public constructor <init>(Ljavafx/scene/media/AudioEqualizer;)V
    .locals 4

    .prologue
    .line 212
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/AudioEqualizer$Bands;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/media/AudioEqualizer$Bands;->this$0:Ljavafx/scene/media/AudioEqualizer;

    .line 213
    move-object v2, v0

    invoke-static {}, Ljavafx/collections/FXCollections;->observableArrayList()Ljavafx/collections/ObservableList;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/sun/javafx/collections/VetoableListDecorator;-><init>(Ljavafx/collections/ObservableList;)V

    .line 214
    return-void
.end method


# virtual methods
.method protected onProposedChange(Ljava/util/List;[I)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljavafx/scene/media/EqualizerBand;",
            ">;[I)V"
        }
    .end annotation

    .prologue
    .line 218
    move-object/from16 v0, p0

    .local v0, "this":Ljavafx/scene/media/AudioEqualizer$Bands;
    move-object/from16 v1, p1

    .local v1, "toBeAdded":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/media/EqualizerBand;>;"
    move-object/from16 v2, p2

    .local v2, "toBeRemoved":[I
    move-object v8, v0

    iget-object v8, v8, Ljavafx/scene/media/AudioEqualizer$Bands;->this$0:Ljavafx/scene/media/AudioEqualizer;

    invoke-static {v8}, Ljavafx/scene/media/AudioEqualizer;->access$000(Ljavafx/scene/media/AudioEqualizer;)Ljava/lang/Object;

    move-result-object v8

    move-object v15, v8

    move-object v8, v15

    move-object v9, v15

    move-object v3, v9

    monitor-enter v8

    .line 219
    move-object v8, v0

    :try_start_0
    iget-object v8, v8, Ljavafx/scene/media/AudioEqualizer$Bands;->this$0:Ljavafx/scene/media/AudioEqualizer;

    invoke-static {v8}, Ljavafx/scene/media/AudioEqualizer;->access$100(Ljavafx/scene/media/AudioEqualizer;)Lcom/sun/media/jfxmedia/effects/AudioEqualizer;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 220
    const/4 v8, 0x0

    move v4, v8

    .local v4, "i":I
    :goto_0
    move v8, v4

    move-object v9, v2

    array-length v9, v9

    if-ge v8, v9, :cond_1

    .line 221
    move-object v8, v0

    move-object v9, v2

    move v10, v4

    aget v9, v9, v10

    move-object v10, v2

    move v11, v4

    const/4 v12, 0x1

    add-int/lit8 v11, v11, 0x1

    aget v10, v10, v11

    invoke-virtual {v8, v9, v10}, Ljavafx/scene/media/AudioEqualizer$Bands;->subList(II)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-object v5, v8

    :goto_1
    move-object v8, v5

    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    move-object v8, v5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljavafx/scene/media/EqualizerBand;

    move-object v6, v8

    .line 222
    .local v6, "band":Ljavafx/scene/media/EqualizerBand;
    move-object v8, v0

    iget-object v8, v8, Ljavafx/scene/media/AudioEqualizer$Bands;->this$0:Ljavafx/scene/media/AudioEqualizer;

    invoke-static {v8}, Ljavafx/scene/media/AudioEqualizer;->access$100(Ljavafx/scene/media/AudioEqualizer;)Lcom/sun/media/jfxmedia/effects/AudioEqualizer;

    move-result-object v8

    move-object v9, v6

    invoke-virtual {v9}, Ljavafx/scene/media/EqualizerBand;->getCenterFrequency()D

    move-result-wide v9

    invoke-interface {v8, v9, v10}, Lcom/sun/media/jfxmedia/effects/AudioEqualizer;->removeBand(D)Z

    move-result v8

    .line 223
    goto :goto_1

    .line 220
    .end local v6    # "band":Ljavafx/scene/media/EqualizerBand;
    :cond_0
    add-int/lit8 v4, v4, 0x2

    goto :goto_0

    .line 226
    :cond_1
    move-object v8, v1

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-object v4, v8

    .end local v4    # "i":I
    :goto_2
    move-object v8, v4

    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    move-object v8, v4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljavafx/scene/media/EqualizerBand;

    move-object v5, v8

    .line 227
    .local v5, "band":Ljavafx/scene/media/EqualizerBand;
    move-object v8, v5

    invoke-virtual {v8}, Ljavafx/scene/media/EqualizerBand;->getCenterFrequency()D

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmpl-double v8, v8, v10

    if-lez v8, :cond_2

    move-object v8, v5

    invoke-virtual {v8}, Ljavafx/scene/media/EqualizerBand;->getBandwidth()D

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmpl-double v8, v8, v10

    if-lez v8, :cond_2

    .line 228
    move-object v8, v0

    iget-object v8, v8, Ljavafx/scene/media/AudioEqualizer$Bands;->this$0:Ljavafx/scene/media/AudioEqualizer;

    .line 229
    invoke-static {v8}, Ljavafx/scene/media/AudioEqualizer;->access$100(Ljavafx/scene/media/AudioEqualizer;)Lcom/sun/media/jfxmedia/effects/AudioEqualizer;

    move-result-object v8

    move-object v9, v5

    invoke-virtual {v9}, Ljavafx/scene/media/EqualizerBand;->getCenterFrequency()D

    move-result-wide v9

    move-object v11, v5

    .line 230
    invoke-virtual {v11}, Ljavafx/scene/media/EqualizerBand;->getBandwidth()D

    move-result-wide v11

    move-object v13, v5

    .line 231
    invoke-virtual {v13}, Ljavafx/scene/media/EqualizerBand;->getGain()D

    move-result-wide v13

    .line 229
    invoke-interface/range {v8 .. v14}, Lcom/sun/media/jfxmedia/effects/AudioEqualizer;->addBand(DDD)Lcom/sun/media/jfxmedia/effects/EqualizerBand;

    move-result-object v8

    move-object v6, v8

    .line 232
    .local v6, "jfxBand":Lcom/sun/media/jfxmedia/effects/EqualizerBand;
    move-object v8, v5

    move-object v9, v6

    invoke-virtual {v8, v9}, Ljavafx/scene/media/EqualizerBand;->setJfxBand(Lcom/sun/media/jfxmedia/effects/EqualizerBand;)V

    .line 233
    .line 237
    .end local v6    # "jfxBand":Lcom/sun/media/jfxmedia/effects/EqualizerBand;
    :goto_3
    goto :goto_2

    .line 234
    :cond_2
    const/4 v8, 0x4

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Center frequency ["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v5

    invoke-virtual {v10}, Ljavafx/scene/media/EqualizerBand;->getCenterFrequency()D

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "] and bandwidth ["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v5

    .line 235
    invoke-virtual {v10}, Ljavafx/scene/media/EqualizerBand;->getBandwidth()D

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "] must be greater than 0."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 234
    invoke-static {v8, v9}, Lcom/sun/media/jfxmedia/logging/Logger;->logMsg(ILjava/lang/String;)V

    goto :goto_3

    .line 239
    .end local v5    # "band":Ljavafx/scene/media/EqualizerBand;
    :catchall_0
    move-exception v8

    move-object v7, v8

    move-object v8, v3

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v8, v7

    throw v8

    :cond_3
    move-object v8, v3

    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 240
    return-void
.end method
