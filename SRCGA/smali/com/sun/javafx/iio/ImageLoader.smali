.class public interface abstract Lcom/sun/javafx/iio/ImageLoader;
.super Ljava/lang/Object;
.source "ImageLoader.java"


# virtual methods
.method public abstract addListener(Lcom/sun/javafx/iio/ImageLoadListener;)V
.end method

.method public abstract dispose()V
.end method

.method public abstract getFormatDescription()Lcom/sun/javafx/iio/ImageFormatDescription;
.end method

.method public abstract load(IIIZZ)Lcom/sun/javafx/iio/ImageFrame;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract removeListener(Lcom/sun/javafx/iio/ImageLoadListener;)V
.end method
