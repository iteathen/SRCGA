.class public final Ljavafx/scene/media/AudioClipBuilder;
.super Ljava/lang/Object;
.source "AudioClipBuilder.java"

# interfaces
.implements Ljavafx/util/Builder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljavafx/util/Builder",
        "<",
        "Ljavafx/scene/media/AudioClip;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private __set:I

.field private balance:D

.field private cycleCount:I

.field private pan:D

.field private priority:I

.field private rate:D

.field private source:Ljava/lang/String;

.field private volume:D


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/AudioClipBuilder;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method

.method public static create()Ljavafx/scene/media/AudioClipBuilder;
    .locals 3

    .prologue
    .line 43
    new-instance v0, Ljavafx/scene/media/AudioClipBuilder;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljavafx/scene/media/AudioClipBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public applyTo(Ljavafx/scene/media/AudioClip;)V
    .locals 6

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/AudioClipBuilder;
    move-object v1, p1

    .local v1, "x":Ljavafx/scene/media/AudioClip;
    move-object v3, v0

    iget v3, v3, Ljavafx/scene/media/AudioClipBuilder;->__set:I

    move v2, v3

    .line 49
    .local v2, "set":I
    move v3, v2

    const/4 v4, 0x1

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    move-object v3, v1

    move-object v4, v0

    iget-wide v4, v4, Ljavafx/scene/media/AudioClipBuilder;->balance:D

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/media/AudioClip;->setBalance(D)V

    .line 50
    :cond_0
    move v3, v2

    const/4 v4, 0x2

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_1

    move-object v3, v1

    move-object v4, v0

    iget v4, v4, Ljavafx/scene/media/AudioClipBuilder;->cycleCount:I

    invoke-virtual {v3, v4}, Ljavafx/scene/media/AudioClip;->setCycleCount(I)V

    .line 51
    :cond_1
    move v3, v2

    const/4 v4, 0x4

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_2

    move-object v3, v1

    move-object v4, v0

    iget-wide v4, v4, Ljavafx/scene/media/AudioClipBuilder;->pan:D

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/media/AudioClip;->setPan(D)V

    .line 52
    :cond_2
    move v3, v2

    const/16 v4, 0x8

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_3

    move-object v3, v1

    move-object v4, v0

    iget v4, v4, Ljavafx/scene/media/AudioClipBuilder;->priority:I

    invoke-virtual {v3, v4}, Ljavafx/scene/media/AudioClip;->setPriority(I)V

    .line 53
    :cond_3
    move v3, v2

    const/16 v4, 0x10

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_4

    move-object v3, v1

    move-object v4, v0

    iget-wide v4, v4, Ljavafx/scene/media/AudioClipBuilder;->rate:D

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/media/AudioClip;->setRate(D)V

    .line 54
    :cond_4
    move v3, v2

    const/16 v4, 0x20

    and-int/lit8 v3, v3, 0x20

    if-eqz v3, :cond_5

    move-object v3, v1

    move-object v4, v0

    iget-wide v4, v4, Ljavafx/scene/media/AudioClipBuilder;->volume:D

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/media/AudioClip;->setVolume(D)V

    .line 55
    :cond_5
    return-void
.end method

.method public balance(D)Ljavafx/scene/media/AudioClipBuilder;
    .locals 7

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/AudioClipBuilder;
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/scene/media/AudioClipBuilder;->balance:D

    .line 63
    move-object v3, v0

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    iget v4, v4, Ljavafx/scene/media/AudioClipBuilder;->__set:I

    const/4 v5, 0x1

    or-int/lit8 v4, v4, 0x1

    iput v4, v3, Ljavafx/scene/media/AudioClipBuilder;->__set:I

    .line 64
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/media/AudioClipBuilder;
    return-object v0
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/AudioClipBuilder;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/media/AudioClipBuilder;->build()Ljavafx/scene/media/AudioClip;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/media/AudioClipBuilder;
    return-object v0
.end method

.method public build()Ljavafx/scene/media/AudioClip;
    .locals 6

    .prologue
    .line 130
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/AudioClipBuilder;
    new-instance v2, Ljavafx/scene/media/AudioClip;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/media/AudioClipBuilder;->source:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljavafx/scene/media/AudioClip;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    .line 131
    .local v1, "x":Ljavafx/scene/media/AudioClip;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/media/AudioClipBuilder;->applyTo(Ljavafx/scene/media/AudioClip;)V

    .line 132
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/media/AudioClipBuilder;
    return-object v0
.end method

.method public cycleCount(I)Ljavafx/scene/media/AudioClipBuilder;
    .locals 6

    .prologue
    .line 72
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/AudioClipBuilder;
    move v1, p1

    .local v1, "x":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Ljavafx/scene/media/AudioClipBuilder;->cycleCount:I

    .line 73
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Ljavafx/scene/media/AudioClipBuilder;->__set:I

    const/4 v4, 0x2

    or-int/lit8 v3, v3, 0x2

    iput v3, v2, Ljavafx/scene/media/AudioClipBuilder;->__set:I

    .line 74
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/media/AudioClipBuilder;
    return-object v0
.end method

.method public pan(D)Ljavafx/scene/media/AudioClipBuilder;
    .locals 7

    .prologue
    .line 82
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/AudioClipBuilder;
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/scene/media/AudioClipBuilder;->pan:D

    .line 83
    move-object v3, v0

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    iget v4, v4, Ljavafx/scene/media/AudioClipBuilder;->__set:I

    const/4 v5, 0x4

    or-int/lit8 v4, v4, 0x4

    iput v4, v3, Ljavafx/scene/media/AudioClipBuilder;->__set:I

    .line 84
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/media/AudioClipBuilder;
    return-object v0
.end method

.method public priority(I)Ljavafx/scene/media/AudioClipBuilder;
    .locals 6

    .prologue
    .line 92
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/AudioClipBuilder;
    move v1, p1

    .local v1, "x":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Ljavafx/scene/media/AudioClipBuilder;->priority:I

    .line 93
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Ljavafx/scene/media/AudioClipBuilder;->__set:I

    const/16 v4, 0x8

    or-int/lit8 v3, v3, 0x8

    iput v3, v2, Ljavafx/scene/media/AudioClipBuilder;->__set:I

    .line 94
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/media/AudioClipBuilder;
    return-object v0
.end method

.method public rate(D)Ljavafx/scene/media/AudioClipBuilder;
    .locals 7

    .prologue
    .line 102
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/AudioClipBuilder;
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/scene/media/AudioClipBuilder;->rate:D

    .line 103
    move-object v3, v0

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    iget v4, v4, Ljavafx/scene/media/AudioClipBuilder;->__set:I

    const/16 v5, 0x10

    or-int/lit8 v4, v4, 0x10

    iput v4, v3, Ljavafx/scene/media/AudioClipBuilder;->__set:I

    .line 104
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/media/AudioClipBuilder;
    return-object v0
.end method

.method public source(Ljava/lang/String;)Ljavafx/scene/media/AudioClipBuilder;
    .locals 4

    .prologue
    .line 112
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/AudioClipBuilder;
    move-object v1, p1

    .local v1, "x":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/media/AudioClipBuilder;->source:Ljava/lang/String;

    .line 113
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/media/AudioClipBuilder;
    return-object v0
.end method

.method public volume(D)Ljavafx/scene/media/AudioClipBuilder;
    .locals 7

    .prologue
    .line 121
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/AudioClipBuilder;
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/scene/media/AudioClipBuilder;->volume:D

    .line 122
    move-object v3, v0

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    iget v4, v4, Ljavafx/scene/media/AudioClipBuilder;->__set:I

    const/16 v5, 0x20

    or-int/lit8 v4, v4, 0x20

    iput v4, v3, Ljavafx/scene/media/AudioClipBuilder;->__set:I

    .line 123
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/media/AudioClipBuilder;
    return-object v0
.end method
