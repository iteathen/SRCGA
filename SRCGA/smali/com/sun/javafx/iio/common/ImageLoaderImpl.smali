.class public abstract Lcom/sun/javafx/iio/common/ImageLoaderImpl;
.super Ljava/lang/Object;
.source "ImageLoaderImpl.java"

# interfaces
.implements Lcom/sun/javafx/iio/ImageLoader;


# instance fields
.field protected formatDescription:Lcom/sun/javafx/iio/ImageFormatDescription;

.field protected lastPercentDone:I

.field protected listeners:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/sun/javafx/iio/ImageLoadListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/sun/javafx/iio/ImageFormatDescription;)V
    .locals 6

    .prologue
    .line 41
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/iio/common/ImageLoaderImpl;
    move-object v1, p1

    .local v1, "formatDescription":Lcom/sun/javafx/iio/ImageFormatDescription;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 39
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Lcom/sun/javafx/iio/common/ImageLoaderImpl;->lastPercentDone:I

    .line 42
    move-object v2, v1

    if-nez v2, :cond_0

    .line 43
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "formatDescription == null!"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 46
    :cond_0
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/iio/common/ImageLoaderImpl;->formatDescription:Lcom/sun/javafx/iio/ImageFormatDescription;

    .line 47
    return-void
.end method


# virtual methods
.method public final addListener(Lcom/sun/javafx/iio/ImageLoadListener;)V
    .locals 6

    .prologue
    .line 54
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/iio/common/ImageLoaderImpl;
    move-object v1, p1

    .local v1, "listener":Lcom/sun/javafx/iio/ImageLoadListener;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/iio/common/ImageLoaderImpl;->listeners:Ljava/util/HashSet;

    if-nez v2, :cond_0

    .line 55
    move-object v2, v0

    new-instance v3, Ljava/util/HashSet;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    iput-object v3, v2, Lcom/sun/javafx/iio/common/ImageLoaderImpl;->listeners:Ljava/util/HashSet;

    .line 57
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/iio/common/ImageLoaderImpl;->listeners:Ljava/util/HashSet;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 58
    return-void
.end method

.method protected emitWarning(Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 67
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/iio/common/ImageLoaderImpl;
    move-object v1, p1

    .local v1, "warning":Ljava/lang/String;
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/iio/common/ImageLoaderImpl;->listeners:Ljava/util/HashSet;

    if-eqz v4, :cond_0

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/iio/common/ImageLoaderImpl;->listeners:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 68
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/iio/common/ImageLoaderImpl;->listeners:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v2, v4

    .line 69
    .local v2, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sun/javafx/iio/ImageLoadListener;>;"
    :goto_0
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 70
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/javafx/iio/ImageLoadListener;

    move-object v3, v4

    .line 71
    .local v3, "l":Lcom/sun/javafx/iio/ImageLoadListener;
    move-object v4, v3

    move-object v5, v0

    move-object v6, v1

    invoke-interface {v4, v5, v6}, Lcom/sun/javafx/iio/ImageLoadListener;->imageLoadWarning(Lcom/sun/javafx/iio/ImageLoader;Ljava/lang/String;)V

    .line 72
    goto :goto_0

    .line 74
    .end local v2    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sun/javafx/iio/ImageLoadListener;>;"
    .end local v3    # "l":Lcom/sun/javafx/iio/ImageLoadListener;
    :cond_0
    return-void
.end method

.method public final getFormatDescription()Lcom/sun/javafx/iio/ImageFormatDescription;
    .locals 2

    .prologue
    .line 50
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/iio/common/ImageLoaderImpl;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/iio/common/ImageLoaderImpl;->formatDescription:Lcom/sun/javafx/iio/ImageFormatDescription;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/iio/common/ImageLoaderImpl;
    return-object v0
.end method

.method public final removeListener(Lcom/sun/javafx/iio/ImageLoadListener;)V
    .locals 4

    .prologue
    .line 61
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/iio/common/ImageLoaderImpl;
    move-object v1, p1

    .local v1, "listener":Lcom/sun/javafx/iio/ImageLoadListener;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/iio/common/ImageLoaderImpl;->listeners:Ljava/util/HashSet;

    if-eqz v2, :cond_0

    .line 62
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/iio/common/ImageLoaderImpl;->listeners:Ljava/util/HashSet;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v2

    .line 64
    :cond_0
    return-void
.end method

.method protected updateImageMetadata(Lcom/sun/javafx/iio/ImageMetadata;)V
    .locals 7

    .prologue
    .line 92
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/iio/common/ImageLoaderImpl;
    move-object v1, p1

    .local v1, "metadata":Lcom/sun/javafx/iio/ImageMetadata;
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/iio/common/ImageLoaderImpl;->listeners:Ljava/util/HashSet;

    if-eqz v4, :cond_0

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/iio/common/ImageLoaderImpl;->listeners:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 93
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/iio/common/ImageLoaderImpl;->listeners:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v2, v4

    .line 94
    .local v2, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sun/javafx/iio/ImageLoadListener;>;"
    :goto_0
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 95
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/javafx/iio/ImageLoadListener;

    move-object v3, v4

    .line 96
    .local v3, "l":Lcom/sun/javafx/iio/ImageLoadListener;
    move-object v4, v3

    move-object v5, v0

    move-object v6, v1

    invoke-interface {v4, v5, v6}, Lcom/sun/javafx/iio/ImageLoadListener;->imageLoadMetaData(Lcom/sun/javafx/iio/ImageLoader;Lcom/sun/javafx/iio/ImageMetadata;)V

    .line 97
    goto :goto_0

    .line 99
    .end local v2    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sun/javafx/iio/ImageLoadListener;>;"
    .end local v3    # "l":Lcom/sun/javafx/iio/ImageLoadListener;
    :cond_0
    return-void
.end method

.method protected updateImageProgress(F)V
    .locals 9

    .prologue
    .line 77
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/iio/common/ImageLoaderImpl;
    move v1, p1

    .local v1, "percentageDone":F
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/iio/common/ImageLoaderImpl;->listeners:Ljava/util/HashSet;

    if-eqz v6, :cond_0

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/iio/common/ImageLoaderImpl;->listeners:Ljava/util/HashSet;

    invoke-virtual {v6}, Ljava/util/HashSet;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    .line 78
    move v6, v1

    float-to-int v6, v6

    move v2, v6

    .line 79
    .local v2, "percentDone":I
    const/4 v6, 0x5

    move v3, v6

    .line 80
    .local v3, "delta":I
    move v6, v3

    move v7, v2

    mul-int/2addr v6, v7

    move v7, v3

    div-int/2addr v6, v7

    move v7, v3

    rem-int/2addr v6, v7

    if-nez v6, :cond_0

    move v6, v2

    move-object v7, v0

    iget v7, v7, Lcom/sun/javafx/iio/common/ImageLoaderImpl;->lastPercentDone:I

    if-eq v6, v7, :cond_0

    .line 81
    move-object v6, v0

    move v7, v2

    iput v7, v6, Lcom/sun/javafx/iio/common/ImageLoaderImpl;->lastPercentDone:I

    .line 82
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/iio/common/ImageLoaderImpl;->listeners:Ljava/util/HashSet;

    invoke-virtual {v6}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v4, v6

    .line 83
    .local v4, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sun/javafx/iio/ImageLoadListener;>;"
    :goto_0
    move-object v6, v4

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 84
    move-object v6, v4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sun/javafx/iio/ImageLoadListener;

    move-object v5, v6

    .line 85
    .local v5, "listener":Lcom/sun/javafx/iio/ImageLoadListener;
    move-object v6, v5

    move-object v7, v0

    move v8, v2

    int-to-float v8, v8

    invoke-interface {v6, v7, v8}, Lcom/sun/javafx/iio/ImageLoadListener;->imageLoadProgress(Lcom/sun/javafx/iio/ImageLoader;F)V

    .line 86
    goto :goto_0

    .line 89
    .end local v2    # "percentDone":I
    .end local v3    # "delta":I
    .end local v4    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sun/javafx/iio/ImageLoadListener;>;"
    .end local v5    # "listener":Lcom/sun/javafx/iio/ImageLoadListener;
    :cond_0
    return-void
.end method
