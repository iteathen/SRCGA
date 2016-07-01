.class public final Ljavafx/scene/media/MediaBuilder;
.super Ljava/lang/Object;
.source "MediaBuilder.java"

# interfaces
.implements Ljavafx/util/Builder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljavafx/util/Builder",
        "<",
        "Ljavafx/scene/media/Media;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private __set:I

.field private onError:Ljava/lang/Runnable;

.field private source:Ljava/lang/String;

.field private tracks:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<+",
            "Ljavafx/scene/media/Track;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaBuilder;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method

.method public static create()Ljavafx/scene/media/MediaBuilder;
    .locals 3

    .prologue
    .line 43
    new-instance v0, Ljavafx/scene/media/MediaBuilder;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljavafx/scene/media/MediaBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public applyTo(Ljavafx/scene/media/Media;)V
    .locals 5

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaBuilder;
    move-object v1, p1

    .local v1, "x":Ljavafx/scene/media/Media;
    move-object v3, v0

    iget v3, v3, Ljavafx/scene/media/MediaBuilder;->__set:I

    move v2, v3

    .line 49
    .local v2, "set":I
    move v3, v2

    const/4 v4, 0x1

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/media/MediaBuilder;->onError:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Ljavafx/scene/media/Media;->setOnError(Ljava/lang/Runnable;)V

    .line 50
    :cond_0
    move v3, v2

    const/4 v4, 0x2

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_1

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/media/Media;->getTracks()Ljavafx/collections/ObservableList;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/media/MediaBuilder;->tracks:Ljava/util/Collection;

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->addAll(Ljava/util/Collection;)Z

    move-result v3

    .line 51
    :cond_1
    return-void
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaBuilder;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/media/MediaBuilder;->build()Ljavafx/scene/media/Media;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/media/MediaBuilder;
    return-object v0
.end method

.method public build()Ljavafx/scene/media/Media;
    .locals 6

    .prologue
    .line 93
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaBuilder;
    new-instance v2, Ljavafx/scene/media/Media;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/media/MediaBuilder;->source:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljavafx/scene/media/Media;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    .line 94
    .local v1, "x":Ljavafx/scene/media/Media;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/media/MediaBuilder;->applyTo(Ljavafx/scene/media/Media;)V

    .line 95
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/media/MediaBuilder;
    return-object v0
.end method

.method public onError(Ljava/lang/Runnable;)Ljavafx/scene/media/MediaBuilder;
    .locals 6

    .prologue
    .line 58
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaBuilder;
    move-object v1, p1

    .local v1, "x":Ljava/lang/Runnable;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/media/MediaBuilder;->onError:Ljava/lang/Runnable;

    .line 59
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Ljavafx/scene/media/MediaBuilder;->__set:I

    const/4 v4, 0x1

    or-int/lit8 v3, v3, 0x1

    iput v3, v2, Ljavafx/scene/media/MediaBuilder;->__set:I

    .line 60
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/media/MediaBuilder;
    return-object v0
.end method

.method public source(Ljava/lang/String;)Ljavafx/scene/media/MediaBuilder;
    .locals 4

    .prologue
    .line 68
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaBuilder;
    move-object v1, p1

    .local v1, "x":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/media/MediaBuilder;->source:Ljava/lang/String;

    .line 69
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/media/MediaBuilder;
    return-object v0
.end method

.method public tracks(Ljava/util/Collection;)Ljavafx/scene/media/MediaBuilder;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Ljavafx/scene/media/Track;",
            ">;)",
            "Ljavafx/scene/media/MediaBuilder;"
        }
    .end annotation

    .prologue
    .line 77
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaBuilder;
    move-object v1, p1

    .local v1, "x":Ljava/util/Collection;, "Ljava/util/Collection<+Ljavafx/scene/media/Track;>;"
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/media/MediaBuilder;->tracks:Ljava/util/Collection;

    .line 78
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Ljavafx/scene/media/MediaBuilder;->__set:I

    const/4 v4, 0x2

    or-int/lit8 v3, v3, 0x2

    iput v3, v2, Ljavafx/scene/media/MediaBuilder;->__set:I

    .line 79
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/media/MediaBuilder;
    return-object v0
.end method

.method public varargs tracks([Ljavafx/scene/media/Track;)Ljavafx/scene/media/MediaBuilder;
    .locals 4

    .prologue
    .line 86
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaBuilder;
    move-object v1, p1

    .local v1, "x":[Ljavafx/scene/media/Track;
    move-object v2, v0

    move-object v3, v1

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavafx/scene/media/MediaBuilder;->tracks(Ljava/util/Collection;)Ljavafx/scene/media/MediaBuilder;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/media/MediaBuilder;
    return-object v0
.end method
